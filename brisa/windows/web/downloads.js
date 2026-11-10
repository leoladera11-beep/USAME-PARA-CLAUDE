import { downloadsAPI } from './download-api.js';
import { setupDriveStorage } from './drive-storage.js';

export const activeStates = new Set(['starting', 'downloading', 'merging', 'converting', 'exporting', 'cancelling']);
export function formatBytes(value) {
  if (!(value > 0)) return 'Tamaño por determinar';
  return value >= 1073741824 ? (value / 1073741824).toFixed(2) + ' GB' : (value / 1048576).toFixed(1) + ' MB';
}

export function setupDownloads({ parseVideoLink, refresh, notify }) {
  const el = id => document.getElementById(id);
  const api = downloadsAPI();
  setupDriveStorage({notify});
  let revision = 0, timer, inspection, state = { status: 'idle' }, inspecting = false;
  const message = text => { el('videoLinkMessage').textContent = text; };
  function buttons() {
    for (const button of el('videoFormats').querySelectorAll('button')) button.disabled = activeStates.has(state.status);
    el('inspectVideo').disabled = inspecting;
    for(const id of ['downloadOutput','downloadDestination','configurePcDrive','choosePcDrive'])el(id).disabled=activeStates.has(state.status);
  }
  async function update(next, {announce=true}={}) {
    const announceCompletion=announce&&next?.status==='completed'&&state.status!=='completed';
    state = next || { status: 'idle' };
    const busy = activeStates.has(state.status);
    el('downloadJob').hidden = state.status === 'idle';
    el('cancelDownload').hidden = !busy;
    el('cancelDownload').disabled = state.status === 'cancelling';
    el('downloadTitle').textContent = state.title || 'Descarga de vídeo';
    const labels = {
      starting: 'Preparando descarga…', downloading: 'Descargando…', merging: 'Uniendo audio y vídeo sin recomprimir…',
      converting: 'Convirtiendo a MP3 · 320 kbps…', exporting: 'Guardando en tu carpeta…', cancelling: 'Cancelando…', completed: state.storage==='drive'?'Guardado en tu carpeta de Drive · comprueba la sincronización en Google Drive':state.output==='both'?'Vídeo y MP3 guardados · disponibles en Vídeos y Música sin conexión':state.output==='mp3'?'MP3 guardado en Música · disponible sin conexión':'Guardado en Vídeos · disponible sin conexión',
      cancelled: 'Descarga cancelada.', error: state.error || 'No se pudo descargar. Revisa la conexión y vuelve a intentarlo.',
    };
    el('downloadStatus').textContent = labels[state.status] || '';
    const bar = el('downloadProgress');
    if (busy && state.totalBytes > 0 && state.status === 'downloading') {
      bar.value = Math.min(1, state.downloadedBytes / state.totalBytes);
      el('downloadBytes').textContent = `${formatBytes(state.downloadedBytes)} de ${formatBytes(state.totalBytes)}`;
    } else {
      if (state.status === 'completed') bar.value = 1; else bar.removeAttribute('value');
      el('downloadBytes').textContent = state.status === 'downloading' && state.downloadedBytes > 0 ? formatBytes(state.downloadedBytes) : '';
    }
    bar.hidden = !busy && state.status !== 'completed';
    buttons();
    if (state.status === 'completed') { await refresh(); window.BrisaNative?.importReady(); if(announceCompletion)notify(state.storage==='drive'?'Archivo guardado en tu carpeta de Drive. Google Drive para ordenadores realiza la subida.':state.output==='both'?'Vídeo y MP3 guardados y disponibles sin conexión.':'Archivo guardado y disponible sin conexión.'); }
  }
  async function start(format) {
    if (!inspection || activeStates.has(state.status)) return;
    await update({ status: 'starting', title: inspection.title });
    try { await api.start(inspection.inspectionId, format.id, {output:el('downloadOutput').value,destination:el('downloadDestination').value,bitrate:320}); }
    catch (error) { await update({ status: 'error', error: error.message }); }
  }
  function render(info) {
    el('videoSourceTitle').textContent = info.title;
    const output=el('downloadOutput').value;
    const quality=output==='mp3'?'Mejor fuente disponible → MP3 320 kbps (con pérdida)':output==='both'?'Dos archivos: vídeo MP4 original + música MP3 320 kbps (con pérdida)':'Audio original, sin otra compresión';
    el('videoSourceInfo').textContent = info.duration > 0 ? `${Math.floor(info.duration / 60)}:${String(Math.floor(info.duration % 60)).padStart(2, '0')} · ${quality}` : quality;
    const list = el('videoFormats');
    list.replaceChildren();
    for (const format of el('downloadOutput').value==='mp3'?[{id:'audio',label:'Descargar MP3 · máxima calidad',codec:'320 kbps',compatible:true}]:info.formats) {
      const button = document.createElement('button');
      button.type = 'button'; button.className = 'video-format';
      const name = document.createElement('strong'); name.textContent = output==='both'?`${format.label} · MP4 + MP3`:format.label;
      const detail = document.createElement('span');
      detail.textContent = [format.codec, format.fps > 0 ? `${format.fps} fps` : '', formatBytes(format.size)].filter(Boolean).join(' · ');
      const compatibility = document.createElement('small');
      compatibility.textContent = format.compatible === false ? 'Puede no reproducirse en este equipo. Puedes guardarlo para el PC.' : format.recommended ? 'Recomendada para este equipo' : 'Descargar con el mejor audio disponible';
      button.append(name, detail, compatibility);
      button.addEventListener('click', () => start(format));
      list.append(button);
    }
    el('videoLinkResult').hidden = false;
    buttons();
  }
  async function inspect(explicit = false) {
    const parsed = parseVideoLink(el('videoLink').value);
    const token = ++revision;
    inspection = null; el('videoLinkResult').hidden = true;
    if (!parsed) {
      if (explicit) message('Pega un enlace HTTPS de YouTube o un archivo directo, como .mp4 o .webm.');
      return;
    }
    if (!api) { message('Abre la app de Brisa para descargar. La vista del navegador permite importar archivos locales.'); return; }
    inspecting = true; buttons(); message('Consultando el vídeo y sus calidades…');
    try {
      const info = await api.inspect(parsed.url);
      if (token !== revision) return;
      if (!info.formats?.length) throw new Error('No hay formatos disponibles para este vídeo.');
      inspection = info; render(info); message('Elige una calidad para empezar la descarga.');
    } catch (error) { if (token === revision) message(error.message || 'No se pudo consultar el vídeo. Inténtalo otra vez.'); }
    finally { if (token === revision) { inspecting = false; buttons(); } }
  }
  el('downloadOutput').onchange=()=>{if(inspection)render(inspection);};
  el('videoLink').addEventListener('input', () => {
    clearTimeout(timer); revision++; inspecting = false; inspection = null;
    el('videoLinkResult').hidden = true; message(''); buttons();
    if (parseVideoLink(el('videoLink').value)) timer = setTimeout(() => inspect(), 700);
  });
  el('videoLinkForm').onsubmit = event => { event.preventDefault(); clearTimeout(timer); inspect(true); };
  el('cancelDownload').onclick = async () => {
    el('cancelDownload').disabled = true;
    try { await api.cancel(); } catch (error) { notify(error.message); el('cancelDownload').disabled = false; }
  };
  el('downloadFolder').onclick = async () => {
    if (!api) return notify('La carpeta de descargas se elige desde la app instalada.');
    try { await api.folder(); } catch (error) { notify(error.message); }
  };
  window.addEventListener('brisa-download', event => update(event.detail));
  const restore = () => api?.state().then(next=>update(next,{announce:false})).catch(() => {});
  document.addEventListener('visibilitychange', () => { if (!document.hidden) restore(); });
  restore();
}
