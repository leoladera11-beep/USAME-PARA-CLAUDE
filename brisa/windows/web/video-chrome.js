const viewer = document.getElementById('videoViewer');
const video = document.getElementById('localVideo');
const icons = {
  full: '<rect x="4" y="4" width="16" height="16" stroke-dasharray="4 3"/>',
  pip: '<rect x="3" y="5" width="18" height="14" rx="2"/><rect x="12" y="11" width="7" height="6" rx="1" fill="currentColor"/>',
  gear: '<circle cx="12" cy="12" r="6"/><circle cx="12" cy="12" r="2"/><path d="M12 2v4m0 12v4M2 12h4m12 0h4M5 5l3 3m8 8 3 3M5 19l3-3M16 8l3-3"/>',
};
const controls = document.createElement('div');
controls.className = 'video-overlay-actions';
function button(label, icon) {
  const b = document.createElement('button');
  b.type = 'button'; b.className = 'video-icon'; b.setAttribute('aria-label', label); b.title = label;
  b.innerHTML = '<svg viewBox="0 0 24 24" aria-hidden="true">' + icons[icon] + '</svg>';
  controls.append(b); return b;
}
const gear = button('Ajustes del vídeo', 'gear');
// Imagen en imagen: el vídeo sigue en una ventana flotante mientras usas otras apps.
const pip = button('Imagen en imagen', 'pip');
pip.hidden = !document.pictureInPictureEnabled;
pip.onclick = async () => {
  try {
    if (document.pictureInPictureElement) await document.exitPictureInPicture();
    else await video.requestPictureInPicture();
  } catch {
    const toast = document.getElementById('toast');
    toast.textContent = 'La ventana flotante no está disponible para este vídeo.'; toast.hidden = false;
    setTimeout(() => { toast.hidden = true; }, 4000);
  }
};
video.addEventListener('enterpictureinpicture', () => { pip.setAttribute('aria-label', 'Salir de imagen en imagen'); pip.title = 'Salir de imagen en imagen'; });
video.addEventListener('leavepictureinpicture', () => { pip.setAttribute('aria-label', 'Imagen en imagen'); pip.title = 'Imagen en imagen'; });
const fullscreen = button('Pantalla completa', 'full');
viewer.append(controls);
const dialog = document.createElement('dialog');
dialog.id = 'videoSettings';
dialog.setAttribute('aria-labelledby', 'videoSettingsTitle');
dialog.innerHTML = `<form method="dialog" class="dialog-head"><h2 id="videoSettingsTitle">Ajustes del vídeo</h2><button class="icon-btn" aria-label="Cerrar ajustes">×</button></form>
<label class="field-label">Velocidad<select id="videoSpeed"><option value="0.5">0.5×</option><option value="0.75">0.75×</option><option value="1" selected>Normal</option><option value="1.25">1.25×</option><option value="1.5">1.5×</option><option value="2">2×</option></select></label>
<button type="button" id="videoSound" class="secondary full">Sonido</button>
<button type="button" id="videoBack" class="secondary full">Cerrar vídeo y volver a la biblioteca</button>`;
// A dialog must be inside the fullscreen element to remain visible there.
viewer.append(dialog);
gear.onclick = () => dialog.showModal();
dialog.querySelector('#videoSpeed').onchange = e => { video.playbackRate = Number(e.target.value); };
dialog.querySelector('#videoSound').onclick = () => {
  dialog.close();
  const sound = document.getElementById('soundDialog');
  viewer.append(sound);
  sound.addEventListener('close', () => document.body.append(sound), { once: true });
  document.querySelector('[data-sound]').click();
};
dialog.querySelector('#videoBack').onclick = () => { dialog.close(); document.getElementById('closeVideo').click(); };
let nativeFullscreen = false, hideTimer;
const scrollLocks = new Set();
function update() {
  const enabled = nativeFullscreen || document.fullscreenElement === viewer;
  viewer.classList.toggle('video-fullscreen', enabled);
  document.documentElement.classList.toggle('brisa-video-fullscreen', enabled);
  if (enabled) {
    for (let parent=viewer.parentElement;parent;parent=parent.parentElement) {
      parent.classList.add('brisa-video-scroll-lock');scrollLocks.add(parent);
    }
  } else {
    for (const element of scrollLocks) element.classList.remove('brisa-video-scroll-lock');
    scrollLocks.clear();
  }
  fullscreen.setAttribute('aria-label', enabled ? 'Salir de pantalla completa' : 'Pantalla completa');
  fullscreen.setAttribute('aria-pressed', String(enabled));
  fullscreen.title = fullscreen.getAttribute('aria-label');
}
async function setFullscreen(enabled) {
  if (window.BrisaDesktop?.fullscreen) {
    await window.BrisaDesktop.fullscreen(enabled); nativeFullscreen = enabled;
  } else if (enabled) await viewer.requestFullscreen();
  else if (document.fullscreenElement) await document.exitFullscreen();
  update(); reveal();
}
fullscreen.onclick = () => setFullscreen(!(nativeFullscreen || document.fullscreenElement === viewer)).catch(() => {
  const toast = document.getElementById('toast'); toast.textContent = 'No se pudo activar pantalla completa.'; toast.hidden = false;
});
function reveal() {
  controls.classList.remove('faded'); clearTimeout(hideTimer);
  if (!video.paused) hideTimer = setTimeout(() => controls.classList.add('faded'), 3500);
}
viewer.addEventListener('pointerdown', reveal);
viewer.addEventListener('pointermove', reveal);
video.addEventListener('play', reveal);
video.addEventListener('pause', reveal);
controls.addEventListener('focusin', reveal);
document.addEventListener('fullscreenchange', update);
document.addEventListener('keydown', e => {
  if (e.key === 'Escape' && nativeFullscreen && !dialog.open && !document.querySelector('#soundDialog[open]')) setFullscreen(false).catch(() => {});
});
document.getElementById('closeVideo').addEventListener('click', () => {
  if (nativeFullscreen || document.fullscreenElement === viewer) setFullscreen(false).catch(() => {});
});
const style = document.createElement('link'); style.rel = 'stylesheet'; style.href = 'video-chrome.css'; document.head.append(style);
