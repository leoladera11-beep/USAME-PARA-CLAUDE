import test from 'node:test';
import assert from 'node:assert/strict';
import { filenameInfo, autoNames, mergeSynced } from '../web/music.js';

test('el nombre de una descarga antigua de Windows se muestra sin el sufijo aleatorio', () => {
  assert.deepEqual(filenameInfo('Canción - a1b2c3d4.m4a'), { title: 'Canción', artist: '' });
  assert.deepEqual(filenameInfo('Los Faroles - Carretera al sur - 0f9e8d7c.mp3'), { artist: 'Los Faroles', title: 'Carretera al sur' });
  // Una fecha, un número o una palabra no son el sufijo: se conservan.
  assert.deepEqual(filenameInfo('Concierto - 20240101.mp3'), { artist: 'Concierto', title: '20240101' });
  assert.deepEqual(filenameInfo('Grupo - Canciones.mp3'), { artist: 'Grupo', title: 'Canciones' });
  assert.deepEqual(filenameInfo('Sin separador.flac'), { title: 'Sin separador', artist: '' });
});

test('M4A y los demás formatos no dejan la extensión en el título', () => {
  assert.deepEqual(autoNames({ name: 'Nombre.m4a', title: 'Nombre.m4a' }), { title: 'Nombre', artist: '' });
  assert.deepEqual(autoNames({ name: 'Nombre.m4a', title: '' }), { title: 'Nombre', artist: '' });
  assert.deepEqual(autoNames({ name: 'Artista - Tema.m4a', title: 'Artista - Tema.m4a' }), { title: 'Tema', artist: 'Artista' });
});

test('título y artista de la descarga mandan sobre las etiquetas y el nombre del archivo', () => {
  assert.deepEqual(autoNames({ name: 'Madrugada (Official Audio).m4a', title: 'Madrugada', artist: 'Trío Albor' }, { title: 'otra', artist: 'otro' }), { title: 'Madrugada', artist: 'Trío Albor' });
  assert.deepEqual(autoNames({ name: 'pista.mp3' }, { title: 'De la etiqueta', artist: 'Alguien' }), { title: 'De la etiqueta', artist: 'Alguien' });
});

test('la sincronización no pisa lo editado y sí actualiza tamaño, ruta y estado sin conexión', () => {
  const track = { id: 'ui', nativeId: 'n', name: 'Vídeo.mp3', title: 'Mi título', artist: 'Mi artista', edited: true, size: 1, offlineReady: true, added: 5 };
  mergeSynced(track, { id: 'backend', added: 9, nativeId: 'n', name: 'Vídeo.mp3', title: 'Vídeo', artist: 'Canal', size: 2, offlineReady: false, path: 'nueva' });
  assert.deepEqual(track, { id: 'ui', nativeId: 'n', name: 'Vídeo.mp3', title: 'Mi título', artist: 'Mi artista', edited: true, size: 2, offlineReady: false, added: 5, path: 'nueva' });
});

test('sin edición, un nombre mejor se aplica y un título vacío nunca borra el que había', () => {
  const track = { nativeId: 'n', name: 'Madrugada.m4a', title: 'Madrugada', artist: '', source: { title: 'Madrugada', artist: '' } };
  mergeSynced(track, { nativeId: 'n', name: 'Madrugada.m4a', title: '', artist: '' });
  assert.equal(track.title, 'Madrugada');
  mergeSynced(track, { nativeId: 'n', name: 'Madrugada.m4a', title: 'Madrugada', artist: 'Trío Albor' });
  assert.equal(track.artist, 'Trío Albor');
  // Un título que vino de las etiquetas en una versión anterior no se considera intacto: se respeta.
  const tagged = { nativeId: 't', name: 'pista01.mp3', title: 'De la etiqueta', artist: 'Alguien' };
  mergeSynced(tagged, { nativeId: 't', name: 'pista01.mp3', title: 'Otro', artist: 'Otro' });
  assert.equal(tagged.title, 'De la etiqueta');
});

test('repara los nombres rotos de versiones anteriores que el usuario no tocó', () => {
  const windows = { nativeId: 'w', name: 'Canción - a1b2c3d4.m4a', title: 'a1b2c3d4', artist: 'Canción' };
  mergeSynced(windows, { nativeId: 'w', name: 'Canción - a1b2c3d4.m4a', size: 3 });
  assert.deepEqual([windows.title, windows.artist], ['Canción', '']);
  const drive = { nativeId: 'd', name: 'Nombre.m4a', title: 'Nombre.m4a', artist: '' };
  mergeSynced(drive, { nativeId: 'd', name: 'Nombre.m4a', title: 'Nombre.m4a' });
  assert.equal(drive.title, 'Nombre');
  const blank = { nativeId: 'b', name: 'Artista - Tema.mp3', title: '', artist: '' };
  mergeSynced(blank, { nativeId: 'b', name: 'Artista - Tema.mp3', title: '' });
  assert.deepEqual([blank.title, blank.artist], ['Tema', 'Artista']);
  // Si el usuario ya lo había corregido a mano en el PC, no se toca.
  const fixed = { nativeId: 'f', name: 'Canción - a1b2c3d4.m4a', title: 'Canción bonita', artist: 'Yo' };
  mergeSynced(fixed, { nativeId: 'f', name: 'Canción - a1b2c3d4.m4a' });
  assert.deepEqual([fixed.title, fixed.artist], ['Canción bonita', 'Yo']);
});
