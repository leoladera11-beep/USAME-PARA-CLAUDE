import { captionOverlay } from './captions.js';
import { setupDrive, driveAPI, driveHooks } from './drive.js';
import { setupDownloads } from './downloads.js';
// Videos use their own library and never enter the music queue.
const videoExtension = /\.(mp4|m4v|webm|mov|mkv|3gp)$/i;
const youtubeHosts = new Set(['youtube.com','www.youtube.com','m.youtube.com','music.youtube.com','youtu.be','www.youtu.be','youtube-nocookie.com','www.youtube-nocookie.com']);
export function parseVideoLink(text) {
  let url;
  try { url = new URL(String(text).trim()); } catch { return null; }
  if (url.protocol !== 'https:' || url.username || url.password || url.port || url.hostname === 'appassets.androidplatform.net') return null;
  if (youtubeHosts.has(url.hostname)) {
    const parts = url.pathname.split('/').filter(Boolean);
    const id = url.hostname.endsWith('youtu.be') ? parts[0] :
      url.pathname === '/watch' ? url.searchParams.get('v') :
      ['shorts','live','embed','v'].includes(parts[0]) ? parts[1] : null;
    if (!/^[\w-]{11}$/.test(id || '')) return null;
    return { kind: 'youtube', id, url: 'https://www.youtube.com/watch?v=' + id };
  }
  if (!videoExtension.test(url.pathname)) return null;
  return { kind: 'file', url: url.href };
}

export function setupVideos({audio,notify}) {
  const el = id => document.getElementById(id);
  const native = window.BrisaNative;
  const player = el('localVideo');
  const overlay=captionOverlay(player,el('videoCaptions'));let captionTracks=[],compact=false;
  async function loadCaptions(id){captionTracks=window.BrisaDesktop?.captions?await window.BrisaDesktop.captions(id):[];const select=el('videoCaptionTrack');select.replaceChildren(new Option('Desactivados','off'));captionTracks.forEach((t,i)=>select.add(new Option(t.label||'Español',String(i))));select.value=captionTracks.length?'0':'off';try{overlay.load(captionTracks[0]||null);}catch(e){notify(e.message);}}
  el('videoCaptionTrack').onchange=e=>{try{overlay.load(e.target.value==='off'?null:captionTracks[Number(e.target.value)]);}catch(error){notify(error.message);}};
  function windowState(state){compact=!!state.compact;document.documentElement.classList.toggle('brisa-compact',compact);el('videoViewer').classList.toggle('desktop-fullscreen',!!state.fullscreen);el('videoCompact').textContent=compact?'Volver a biblioteca':'Ventana flotante';}
  window.addEventListener('brisa-video-window',e=>windowState(e.detail));
  el('videoFullscreen').onclick=async()=>{try{if(window.BrisaDesktop)windowState(await window.BrisaDesktop.videoMode('fullscreen'));else if(document.fullscreenElement)await document.exitFullscreen();else await el('videoViewer').requestFullscreen();}catch(e){notify('No se pudo activar pantalla completa.');}};
  el('videoCompact').onclick=async()=>{try{if(window.BrisaDesktop)windowState(await window.BrisaDesktop.videoMode(compact?'normal':'compact'));else if(document.pictureInPictureElement)await document.exitPictureInPicture();else await player.requestPictureInPicture();}catch(e){notify('La ventana flotante requiere la app instalada o un navegador compatible.');}};
  document.addEventListener('keydown',e=>{if(e.key==='Escape'&&active&&window.BrisaDesktop&&(compact||el('videoViewer').classList.contains('desktop-fullscreen')))window.BrisaDesktop.videoMode('normal').then(windowState).catch(()=>{});});
  const esc = value => String(value).replace(/[&<>"']/g, c => ({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
  const size = n => n >= 1048576 ? (n / 1048576).toFixed(1) + ' MB' : n > 0 ? Math.max(1,Math.round(n / 1024)) + ' KB' : '';
  let dbPromise, records = [], showing = false, active = null, objectUrl, selection = 0, result, busy = false, limit = 50;
  function db() {
    return dbPromise ||= new Promise((resolve,reject) => {
      const req = indexedDB.open('brisa-videos-v1',1);
      req.onupgradeneeded = () => { req.result.createObjectStore('videos',{keyPath:'id'}); req.result.createObjectStore('files'); };
      req.onsuccess = () => resolve(req.result);
      req.onerror = req.onblocked = () => { dbPromise = null; reject(req.error || new Error('No se puede acceder al almacenamiento.')); };
    });
  }
  async function read(store,key) {
    const conn = await db();
    return new Promise((resolve,reject) => {
      const os = conn.transaction(store).objectStore(store);
      const req = key == null ? os.getAll() : os.get(key);
      req.onsuccess = () => resolve(req.result);
      req.onerror = () => reject(req.error);
    });
  }
  async function write(item,file) {
    const conn = await db();
    return new Promise((resolve,reject) => {
      const tx = conn.transaction(['videos','files'],'readwrite');
      if (file) { tx.objectStore('videos').put(item); tx.objectStore('files').put(file,item.id); }
      else { tx.objectStore('videos').delete(item.id); tx.objectStore('files').delete(item.id); }
      tx.oncomplete = resolve;
      tx.onabort = () => reject(tx.error || new Error('No se guardó el video.'));
    });
  }
  function paint() {
    el('videosCount').textContent = records.length + (records.length === 1 ? ' video' : ' videos');
    el('videosEmpty').hidden = !!records.length;
    el('videosMore').hidden = records.length <= limit;
    el('videosList').innerHTML = records.slice(0,limit).map((item,i) =>
      '<div class="video-row"><button class="video-row-play" data-video-play="'+i+'"><span class="video-tile"><svg aria-hidden="true"><use href="#i-play"/></svg></span><span><strong>'+esc(item.name)+'</strong><small>'+esc([size(item.size),item.offlineReady===false?(item.storageLabel||'En Drive'):item.driveId?'Sin conexión · también en Drive':'Sin conexión · en este teléfono',item.pendingUpload?'Subida pendiente':''].filter(Boolean).join(' · '))+'</small></span></button><button class="icon-btn" data-video-remove="'+i+'" aria-label="Quitar '+esc(item.name)+' de Brisa"><svg aria-hidden="true"><use href="#i-trash"/></svg></button></div>'
    ).join('');
  }
  async function refresh() {
    try {
      records = native?.listVideos ? JSON.parse(native.listVideos()) : window.BrisaDesktop ? await window.BrisaDesktop.listVideos() : await read('videos');
      records.sort((a,b) => b.added - a.added || a.name.localeCompare(b.name));
      paint();
    } catch { if(showing) notify('No se pudo abrir la biblioteca de videos.'); }
  }
  function stop() {
    selection++;
    overlay.stop();if(window.BrisaDesktop){window.BrisaDesktop.videoPlaying(false).catch(()=>{});window.BrisaDesktop.videoMode('normal').then(windowState).catch(()=>{});}
    active = null;
    player.pause();
    player.removeAttribute('src');
    player.load();
    if (objectUrl) URL.revokeObjectURL(objectUrl);
    objectUrl = null;
    el('videoViewer').hidden = true;
  }
  async function play(item) {
    if(item?.offlineReady===false&&item.providerImport&&native?.playVideo){native.playVideo(item.id);return;}
    if(item?.offlineReady===false&&item.streamable&&native?.playVideo){let why='';try{why=window.BrisaTuning?.streamCheck?.()||'';}catch{}if(why){notify(why);return;}audio.pause();native.playVideo(item.id);return;}
    if(item?.offlineReady===false){try{await driveAPI()?.prepare(item.id);notify('Guardando una copia sin conexión. Sigue su progreso en la descarga.');}catch(e){notify(e.message);}return;}
    if (native?.playVideo) { audio.pause(); native.playVideo(item.id); return; }
    if (window.BrisaDesktop) {
      stop(); active = item.id; audio.pause();
      el('videoNowTitle').textContent = item.name; el('videoResolution').textContent = 'Calidad original';
      el('videoViewer').hidden = false; player.src = window.BrisaDesktop.fileUrl(item.path);
      await loadCaptions(item.id).catch(()=>{});
      await player.play().catch(() => notify('Este formato no se puede reproducir aquí. El archivo sigue guardado en tu carpeta de descargas.')); return;
    }
    stop();
    const attempt = selection;
    try {
      const file = await read('files',item.id);
      if (attempt !== selection || !showing) return;
      if (!file) throw new Error('Archivo no disponible');
      objectUrl = URL.createObjectURL(file);
      active = item.id;
      el('videoNowTitle').textContent = item.name;
      el('videoResolution').textContent = 'Calidad original';
      el('videoViewer').hidden = false;
      player.src = objectUrl;
      el('videoViewer').scrollIntoView?.({block:'nearest'});
      await player.play().catch(()=>{});
    } catch { if (attempt === selection) notify('No se pudo leer el video. Intenta importarlo otra vez.'); }
  }
  for(const event of ['pause','ended'])player.addEventListener(event,()=>window.BrisaDesktop?.videoPlaying(false).catch(()=>{}));
  player.addEventListener('play',() => { window.BrisaDesktop?.videoPlaying(true).catch(()=>{}); if (!audio.paused) audio.pause(); });
  audio.addEventListener('play',() => { if (active && !player.paused) player.pause(); });
  document.addEventListener('visibilitychange',() => { if (document.hidden && active && !window.BrisaDesktop) player.pause(); });
  player.addEventListener('loadedmetadata',() => {
    if (player.videoWidth) el('videoResolution').textContent = player.videoWidth + ' × ' + player.videoHeight + ' · Original';
  });
  player.addEventListener('error',() => {
    if (active) notify('No se pudo reproducir este archivo. Prueba un MP4 con video H.264 y audio AAC.');
  });
  el('closeVideo').onclick = stop;
  el('videosMore').onclick = () => { limit += 50; paint(); };
  el('videosList').onclick = async e => {
    const btn = e.target.closest('[data-video-play],[data-video-remove]');
    if (!btn) return;
    if (btn.dataset.videoPlay !== undefined) { await play(records[+btn.dataset.videoPlay]); return; }
    const item = records[+btn.dataset.videoRemove];
    if (!item || !confirm('¿Quitar «'+item.name+'» de Brisa? Tu archivo original o el de Drive se conserva.')) return;
    try {
      if (active === item.id) stop();
      if (native?.forgetVideo) native.forgetVideo(item.id); else if (window.BrisaDesktop) await window.BrisaDesktop.forgetVideo(item.id); else await write(item);
      await refresh();
    } catch { notify('No se pudo quitar el video.'); }
  };
  async function awaitDesktopImport() { try { await window.BrisaDesktop.pickVideos(); await refresh(); } catch (error) { notify(error.message); } }
  el('addVideosBtn').onclick = () => {
    if (native?.pickVideos) native.pickVideos(); else if (window.BrisaDesktop) { awaitDesktopImport(); } else el('videoInput').click();
  };
  el('videoInput').onchange = async e => {
    const files = Array.from(e.target.files || []);
    e.target.value = '';
    if (busy || !files.length) return;
    busy = true;
    el('addVideosBtn').disabled = true;
    let added = 0, failed = 0, skipped = 0;
    try {
      await refresh();
      const seen = new Set(records.map(r => r.fingerprint));
      for (const [i,file] of files.entries()) {
        el('videoImportStatus').textContent = 'Importando '+(i+1)+' de '+files.length+'…';
        if (!file.size || !(file.type.startsWith('video/') || videoExtension.test(file.name))) { failed++; continue; }
        const fingerprint = JSON.stringify([file.name,file.size,file.lastModified]);
        if (seen.has(fingerprint)) { skipped++; continue; }
        const id = globalThis.crypto?.randomUUID?.() || Date.now()+'-'+Math.random().toString(36).slice(2);
        try { await write({id,name:file.name,size:file.size,added:Date.now(),fingerprint},file); seen.add(fingerprint); added++; }
        catch { failed++; }
      }
      await refresh();
      el('videoImportStatus').textContent = added+(added===1?' video importado':' videos importados')+(skipped?' · '+skipped+' repetidos':'')+(failed?' · '+failed+' no guardados (revisa formato y espacio)':'')+'.';
    } finally { busy = false; el('addVideosBtn').disabled = false; }
  };
  setupDownloads({ parseVideoLink, refresh, notify, drive: driveHooks() });
  setupDrive({refresh,notify});
  window.addEventListener('brisa-video-import',e=>{const state=e.detail||{},busy=state.status==='preparing';el('addVideosBtn').disabled=busy;el('videoImportStatus').textContent=state.message||'';if(!busy)refresh();});
  window.BrisaVideosChanged = () => { if (showing) refresh(); };
  return {
    open() { showing = true; limit = 50; return refresh(); },
    close() { showing = false; if (active || objectUrl) stop(); else selection++; }
  };
}
