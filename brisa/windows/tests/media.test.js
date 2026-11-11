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
  assert.equal(formatBytes(1073741824), '1.00 GB');
});
