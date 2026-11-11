// No service or polling loop is created while the app is idle.
const pending = new Map();
let sequence = 0;
export function bridgeRequest(bridge, method, ...args) {
  return new Promise((resolve, reject) => {
    const id = String(++sequence);
    const timer = setTimeout(() => {
      pending.delete(id);
      reject(new Error('La consulta tardó demasiado. Comprueba tu conexión e inténtalo otra vez.'));
    }, method === 'connect' ? 300000 : 60000);
    pending.set(id, { resolve, reject, timer });
    try { window[bridge][method](id, ...args); }
    catch (error) { clearTimeout(timer); pending.delete(id); reject(error); }
  });
}
if (typeof window !== 'undefined') {
  window.BrisaDownloadResult = ({ requestId, ok, result, error }) => {
    const request = pending.get(String(requestId));
    if (!request) return;
    pending.delete(String(requestId));
    clearTimeout(request.timer);
    if (ok) request.resolve(result); else request.reject(new Error(error || 'No se pudo completar la operación.'));
  };
}
export const nativeRequest = (method, ...args) => bridgeRequest('BrisaDownloadNative', method, ...args);
export function downloadsAPI() {
  if (window.BrisaDownloads) return window.BrisaDownloads;
  if (window.BrisaDownloadNative) return {
    inspect: url => nativeRequest('inspect', url),
    start: (inspectionId, formatId, options = {}) => nativeRequest('start', inspectionId, formatId, JSON.stringify(options)),
    cancel: () => nativeRequest('cancel'),
    state: () => nativeRequest('state'),
    folder: () => nativeRequest('folder'),
  };
  return null;
}
