import { test, expect } from '@playwright/test';
async function open(page, viewport = { width: 390, height: 844 }) {
  await page.setViewportSize(viewport);
  await page.addInitScript(() => {
    window.testCalls = []; window.testVideos = [];
    window.BrisaDownloads = {
      inspect: async url => { window.testCalls.push(['inspect', url]); return { inspectionId: 'inspection', title: '<Vídeo de prueba>', duration: 125, formats: [
        { id: '4k', label: '2160p', codec: 'VP9', fps: 60, size: 1073741824, compatible: false },
        { id: 'hd', label: '1080p', codec: 'H.264', fps: 30, size: 104857600, compatible: true, recommended: true },
      ] }; },
      start: async (inspection, format, options) => { window.testCalls.push(['start', inspection, format, options]); window.dispatchEvent(new CustomEvent('brisa-download', { detail: { status: 'downloading', title: '<Vídeo de prueba>', downloadedBytes: 1, totalBytes: 100 } })); },
      cancel: async () => { window.testCalls.push(['cancel']); window.dispatchEvent(new CustomEvent('brisa-download', { detail: { status: 'cancelled' } })); },
      state: async () => ({ status: 'idle' }), folder: async () => {},
    };
  });
  await page.goto('/');
  const button = viewport.width <= 700 ? page.locator('#mobileVideosBtn') : page.locator('#navVideos');
  await button.click();
}
test('pegar un enlace muestra calidades, aviso 4K e inicia con una sola elección', async ({ page }) => {
  const errors = []; page.on('pageerror', error => errors.push(error.message));
  await open(page);
  await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');
  await expect(page.locator('#videoFormats button')).toHaveCount(2);
  await expect(page.locator('#videoSourceTitle')).toHaveText('<Vídeo de prueba>');
  await expect(page.locator('#videoFormats')).toContainText('Puede no reproducirse');
  await page.getByRole('button', { name: /1080p/ }).click();
  await expect(page.locator('#downloadStatus')).toHaveText('Descargando…');
  expect(await page.evaluate(() => window.testCalls.filter(c => c[0] === 'start'))).toEqual([['start', 'inspection', 'hd', {output:'mp4',destination:'local',bitrate:320,audioFormat:'original'}]]);
  await expect(page.locator('#videoFormats button').first()).toBeDisabled();
  await page.locator('#cancelDownload').click();
  await expect(page.locator('#downloadStatus')).toHaveText('Descarga cancelada.');
  await expect(page.locator('#videoFormats button').first()).toBeEnabled();
  expect(errors).toEqual([]);
});

test('Ambos inicia una sola tarea, conserva la calidad elegida y anuncia los dos archivos', async ({page}) => {
  await open(page, {width:1280,height:900});
  await page.locator('#downloadOutput').selectOption('both');
  await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');
  await expect(page.locator('#videoFormats button')).toHaveCount(2);
  await expect(page.locator('#videoSourceInfo')).toContainText('Dos archivos');
  await page.getByRole('button',{name:/1080p · MP4 \+ música/}).click();
  expect(await page.evaluate(()=>testCalls.filter(c=>c[0]==='start'))).toEqual([['start','inspection','hd',{output:'both',destination:'local',bitrate:320,audioFormat:'original'}]]);
  await expect(page.locator('#downloadOutput')).toBeDisabled();
  await page.evaluate(()=>window.dispatchEvent(new CustomEvent('brisa-download',{detail:{status:'converting',title:'Prueba'}})));
  await expect(page.locator('#downloadStatus')).toContainText('Guardando el audio original');
  await expect(page.locator('#cancelDownload')).toBeVisible();
  await page.evaluate(()=>window.dispatchEvent(new CustomEvent('brisa-download',{detail:{status:'completed',output:'both',fileCount:2,title:'Prueba'}})));
  await expect(page.locator('#downloadStatus')).toContainText('Vídeo y música guardados');
  await expect(page.locator('#downloadStatus')).toContainText('disponibles sin conexión');
  await expect(page.locator('#toast')).toContainText('Vídeo y música guardados');
  await expect(page.locator('#downloadOutput')).toBeEnabled();
});

test('Ambos permite cancelar durante la conversión sin anunciar éxito', async ({page}) => {
  await open(page,{width:1280,height:900});
  await page.locator('#downloadOutput').selectOption('both');
  await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');
  await page.getByRole('button',{name:/1080p · MP4 \+ música/}).click();
  await page.evaluate(()=>window.dispatchEvent(new CustomEvent('brisa-download',{detail:{status:'converting'}})));
  await page.locator('#cancelDownload').click();
  await expect(page.locator('#downloadStatus')).toHaveText('Descarga cancelada.');
  await expect(page.locator('#toast')).toBeHidden();
  await expect(page.locator('#downloadOutput')).toBeEnabled();
});
test('una respuesta anterior no reemplaza el nuevo enlace', async ({ page }) => {
  await open(page);
  await page.evaluate(() => { window.BrisaDownloads.inspect = () => new Promise(resolve => { window.resolveOld = resolve; }); });
  await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');
  // La consulta automática ya está en curso y el botón se desactiva durante la espera.
  await page.waitForFunction(() => typeof window.resolveOld === 'function');
  await page.locator('#videoLink').fill('texto sin enlace');
  await page.evaluate(() => window.resolveOld({ inspectionId: 'old', title: 'Anterior', formats: [{ id: 'old', label: '720p' }] }));
  await expect(page.locator('#videoLinkResult')).toBeHidden();
  await expect(page.locator('#inspectVideo')).toBeEnabled();
});
test('un error permite reintentar sin crear un vídeo incompleto', async ({ page }) => {
  await open(page, { width: 1280, height: 900 });
  await page.evaluate(() => { window.BrisaDownloads.inspect = async () => { throw new Error('Sin conexión. Inténtalo otra vez.'); }; });
  await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');
  await page.locator('#inspectVideo').click();
  await expect(page.locator('#videoLinkMessage')).toHaveText('Sin conexión. Inténtalo otra vez.');
  await expect(page.locator('#inspectVideo')).toBeEnabled();
  await expect(page.locator('#videosList')).toBeEmpty();
});
test('controles visibles a 320px, sin desplazamiento horizontal y diálogo accesible', async ({ page }) => {
  await open(page, { width: 320, height: 740 });
  await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');
  await expect(page.locator('#videoFormats button')).toHaveCount(2);
  expect(await page.evaluate(() => document.documentElement.scrollWidth <= window.innerWidth)).toBeTruthy();
  await page.locator('#videosPane [data-sound]').click();
  await expect(page.getByRole('dialog', { name: 'Tu sonido, a tu gusto' })).toBeVisible();
  await page.getByRole('button', { name: 'Cerrar ajustes de sonido' }).click();
  await expect(page.locator('#soundDialog')).toBeHidden();
  await page.screenshot({ path: 'test-results/brisa-mobile.png', fullPage: true });
});
