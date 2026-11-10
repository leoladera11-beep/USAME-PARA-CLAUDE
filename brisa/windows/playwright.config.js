import { defineConfig } from '@playwright/test';
import fs from 'node:fs';
// BRISA_CHROMIUM elige el navegador; si no, /usr/bin/chromium cuando existe y, si tampoco, el que instala «npx playwright install chromium».
const chromium = process.env.BRISA_CHROMIUM || (fs.existsSync('/usr/bin/chromium') ? '/usr/bin/chromium' : undefined);
export default defineConfig({
  testDir: './tests/ui', workers: 2, timeout: 20000,
  use: { baseURL: 'http://127.0.0.1:4183', launchOptions: { executablePath: chromium, args: ['--no-sandbox', '--disable-dev-shm-usage'] } },
  webServer: { command: 'python3 -m http.server 4183 --bind 127.0.0.1 --directory web', url: 'http://127.0.0.1:4183', reuseExistingServer: false },
});
