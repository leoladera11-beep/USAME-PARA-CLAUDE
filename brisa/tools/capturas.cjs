// Capturas de la interfaz con los puentes nativos simulados, para revisar un cambio visual sin teléfono.
// Uso (desde brisa/):  node tools/capturas.cjs android/decoded/assets /tmp/capturas/brisa android
//                      node tools/capturas.cjs windows/web /tmp/capturas/brisa desktop
// Genera inicio, reproducción, reproductor ampliado, biblioteca, menú, ajustes y vídeos a 360×780 (A30),
// 412×915 (F8 Pro) y 1280×820 (PC). Con BRISA_CHROMIUM se elige el navegador.
const path0 = require('node:path');
const { chromium } = require(require.resolve('playwright', { paths: [path0.join(__dirname, '..', 'windows'), process.cwd()] }));
const http = require('node:http'), fs = require('node:fs'), path = require('node:path');
(async () => {
const [dir, prefix, kind] = process.argv.slice(2);
const types = { '.html':'text/html', '.js':'text/javascript', '.css':'text/css', '.svg':'image/svg+xml', '.png':'image/png', '.json':'application/json', '.ttf':'font/ttf' };
const server = http.createServer((req, res) => { const p = path.join(dir, decodeURIComponent(req.url.split('?')[0] === '/' ? '/index.html' : req.url.split('?')[0])); fs.readFile(p, (e, b) => { if (e) { res.writeHead(404); res.end(); } else { res.writeHead(200, { 'content-type': types[path.extname(p)] || 'application/octet-stream' }); res.end(b); } }); });
await new Promise(r => server.listen(0, '127.0.0.1', r)); const base = 'http://127.0.0.1:' + server.address().port;
const browser = await chromium.launch(process.env.BRISA_CHROMIUM ? { executablePath: process.env.BRISA_CHROMIUM, args: ['--no-sandbox'] } : {});
const names = [['Luz de enero','Valeria Montes',214],['Carretera al sur','Los Faroles',187],['Nada que perder','Irene Sala',241],['Madrugada','Trío Albor',199],['Cielo abierto','Valeria Montes',226],['Volver a casa','Marea Baja',203],['Mil veces','Irene Sala',178],['El último tren','Los Faroles',255],['Agua clara','Trío Albor',192],['Fuego lento','Marea Baja',230]];
const items = names.map(([title, artist, duration], i) => ({ nativeId: 'n' + i, name: title + '.mp3', title, artist, duration, size: 7_500_000 + i * 1000, offlineReady: i!==2, driveId: i===2||i===4?'d'+i:'', assetId: i===2||i===4?'a'+i:undefined, lastPlayed: i<6?1000-i:0, plays: i<5?6-i:0, added: 5000-i, path: 'x' + i }));
async function run(viewport, tag, mobile) {
  const ctx = await browser.newContext({ viewport, deviceScaleFactor: 2, isMobile: mobile, hasTouch: mobile });
  const page = await ctx.newPage(); const errors = []; page.on('pageerror', e => errors.push(e.message));
  await page.addInitScript(({ kind }) => {
    if (kind === 'android') {
      const noop = () => {}; let state = { id: '', playing: false, prepared: false, position: 0, duration: 0 };
      window.BrisaNative = new Proxy({ snapshot: () => JSON.stringify(state), listVideos: () => JSON.stringify([{ id: 'v1', name: 'Concierto en vivo.mp4', size: 734003200, added: 2, offlineReady: true }, { id: 'v2', name: 'Tutorial de guitarra.mp4', size: 120003200, added: 1, offlineReady: false, storageLabel: 'En Drive · preparar sin conexión' }]),
        load: json => { const t = JSON.parse(json); state = { id: t.id, playing: false, prepared: true, position: 42, duration: t.duration }; setTimeout(() => window.BrisaPlatform.receive(state), 20); },
        play: () => { state.playing = true; setTimeout(() => window.BrisaPlatform.receive(state), 20); }, pause: () => { state.playing = false; setTimeout(() => window.BrisaPlatform.receive(state), 20); } }, { get: (t, k) => k in t ? t[k] : noop });
      window.BrisaSoundNative = { settings: () => '{"mode":"gentle","bass":2,"mid":0,"treble":1}', configure: noop };
      window.BrisaDownloadNative = new Proxy({}, { get: () => (id) => setTimeout(() => window.BrisaDownloadResult({ requestId: id, ok: true, result: { status: 'idle' } }), 5) });
      window.BrisaDriveNative = new Proxy({}, { get: (t, k) => (id) => setTimeout(() => window.BrisaDownloadResult({ requestId: id, ok: true, result: k === 'status' ? { connected: false, email: '' } : [] }), 5) });
      window.BrisaPresentation = { profile: () => JSON.stringify({profile: innerWidth>400?'f8':'a30', powerSave:false}) };window.BrisaTuning={state:()=>'{"streamMobile":false}',streamCheck:()=>'',setStreamMobile(){},setAudioFormat(){}};
    }
  }, { kind });
  await page.goto(base + '/index.html'); await page.waitForTimeout(600);
  await page.evaluate(async items => { await window.BrisaPlatform.onImport?.({ importId: 'demo', batchId: 'demo-0', items, done: true }); }, items).catch(e => errors.push('import ' + e.message));
  await page.waitForTimeout(500);
  await page.screenshot({ path: `${prefix}-${tag}-1-inicio.png` });
  await page.locator('#trackList [data-action="play"]').first().click().catch(() => {}); await page.waitForTimeout(400);
  await page.screenshot({ path: `${prefix}-${tag}-2-reproduciendo.png` });
  if (mobile) { await page.locator('#expandPlayerBtn').click().catch(() => {}); await page.waitForTimeout(500); await page.screenshot({ path: `${prefix}-${tag}-3-reproductor.png` }); await page.locator('#closePlayerBtn').click().catch(() => {}); }
  if (mobile) { await page.locator('#mobileLibraryBtn').click().catch(()=>{}); await page.waitForTimeout(450); await page.screenshot({ path: `${prefix}-${tag}-5-biblioteca.png` }); await page.locator('#trackList [data-action="more"]').first().click().catch(()=>{}); await page.waitForTimeout(450); await page.screenshot({ path: `${prefix}-${tag}-6-menu.png` }); await page.keyboard.press('Escape'); await page.locator('[data-settings]:visible').first().click().catch(()=>{}); await page.waitForTimeout(450); await page.screenshot({ path: `${prefix}-${tag}-7-ajustes.png` }); await page.keyboard.press('Escape'); }
  await page.locator(mobile ? '#mobileVideosBtn' : '#navVideos').click().catch(() => {}); await page.waitForTimeout(500);
  await page.screenshot({ path: `${prefix}-${tag}-4-videos.png`, fullPage: true });
  console.log(tag, 'errores:', JSON.stringify(errors)); await ctx.close();
}
if (kind === 'android') { await run({ width: 360, height: 780 }, 'a30', true); await run({ width: 412, height: 915 }, 'f8', true); }
else await run({ width: 1280, height: 820 }, 'pc', false);
await browser.close(); server.close();
})();
