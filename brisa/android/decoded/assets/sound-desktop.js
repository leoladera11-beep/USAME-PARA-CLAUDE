/* Shared native Web Audio graph for music and video. No timers or processing loop. */
(()=>{
 if(window.BrisaSoundNative||window.BrisaPlatform?.nativePlayback)return;
 const audio=window.BrisaPlatform?.audio,video=document.getElementById('localVideo');if(!audio||!video)return;
 const clean=s=>({mode:s?.mode==='gentle'?'gentle':'original',...Object.fromEntries([['bass',2],['mid',0],['treble',1]].map(([k,d])=>[k,Number.isFinite(Number(s?.[k]))?Math.max(-6,Math.min(6,Math.round(Number(s[k])))):d]))});
 let settings;try{settings=clean(JSON.parse(localStorage.getItem('brisa-sound')||'{}'));}catch{settings=clean({});}
 let context,filters,gain;const sources=new WeakMap();let sourceCount=0;
 function apply(){
  if(!context)return;
  filters.forEach((node,i)=>{node.gain.value=settings.mode==='original'?0:settings[['bass','mid','treble'][i]];});
  let peak=Math.max(0,settings.bass,settings.mid,settings.treble);
  if(settings.mode!=='original'){
   const freq=Float32Array.from({length:512},(_,i)=>20*Math.pow(1000,i/511)),sum=new Float32Array(512).fill(1);
   for(const node of filters){const mag=new Float32Array(512),phase=new Float32Array(512);node.getFrequencyResponse(freq,mag,phase);for(let i=0;i<512;i++)sum[i]*=mag[i];}
   for(const value of sum)peak=Math.max(peak,20*Math.log10(Math.max(value,1e-9)));
  }
  const value=settings.mode==='original'?1:Math.pow(10,-(peak+1)/20);gain.gain.value=value;
 }
 function connect(element){
  // En sonido original no se crea el grafo: el sistema reproduce el archivo directamente, sin procesado ni CPU extra.
  if(!context&&settings.mode==='original')return;
  if(!context){const C=window.AudioContext||window.webkitAudioContext;context=new C();filters=[context.createBiquadFilter(),context.createBiquadFilter(),context.createBiquadFilter()];filters[0].type='lowshelf';filters[0].frequency.value=125;filters[1].type='peaking';filters[1].frequency.value=1000;filters[1].Q.value=.7;filters[2].type='highshelf';filters[2].frequency.value=8000;gain=context.createGain();filters[0].connect(filters[1]);filters[1].connect(filters[2]);filters[2].connect(gain);gain.connect(context.destination);}
  if(!sources.has(element)){const source=context.createMediaElementSource(element);sources.set(element,source);source.connect(filters[0]);sourceCount++;}
  apply();context.resume().catch(()=>{});
 }
 for(const element of [audio,video]){
  element.crossOrigin='anonymous';
  element.addEventListener('play',()=>{const other=element===audio?video:audio;if(!other.paused)other.pause();connect(element);});
  element.addEventListener('pause',()=>queueMicrotask(()=>{if(audio.paused&&video.paused&&context)context.suspend().catch(()=>{});}));
 }
 window.BrisaSoundNative={settings:()=>JSON.stringify(settings),configure:json=>{settings=clean(JSON.parse(json));localStorage.setItem('brisa-sound',JSON.stringify(settings));for(const element of [audio,video])if(!element.paused)connect(element);apply();}};
 window.BrisaSoundEngine={snapshot:()=>({sourceCount,contextState:context?.state||'idle',gain:gain?.gain.value??1,settings:{...settings}})};
})();
