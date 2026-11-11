import { test, expect } from '@playwright/test';
import path from 'node:path';
const songs = [['Luz de enero', 'Valeria Montes'], ['Carretera al sur', 'Los Faroles'], ['Nada que perder', 'Valeria Montes'], ['Madrugada', 'Los Faroles']];
async function open(page, size = { width: 1280, height: 860 }) {
  await page.setViewportSize(size);
  await page.route('**/mock-*.wav', route => route.fulfill({ path: path.resolve('tests/fixtures/tone.wav'), contentType: 'audio/wav' }));
  await page.addInitScript(songs => {
    const entries = songs.map(([title, artist], i) => ({ id: 'song-' + i, path: 'mock-' + i + '.wav', name: artist + ' - ' + title + '.wav', size: 88244, added: 1000 + i, kind: 'audio' }));
    window.__TAURI__ = { core: { convertFileSrc: source => new URL(source, location.href).href, invoke: async (command, args) => command === 'list_media' ? (args.kind === 'audio' ? window.loaded || [] : []) : command === 'pick_media' ? (window.loaded = entries) : command === 'state' ? { status: 'idle' } : undefined }, event: { listen: async () => () => { } } };
  }, songs);
  const errors = []; page.on('pageerror', error => errors.push(error.message));
  await page.goto('/');
  return errors;
}
test('inicio da la bienvenida vacío y después muestra estantes, artistas y accesos', async ({ page }) => {
  const errors = await open(page);
  await expect(page.locator('#greeting')).toHaveText(/Buen(os días|as tardes|as noches)/);
  await expect(page.locator('#welcome')).toBeVisible();
  await page.getByRole('button', { name: 'Añadir mi música' }).click();
  await expect(page.locator('#welcome')).toBeHidden();
  await expect(page.locator('#addedRow .card')).toHaveCount(4);
  await expect(page.locator('#artistRow .card')).toHaveCount(2);
  await expect(page.locator('#artistRow')).toContainText('Valeria Montes');
  await expect(page.locator('#shortcutAllCount')).toHaveText('4 canciones');
  await page.locator('#artistRow .card').first().click();
  await expect(page.locator('body')).toHaveAttribute('data-view', 'search');
  await expect(page.locator('#trackList .track')).toHaveCount(2);
  await page.locator('#navHome').click();
  await expect(page.locator('body')).toHaveAttribute('data-view', 'home');
  await expect(page.locator('#search')).toHaveValue('');
  expect(errors).toEqual([]);
});
test('el menú de una canción la pone a continuación y la cola lo refleja', async ({ page }) => {
  const errors = await open(page);
  await page.getByRole('button', { name: 'Añadir mi música' }).click();
  await page.locator('#navAll').click();
  await expect(page.locator('body')).toHaveAttribute('data-view', 'library');
  await page.locator('#trackList [data-action="play"]').first().click();
  await expect.poll(() => page.evaluate(() => window.BrisaPlatform.audio.paused)).toBe(false);
  const last = page.locator('#trackList .track').last();
  const title = await last.locator('strong').textContent();
  await last.locator('[data-action="more"]').click();
  await expect(page.locator('#trackSheet')).toBeVisible();
  await expect(page.locator('#sheetTitle')).toHaveText(title);
  await expect(page.locator('#sheetOffline')).toBeHidden();
  await page.locator('[data-sheet="next"]').click();
  await expect(page.locator('#trackSheet')).toBeHidden();
  await expect(page.locator('#toast')).toContainText('a continuación');
  await page.locator('#queueBtn').click();
  await expect(page.locator('#queueList .queue-item').nth(1)).toContainText(title);
  expect(errors).toEqual([]);
});
test('los efectos de cristal se adaptan al equipo y se detienen fuera de pantalla', async ({ page }) => {
  const errors = await open(page);
  const html = page.locator('html');
  await expect(html).toHaveAttribute('data-fx', 'full');
  expect(await page.evaluate(() => getComputedStyle(document.querySelector('.player')).backdropFilter)).toContain('blur');
  expect(await page.evaluate(() => getComputedStyle(document.querySelector('.aurora i')).animationName)).toBe('drift-a');
  await page.locator('.sidebar [data-settings]').click();
  await page.locator('#fxLevel').selectOption('lite');
  await expect(html).toHaveAttribute('data-fx', 'lite');
  expect(await page.evaluate(() => getComputedStyle(document.querySelector('.player')).backdropFilter)).toBe('none');
  expect(await page.evaluate(() => getComputedStyle(document.querySelector('.aurora i')).animationName)).toBe('none');
  await page.locator('#fxLevel').selectOption('auto');
  // El perfil A30 y el ahorro de batería nunca usan desenfoque.
  await page.evaluate(() => { document.documentElement.dataset.brisaProfile = 'a30'; window.dispatchEvent(new CustomEvent('brisa-power', { detail: { profile: 'a30', powerSave: false } })); });
  await expect(html).toHaveAttribute('data-fx', 'lite');
  await page.evaluate(() => window.dispatchEvent(new CustomEvent('brisa-power', { detail: { profile: 'f8', powerSave: true } })));
  await expect(html).toHaveAttribute('data-fx', 'lite');
  await page.evaluate(() => window.dispatchEvent(new CustomEvent('brisa-power', { detail: { profile: 'desktop', powerSave: false } })));
  await expect(html).toHaveAttribute('data-fx', 'full');
  // Con animaciones desactivadas no queda ninguna transición.
  await page.locator('#motionToggle').evaluate(input => input.click());
  await expect(html).toHaveAttribute('data-fx', 'off');
  expect(await page.evaluate(() => getComputedStyle(document.querySelector('.main-play')).transitionDuration)).toBe('0s');
  await page.locator('#motionToggle').evaluate(input => input.click());
  await expect(html).toHaveAttribute('data-fx', 'full');
  // En segundo plano toda animación queda en pausa.
  await page.evaluate(() => document.documentElement.classList.add('brisa-background'));
  expect(await page.evaluate(() => getComputedStyle(document.querySelector('.aurora i')).animationPlayState)).toBe('paused');
  expect(errors).toEqual([]);
});
test('el vídeo ofrece imagen en imagen y el teléfono usa pestañas inferiores', async ({ page }) => {
  const errors = await open(page, { width: 390, height: 820 });
  await expect(page.locator('.bottom-nav')).toBeVisible();
  await expect(page.locator('.sidebar')).toBeHidden();
  await page.locator('#mobileLibraryBtn').click();
  await expect(page.locator('body')).toHaveAttribute('data-view', 'library');
  await expect(page.locator('#homeView')).toBeHidden();
  await page.locator('#mobileSearchBtn').click();
  await expect(page.locator('#search')).toBeFocused();
  await page.locator('#mobileVideosBtn').click();
  await expect(page.locator('#videosPane')).toBeVisible();
  await expect(page.locator('.video-overlay-actions button[aria-label="Imagen en imagen"]')).toHaveCount(1);
  expect(await page.evaluate(() => document.documentElement.scrollWidth <= window.innerWidth)).toBe(true);
  expect(errors).toEqual([]);
});
