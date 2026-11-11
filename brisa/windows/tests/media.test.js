import test from 'node:test';
import assert from 'node:assert/strict';
import { parseVideoLink } from '../web/video.js';
import { sanitizeSound, headroomDb } from '../web/sound.js';
import { formatBytes } from '../web/downloads.js';

test('normaliza enlaces de YouTube y Shorts sin conservar parámetros de seguimiento', () => {
  for (const url of ['https://youtu.be/abcdefghijk?si=tracking', 'https://www.youtube.com/watch?v=abcdefghijk&list=other', 'https://m.youtube.com/shorts/abcdefghijk', 'https://www.youtube-nocookie.com/embed/abcdefghijk']) {
    assert.deepEqual(parseVideoLink(url), { kind: 'youtube', id: 'abcdefghijk', url: 'https://www.youtube.com/watch?v=abcdefghijk' });
  }
});
test('rechaza esquemas, credenciales, dominios engañosos e identificadores no válidos', () => {
  for (const url of ['javascript:alert(1)', 'file:///x.mp4', 'http://youtube.com/watch?v=abcdefghijk', 'https://user:secret@youtube.com/watch?v=abcdefghijk', 'https://youtube.com.evil.test/watch?v=abcdefghijk', 'https://www.youtube.com/watch?v=short', 'https://appassets.androidplatform.net/private.mp4']) assert.equal(parseVideoLink(url), null, url);
});
test('los archivos directos conservan su URL y parámetros necesarios', () => {
  assert.deepEqual(parseVideoLink('https://example.org/video.mp4?token=abc'), { kind: 'file', url: 'https://example.org/video.mp4?token=abc' });
});
test('los ajustes de sonido quedan acotados y sonido original no reserva ganancia', () => {
  assert.deepEqual(sanitizeSound({ mode: 'original', bass: 90, mid: -20, treble: 'invalid' }), { mode: 'original', bass: 6, mid: -6, treble: 1 });
  assert.equal(sanitizeSound().mode, 'original');
  assert.equal(sanitizeSound({ mode: 'gentle' }).mode, 'gentle');
  assert.equal(headroomDb({ mode: 'original', bass: 6, mid: 6, treble: 6 }), 0);
  assert.equal(headroomDb({ mode: 'gentle', bass: 6, mid: 6, treble: 6 }), -7);
  assert.equal(headroomDb(sanitizeSound()), 0);
  assert.equal(headroomDb(sanitizeSound({ mode: 'gentle' })), -3);
});
test('los tamaños desconocidos se muestran como estimaciones pendientes', () => {
  assert.equal(formatBytes(0), 'Tamaño por determinar');
  assert.equal(formatBytes(1_000_000_000), '1.00 GB');
});

test('la advertencia móvil comienza por encima de 100 MB decimales', async () => {
  const { shouldWarnMobile, estimateTransfer } = await import('../web/downloads.js');
  assert.equal(shouldWarnMobile('mobile', 100_000_000), false);
  assert.equal(shouldWarnMobile('mobile', 100_000_001), true);
  assert.equal(shouldWarnMobile('wifi', 200_000_000), false);
  assert.equal(shouldWarnMobile('mobile', 0), false);
  assert.equal(estimateTransfer({ duration: 600, audioSize: 5_000_000 }, { size: 180_000_000 }, 'mp3'), 5_000_000);
  assert.equal(estimateTransfer({ duration: 600, audioSize: 5_000_000 }, { size: 180_000_000 }, 'both'), 180_000_000);
});

test('recomienda 720p compatible y deja disponibles las demás calidades', async () => {
  const { orderQualities } = await import('../web/downloads.js');
  const formats = [
    { id: '4k', label: '2160p', compatible: false },
    { id: 'fhd', label: '1080p', compatible: true },
    { id: 'small', label: '360p', compatible: true },
    { id: 'hd', label: '720p', compatible: true },
  ];
  assert.deepEqual(orderQualities(formats).map(format => format.id), ['hd', '4k', 'fhd', 'small']);
  assert.equal(orderQualities(formats.slice(0, 2))[0].id, 'fhd');
});
