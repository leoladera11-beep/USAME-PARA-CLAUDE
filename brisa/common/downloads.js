// Descargas desde un enlace. Módulo compartido por Android y Windows: no crea servicios ni sondeos;
// el progreso llega por el evento «brisa-download» que emite la parte nativa.
import { downloadsAPI } from './download-api.js';

export const activeStates = new Set(['starting', 'downloading', 'merging', 'exporting', 'converting', 'subtitles', 'uploading', 'preparing', 'cancelling']);

export function formatBytes(value) {
  if (!(value > 0)) return 'Tamaño por determinar';
  return value >= 1_000_000_000 ? (value / 1_000_000_000).toFixed(2) + ' GB' : (value / 1_000_000).toFixed(1) + ' MB';
}

/** Texto y tamaño estimado de la música según el formato elegido. Función pura. */
export function audioChoice(format, duration = 0) {
  if (format === 'mp3') return {
    button: 'Descargar MP3', detail: 'MP3 · 320 kbps', size: duration * 320 * 1000 / 8,
    summary: 'Mejor pista disponible → MP3 320 kbps (con pérdida)',
    note: 'MP3 vuelve a comprimir el audio: ocupa más y no suena mejor que el original. Úsalo solo si tu reproductor no admite M4A.',
  };
  return {
    button: 'Descargar música', detail: 'Audio original · sin recomprimir', size: duration * 160 * 1000 / 8,
    summary: 'Audio original de la fuente, sin recomprimir (máxima calidad)',
    note: 'Se guarda la misma pista de audio que lleva el vídeo, sin tocarla: es la máxima calidad que ofrece la fuente y suena idéntica en vídeo y en música.',
  };
}

const heightOf = format => format.height || Number(/^(\d+)p/.exec(format.label)?.[1]) || 0;

export function orderQualities(formats) {
  const compatible = formats.filter(format => format.compatible !== false && heightOf(format) > 0);
  const candidates = compatible.length ? compatible : formats.filter(format => heightOf(format) > 0);
  const reasonable = candidates.filter(format => heightOf(format) <= 720);
  const tie = (a, b) => (a.fps || 30) - (b.fps || 30) || (a.size || Infinity) - (b.size || Infinity);
  const preferred = (reasonable.length ? reasonable.sort((a, b) => heightOf(b) - heightOf(a) || tie(a, b))
    : candidates.sort((a, b) => heightOf(a) - heightOf(b) || tie(a, b)))[0]
    || formats.find(format => format.recommended) || formats[0];
  return preferred ? [preferred, ...formats.filter(format => format !== preferred)] : [];
}

export function estimateTransfer(info, format, output) {
  if (output === 'mp3') return info.audioSize > 0 ? info.audioSize : audioChoice('original', info.duration).size;
  if (format.size > 0) return format.size;
  const height = heightOf(format);
  if (!height || !(info.duration > 0)) return 0;
  const kbps = height <= 360 ? 650 : height <= 480 ? 1100 : height <= 720 ? 2400 : height <= 1080 ? 4500 : height <= 1440 ? 9000 : 16000;
  const video = kbps * (format.fps >= 50 ? 1.5 : 1);
  return info.duration * (video * 125) + estimateTransfer(info, format, 'mp3');
}

export function shouldWarnMobile(network, size) {
  return network === 'mobile' && size > 100_000_000;
}

const PREFS = 'brisa-download-prefs';

export function setupDownloads({ parseVideoLink, refresh, notify, drive = null }) {
  const el = id => document.getElementById(id);
  const api = downloadsAPI();
  let revision = 0, timer, inspection, state = { status: 'idle' }, inspecting = false;
  let inFlight = null, mobileChoice = null;
  const message = text => { el('videoLinkMessage').textContent = text; };
  const audioFormat = () => el('audioFormat')?.value === 'mp3' ? 'mp3' : 'original';
  const optionIds = ['downloadOutput', 'audioFormat', 'downloadDestination', 'downloadSubtitles', 'mp3Bitrate', 'configurePcDrive', 'choosePcDrive'];

  // Las preferencias se recuerdan para no repetirlas en cada descarga.
  try {
    const saved = JSON.parse(localStorage.getItem(PREFS) || '{}');
    for (const [id, key] of [['downloadOutput', 'output'], ['audioFormat', 'audioFormat'], ['downloadDestination', 'destination']]) {
      const select = el(id);
      if (select && saved[key] && [...select.options].some(o => o.value === saved[key])) select.value = saved[key];
    }
  } catch { }
  const remember = () => {
    try { localStorage.setItem(PREFS, JSON.stringify({ output: el('downloadOutput').value, audioFormat: audioFormat(), destination: el('downloadDestination').value })); } catch { }
  };

  function closeMobilePrompt() {
    mobileChoice = null;
    el('downloadMobilePrompt').hidden = true;
  }

  function buttons() {
    const busy = activeStates.has(state.status);
    for (const button of el('videoFormats').querySelectorAll('button')) button.disabled = busy;
    el('inspectVideo').disabled = inspecting;
    for (const id of optionIds) if (el(id)) el(id).disabled = busy;
  }

  function completedText() {
    if (state.storage === 'drive' && el('configurePcDrive')) return 'Guardado en tu carpeta de Drive · comprueba la sincronización en Google Drive';
    if (state.driveOnly) return 'Guardado en tu Drive · no ocupa espacio en este teléfono';
    return (state.output === 'both' ? 'Vídeo y música guardados · disponibles' : 'Archivo guardado · disponible') + ' sin conexión';
  }

  async function update(next, { announce = true } = {}) {
    const announceCompletion = announce && next?.status === 'completed' && state.status !== 'completed';
    state = next || { status: 'idle' };
    const busy = activeStates.has(state.status);
    if (state.status === 'completed' && drive?.freeDriveOnly) {
      // «Solo Drive»: en cuanto la subida está confirmada se libera la copia del teléfono.
      try { state.driveOnly = await drive.freeDriveOnly(); } catch { }
    }
    el('downloadJob').hidden = state.status === 'idle';
    el('cancelDownload').hidden = !busy;
    el('cancelDownload').disabled = state.status === 'cancelling';
    el('downloadTitle').textContent = state.title || 'Descarga';
    const labels = {
      starting: 'Preparando la descarga…', downloading: 'Descargando…', merging: 'Uniendo audio y vídeo sin recomprimir…',
      converting: audioFormat() === 'mp3' ? 'Convirtiendo el audio a MP3…' : 'Guardando el audio original…',
      subtitles: 'Guardando subtítulos en español…', uploading: 'Subiendo a Google Drive…', preparing: 'Guardando copia sin conexión…',
      exporting: 'Guardando el archivo…', cancelling: 'Cancelando…', completed: completedText(),
      cancelled: 'Descarga cancelada.', error: state.error || 'No se pudo descargar. Revisa la conexión y vuelve a intentarlo.',
    };
    el('downloadStatus').textContent = (labels[state.status] || '') + (state.warning ? ' · ' + state.warning : '');
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
    if (state.status === 'completed') {
      await refresh();
      if (drive?.syncAssets) await drive.syncAssets().catch(() => { });
      if (window.BrisaDesktop) window.BrisaNative?.importReady();
      if (announceCompletion) notify(state.warning || completedText() + '.');
    }
  }

  async function start(format, mobileConfirmed = false) {
    if (!inspection || activeStates.has(state.status)) return;
    const info = inspection;
    const output = el('downloadOutput').value;
    const size = estimateTransfer(info, format, output);
    if (!mobileConfirmed && shouldWarnMobile(window.BrisaTuning?.downloadNetwork?.(), size)) {
      mobileChoice = format;
      el('downloadMobileText').textContent = `Esta descarga usará aproximadamente ${formatBytes(size)} con datos móviles.`;
      el('downloadMobilePrompt').hidden = false;
      el('downloadWaitWifi').focus();
      return;
    }
    closeMobilePrompt();
    await update({ status: 'starting', title: info.title });
    try {
      const chosen = el('downloadDestination').value;
      const options = { output, destination: chosen === 'drive-only' ? 'drive' : chosen, bitrate: 320, audioFormat: audioFormat() };
      if (el('downloadSubtitles')) options.subtitles = el('downloadSubtitles').value;
      if (drive && options.destination !== 'local' && !(await drive.status())?.connected) throw new Error('Conecta tu cuenta desde Google Drive antes de descargar.');
      try { window.BrisaTuning?.setAudioFormat?.(options.audioFormat); } catch { }
      if (drive?.beginDriveOnly) drive.beginDriveOnly(chosen === 'drive-only');
      remember();
      await api.start(info.inspectionId, format.id, options);
    } catch (error) { await update({ status: 'error', error: error.message }); }
  }

  function render(info) {
    el('videoSourceTitle').textContent = info.title;
    const output = el('downloadOutput').value, audio = audioChoice(audioFormat(), info.duration);
    const quality = output === 'mp3' ? audio.summary : output === 'both' ? 'Dos archivos: vídeo MP4 + música (' + audio.detail.toLowerCase() + ')' : 'Vídeo con su audio original, sin recomprimir';
    el('videoSourceInfo').textContent = info.duration > 0 ? `${Math.floor(info.duration / 60)}:${String(Math.floor(info.duration % 60)).padStart(2, '0')} · ${quality}` : quality;
    const list = el('videoFormats');
    list.replaceChildren();
    const formats = output === 'mp3'
      ? (info.audioAvailable === false ? [] : [{ id: 'audio', label: audio.button, codec: audio.detail, compatible: true }])
      : orderQualities(info.formats || []);
    if (!formats.length) {
      list.textContent = output === 'mp3' ? 'Este enlace no ofrece una pista de audio independiente.' : 'Este enlace solo ofrece audio.';
    }
    for (const [index, format] of formats.entries()) {
      const button = document.createElement('button');
      button.type = 'button'; button.className = 'video-format';
      const name = document.createElement('strong'); name.textContent = output === 'both' ? `${format.label} · MP4 + ${audioFormat() === 'mp3' ? 'MP3' : 'música'}` : format.label;
      const detail = document.createElement('span');
      const size = estimateTransfer(info, format, output);
      detail.textContent = [format.codec, format.fps > 0 ? `${format.fps} fps` : '', size > 0 ? `≈ ${formatBytes(size)} de descarga` : formatBytes(size)].filter(Boolean).join(' · ');
      const compatibility = document.createElement('small');
      compatibility.textContent = output === 'mp3' ? 'La mejor pista de audio disponible' : format.compatible === false ? 'Puede no reproducirse en este equipo' : index === 0 ? 'Calidad recomendada' : 'Con el mejor audio disponible';
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
    closeMobilePrompt(); inspection = null; el('videoLinkResult').hidden = true;
    if (!parsed) {
      if (explicit) message('Pega un enlace HTTPS de YouTube o un archivo directo, como .mp4 o .webm.');
      return;
    }
    if (!api) { message('Abre la app de Brisa para descargar.'); return; }
    inspecting = true; buttons(); message('Consultando el vídeo y sus calidades…');
    try {
      // Una sola consulta nativa en curso. Si cambia el enlace, se espera a que termine
      // y solo se consulta el último texto que el usuario dejó en el campo.
      while (inFlight && inFlight.url !== parsed.url) {
        await inFlight.result.catch(() => {});
        if (token !== revision) return;
      }
      if (!inFlight) {
        const request = { url: parsed.url };
        request.result = Promise.resolve().then(() => api.inspect(request.url)).finally(() => {
          if (inFlight === request) inFlight = null;
        });
        inFlight = request;
      }
      const info = await inFlight.result;
      if (token !== revision) return;
      if (!info.formats?.length && !info.audioAvailable) throw new Error('No hay formatos disponibles para este vídeo.');
      inspection = info; render(info); message('Elige una calidad para empezar la descarga.');
    } catch (error) { if (token === revision) message(error.message || 'No se pudo consultar el vídeo. Inténtalo otra vez.'); }
    finally { if (token === revision) { inspecting = false; buttons(); } }
  }

  function optionsChanged() {
    closeMobilePrompt();
    const output = el('downloadOutput').value, destination = el('downloadDestination').value;
    if (el('mp3BitrateField')) el('mp3BitrateField').hidden = true;
    if (el('audioFormatField')) el('audioFormatField').hidden = output === 'mp4';
    el('mp3Note').hidden = output === 'mp4';
    el('mp3Note').textContent = audioChoice(audioFormat()).note;
    if (el('captionOptionField')) el('captionOptionField').hidden = output === 'mp3';
    if (el('destinationNote')) el('destinationNote').textContent =
      destination === 'drive-only' ? 'Se sube a tu Drive y después se libera del teléfono: no ocupa espacio aquí. Se reproduce por internet (solo Wi-Fi salvo que lo cambies en Ajustes). Durante la descarga se usa espacio temporal.'
      : destination === 'drive' ? 'Se guarda en tu Drive y se conserva una copia privada en el teléfono para usarla sin conexión; ocupa espacio local.'
      : destination === 'both' ? 'Se guarda en tu Drive y en tu carpeta. El archivo de tu carpeta sirve para verlo sin conexión.'
      : 'Se guarda en tu carpeta y queda disponible sin conexión.';
    remember();
    if (inspection) render(inspection);
  }
  for (const id of ['downloadOutput', 'downloadDestination', 'audioFormat', 'mp3Bitrate']) el(id)?.addEventListener('change', optionsChanged);
  optionsChanged();

  el('videoLink').addEventListener('input', event => {
    clearTimeout(timer); revision++; inspecting = false; inspection = null; closeMobilePrompt();
    el('videoLinkResult').hidden = true; message(''); buttons();
    if (!parseVideoLink(el('videoLink').value)) return;
    if (event.inputType === 'insertFromPaste') inspect();
    else timer = setTimeout(() => { if (!document.hidden) inspect(); }, 180);
  });
  el('videoLinkForm').onsubmit = event => { event.preventDefault(); clearTimeout(timer); inspect(true); };
  el('downloadWaitWifi').onclick = () => {
    closeMobilePrompt();
    message('Cuando tengas Wi-Fi, elige la calidad para iniciar la descarga.');
  };
  el('downloadUseMobile').onclick = () => { if (mobileChoice) start(mobileChoice, true); };
  el('cancelDownload').onclick = async () => {
    el('cancelDownload').disabled = true;
    try { await api.cancel(); } catch (error) { notify(error.message); el('cancelDownload').disabled = false; }
  };
  el('downloadFolder').onclick = async () => {
    if (!api) return notify('La carpeta de descargas se elige desde la app instalada.');
    try { await api.folder(); } catch (error) { notify(error.message); }
  };
  window.addEventListener('brisa-download', event => update(event.detail));
  // En Windows la carpeta de Drive se configura con el cliente oficial de Google.
  if (el('configurePcDrive')) import('./drive-storage.js').then(module => module.setupDriveStorage({ notify })).catch(() => { });
  // Al volver a la app se refleja el resultado guardado sin anunciar una descarga antigua.
  const restore = () => api?.state().then(next => update(next, { announce: false })).catch(() => { });
  document.addEventListener('visibilitychange', () => { if (!document.hidden) restore(); });
  restore();
}
