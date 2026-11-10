import { bridgeRequest } from './download-api.js';
export function driveAPI(){
 if(window.BrisaDrive)return window.BrisaDrive;
 if(!window.BrisaDriveNative)return null;
 return Object.fromEntries(['status','connect','disconnect','refresh','assets','records','prepare','retry','removeOffline'].map(method=>[method,(...args)=>bridgeRequest('BrisaDriveNative',method,...args)]));
}
export async function syncAudioAssets(){
 const api=driveAPI();if(!api)return;
 const entries=await api.assets();const importId='assets-'+Date.now();
 for(let i=0;i<entries.length;i+=50)await window.BrisaPlatform.onImport?.({importId,batchId:importId+'-'+i,items:entries.slice(i,i+50),done:i+50>=entries.length});
}
export function setupDrive({notify,refresh}){
 const el=id=>document.getElementById(id),api=driveAPI();let busy=false;
 const show=async()=>{if(!api){el('driveAccount').textContent='Disponible en la app instalada';return;}const s=await api.status();el('driveAccount').textContent=s.connected?'Cuenta: '+s.email:'Sin cuenta conectada';el('connectDrive').textContent=s.connected?'Renovar conexión':'Conectar cuenta';el('refreshDrive').disabled=!s.connected||busy;el('disconnectDrive').disabled=!s.connected||busy;const records=await api.records();const root=el('driveFiles');root.replaceChildren();
  for(const item of records.filter(x=>x.driveId||x.pendingUpload)){
   const row=document.createElement('article');row.className='drive-file';const name=document.createElement('strong');name.textContent=item.name;const detail=document.createElement('p');detail.className='muted';detail.textContent=[item.kind==='audio'?'Música':'Vídeo',item.offlineReady?'Disponible sin conexión en este dispositivo':'En Drive · requiere preparar sin conexión',item.pendingUpload?'Subida pendiente':item.captionPending?'Subtítulos pendientes':'',item.account||''].filter(Boolean).join(' · ');row.append(name,detail);
   const action=(label,method)=>{const b=document.createElement('button');b.className='secondary';b.textContent=label;b.disabled=busy;b.onclick=async()=>{b.disabled=true;try{await api[method](item.assetId||item.id);if(method==='removeOffline'){await syncAudioAssets();await refresh();await show();}else{el('driveMessage').textContent='Tarea iniciada. Puedes seguir el progreso en la descarga.';el('driveDialog').close();}}catch(e){notify(e.message);b.disabled=false;}};row.append(b);};
   if((item.pendingUpload||item.captionPending)&&item.offlineReady)action('Reintentar subida','retry');if(item.hidden&&item.offlineReady)action('Volver a biblioteca','prepare');if(item.driveId&&!item.offlineReady)action('Preparar sin conexión','prepare');if(item.managedOffline&&item.offlineReady&&item.driveId&&!item.pendingUpload)action('Quitar copia de este dispositivo','removeOffline');root.append(row);
  }
 };
 el('openDrive').onclick=()=>{el('driveDialog').showModal();show().catch(e=>notify(e.message));};
 const operation=async(method)=>{if(!api)return notify('Abre la app instalada de Brisa para usar Drive.');if(busy)return;busy=true;for(const id of ['connectDrive','refreshDrive','disconnectDrive'])el(id).disabled=true;el('driveMessage').textContent=method==='connect'?'Completa la autorización en Google…':method==='refresh'?'Consultando tus archivos de Brisa…':'Desconectando…';try{await api[method]();if(method==='refresh'||method==='connect'){if(method==='connect')await api.refresh();await syncAudioAssets();await refresh();}el('driveMessage').textContent=method==='disconnect'?'Cuenta desconectada. Tus archivos sin conexión se conservan.':method==='connect'?'Cuenta conectada.':'Biblioteca actualizada.';}catch(e){el('driveMessage').textContent=e.message;}finally{busy=false;show().catch(()=>{});}};
 for(const [id,method]of [['connectDrive','connect'],['refreshDrive','refresh'],['disconnectDrive','disconnect']])el(id).onclick=()=>operation(method);
 window.addEventListener('brisa-download',e=>{if(['completed','error','cancelled'].includes(e.detail?.status))syncAudioAssets().catch(()=>{});});
 syncAudioAssets().catch(()=>{});
 return {show};
}
