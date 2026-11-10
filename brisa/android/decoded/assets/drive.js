// Google Drive en Android. Los archivos que están solo en Drive se reproducen por internet;
// la copia sin conexión es opcional y se gestiona archivo por archivo.
import { bridgeRequest } from './download-api.js';

export function driveAPI() {
  if (window.BrisaDrive) return window.BrisaDrive;
  if (!window.BrisaDriveNative) return null;
  return Object.fromEntries(['status', 'connect', 'disconnect', 'refresh', 'assets', 'records', 'prepare', 'retry', 'removeOffline'].map(method => [method, (...args) => bridgeRequest('BrisaDriveNative', method, ...args)]));
}

export async function syncAudioAssets() {
  const api = driveAPI(); if (!api) return;
  const entries = await api.assets(); const importId = 'assets-' + Date.now();
  for (let i = 0; i < entries.length; i += 50) await window.BrisaPlatform.onImport?.({ importId, batchId: importId + '-' + i, items: entries.slice(i, i + 50), done: i + 50 >= entries.length });
}

// «Solo Drive»: se anota cuándo empezó la descarga y, cuando Drive confirma la subida, se quita
// la copia privada del teléfono. Si la subida queda pendiente la copia se conserva: nunca se
// borra un archivo que todavía no está a salvo en Drive.
const DRIVE_ONLY = 'brisa-drive-only';
function readMark() { try { return JSON.parse(localStorage.getItem(DRIVE_ONLY) || 'null'); } catch { return null; } }
function writeMark(mark) { try { if (mark) localStorage.setItem(DRIVE_ONLY, JSON.stringify(mark)); else localStorage.removeItem(DRIVE_ONLY); } catch { } }
export function beginDriveOnly(enabled) {
  const mark = readMark() || { since: 0, ids: [] };
  if (enabled) writeMark({ since: Date.now() - 5000, ids: mark.ids || [] });
  else writeMark(mark.ids?.length ? { since: 0, ids: mark.ids } : null);
}
/** Elige qué copias se pueden liberar ya. Función pura para probarla sin teléfono. */
export function releasable(records, mark) {
  const wanted = new Set(mark?.ids || []);
  for (const item of records) if (mark?.since && item.storageMode === 'drive' && (item.added || 0) >= mark.since) wanted.add(item.id);
  const free = [], waiting = [];
  for (const item of records) {
    if (!wanted.has(item.id)) continue;
    if (item.driveId && !item.pendingUpload && !item.captionPending) { if (item.managedOffline) free.push(item.id); }
    else if (item.managedOffline) waiting.push(item.id);
  }
  return { free, waiting };
}
export async function freeDriveOnly() {
  const api = driveAPI(), mark = readMark();
  if (!api || !mark) return false;
  const { free, waiting } = releasable(await api.records(), mark);
  let released = 0;
  for (const id of free) { try { await api.removeOffline(id); released++; } catch { waiting.push(id); } }
  writeMark(waiting.length ? { since: 0, ids: waiting } : null);
  return released > 0;
}
export const driveHooks = () => driveAPI() ? { status: () => driveAPI().status(), syncAssets: syncAudioAssets, beginDriveOnly, freeDriveOnly } : null;

export function setupDrive({ notify, refresh }) {
  const el = id => document.getElementById(id), api = driveAPI(); let busy = false;
  if (api) window.BrisaDriveActions = {
    prepare: id => api.prepare(id),
    removeOffline: async id => { await api.removeOffline(id); await syncAudioAssets(); await refresh(); },
  };
  const show = async () => {
    if (!api) { el('driveAccount').textContent = 'Disponible en la app instalada'; return; }
    const s = await api.status();
    el('driveAccount').textContent = s.connected ? 'Cuenta: ' + s.email : 'Sin cuenta conectada';
    el('connectDrive').textContent = s.connected ? 'Renovar conexión' : 'Conectar cuenta';
    el('refreshDrive').disabled = !s.connected || busy; el('disconnectDrive').disabled = !s.connected || busy;
    const records = await api.records(); const root = el('driveFiles'); root.replaceChildren();
    for (const item of records.filter(x => x.driveId || x.pendingUpload)) {
      const row = document.createElement('article'); row.className = 'drive-file';
      const name = document.createElement('strong'); name.textContent = item.name;
      const detail = document.createElement('p'); detail.className = 'muted';
      detail.textContent = [item.kind === 'audio' ? 'Música' : 'Vídeo', item.offlineReady ? 'Con copia sin conexión en este teléfono' : 'Solo en Drive · se reproduce por internet', item.pendingUpload ? 'Subida pendiente' : item.captionPending ? 'Subtítulos pendientes' : '', item.account || ''].filter(Boolean).join(' · ');
      row.append(name, detail);
      const action = (label, method) => {
        const b = document.createElement('button'); b.className = 'secondary'; b.textContent = label; b.disabled = busy;
        b.onclick = async () => {
          b.disabled = true;
          try {
            await api[method](item.assetId || item.id);
            if (method === 'removeOffline') { await syncAudioAssets(); await refresh(); await show(); }
            else { el('driveMessage').textContent = 'Tarea iniciada. Puedes seguir el progreso en la descarga.'; el('driveDialog').close(); }
          } catch (e) { notify(e.message); b.disabled = false; }
        };
        row.append(b);
      };
      if ((item.pendingUpload || item.captionPending) && item.offlineReady) action('Reintentar subida', 'retry');
      if (item.hidden && item.offlineReady) action('Volver a biblioteca', 'prepare');
      if (item.driveId && !item.offlineReady) action('Guardar sin conexión', 'prepare');
      if (item.managedOffline && item.offlineReady && item.driveId && !item.pendingUpload) action('Liberar espacio en este teléfono', 'removeOffline');
      root.append(row);
    }
  };
  el('openDrive').onclick = () => { el('driveDialog').showModal(); show().catch(e => notify(e.message)); };
  const operation = async (method) => {
    if (!api) return notify('Abre la app instalada de Brisa para usar Drive.');
    if (busy) return; busy = true;
    for (const id of ['connectDrive', 'refreshDrive', 'disconnectDrive']) el(id).disabled = true;
    el('driveMessage').textContent = method === 'connect' ? 'Completa la autorización en Google…' : method === 'refresh' ? 'Consultando tus archivos de Brisa…' : 'Desconectando…';
    try {
      await api[method]();
      if (method === 'refresh' || method === 'connect') { if (method === 'connect') await api.refresh(); await syncAudioAssets(); await refresh(); }
      el('driveMessage').textContent = method === 'disconnect' ? 'Cuenta desconectada. Tus copias sin conexión se conservan.' : method === 'connect' ? 'Cuenta conectada.' : 'Biblioteca actualizada.';
    } catch (e) { el('driveMessage').textContent = e.message; } finally { busy = false; show().catch(() => { }); }
  };
  for (const [id, method] of [['connectDrive', 'connect'], ['refreshDrive', 'refresh'], ['disconnectDrive', 'disconnect']]) el(id).onclick = () => operation(method);
  window.addEventListener('brisa-download', e => { if (['completed', 'error', 'cancelled'].includes(e.detail?.status)) syncAudioAssets().catch(() => { }); });
  syncAudioAssets().catch(() => { });
  // Si quedó alguna subida pendiente de una descarga «solo Drive», se revisa al abrir.
  freeDriveOnly().then(done => { if (done) return syncAudioAssets().then(refresh); }).catch(() => { });
  return { show };
}
