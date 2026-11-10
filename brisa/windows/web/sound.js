export function sanitizeSound(value = {}) {
  const band = (key, fallback) => Number.isFinite(Number(value[key])) ? Math.max(-6, Math.min(6, Math.round(Number(value[key])))) : fallback;
  return { mode: value.mode === 'gentle' ? 'gentle' : 'original', bass: band('bass', 2), mid: band('mid', 0), treble: band('treble', 1) };
}
export function headroomDb(settings) {
  return settings.mode === 'original' ? 0 : -(Math.max(0, settings.bass, settings.mid, settings.treble) + 1);
}
export function setupSound() {
  const el = id => document.getElementById(id), bridge = window.BrisaSoundNative;
  let settings;
  try { settings = sanitizeSound(JSON.parse(bridge ? bridge.settings() : localStorage.getItem('brisa-sound') || '{}')); }
  catch { settings = sanitizeSound(); }
  function render() {
    if (!bridge) settings.mode = 'original';
    el('soundMode').value = settings.mode;
    el('soundBands').hidden = settings.mode === 'original';
    for (const [key, id] of [['bass', 'Bass'], ['mid', 'Mid'], ['treble', 'Treble']]) {
      el('sound' + id).value = settings[key];
      el('sound' + id + 'Value').textContent = (settings[key] > 0 ? '+' : '') + settings[key] + ' dB';
    }
    el('soundStatus').textContent = bridge ? (settings.mode === 'original' ? 'Sonido original · sin efectos, igual en música y vídeo' : 'Ecualizador activo · se aplica igual a música y vídeo') : 'El ecualizador está disponible en la app instalada.';
    el('soundMode').disabled = !bridge;
    el('soundReset').disabled = !bridge;
    for (const input of el('soundBands').querySelectorAll('input')) input.disabled = !bridge;
  }
  function save() {
    settings = sanitizeSound(settings);
    try { localStorage.setItem('brisa-sound', JSON.stringify(settings)); bridge?.configure(JSON.stringify(settings)); }
    catch { el('soundStatus').textContent = 'No se pudieron guardar los ajustes. Inténtalo otra vez.'; return; }
    render();
  }
  for (const button of document.querySelectorAll('[data-sound]')) button.onclick = () => { render(); el('soundDialog').showModal(); };
  el('soundMode').onchange = event => { settings.mode = event.target.value; save(); };
  for (const [key, id] of [['bass', 'Bass'], ['mid', 'Mid'], ['treble', 'Treble']]) el('sound' + id).oninput = event => { settings[key] = Number(event.target.value); save(); };
  el('soundReset').onclick = () => { settings = sanitizeSound(); save(); };
  window.addEventListener('brisa-sound', event => { el('soundStatus').textContent = event.detail.message; });
  render();
}
