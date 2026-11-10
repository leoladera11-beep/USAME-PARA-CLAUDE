export function captionTime(text=''){
 text=String(text);if(!text)return 0;let n;if(text.endsWith('ms'))n=Number(text.slice(0,-2))/1000;else if(text.endsWith('s'))n=Number(text.slice(0,-1));else n=text.replace(',','.').split(':').reduce((v,p)=>v*60+Number(p),0);return Number.isFinite(n)?n:0;
}
export function captionColor(value=''){
 if(/^#?[0-9a-f]{6}$/i.test(value))return '#'+value.replace('#','').toLowerCase();if(/^#[0-9a-f]{8}$/i.test(value))return value.slice(0,7).toLowerCase();return ({white:'#ffffff',yellow:'#ffff00',cyan:'#00ffff',red:'#ff0000',lime:'#00ff00',blue:'#0000ff',magenta:'#ff00ff',black:'#000000'})[value.toLowerCase()]||'#ffffff';
}
export function parseCaptions(raw,format='srv3'){
 if(raw.length>4*1024*1024||/<!DOCTYPE|<!ENTITY/i.test(raw))throw new Error('Subtítulos no válidos.');
 const words=(text,start,end,color)=>Array.from(text.matchAll(/\S+[^\S\n]*|\n/g),m=>({text:m[0],start:Math.max(0,start),end:Math.max(start,end),color}));
 if(format==='vtt'||raw.startsWith('WEBVTT'))return raw.replace(/\r/g,'').split(/\n\n+/).flatMap(block=>{const m=block.match(/^([\d:.]+) --> ([\d:.]+).*\n/m);if(!m)return [];const start=captionTime(m[1]),end=captionTime(m[2]);const text=block.slice(m.index+m[0].length).replace(/<[^>]*>/g,'').replace(/&amp;/g,'&').replace(/&lt;/g,'<').replace(/&gt;/g,'>');return end>start?[{start,end,words:words(text,start,end,'#ffffff')}]:[];});
 const doc=new DOMParser().parseFromString(raw,'application/xml');if(doc.querySelector('parsererror'))throw new Error('No se pudieron leer los subtítulos.');const styles=new Map();const attr=(e,key)=>e.getAttribute(key)||e.getAttribute('tts:'+key)||e.getAttributeNS('http://www.w3.org/ns/ttml#styling',key)||'';
 for(const pen of doc.getElementsByTagName('pen'))styles.set(pen.getAttribute('id'),captionColor(pen.getAttribute('fc')||''));
 for(const style of doc.getElementsByTagNameNS('*','style'))styles.set(style.getAttribute('xml:id')||style.getAttribute('id'),captionColor(attr(style,'color')));
 const srv=doc.documentElement.localName==='timedtext',cues=[];
 for(const p of doc.getElementsByTagNameNS('*','p')){
  const start=srv?captionTime(p.getAttribute('t')+'ms'):captionTime(p.getAttribute('begin'));
  const end=srv?start+captionTime(p.getAttribute('d')+'ms'):p.hasAttribute('end')?captionTime(p.getAttribute('end')):start+captionTime(p.getAttribute('dur'));
  if(end<=start)continue;const list=[],base=styles.get(p.getAttribute(srv?'p':'style'))||captionColor(attr(p,'color'));
  for(const child of p.childNodes){if(child.nodeType===1){if(child.localName==='br'){list.push(...words('\n',start,end,base));continue;}const a=srv?start+captionTime((child.getAttribute('t')||0)+'ms'):child.hasAttribute('begin')?start+captionTime(child.getAttribute('begin')):start;
   const b=srv&&child.hasAttribute('d')?Math.min(end,a+captionTime(child.getAttribute('d')+'ms')):!srv&&child.hasAttribute('end')?Math.min(end,start+captionTime(child.getAttribute('end'))):end;
   const color=styles.get(child.getAttribute(srv?'p':'style'))||(attr(child,'color')?captionColor(attr(child,'color')):base);list.push(...words(child.textContent,a,b,color));
  }else list.push(...words(child.textContent,start,end,base));}
  if(list.length)cues.push({start,end,words:list});if(cues.length>50000)throw new Error('Demasiadas líneas de subtítulos.');
 }
 return cues.sort((a,b)=>a.start-b.start);
}
export function captionOverlay(player,root){
 let cues=[],current=-1,last=-1,effects=false,timer;
 const clear=()=>{for(const child of root.children)for(const a of child.getAnimations())a.cancel();root.replaceChildren();current=-1;last=-1;};
 const update=()=>{const time=player.currentTime;let lo=0,hi=cues.length-1,index=-1;while(lo<=hi){const mid=(lo+hi)>>1;if(time<cues[mid].start)hi=mid-1;else{index=mid;lo=mid+1;}}if(index>=0&&time>=cues[index].end)index=-1;const jumped=last>=0&&(time<last-.15||time-last>1);last=time;
  if(index!==current||jumped){clear();current=index;last=time;if(index>=0)for(const word of cues[index].words){const node=document.createElement(word.text==='\n'?'br':'span');node.textContent=word.text;node.style.color=word.color;root.append(node);}}
  if(index>=0)cues[index].words.forEach((word,i)=>{const node=root.children[i];if(!node||node.tagName==='BR')return;if(time<word.start){node.style.visibility='hidden';return;}node.style.visibility='visible';if(effects&&time>=word.end-.2&&!node.dataset.exiting&&!matchMedia('(prefers-reduced-motion: reduce)').matches){node.dataset.exiting='1';node.animate([{opacity:1,transform:'translateY(0)'},{opacity:0,transform:'translateY(-8px)'}],{duration:Math.max(1,(word.end-time)*1000),fill:'forwards'});}});
 };
 const stopTimer=()=>{clearInterval(timer);timer=null;};const resume=()=>{stopTimer();if(!player.paused&&!document.hidden)timer=setInterval(update,100);update();};
 player.addEventListener('play',resume);player.addEventListener('pause',stopTimer);player.addEventListener('ended',stopTimer);player.addEventListener('timeupdate',update);player.addEventListener('seeked',()=>{clear();update();});document.addEventListener('visibilitychange',()=>{if(document.hidden){stopTimer();for(const child of root.children)for(const a of child.getAnimations())a.cancel();}else{clear();resume();}});
 return {load(track){clear();cues=track?parseCaptions(track.raw,track.format):[];effects=!!track?.effects;update();},stop(){stopTimer();cues=[];clear();}};
}
