import test from 'node:test';
import assert from 'node:assert/strict';
import { greeting, initials, shelves } from '../web/home.js';
import { audioChoice } from '../web/downloads.js';
import { releasable } from '../../android/decoded/assets/drive.js';

test('el saludo cambia con la hora', () => {
  assert.equal(greeting(7), 'Buenos días');
  assert.equal(greeting(15), 'Buenas tardes');
  assert.equal(greeting(22), 'Buenas noches');
  assert.equal(greeting(3), 'Buenas noches');
});
test('las iniciales de un artista usan la primera y la última palabra', () => {
  assert.equal(initials('Valeria Montes'), 'VM');
  assert.equal(initials('los faroles del sur'), 'LS');
  assert.equal(initials('Irene'), 'I');
  assert.equal(initials(''), '♪');
});
test('los estantes ordenan por uso reciente, reproducciones y fecha, sin canciones incompatibles', () => {
  const tracks = [
    { id: 'a', title: 'A', artist: 'Uno', added: 1, lastPlayed: 50, plays: 9 },
    { id: 'b', title: 'B', artist: 'uno', added: 3, lastPlayed: 90, plays: 2 },
    { id: 'c', title: 'C', artist: 'Dos', added: 2, plays: 1 },
    { id: 'd', title: 'D', artist: '', added: 9, lastPlayed: 99, plays: 30, supported: false },
  ];
  const data = shelves(tracks);
  assert.deepEqual(data.recent.map(t => t.id), ['b', 'a']);
  assert.deepEqual(data.top.map(t => t.id), ['a', 'b']);
  assert.deepEqual(data.added.map(t => t.id), ['b', 'c', 'a']);
  assert.deepEqual(data.artists.map(a => [a.name, a.count]), [['Uno', 2], ['Dos', 1]]);
});
test('los estantes se limitan a diez tarjetas y doce artistas', () => {
  const many = Array.from({ length: 40 }, (_, i) => ({ id: 'x' + i, title: 'T' + i, artist: 'Artista ' + i, added: i, lastPlayed: i + 1, plays: i + 2 }));
  const data = shelves(many);
  assert.equal(data.recent.length, 10); assert.equal(data.top.length, 10); assert.equal(data.added.length, 10); assert.equal(data.artists.length, 12);
});
test('la música original no se recomprime y ocupa menos que el MP3', () => {
  const original = audioChoice('original', 200), mp3 = audioChoice('mp3', 200);
  assert.match(original.summary, /sin recomprimir/); assert.match(mp3.summary, /con pérdida/);
  assert.equal(original.button, 'Descargar música'); assert.equal(mp3.button, 'Descargar MP3');
  assert.ok(original.size < mp3.size);
  assert.equal(audioChoice(undefined).button, 'Descargar música');
});
test('solo Drive libera únicamente las copias cuya subida está confirmada', () => {
  const mark = { since: 1000, ids: ['vieja'] };
  const records = [
    { id: 'subida', storageMode: 'drive', added: 1500, driveId: 'd1', managedOffline: true },
    { id: 'pendiente', storageMode: 'drive', added: 1600, pendingUpload: true, managedOffline: true },
    { id: 'subtitulos', storageMode: 'drive', added: 1700, driveId: 'd3', captionPending: true, managedOffline: true },
    { id: 'anterior', storageMode: 'drive', added: 10, driveId: 'd4', managedOffline: true },
    { id: 'carpeta', storageMode: 'local', added: 1800 },
    { id: 'vieja', storageMode: 'drive', added: 5, driveId: 'd5', managedOffline: true },
    { id: 'ya-libre', storageMode: 'drive', added: 1900, driveId: 'd6', managedOffline: false },
  ];
  assert.deepEqual(releasable(records, mark), { free: ['subida', 'vieja'], waiting: ['pendiente', 'subtitulos'] });
  assert.deepEqual(releasable(records, null), { free: [], waiting: [] });
  assert.deepEqual(releasable(records, { since: 0, ids: [] }), { free: [], waiting: [] });
});

import { describeToken, readTokenForm } from '../web/drive-token.js';
test('el estado de la sesión por token se explica sin mostrar el token', () => {
  assert.equal(describeToken(null), 'Sin sesión por token.');
  assert.equal(describeToken({ active: false }), 'Sin sesión por token.');
  assert.match(describeToken({ active: true, email: 'yo@example.com', minutes: 42 }), /yo@example\.com · caduca en 42 min · ve los archivos creados/);
  assert.match(describeToken({ active: true, email: 'yo@example.com', permanent: true, fullDrive: true }), /se renueva sola · ve todo tu Drive/);
  assert.match(describeToken({ active: true, email: 'yo@example.com', expired: true }), /caducó\. Pega un token nuevo/);
});
test('el formulario del token solo envía los campos rellenados y sin espacios', () => {
  assert.deepEqual(readTokenForm({ access: '  ya29.abc \n', refresh: '', clientId: undefined, clientSecret: '   ' }), { access: 'ya29.abc' });
  assert.deepEqual(readTokenForm({ refresh: '1//r', clientId: 'id.apps', clientSecret: 's' }), { refresh: '1//r', clientId: 'id.apps', clientSecret: 's' });
  assert.deepEqual(readTokenForm({}), {});
});
