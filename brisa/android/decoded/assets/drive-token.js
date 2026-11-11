// Inicio de sesión en Drive con un token OAuth pegado a mano. Formulario compartido por Android y
// Windows; cada plataforma aporta su propia forma de guardar y usar la sesión.
// El token se trata como una contraseña: se envía solo a la parte nativa, que lo valida contra
// Google, y los campos se vacían en cuanto la sesión queda guardada.

/** Texto del estado de la sesión. Función pura para probarla sin navegador. */
export function describeToken(state) {
  if (!state?.active) return 'Sin sesión por token.';
  const reach = state.fullDrive ? 've todo tu Drive' : 've los archivos creados con ese mismo cliente';
  if (state.expired) return `La sesión por token de ${state.email} caducó. Pega un token nuevo para seguir.`;
  if (state.permanent) return `Sesión por token: ${state.email} · se renueva sola · ${reach}.`;
  return `Sesión por token: ${state.email} · caduca en ${state.minutes} min · ${reach}.`;
}

/** Recoge y limpia los campos. Los vacíos no se envían. */
export function readTokenForm(values) {
  const input = {};
  for (const key of ['access', 'refresh', 'clientId', 'clientSecret']) {
    const text = String(values[key] || '').trim();
    if (text) input[key] = text;
  }
  return input;
}

export function setupDriveToken({ api, notify, onChange }) {
  const el = id => document.getElementById(id);
  const fields = { access: el('tokenAccess'), refresh: el('tokenRefresh'), clientId: el('tokenClientId'), clientSecret: el('tokenClientSecret') };
  let busy = false;
  async function show() {
    if (!api) { el('tokenStatus').textContent = 'Disponible en la app instalada.'; el('tokenConnect').disabled = true; return {}; }
    let state = {};
    try { state = await api.status() || {}; } catch { }
    el('tokenStatus').textContent = describeToken(state);
    el('tokenDisconnect').hidden = !state.active;
    el('tokenConnect').textContent = state.active ? 'Cambiar el token' : 'Usar este token';
    el('tokenConnect').disabled = busy;
    return state;
  }
  el('tokenConnect').onclick = async () => {
    if (!api || busy) return;
    const input = readTokenForm({ access: fields.access.value, refresh: fields.refresh.value, clientId: fields.clientId.value, clientSecret: fields.clientSecret.value });
    if (!input.access && !input.refresh) { el('tokenStatus').textContent = 'Pega primero el token de acceso.'; fields.access.focus(); return; }
    busy = true; el('tokenConnect').disabled = true; el('tokenStatus').textContent = 'Comprobando el token con Google…';
    try {
      const state = await api.connect(input);
      for (const field of Object.values(fields)) field.value = '';
      el('tokenMore').open = false;
      el('tokenStatus').textContent = describeToken(state);
      notify('Drive conectado: ' + state.email);
      busy = false;
      await onChange?.(state);
    } catch (error) {
      el('tokenStatus').textContent = error?.message || String(error);
    } finally { busy = false; await show().catch(() => { }); }
  };
  el('tokenDisconnect').onclick = async () => {
    if (!api || busy) return;
    busy = true;
    try { await api.disconnect(); notify('Sesión por token cerrada.'); await onChange?.({ active: false }); }
    catch (error) { el('tokenStatus').textContent = error?.message || String(error); }
    finally { busy = false; await show().catch(() => { }); }
  };
  show().catch(() => { });
  return { show };
}
