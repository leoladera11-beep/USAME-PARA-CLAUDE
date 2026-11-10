import { defineConfig } from '@playwright/test';
export default defineConfig({
  testDir: './tests/ui', workers: 2, timeout: 20000,
  use: { baseURL: 'http://127.0.0.1:4183', launchOptions: { executablePath: '/usr/bin/chromium', args: ['--no-sandbox', '--disable-dev-shm-usage'] } },
  webServer: { command: 'python3 -m http.server 4183 --bind 127.0.0.1 --directory web', url: 'http://127.0.0.1:4183', reuseExistingServer: false },
});
