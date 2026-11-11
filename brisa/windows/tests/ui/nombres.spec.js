import { test, expect } from '@playwright/test';
import path from 'node:path';

// La app de Windows con Tauri simulado: una descarga registrada con título y artista propios.
async function abrir(page, entries) {
  await page.setViewportSize({ width: 1280, height: 820 });
  await page.route('**/mock-track.wav', route => route.fulfill({ path: path.resolve('tests/fixtures/tone.wav'), contentType: 'audio/wav' }));
  await page.addInitScript(entries => {
    window.__TAURI__ = {
      core: { convertFileSrc: source => new URL(source, location.href).href,
        invoke: async (command, args) => command === 'list_media' ? entries.filter(e => e.kind === args.kind) : command === 'state' ? { status: 'idle' } : command === 'drive_token_status' ? { active: false } : command === 'drive_storage_status' ? {} : undefined },
      event: { listen: async () => () => {} },
    };
  }, entries);
  await page.goto('/'); await page.waitForFunction(() => document.querySelectorAll('#trackList .track').length > 0);
}
const descarga = { id: 'uno', path: 'mock-track.wav', name: 'Madrugada (Official Audio).wav', size: 88244, added: 1, kind: 'audio', storage: 'local', title: 'Madrugada', artist: 'Trío Albor' };

test('una descarga se muestra con el título y el artista registrados, sin sufijo ni adornos', async ({ page }) => {
  await abrir(page, [descarga, { ...descarga, id: 'dos', name: 'Otra canción - a1b2c3d4.wav', title: undefined, artist: undefined }]);
  await expect(page.locator('#trackList')).toContainText('Madrugada'); await expect(page.locator('#trackList')).toContainText('Trío Albor');
  await expect(page.locator('#trackList')).not.toContainText('Official Audio');
  await expect(page.locator('#trackList')).toContainText('Otra canción'); await expect(page.locator('#trackList')).not.toContainText('a1b2c3d4');
});

test('editar en el PC actualiza la sesión multimedia al momento, sobrevive a la sincronización y no corta la música', async ({ page }) => {
  await abrir(page, [descarga]);
  await page.locator('#trackList [data-action="play"]').first().click();
  await expect.poll(() => page.evaluate(() => navigator.mediaSession.metadata?.title)).toBe('Madrugada');
  const fuente = await page.evaluate(() => window.BrisaPlatform.audio.src);
  await page.locator('#nowEdit').click();
  await page.locator('#renameTitle').fill('Amanecer'); await page.locator('#renameArtist').fill('Yo misma');
  await page.locator('#renameForm button[type=submit]').click(); await expect(page.locator('#renameDialog')).toBeHidden();
  expect(await page.evaluate(() => ({ title: navigator.mediaSession.metadata.title, artist: navigator.mediaSession.metadata.artist }))).toEqual({ title: 'Amanecer', artist: 'Yo misma' });
  expect(await page.evaluate(() => window.BrisaPlatform.audio.src)).toBe(fuente);
  await expect(page.locator('#nowTitle')).toHaveText('Amanecer');
  // La biblioteca se vuelve a listar (como tras cada descarga) y lo editado se conserva.
  await page.evaluate(() => window.BrisaNative.importReady()); await page.waitForTimeout(300);
  await expect(page.locator('#trackList .track-meta strong')).toHaveText(['Amanecer']);
  await page.locator('#trackList [data-action="more"]').first().click();
  await expect(page.locator('[data-sheet="rename"]')).toBeVisible();
});

test('en el PC los botones de ±10 s siguen en la fila de transporte y las flechas siguen activas', async ({ page }) => {
  await abrir(page, [descarga]);
  await page.locator('#trackList [data-action="play"]').first().click();
  const cajas = await page.evaluate(() => Object.fromEntries(['backBtn', 'forwardBtn', 'playBtn', 'prevBtn', 'nextBtn'].map(id => { const r = document.getElementById(id).getBoundingClientRect(); return [id, { centro: r.top + r.height / 2, left: r.left }]; })));
  for (const id of ['backBtn', 'forwardBtn', 'prevBtn', 'nextBtn']) expect(Math.abs(cajas[id].centro - cajas.playBtn.centro)).toBeLessThan(3);
  expect(cajas.prevBtn.left).toBeLessThan(cajas.backBtn.left); expect(cajas.backBtn.left).toBeLessThan(cajas.playBtn.left);
  expect(cajas.playBtn.left).toBeLessThan(cajas.forwardBtn.left); expect(cajas.forwardBtn.left).toBeLessThan(cajas.nextBtn.left);
  await expect(page.locator('#progress')).toHaveAttribute('aria-keyshortcuts', 'ArrowLeft ArrowRight');
  // El atajo llega a la misma función que los botones: aparece el aviso de salto.
  await page.evaluate(() => document.activeElement?.blur());
  await expect(page.locator('#seekFeedback')).toBeHidden();
  await page.keyboard.press('ArrowRight');
  await expect(page.locator('#seekFeedback')).toBeVisible();
  await page.locator('#backBtn').click();
  await expect(page.locator('#seekFeedback')).toBeVisible();
});
