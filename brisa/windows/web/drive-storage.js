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
 refresh().catch(()=>{});
 return {configured:()=>configured};
}
