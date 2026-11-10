// Pantalla de inicio: saludo y estantes calculados a partir de la biblioteca.
// Sin imágenes ni peticiones: cada tarjeta es un degradado con el color de la canción, así que
// pintar el inicio cuesta lo mismo en un A30 que en un PC. Solo se repinta si algo cambió.
const SHELF = 10;

export function greeting(hour) {
  return hour >= 5 && hour < 12 ? 'Buenos días' : hour >= 12 && hour < 20 ? 'Buenas tardes' : 'Buenas noches';
}

export function initials(name) {
  const words = String(name || '').trim().split(/\s+/).filter(Boolean);
  return ((words[0]?.[0] || '') + (words.length > 1 ? words[words.length - 1][0] : '')).toLocaleUpperCase() || '♪';
}

/** Datos de los estantes. Función pura para poder probarla sin navegador. */
export function shelves(tracks) {
  const playable = tracks.filter(t => t.supported !== false);
  const recent = playable.filter(t => t.lastPlayed).sort((a, b) => b.lastPlayed - a.lastPlayed).slice(0, SHELF);
  const top = playable.filter(t => (t.plays || 0) >= 2).sort((a, b) => b.plays - a.plays || (b.lastPlayed || 0) - (a.lastPlayed || 0)).slice(0, SHELF);
  const added = [...playable].sort((a, b) => (b.added || 0) - (a.added || 0)).slice(0, SHELF);
  const byArtist = new Map();
  for (const t of playable) {
    const name = String(t.artist || '').trim();
    if (!name) continue;
    const key = name.toLocaleLowerCase();
    const entry = byArtist.get(key) || { name, count: 0, sample: t };
    entry.count++;
    byArtist.set(key, entry);
  }
  const artists = [...byArtist.values()].sort((a, b) => b.count - a.count || a.name.localeCompare(b.name, 'es')).slice(0, 12);
  return { recent, top, added, artists };
}

export function setupHome({ accentFor, esc, getTracks, visible, play, artist }) {
  const el = id => document.getElementById(id);
  let painted = '';
  const note = '<svg aria-hidden="true"><use href="#i-note"/></svg>';
  const trackCard = (t, i) => `<button class="card" style="--i:${i}" data-card-track="${esc(t.id)}"><span class="card-art" style="--tile:${accentFor(t)}">${note}</span><strong>${esc(t.title)}</strong><small>${esc(t.artist || 'Artista desconocido')}</small></button>`;
  const artistCard = (a, i) => `<button class="card artist" style="--i:${i}" data-card-artist="${esc(a.name)}"><span class="card-art" style="--tile:${accentFor(a.sample)}">${esc(initials(a.name))}</span><strong>${esc(a.name)}</strong><small>${a.count} ${a.count === 1 ? 'canción' : 'canciones'}</small></button>`;
  function fill(shelf, row, html, show) {
    el(shelf).hidden = !show;
    if (show) el(row).innerHTML = html;
  }
  function render() {
    if (!visible() || document.hidden) return;
    const data = shelves(getTracks());
    const hello = greeting(new Date().getHours());
    // La firma evita tocar el DOM cuando el contenido de los estantes no ha cambiado.
    const signature = hello + '|' + [data.recent, data.top, data.added].map(list => list.map(t => t.id + ':' + t.title + ':' + t.artist).join(',')).join('|') + '|' + data.artists.map(a => a.name + a.count).join(',');
    if (signature === painted) return;
    painted = signature;
    el('greeting').textContent = hello;
    fill('recentShelf', 'recentRow', data.recent.map(trackCard).join(''), data.recent.length >= 2);
    fill('artistShelf', 'artistRow', data.artists.map(artistCard).join(''), data.artists.length >= 2);
    fill('topShelf', 'topRow', data.top.map(trackCard).join(''), data.top.length >= 3);
    fill('addedShelf', 'addedRow', data.added.map(trackCard).join(''), data.added.length >= 1);
  }
  el('homeView').addEventListener('click', event => {
    const card = event.target.closest('[data-card-track],[data-card-artist]');
    if (!card) return;
    if (card.dataset.cardTrack) play(card.dataset.cardTrack); else artist(card.dataset.cardArtist);
  });
  document.addEventListener('visibilitychange', () => { if (!document.hidden) render(); });
  return { render };
}
