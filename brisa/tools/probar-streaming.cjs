// Reproduce audio y vídeo en un navegador real a través de los dos puentes de streaming:
//   · android  StreamRelay (Java), el que usa el teléfono para reproducir desde Drive
//   · windows  el código de brisadrive:// (Rust) con tramos pequeños, frente a un Drive simulado
// Comprueba que el medio carga, avanza, salta a otra posición y termina sin errores. No sustituye
// a probar en el teléfono (allí el reproductor es el de Android), pero valida que la entrega por
// rangos es correcta para un reproductor real. Uso: node tools/probar-streaming.cjs
const path = require('node:path');
const { spawn } = require('node:child_process');
const root = path.join(__dirname, '..');
const { chromium } = require(require.resolve('playwright', { paths: [path.join(root, 'windows')] }));
const fixtures = path.join(root, 'windows', 'tests', 'fixtures');
const fs = require('node:fs'), os = require('node:os');
// Un audio de dos minutos (unos 10 MB) generado al vuelo: obliga a muchos tramos y a saltar a zonas no leídas.
const long = path.join(fs.mkdtempSync(path.join(os.tmpdir(), 'brisa-')), 'largo.wav');
{
  const rate = 44100, seconds = 120, samples = rate * seconds, header = Buffer.alloc(44), body = Buffer.alloc(samples * 2);
  for (let i = 0; i < samples; i++) body.writeInt16LE(Math.round(6000 * Math.sin(i * 2 * Math.PI * 440 / rate)), i * 2);
  header.write('RIFF', 0); header.writeUInt32LE(36 + body.length, 4); header.write('WAVEfmt ', 8); header.writeUInt32LE(16, 16); header.writeUInt16LE(1, 20); header.writeUInt16LE(1, 22);
  header.writeUInt32LE(rate, 24); header.writeUInt32LE(rate * 2, 28); header.writeUInt16LE(2, 32); header.writeUInt16LE(16, 34); header.write('data', 36); header.writeUInt32LE(body.length, 40);
  fs.writeFileSync(long, Buffer.concat([header, body]));
}
const media = [[long, 'audio/wav', 'audio'], ['tone.wav', 'audio/wav', 'audio'], ['aac.m4a', 'audio/mp4', 'audio'], ['opus.webm', 'audio/webm', 'audio'], ['h264.mp4', 'video/mp4', 'video'], ['h264-4k.mp4', 'video/mp4', 'video']];
const servers = {
  android: (file, type) => ['java', ['-cp', path.join(root, 'test-classes'), 'com.brisa.local.StreamRelayDemo', file, type]],
  windows: (file, type) => [process.env.BRISA_BRIDGE, [file, type, '32768']],
};
function start(command, args) {
  return new Promise((resolve, reject) => {
    const child = spawn(command, args, { stdio: ['ignore', 'pipe', 'inherit'], env: { ...process.env, JAVA_TOOL_OPTIONS: '' } });
    let text = '';
    child.stdout.on('data', chunk => { text += chunk; const found = text.match(/URL (\S+)/); if (found) resolve({ child, url: found[1] }); });
    child.on('exit', code => reject(new Error('el servidor terminó con código ' + code)));
    setTimeout(() => reject(new Error('el servidor no arrancó')), 20000);
  });
}
(async () => {
  // En la prueba el medio llega por una dirección local de verdad y el navegador pediría permiso de red local.
  // En las apps no ocurre: en Windows lo sirve un protocolo interno de WebView2 y en Android lo lee el reproductor nativo.
  const args = ['--no-sandbox', '--autoplay-policy=no-user-gesture-required', '--disable-features=LocalNetworkAccessChecks,BlockInsecurePrivateNetworkRequests,PrivateNetworkAccessSendPreflights'];
  const browser = await chromium.launch(process.env.BRISA_CHROMIUM ? { executablePath: process.env.BRISA_CHROMIUM, args } : { args });
  let failures = 0, total = 0;
  for (const platform of Object.keys(servers)) {
    if (platform === 'windows' && !process.env.BRISA_BRIDGE) { console.log('windows: omitido (define BRISA_BRIDGE con el binario de host-tests)'); continue; }
    for (const [name, type, tag] of media) {
      total++;
      const [command, args] = servers[platform](path.isAbsolute(name) ? name : path.join(fixtures, name), type);
      let server;
      try {
        server = await start(command, args);
        const page = await browser.newPage();
        const requests = []; page.on('request', r => { if (r.url() === server.url) requests.push(r.headers().range || 'completo'); });
        // La página se sirve desde localhost: el navegador solo deja pedir direcciones locales a un origen seguro.
        await page.route('http://localhost/prueba.html', route => route.fulfill({ contentType: 'text/html', body: '<!doctype html><body></body>' }));
        await page.goto('http://localhost/prueba.html');
        const result = await page.evaluate(async ({ url, tag, cors }) => {
          const element = document.createElement(tag);
          // En Windows la app pide el medio con CORS (lo exige el ecualizador); en Android lo lee el reproductor nativo.
          if (cors) element.crossOrigin = 'anonymous';
          element.muted = true; element.preload = 'auto';
          document.body.append(element);
          const wait = (event, ms = 10000) => new Promise((ok, fail) => { element.addEventListener(event, ok, { once: true }); element.addEventListener('error', () => fail(new Error('error del medio ' + (element.error?.code || ''))), { once: true }); setTimeout(() => fail(new Error('sin ' + event)), ms); });
          element.src = url;
          await wait('loadedmetadata');
          const duration = element.duration;
          await element.play();
          await new Promise(ok => setTimeout(ok, 400));
          const advanced = element.currentTime;
          // Salto hacia el final: obliga a pedir un rango que no se había leído.
          const target = Math.max(0, duration * 0.8);
          const seeked = wait('seeked');
          element.currentTime = target;
          await seeked;
          await new Promise(ok => setTimeout(ok, 300));
          const after = element.currentTime;
          const back = wait('seeked'); element.currentTime = 0; await back;
          return { duration, advanced, target, after, error: element.error?.code || 0, ready: element.readyState, size: element.videoWidth || 0 };
        }, { url: server.url, tag, cors: platform === 'windows' });
        await page.close();
        const ok = result.duration > 0 && result.advanced > 0.05 && result.after >= result.target - 0.05 && !result.error && (tag === 'audio' || result.size > 0);
        if (!ok) failures++;
        console.log(`${ok ? 'OK   ' : 'FALLO'} ${platform} ${path.basename(name)}: duración ${result.duration.toFixed(2)} s, avanzó ${result.advanced.toFixed(2)} s, salto a ${result.target.toFixed(2)} → ${result.after.toFixed(2)} s, ${requests.length} peticiones`);
      } catch (error) { failures++; console.log(`FALLO ${platform} ${path.basename(name)}: ${error.message}`); }
      finally { server?.child.kill(); }
    }
  }
  await browser.close();
  console.log(failures ? `${failures} de ${total} reproducciones fallaron` : `${total} reproducciones correctas por los puentes de streaming`);
  process.exit(failures ? 1 : 0);
})();
