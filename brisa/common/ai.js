// The player never imports an inference engine. One disposable worker per request.
let activeJob=null;
export function cancelLocalAI(){activeJob?.cancel();}
export function runLocalAI(task,payload,onProgress=()=>{}){
 if(activeJob)throw new Error('Ya hay una tarea local en proceso.');
 return new Promise((resolve,reject)=>{
  let worker,url,idleTimer,totalTimer,settled=false;
  const finish=(error,result)=>{if(settled)return;settled=true;clearTimeout(idleTimer);clearTimeout(totalTimer);if(worker){worker.onmessage=null;worker.onerror=null;worker.onmessageerror=null;worker.terminate();}if(url)URL.revokeObjectURL(url);activeJob=null;error?reject(error):resolve(result);};
  const stalled=()=>finish(new Error('El motor local dejó de responder durante 4 minutos. Se detuvo para liberar memoria. Tu letra sigue intacta: vuelve a intentarlo o usa Marcar mientras escucho.'));
  const arm=()=>{clearTimeout(idleTimer);idleTimer=setTimeout(stalled,240000);};
  activeJob={cancel:()=>finish(new DOMException('Cancelado','AbortError'))};
  try{
   const source=document.getElementById('brisaWorkerSource')?.textContent;
   const path=source?(url=URL.createObjectURL(new Blob([source],{type:'text/javascript'}))):new URL('./ai-worker.js',location.href);
   worker=new Worker(path,{type:'module'});
   worker.onmessage=({data:m})=>{if(settled)return;arm();if(m.type==='progress')onProgress(m.message,m);else if(m.type==='result')finish(null,m.result);else if(m.type==='error')finish(new Error(m.message));};
   worker.onerror=()=>finish(new Error('El motor local se cerró o no pudo iniciarse. Puede faltar memoria. Tu letra se conserva; cierra otras apps y vuelve a intentarlo.'));
   worker.onmessageerror=()=>finish(new Error('No se pudo recibir el resultado del análisis. Tu letra se conserva. Vuelve a intentarlo.'));
   arm();totalTimer=setTimeout(()=>finish(new Error('El análisis superó 20 minutos y se detuvo para liberar recursos. Tu letra se conserva; prueba un LRC o el marcado guiado.')),1200000);
   worker.postMessage({task,payload,allowDownload:navigator.onLine!==false},payload.audio?[payload.audio.buffer]:[]);
  }catch(e){finish(new Error('No se pudo preparar la IA local. Usa Brisa en Chrome o Edge: '+e.message));}
 });
}
export async function translateNative(lines,language,onProgress,signal){if(!('Translator'in window))throw new Error('El traductor del navegador no está disponible. Elige el motor compatible.');const options={sourceLanguage:language,targetLanguage:'es'};const availability=await window.Translator.availability(options);if(availability==='unavailable')throw new Error('Este par de idiomas no está disponible en el navegador. Elige el motor compatible.');onProgress(availability==='available'?'Preparando traducción en el dispositivo…':'Preparando el paquete de idioma del navegador…');let translator;try{translator=await window.Translator.create({...options,signal,monitor(m){m.addEventListener('downloadprogress',e=>onProgress(`Paquete de idioma: ${Math.round(e.loaded*100)}%`));}});const memo=new Map(),result=[];for(let i=0;i<lines.length;i++){if(signal.aborted)throw new DOMException('Cancelado','AbortError');if(!memo.has(lines[i]))memo.set(lines[i],String(await translator.translate(lines[i])).replace(/\s*\n+\s*/g,' '));result.push(memo.get(lines[i]));onProgress(`Traduciendo en tu dispositivo: ${i+1} / ${lines.length}`);}return result;}finally{translator?.destroy?.();}}
export async function clearAICache(){cancelLocalAI();if(!('caches'in window))return;for(const name of ['brisa-ai-runtime-v1','brisa-ai-models-v1'])await caches.delete(name);}
