'use strict';
function bindDownload(config) {
  const button=document.getElementById(config.button);
  if(!button)return;
  const label=document.getElementById(config.label);
  const status=document.getElementById(config.status);
  const progress=document.getElementById(config.progress);
  const wrap=document.getElementById(config.wrap);
  const cancel=document.getElementById(config.cancel);
  let controller=null;
  cancel.addEventListener('click',()=>controller?.abort());
  button.addEventListener('click',async()=>{
    if(controller)return;
    controller=new AbortController();
    const signal=controller.signal;
    button.disabled=true;label.textContent='Preparando tu descarga…';wrap.hidden=false;progress.value=0;
    let url=null;
    try{
      const response=await fetch(config.manifest,{signal,cache:'no-cache'});
      if(!response.ok)throw new Error('No se pudo consultar la descarga.');
      const meta=await response.json();
      if(!Array.isArray(meta.parts)||!Number.isSafeInteger(meta.size)||!/^Brisa-[\w.-]+\.zip$/.test(meta.name))throw new Error('El paquete no es válido.');
      let loaded=0;const chunks=[];
      for(const part of meta.parts){
        if(!/^package-\d+\.bin$/.test(part.file)||!Number.isSafeInteger(part.size))throw new Error('El paquete no es válido.');
        const res=await fetch(part.file,{signal});
        if(!res.ok||!res.body)throw new Error('No se pudo descargar el paquete.');
        const reader=res.body.getReader();let partLoaded=0;
        for(;;){
          const {done,value}=await reader.read();if(done)break;
          chunks.push(value);loaded+=value.byteLength;partLoaded+=value.byteLength;
          if(partLoaded>part.size||loaded>meta.size){await reader.cancel();throw new Error('La descarga tiene un tamaño incorrecto.');}
          progress.value=100*loaded/meta.size;
          status.textContent=`Descargando ${Math.min(100,Math.floor(progress.value))}% · ${(loaded/1048576).toFixed(1).replace('.',',')} MB`;
        }
        if(partLoaded!==part.size)throw new Error('La descarga quedó incompleta.');
      }
      if(loaded!==meta.size)throw new Error('La descarga quedó incompleta.');
      status.textContent='Comprobando que el archivo esté completo…';
      const blob=new Blob(chunks,{type:'application/zip'});
      const digest=await crypto.subtle.digest('SHA-256',await blob.arrayBuffer());
      const hex=Array.from(new Uint8Array(digest),v=>v.toString(16).padStart(2,'0')).join('');
      if(signal.aborted)throw new DOMException('Cancelled','AbortError');
      if(hex!==meta.sha256)throw new Error('El archivo no pasó la comprobación. Intenta descargarlo de nuevo.');
      url=URL.createObjectURL(blob);
      const link=document.createElement('a');link.href=url;link.download=meta.name;document.body.appendChild(link);link.click();link.remove();
      const completedUrl=url;setTimeout(()=>URL.revokeObjectURL(completedUrl),120000);url=null;
      label.textContent='Descargar de nuevo';status.textContent=config.success;
    }catch(error){
      label.textContent='Volver a descargar';status.textContent=error.name==='AbortError'?'Descarga cancelada. Puedes intentarlo de nuevo.':(error.message||'No se pudo completar la descarga. Revisa tu conexión e inténtalo de nuevo.');
    }finally{
      if(url)URL.revokeObjectURL(url);controller=null;button.disabled=false;wrap.hidden=true;
    }
  });
 }
bindDownload({button:'download',label:'button-label',status:'status',progress:'progress',wrap:'progress-wrap',cancel:'cancel',manifest:'package.json',success:'Archivo verificado. Guarda el ZIP en tu PC; después elige «Extraer todo» y abre ABRIR-BRISA.cmd. Su primera preparación necesita internet.'});
bindDownload({button:'share-download',label:'share-label',status:'share-status',progress:'share-progress',wrap:'share-progress-wrap',cancel:'share-cancel',manifest:'share-package.json',success:'Archivo verificado. Comparte el ZIP descargado: incluye apps, fuentes, licencias e instrucciones. Consulta EMPIEZA-AQUI.md: Windows y las fuentes usan el preparador para recuperar los componentes grandes. La clave privada de firma no está incluida.'});
