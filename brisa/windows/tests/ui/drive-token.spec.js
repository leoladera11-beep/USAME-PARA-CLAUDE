import { test, expect } from '@playwright/test';
import path from 'node:path';
// Inicio de sesión en Drive con token en Windows, con la parte nativa simulada.
async function open(page) {
  await page.setViewportSize({ width: 1280, height: 900 });
  await page.route('**/brisadrive/**', route => route.fulfill({ path: path.resolve('tests/fixtures/tone.wav'), contentType: 'audio/wav' }));
  await page.addInitScript(() => {
    window.calls = []; let session = { active: false };
    const drive = [
      { id: 'drive:AUD1', path: '', name: 'Ana - Canción de Drive.m4a', size: 4000000, added: 20, kind: 'audio', storage: 'drive-api', driveId: 'AUD1' },
      { id: 'drive:VID1', path: '', name: 'Concierto en Drive.mp4', size: 90000000, added: 10, kind: 'video', storage: 'drive-api', driveId: 'VID1' },
    ];
    window.__TAURI__ = {
      core: {
        convertFileSrc: (source, protocol) => protocol ? new URL('/' + protocol + '/' + source, location.href).href : new URL(source, location.href).href,
        invoke: async (command, args) => {
          calls.push([command, args]);
          if (command === 'list_media') return session.active ? drive.filter(e => e.kind === args.kind) : [];
          if (command === 'state') return { status: 'idle' };
          if (command === 'drive_storage_status') return { configured: false };
          if (command === 'drive_token_status') return session;
          if (command === 'drive_refresh') return session.active ? drive.length : 0;
          if (command === 'drive_token_disconnect') { session = { active: false }; return session; }
          if (command === 'drive_token_connect') {
            if (args.input.access === 'ya29.caducado') throw new Error('El token no es válido o ya caducó. Genera uno nuevo.');
            session = { active: true, email: 'yo@example.com', permanent: !!args.input.refresh, minutes: 58, expired: false, fullDrive: true };
            return session;
          }
        },
      },
      event: { listen: async () => () => { } },
    };
  });
  const errors = []; page.on('pageerror', error => errors.push(error.message));
  await page.goto('/');
  await page.locator('#navVideos').click();
  await page.locator('#configurePcDrive').click();
  await expect(page.locator('#pcDriveDialog')).toBeVisible();
  return errors;
}
test('un token de acceso conecta Drive al instante y su música y vídeos entran en la biblioteca', async ({ page }) => {
  const errors = await open(page);
  await expect(page.locator('#tokenStatus')).toHaveText('Sin sesión por token.');
  await expect(page.locator('#tokenDisconnect')).toBeHidden();
  await page.locator('#tokenAccess').fill('  ya29.token-bueno_0123456789  ');
  await page.locator('#tokenConnect').click();
  await expect(page.locator('#tokenStatus')).toContainText('yo@example.com · caduca en 58 min · ve todo tu Drive');
  await expect(page.locator('#tokenAccess')).toHaveValue('');
  await expect(page.locator('#tokenDisconnect')).toBeVisible();
  await expect(page.locator('#tokenConnect')).toHaveText('Cambiar el token');
  expect(await page.evaluate(() => calls.find(c => c[0] === 'drive_token_connect')[1])).toEqual({ input: { access: 'ya29.token-bueno_0123456789' } });
  await page.locator('#pcDriveDialog .dialog-head button').click();
  await expect(page.locator('#videosList')).toContainText('Concierto en Drive.mp4');
  await expect(page.locator('#videosList')).toContainText('se reproduce por internet');
  await page.locator('#navAll').click();
  await expect(page.locator('#trackList')).toContainText('Canción de Drive');
  await expect(page.locator('#trackList')).toContainText('En Drive');
  await page.locator('#trackList [data-action="play"]').first().click();
  await expect.poll(() => page.evaluate(() => window.BrisaPlatform.audio.paused)).toBe(false);
  expect(await page.evaluate(() => window.BrisaPlatform.audio.src)).toMatch(/\/brisadrive\/AUD1$/);
  await expect(page.locator('#toast')).toBeHidden();
  expect(errors).toEqual([]);
});
test('un token rechazado explica el motivo, no borra lo escrito y no crea sesión', async ({ page }) => {
  const errors = await open(page);
  await page.locator('#tokenConnect').click();
  await expect(page.locator('#tokenStatus')).toHaveText('Pega primero el token de acceso.');
  expect(await page.evaluate(() => calls.some(c => c[0] === 'drive_token_connect'))).toBe(false);
  await page.locator('#tokenAccess').fill('ya29.caducado');
  await page.locator('#tokenConnect').click();
  await expect(page.locator('#tokenStatus')).toHaveText('Sin sesión por token.');
  await expect(page.locator('#tokenAccess')).toHaveValue('ya29.caducado');
  await expect(page.locator('#tokenDisconnect')).toBeHidden();
  expect(errors).toEqual([]);
});
test('con token de actualización la sesión es permanente y se puede cerrar', async ({ page }) => {
  const errors = await open(page);
  await page.locator('#tokenMore summary').click();
  await page.locator('#tokenRefresh').fill('1//refresh-token-0123456789');
  await page.locator('#tokenClientId').fill('123-abc.apps.googleusercontent.com');
  await page.locator('#tokenClientSecret').fill('GOCSPX-secreto');
  await page.locator('#tokenConnect').click();
  await expect(page.locator('#tokenStatus')).toContainText('se renueva sola');
  expect(await page.evaluate(() => calls.find(c => c[0] === 'drive_token_connect')[1].input)).toEqual({ refresh: '1//refresh-token-0123456789', clientId: '123-abc.apps.googleusercontent.com', clientSecret: 'GOCSPX-secreto' });
  await expect(page.locator('#tokenRefresh')).toHaveValue('');
  await expect(page.locator('#tokenClientSecret')).toHaveValue('');
  expect(await page.locator('#tokenAccess').evaluate(node => getComputedStyle(node).webkitTextSecurity)).toBe('disc');
  await page.locator('#pcDriveDialog .dialog-head button').click();
  await page.locator('#navAll').click();
  await expect(page.locator('#trackList')).toContainText('Canción de Drive');
  await page.locator('#navVideos').click();
  await page.locator('#configurePcDrive').click();
  await page.locator('#tokenRefreshList').click();
  await expect(page.locator('#toast')).toContainText('2 archivos de música y vídeo');
  await page.locator('#tokenDisconnect').click();
  await expect(page.locator('#tokenStatus')).toHaveText('Sin sesión por token.');
  await page.locator('#pcDriveDialog .dialog-head button').click();
  await expect(page.locator('#videosList')).not.toContainText('Concierto en Drive');
  await page.locator('#navAll').click();
  await expect(page.locator('#trackList')).not.toContainText('Canción de Drive');
  await expect(page.locator('#shortcutAllCount')).toHaveText('0 canciones');
  expect(errors).toEqual([]);
});
