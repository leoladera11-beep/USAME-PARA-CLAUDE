// Shared pure helpers for original, translated and timed lyrics.
import {parseLRC} from './music.js';
export function sourceLines(raw){const timed=parseLRC(raw||'');return timed.length?timed.map(x=>x.text):(raw||'').split(/\r?\n/).map(x=>x.trim()).filter(x=>x&&!/^\[[a-z]+:.*\]$/i.test(x));}
export function lyricSignature(raw){return sourceLines(raw).join('\n');}
export function toLRC(lines){return lines.map(x=>{const ms=Math.round(Math.max(0,Number(x.time)||0)*1000),min=Math.floor(ms/60000),sec=Math.floor(ms%60000/1000),cent=Math.floor(ms%1000/10);return `[${String(min).padStart(2,'0')}:${String(sec).padStart(2,'0')}.${String(cent).padStart(2,'0')}]${String(x.text||'').replace(/[\r\n]+/g,' ').trim()}`;}).join('\n');}
export function shiftedLines(raw,offset=0){return parseLRC(raw||'').map(x=>({...x,time:Math.max(0,x.time+offset)}));}
export function validTranslation(t){const tr=t?.translationEs;return !!(tr&&tr.source===lyricSignature(t.lyrics)&&tr.lines?.length===sourceLines(t.lyrics).length);}
export function transcriptToLRC(result){const lines=(result.chunks||[]).filter(c=>typeof c.text==='string'&&c.text.trim()&&!/^[[\(]\s*(m[uú]sica|music|silenc(?:e|io)|aplausos)\s*[\]\)]$/i.test(c.text.trim())&&Number.isFinite(c.timestamp?.[0])).map(c=>({time:Math.max(0,c.timestamp[0]),text:c.text.trim()}));const fallback=String(result.text||'').trim();return lines.length?toLRC(lines):/^[[\(]\s*(m[uú]sica|music|silenc(?:e|io)|aplausos)\s*[\]\)]$/i.test(fallback)?'':fallback;}
export function resampleMono(channels,sampleRate,targetRate=16000){if(!channels.length||!channels[0].length)return new Float32Array();const length=Math.floor(channels[0].length*targetRate/sampleRate),out=new Float32Array(length),ratio=sampleRate/targetRate;for(let i=0;i<length;i++){const start=i*ratio,end=Math.min((i+1)*ratio,channels[0].length);let value=0,total=0;for(let j=Math.floor(start);j<Math.ceil(end);j++){const weight=Math.min(j+1,end)-Math.max(j,start);if(weight<=0)continue;let mono=0;for(const c of channels)mono+=c[j]||0;value+=mono/channels.length*weight;total+=weight;}out[i]=total?value/total:0;}return out;}

// Match the supplied lyrics to recognized audio, preserving every supplied line.
// Chunk-level speech times make this a proposal, never a claim of exact alignment.
export function alignLyricsToTranscript(raw,result,duration){
 const lines=sourceLines(raw),words=text=>(String(text).normalize('NFD').replace(/[\u0300-\u036f]/g,'').toLowerCase().replace(/['’]/g,'').match(/[a-z0-9]+/g)||[]);
 if(!lines.length||lines.length>500||!Number.isFinite(duration)||duration<=0)throw new Error('Usa una letra de hasta 500 versos y espera a que cargue la duración.');
 const original=[],lineWords=lines.map(words);lineWords.forEach((tokens,line)=>tokens.forEach((text,pos)=>original.push({text,line,pos})));
 const spoken=[];const chunks=(result.chunks||[]).filter(c=>Number.isFinite(c.timestamp?.[0])&&typeof c.text==='string'&&!/^[[\(]\s*(m[uú]sica|music|silenc(?:e|io)|aplausos)\s*[\]\)]$/i.test(c.text.trim()));
 chunks.forEach((c,index)=>{const start=Math.max(0,c.timestamp[0]),end=Math.min(duration,Number.isFinite(c.timestamp[1])?c.timestamp[1]:chunks[index+1]?.timestamp?.[0]??duration),tokens=words(c.text);if(start>=duration||end<=start||end-start>65)return;const step=(end-start)/Math.max(1,tokens.length);tokens.forEach((text,pos)=>spoken.push({text,time:start+step*pos,start,step}));});
 if(!original.length||!spoken.length)throw new Error('No se detectaron palabras con tiempos. Prueba un LRC o el marcado guiado.');
 if(original.length>2500||spoken.length>2500)throw new Error('La letra es demasiado extensa para este ajuste ligero. Usa un LRC o el marcado guiado.');
 const width=spoken.length+1,path=new Uint8Array((original.length+1)*width);let prev=new Uint16Array(width),row=new Uint16Array(width);const weight=t=>t.length>2?2:1;
 for(let i=1;i<=original.length;i++){row[0]=0;for(let j=1;j<width;j++){if(original[i-1].text===spoken[j-1].text){row[j]=prev[j-1]+weight(original[i-1].text);path[i*width+j]=1;}else if(prev[j]>=row[j-1]){row[j]=prev[j];path[i*width+j]=2;}else{row[j]=row[j-1];path[i*width+j]=3;}}const swap=prev;prev=row;row=swap;}
 const matched=Array.from({length:lines.length},()=>[]);let i=original.length,j=spoken.length,matchedWeight=0,meaningful=0;
 while(i>0&&j>0){const direction=path[i*width+j];if(direction===1){const a=original[--i],b=spoken[--j];matched[a.line].push({a,b});matchedWeight+=weight(a.text);if(a.text.length>2)meaningful++;}else if(direction===2)i--;else j--;}
 const totalWeight=original.reduce((sum,x)=>sum+weight(x.text),0),confidence=matchedWeight/totalWeight,totalMeaningful=original.filter(x=>x.text.length>2).length;
 const times=matched.map((pairs,line)=>{const score=pairs.reduce((n,p)=>n+weight(p.a.text),0),required=lineWords[line].reduce((n,t)=>n+weight(t),0);if(!pairs.length||score/Math.max(1,required)<.35||(!pairs.some(p=>p.a.text.length>2)&&lineWords[line].some(t=>t.length>2)))return null;const first=pairs[pairs.length-1];return Math.max(first.b.start,first.b.time-first.a.pos*first.b.step);});
 const anchors=times.map((t,index)=>t===null?null:index).filter(x=>x!==null);
 if(confidence<.5||anchors.length<Math.ceil(lines.length*.5)||meaningful<Math.min(6,Math.ceil(totalMeaningful*.4)))throw new Error('La voz reconocida no coincide lo suficiente con esta letra. Se conservó tu texto. Prueba un LRC de la misma versión o el marcado guiado.');
 const estimatedLines=[];for(let index=0;index<times.length;index++)if(times[index]===null)estimatedLines.push(index);
 for(let n=0;n<times.length;n++){
  if(times[n]!==null)continue;let left=n-1,right=n+1;while(left>=0&&times[left]===null)left--;while(right<times.length&&times[right]===null)right++;
  if(left>=0&&right<times.length){let distance=0,part=0;for(let k=left;k<right;k++){const size=Math.max(1,lineWords[k].length);distance+=size;if(k<n)part+=size;}times[n]=times[left]+(times[right]-times[left])*part/distance;}
  else if(left>=0)times[n]=Math.min(duration-.01,times[left]+Math.max(1,lineWords[left].length)*.35);
  else {let count=0;for(let k=n;k<right;k++)count+=Math.max(1,lineWords[k].length);times[n]=Math.max(0,times[right]-count*.35);}
 }
 let last=0;for(let n=0;n<times.length;n++){times[n]=Math.round(Math.max(last,Math.min(duration-.01,times[n]))*100)/100;last=times[n];}
 return {times,confidence,matchedLines:anchors.length,estimatedLines};
}
