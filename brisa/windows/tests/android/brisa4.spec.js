import { test, expect } from '@playwright/test';
// Página completa de Android con los puentes nativos simulados.
async function open(page, { streamCheck = '', records = [] } = {}) {
  await page.setViewportSize({ width: 360, height: 780 });
  await page.addInitScript(({ streamCheck, records }) => {
    const noop = () => { };
    window.calls = []; window.native = { id: '', playing: false, prepared: false, position: 0, duration: 0 }; window.streamReason = streamCheck; window.driveRecords = records;
    const push = () => setTimeout(() => window.BrisaPlatform.receive({ ...window.native }), 5);
    window.BrisaNative = new Proxy({
      snapshot: () => JSON.stringify(window.native), listVideos: () => '[]',
      load: json => { const t = JSON.parse(json); calls.push(['load', t.id]); window.native = { id: t.id, playing: false, prepared: true, position: 0, duration: t.duration || 200 }; push(); },
      play: () => { calls.push(['play']); window.native.playing = true; push(); },
      pause: () => { calls.push(['pause']); window.native.playing = false; push(); },
      seek: seconds => { calls.push(['seek', seconds]); window.native.position = seconds; },
      queue: json => calls.push(['queue', JSON.parse(json).tracks.map(t => t.id)]),
    }, { get: (target, key) => key in target ? target[key] : noop });
    window.BrisaSoundNative = { settings: () => '{}', configure: noop };
    window.BrisaPresentation = { profile: () => '{"profile":"a30","powerSave":false}' };
    window.BrisaTuning = { state: () => JSON.stringify({ streamMobile: !!window.mobile }), streamCheck: () => window.streamReason, setStreamMobile: value => { window.mobile = value; }, setAudioFormat: value => calls.push(['audioFormat', value]) };
    const reply = (id, result) => setTimeout(() => window.BrisaDownloadResult({ requestId: id, ok: true, result }), 5);
    window.BrisaDownloadNative = { state: id => reply(id, { status: 'idle' }), inspect: id => reply(id, { inspectionId: 'plan', title: 'Tema', duration: 180, formats: [{ id: 'hd', label: '1080p' }], audioAvailable: true }), start: (id, plan, format, options) => { calls.push(['start', format, JSON.parse(options)]); reply(id, true); }, cancel: id => reply(id, true), folder: id => reply(id, true) };
    window.BrisaDriveNative = { status: id => reply(id, { connected: true, email: 'yo@example.com' }), assets: id => reply(id, []), records: id => reply(id, window.driveRecords), removeOffline: (id, asset) => { calls.push(['removeOffline', asset]); window.driveRecords = window.driveRecords.map(r => r.id === asset ? { ...r, managedOffline: false, offlineReady: false } : r); reply(id, true); }, prepare: (id, asset) => { calls.push(['prepare', asset]); reply(id, true); }, refresh: id => reply(id, true), connect: id => reply(id, true), disconnect: id => reply(id, true), retry: id => reply(id, true) };
  }, { streamCheck, records });
  const errors = []; page.on('pageerror', error => errors.push(error.message));
  await page.goto('/index.html');
  await page.waitForFunction(() => window.BrisaPlatform?.onImport);
  await page.evaluate(() => window.BrisaPlatform.onImport({ importId: 'demo', batchId: 'demo-0', done: true, items: [
    { nativeId: 'n-local', name: 'Local.mp3', title: 'Canción local', artist: 'Ana', duration: 200, size: 5000000, offlineReady: true, path: 'x' },
    { nativeId: 'asset:nube', assetId: 'nube', driveId: 'drive-1', name: 'Nube.m4a', title: 'Canción en Drive', artist: 'Ana', duration: 180, size: 4000000, offlineReady: false, path: 'y' },
  ] }));
  await expect(page.locator('#shortcutAllCount')).toHaveText('2 canciones');
  await page.locator('#mobileLibraryBtn').click();
  return errors;
}
const row = (page, title) => page.locator('#trackList .track', { hasText: title });

test('una canción que solo está en Drive se reproduce por internet y entra en la cola nativa', async ({ page }) => {
  const errors = await open(page);
  await expect(row(page, 'Canción en Drive')).toContainText('En Drive');
  await row(page, 'Canción en Drive').locator('[data-action="play"]').click();
  await expect.poll(() => page.evaluate(() => window.native.playing)).toBe(true);
  const calls = await page.evaluate(() => window.calls);
  expect(calls.some(c => c[0] === 'load')).toBe(true);
  expect(calls.filter(c => c[0] === 'queue').at(-1)[1].length).toBe(2);
  await expect(page.locator('#nowTitle')).toHaveText('Canción en Drive');
  expect(errors).toEqual([]);
});
test('sin Wi-Fi la canción de Drive explica el motivo y no se marca como incompatible', async ({ page }) => {
  const errors = await open(page, { streamCheck: 'Este archivo está en Drive y la reproducción en la nube está limitada a Wi-Fi.' });
  const before = await page.evaluate(() => window.calls.filter(c => c[0] === 'load').length);
  await row(page, 'Canción en Drive').locator('[data-action="play"]').click();
  await expect(page.locator('#toast')).toContainText('limitada a Wi-Fi');
  expect(await page.evaluate(() => window.calls.filter(c => c[0] === 'load').length)).toBe(before);
  await expect(page.locator('#nowTitle')).not.toHaveText('Canción en Drive');
  await page.evaluate(() => { window.streamReason = ''; });
  await row(page, 'Canción en Drive').locator('[data-action="play"]').click();
  await expect.poll(() => page.evaluate(() => window.native.playing)).toBe(true);
  expect(errors).toEqual([]);
});
test('si Android liberó el servicio en pausa, reproducir recarga la canción en el mismo segundo y reenvía la cola', async ({ page }) => {
  const errors = await open(page);
  await row(page, 'Canción local').locator('[data-action="play"]').click();
  await expect.poll(() => page.evaluate(() => window.native.playing)).toBe(true);
  await page.evaluate(() => { window.native.position = 73; window.native.playing = false; window.BrisaPlatform.receive({ ...window.native }); });
  await expect.poll(() => page.evaluate(() => window.BrisaPlatform.audio.paused)).toBe(true);
  // El servicio se detuvo: ya no conserva ninguna canción.
  await page.evaluate(() => { window.native = { id: '', playing: false, prepared: false, position: 0, duration: 0 }; window.calls.length = 0; });
  await page.locator('#playBtn').click();
  await expect.poll(() => page.evaluate(() => window.native.playing)).toBe(true);
  const calls = await page.evaluate(() => window.calls);
  expect(calls.filter(c => c[0] === 'load').length).toBe(1);
  expect(calls.some(c => c[0] === 'queue')).toBe(true);
  expect(calls.find(c => c[0] === 'seek')[1]).toBeCloseTo(73, 0);
  // Con el servicio vivo, pausar y reanudar no recarga nada.
  await page.locator('#playBtn').click();
  await expect.poll(() => page.evaluate(() => window.native.playing)).toBe(false);
  await page.evaluate(() => { window.calls.length = 0; });
  await page.locator('#playBtn').click();
  await expect.poll(() => page.evaluate(() => window.native.playing)).toBe(true);
  expect((await page.evaluate(() => window.calls)).some(c => c[0] === 'load')).toBe(false);
  expect(errors).toEqual([]);
});
test('solo Drive descarga con audio original y libera la copia cuando la subida está confirmada', async ({ page }) => {
  const errors = await open(page);
  await page.locator('#mobileVideosBtn').click();
  await page.locator('#downloadOutput').selectOption('mp3');
  await page.locator('#downloadDestination').selectOption('drive-only');
  await expect(page.locator('#destinationNote')).toContainText('no ocupa espacio');
  await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');
  await page.getByRole('button', { name: /Descargar música/ }).click();
  await expect.poll(() => page.evaluate(() => window.calls.find(c => c[0] === 'start'))).toEqual(['start', 'audio', { output: 'mp3', destination: 'drive', bitrate: 320, audioFormat: 'original', subtitles: 'auto-es' }]);
  expect((await page.evaluate(() => window.calls)).some(c => c[0] === 'audioFormat' && c[1] === 'original')).toBe(true);
  // La subida aún está pendiente: la copia se conserva.
  await page.evaluate(() => { window.driveRecords = [{ id: 'nuevo', name: 'Tema.m4a', kind: 'audio', storageMode: 'drive', added: Date.now(), pendingUpload: true, managedOffline: true, offlineReady: true }]; window.dispatchEvent(new CustomEvent('brisa-download', { detail: { status: 'completed', title: 'Tema', warning: 'Disponible sin conexión. La subida a Drive está pendiente.' } })); });
  await expect(page.locator('#downloadStatus')).toContainText('pendiente');
  expect((await page.evaluate(() => window.calls)).some(c => c[0] === 'removeOffline')).toBe(false);
  // Cuando Drive confirma la subida se libera la copia del teléfono.
  await page.evaluate(() => { window.driveRecords = [{ id: 'nuevo', name: 'Tema.m4a', kind: 'audio', storageMode: 'drive', added: Date.now(), driveId: 'd9', managedOffline: true, offlineReady: true }]; window.dispatchEvent(new CustomEvent('brisa-download', { detail: { status: 'uploading', title: 'Tema' } })); window.dispatchEvent(new CustomEvent('brisa-download', { detail: { status: 'completed', title: 'Tema' } })); });
  await expect.poll(() => page.evaluate(() => window.calls.filter(c => c[0] === 'removeOffline'))).toEqual([['removeOffline', 'nuevo']]);
  await expect(page.locator('#downloadStatus')).toContainText('no ocupa espacio');
  expect(errors).toEqual([]);
});
test('ajustes permite datos móviles para Drive y el perfil A30 usa cristal ligero', async ({ page }) => {
  const errors = await open(page);
  await expect(page.locator('html')).toHaveAttribute('data-fx', 'lite');
  expect(await page.evaluate(() => getComputedStyle(document.querySelector('.player')).backdropFilter)).toBe('none');
  await page.locator('.topbar [data-settings]').click();
  await expect(page.locator('#streamNote')).toContainText('únicamente con Wi-Fi');
  await page.locator('#streamMobile').evaluate(input => input.click());
  await expect(page.locator('#streamNote')).toContainText('datos móviles');
  expect(await page.evaluate(() => window.mobile)).toBe(true);
  expect(errors).toEqual([]);
});
