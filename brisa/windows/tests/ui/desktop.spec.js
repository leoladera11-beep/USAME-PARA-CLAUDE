import { test, expect } from '@playwright/test';
import path from 'node:path';
test('el adaptador Windows importa música y registra el vídeo terminado automáticamente', async ({ page }) => {
  await page.setViewportSize({ width: 1280, height: 900 });
  await page.route('**/mock-track.wav', route => route.fulfill({ path: path.resolve('tests/fixtures/tone.wav'), contentType: 'audio/wav' }));
  await page.addInitScript(() => {
    let entries = [];
    const track = { id: 'track-one', path: 'mock-track.wav', name: 'Piano.wav', size: 88244, added: Date.now(), kind: 'audio' };
    const listeners = {};
    window.__TAURI__ = {
      core: {
        convertFileSrc: source => new URL(source, location.href).href,
        invoke: async (command, args) => {
          if (command === 'list_media') return entries.filter(e => e.kind === args.kind);
          if (command === 'pick_media') { entries = [track]; return [track]; }
          if (command === 'state') return { status: 'idle' };
          if (command === 'inspect') return { inspectionId: 'windows', title: 'Vídeo local', duration: 60, formats: [{ id: 'hd', label: '1080p', codec: 'H.264', compatible: true }] };
          if (command === 'start') {
            entries.push({ id: 'download-one', path: 'download.mp4', name: 'Vídeo local.mp4', size: 1024, added: Date.now(), kind: 'video' });
            listeners['brisa-download']?.({ payload: { status: 'completed', title: 'Vídeo local', downloadedBytes: 1024, totalBytes: 1024 } });
          }
        },
      },
      event: { listen: async (type, callback) => { listeners[type] = callback; return () => {}; } },
    };
  });
  const errors = []; page.on('pageerror', error => errors.push(error.message));
  await page.goto('/');
  await page.getByRole('button', { name: 'Añadir mi música' }).click();
  await expect(page.locator('#trackList')).toContainText('Piano');
  await page.locator('#trackList [data-action="play"]').click();
  await expect.poll(() => page.evaluate(() => window.BrisaPlatform.audio.paused)).toBe(false);
  await page.locator('#navVideos').click();
  await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');
  await page.getByRole('button', { name: /1080p/ }).click();
  await expect(page.locator('#videosList')).toContainText('Vídeo local.mp4');
  await expect(page.locator('#downloadStatus')).toContainText('disponible sin conexión');
  expect(errors).toEqual([]);
});
