import {defineConfig} from '@playwright/test';
import fs from 'node:fs';
const chromium=process.env.BRISA_CHROMIUM||(fs.existsSync('/usr/bin/chromium')?'/usr/bin/chromium':undefined);

export default defineConfig({testDir:'./tests/android',workers:2,timeout:20000,use:{baseURL:'http://127.0.0.1:4184',launchOptions:{executablePath:chromium,args:['--no-sandbox','--disable-dev-shm-usage']}},webServer:{command:'python3 -m http.server 4184 --bind 127.0.0.1 --directory ../android/decoded/assets',url:'http://127.0.0.1:4184',reuseExistingServer:false}});
