import {setupDriveToken} from './drive-token.js';
export function setupDriveStorage({notify}){
 const el=id=>document.getElementById(id);const api=window.BrisaDriveStorage;let configured=false;
 const refresh=async()=>{
  const s=await api?.status();configured=!!s?.configured;
  el('pcDriveStatus').textContent=configured?`${s.available?'Carpeta configurada':'Unidad no disponible · abre Drive para ordenadores'}: ${s.folder}`:'Todavía no has elegido una carpeta de la unidad de Drive.';
  if(configured&&localStorage.getItem("brisa-pc-storage")!=="local"){el("downloadDestination").value="drive";el("downloadDestination").dispatchEvent(new Event("change"));}
  return configured;
 };
 el('configurePcDrive').onclick=()=>{el('pcDriveDialog').showModal();refresh().catch(e=>notify(e.message||String(e)));};
 el('installPcDrive').onclick=async()=>{if(!api)return notify('Abre https://www.google.com/drive/download/ para instalar Drive para ordenadores.');try{await api.install();}catch(e){notify(e.message||String(e));}};
 el('choosePcDrive').onclick=async()=>{
  if(!api)return notify('Elige la carpeta desde la app de Windows instalada.');
  el('choosePcDrive').disabled=true;
  try{await api.choose();await refresh();el('downloadDestination').value='drive';el('downloadDestination').dispatchEvent(new Event('change'));el('pcDriveDialog').close();notify('Carpeta de Drive configurada. La sincronización la realiza Google Drive para ordenadores.');}
  catch(e){notify(e.message||String(e));}finally{el('choosePcDrive').disabled=false;}
 };
 el('downloadDestination').addEventListener('change',()=>{
  localStorage.setItem('brisa-pc-storage',el('downloadDestination').value);
  const drive=el('downloadDestination').value==='drive';
  el('pcStorageNote').textContent=drive?'Se guardará en la carpeta de tu unidad de Drive. Google Drive para ordenadores sincroniza los archivos con tu cuenta. Usa «Ver archivos sin descargarlos» para evitar otra copia permanente local.':'Se guardará en tu carpeta local y podrás verlo sin conexión.';
 });
 // Sesión por token: Drive reconoce la cuenta al instante y su música y vídeos entran en la biblioteca.
 const token=window.BrisaDriveToken;
 const session=setupDriveToken({notify,api:token||null,onChange:async state=>{window.dispatchEvent(new CustomEvent('brisa-drive-session',{detail:{active:!!state?.active}}));token.reloadLibrary();}});
 el('tokenRefreshList').onclick=async()=>{if(!token)return notify('Disponible en la app de Windows instalada.');el('tokenRefreshList').disabled=true;try{const count=await token.refresh();token.reloadLibrary();notify(count+' archivos de música y vídeo en tu Drive.');}catch(e){notify(e.message||String(e));}finally{el('tokenRefreshList').disabled=false;}};
 el('configurePcDrive').addEventListener('click',()=>session.show().catch(()=>{}));
 refresh().catch(()=>{});
 return {configured:()=>configured};
}
