import {test,expect} from '@playwright/test';
import fs from 'node:fs';
const html=fs.readFileSync('../android/decoded/assets/index.html','utf8').replace(/<script\b[^>]*>[\s\S]*?<\/script>/gi,'');
async function setup(page){await page.route('**/index.html',r=>r.fulfill({body:html,contentType:'text/html'}));await page.goto('/index.html');await page.evaluate(()=>document.querySelector('#videosPane').hidden=false);}
test('MP3 tiene una sola calidad y envía 320; el perfil ligero respeta ahorro',async({page})=>{
 await setup(page);
 await page.evaluate(async()=>{
  window.BrisaPresentation={profile:()=>JSON.stringify({profile:'a30',powerSave:false})};
  await import('./presentation.js');window.calls=[];
  window.BrisaDownloads={state:async()=>({status:'idle'}),inspect:async()=>({inspectionId:'max',title:'Música',duration:60,formats:[{id:'hd',label:'1080p'}]}),start:async(...args)=>calls.push(args)};
  const {setupDownloads}=await import('./downloads.js');setupDownloads({parseVideoLink:()=>({url:'https://youtu.be/abcdefghijk'}),refresh:async()=>{},notify:()=>{}});
 });
 await expect(page.locator('html')).toHaveAttribute('data-brisa-profile','a30');await expect(page.locator('#mp3Bitrate option')).toHaveCount(1);await expect(page.locator('#mp3BitrateField')).toBeHidden();
 await page.locator('#downloadOutput').selectOption('mp3');await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');await page.locator('#inspectVideo').click();await expect(page.locator('#videoFormats button')).toHaveCount(1);await expect(page.locator('#videoSourceInfo')).toContainText('con pérdida');
 await page.getByRole('button',{name:/Descargar MP3/}).evaluate(e=>e.click());
 const calls=await page.evaluate(()=>window.calls);expect(calls[0][2].bitrate).toBe(320);
});
test('el puente nativo recibe el mismo color de canción que la interfaz',async({page})=>{
 await setup(page);await page.evaluate(async()=>{
  window.nativeCalls=[];window.BrisaNative=new Proxy({},{get:(_t,key)=>key==='load'?json=>nativeCalls.push(JSON.parse(json)):()=>{}});
 });
 await page.addScriptTag({url:'/platform.js'});
 const result=await page.evaluate(async()=>{const {accentFor}=await import('./presentation.js');const t={id:'ui-song',nativeId:'native-song',title:'Prueba'};t.accentColor=accentFor(t);BrisaPlatform.audio.setTrack(t);return {expected:t.accentColor,actual:nativeCalls[0].accentColor,native:BrisaPlatform.nativePlayback};});
 expect(result.actual).toBe(result.expected);expect(result.native).toBe(true);
});
