/* A native WebView2 window on Windows; no web server or resident download daemon. */
(() => {
  if (window.BrisaNative) return;
  const tauri = window.__TAURI__;
  const invoke = (name, args = {}) => tauri.core.invoke(name, args);
  const fileUrl = path => tauri.core.convertFileSrc(path);
  const audio = new Audio(); audio.preload = 'metadata';
  let current = null, queue = [], options = {}, history = [], seen = new Set(), sleepTimer, sleepAtEnd = false, importRevision = 0;
  const platform = window.BrisaPlatform = {
    audio, nativePlayback: false, onState: null, onImport: null,
    getSnapshot: () => ({}), receive: () => {}, ackImport: () => {},
    resetQueueCycle: () => { seen.clear(); if (current) seen.add(current.key || current.id); },
    setQueue: (tracks, config) => { queue = tracks; options = config; },
    setSleep(value) {
      clearTimeout(sleepTimer); sleepAtEnd = value === 'end';
      if (Number(value) > 0) sleepTimer = setTimeout(() => { audio.pause(); platform.onState?.({ sleepFinished: true }); }, Number(value) * 60000);
    },
    openUpdates: () => { },
    readBlob: async track => { const response = await fetch(track.path); if (!response.ok) throw new Error('El archivo no está disponible. Vuelve a importarlo.'); return response.blob(); },
    remoteFile: track => ({ name: track.name, size: track.size, slice: (a, b) => ({ async arrayBuffer() {
      if (a >= Math.min(b, track.size || b)) return new ArrayBuffer(0);
      const response = await fetch(track.path, { headers: { Range: `bytes=${a}-${Math.min(b, track.size || b) - 1}` } });
      if (!response.ok) throw new Error('No se puede leer la cabecera.'); return response.arrayBuffer();
    } }) }),
  };
  audio.attachTrack = track => { current = track; };
  audio.setTrack = track => {
    if (current && current.id !== track.id) history.push(current);
    current = track; seen.add(track.key || track.queueKey || track.id);
    audio.src = track.path; audio.load();
    if ('mediaSession' in navigator) navigator.mediaSession.metadata = new MediaMetadata({ title: track.title || track.name, artist: track.artist || '' });
  };
  function announce() { if (current) platform.onState?.({ id: current.id, prepared: true, playing: !audio.paused, position: audio.currentTime, duration: audio.duration }); }
  function next(automatic = false) {
    if (!queue.length || automatic && !options.autoplay) return;
    let target;
    if (automatic && options.repeat === 'one') target = queue.find(t => t.id === current?.id);
    else if (options.shuffle) {
      let remaining = queue.filter(t => !seen.has(t.key || t.id));
      if (!remaining.length) {
        if (automatic && options.repeat !== 'all') { audio.pause(); return; }
        seen.clear(); remaining = queue.filter(t => t.id !== current?.id); if (!remaining.length) remaining = queue;
      }
      target = remaining[Math.floor(Math.random() * remaining.length)];
    } else {
      const index = queue.findIndex(t => t.id === current?.id) + 1;
      if (automatic && index >= queue.length && options.repeat !== 'all') { audio.pause(); return; }
      target = queue[index % queue.length];
    }
    if (target) { audio.setTrack(target); announce(); audio.play().catch(() => {}); }
  }
  platform.next = () => next();
  platform.previous = () => {
    if (audio.currentTime > 3) { audio.currentTime = 0; return; }
    const target = history.pop() || queue[(queue.findIndex(t => t.id === current?.id) - 1 + queue.length) % queue.length];
    if (target) { const previousHistory = history.slice(); audio.setTrack(target); history = previousHistory; announce(); audio.play().catch(() => {}); }
  };
  audio.addEventListener('ended', () => { if (sleepAtEnd) { sleepAtEnd = false; platform.onState?.({ sleepFinished: true }); return; } next(true); });
  audio.addEventListener('play', announce);
  if (!tauri) {
    platform.pick = () => document.getElementById('fileInput').click(); platform.pickFolder = platform.pick; platform.cancelImport = () => {};
    return;
  }
  document.documentElement.classList.remove('brisa-android');
  window.BrisaDesktop = {
    fileUrl,
    fullscreen: enabled => invoke('video_mode', { fullscreen: enabled }),
    listVideos: () => invoke('list_media', { kind: 'video' }),
    pickVideos: () => invoke('pick_media', { kind: 'video', folder: false }),
    forgetVideo: id => invoke('forget_media', { id, kind: 'video' }),
  };
  window.BrisaDriveStorage={status:()=>invoke("drive_storage_status"),choose:()=>invoke("choose_drive_folder"),install:()=>invoke("open_drive_setup")};
  window.BrisaDownloads = {
    inspect: url => invoke('inspect', { url }),
    start: (inspectionId, formatId, options = {}) => invoke('start', { inspectionId, formatId, options }),
    cancel: () => invoke('cancel'), state: () => invoke('state'), folder: () => invoke('folder'),
  };
  tauri.event.listen('brisa-download', event => window.dispatchEvent(new CustomEvent('brisa-download', { detail: event.payload })));
  async function imported(entries) {
    const revision = ++importRevision, importId = crypto.randomUUID();
    for (let index = 0; index < entries.length || index === 0; index += 50) {
      if (revision !== importRevision) break;
      const batch = entries.slice(index, index + 50).map(entry => ({ ...entry, nativeId: entry.id, path: fileUrl(entry.path) }));
      await platform.onImport?.({ importId, batchId: String(index), items: batch, done: index + 50 >= entries.length });
    }
  }
  function showError(error) { const toast = document.getElementById('toast'); toast.textContent = String(error?.message || error); toast.hidden = false; setTimeout(() => { toast.hidden = true; }, 4500); }
  platform.pick = () => invoke('pick_media', { kind: 'audio', folder: false }).then(imported).catch(showError);
  platform.pickFolder = () => invoke('pick_media', { kind: 'audio', folder: true }).then(imported).catch(showError);
  platform.cancelImport = () => { importRevision++; };
  platform.saveText = (name, text) => invoke('save_text', { name, text }).catch(showError);
  // The recovered app uses these two native import hooks on both platforms.
  window.BrisaNative = {
    importReady: () => invoke('list_media', { kind: 'audio' }).then(imported).catch(showError),
    forget: id => invoke('forget_media', { id, kind: 'audio' }).catch(showError),
  };
  document.getElementById('fileInput').click = platform.pick;
  if ('mediaSession' in navigator) {
    for (const [action, handler] of Object.entries({ play: () => audio.play(), pause: () => audio.pause(), nexttrack: platform.next, previoustrack: platform.previous, seekto: data => { audio.currentTime = data.seekTime; } })) {
      try { navigator.mediaSession.setActionHandler(action, handler); } catch { }
    }
  }
})();
