import {test,expect} from '@playwright/test';
import fs from 'node:fs';
const html=fs.readFileSync('../android/decoded/assets/index.html','utf8').replace(/<script\b[^>]*>[\s\S]*?<\/script>/gi,'');
async function prepare(page){await page.route('**/index.html',r=>r.fulfill({body:html,contentType:'text/html'}));await page.goto('/index.html');await page.evaluate(()=>{document.querySelector('#musicView').hidden=true;document.querySelector('#videosPane').hidden=false;});}
test('un vínculo de Drive no se etiqueta sin conexión ni se manda al preparador de otra cuenta',async({page})=>{
 await prepare(page);await page.evaluate(async()=>{
  window.playCalls=[];window.drivePrepare=[];window.rows=[{id:'old-cloud',name:'Película de Drive.mp4',size:1000,added:1,offlineReady:false,providerImport:true,storageLabel:'Archivo enlazado · descargar copia para verlo sin conexión'}];
  window.BrisaNative={listVideos:()=>JSON.stringify(rows),playVideo:id=>playCalls.push(id)};
  window.BrisaDrive={assets:async()=>[],prepare:async id=>drivePrepare.push(id)};
  window.BrisaDownloads={state:async()=>({status:'idle'})};
  const {setupVideos}=await import('./video.js');window.videos=setupVideos({audio:document.createElement('audio'),notify:()=>{}});await videos.open();
 });
 await expect(page.locator('#videosList')).toContainText('Archivo enlazado');
 await expect(page.locator('#videosList')).not.toContainText('· Sin conexión');
 await page.locator('[data-video-play]').click();expect(await page.evaluate(()=>playCalls)).toEqual(['old-cloud']);expect(await page.evaluate(()=>drivePrepare)).toEqual([]);
 await page.evaluate(()=>window.dispatchEvent(new CustomEvent('brisa-video-import',{detail:{status:'preparing',message:'Importando vídeo 1 de 1 · 15 MB'}})));
 await expect(page.locator('#videoImportStatus')).toContainText('Importando');await expect(page.locator('#addVideosBtn')).toBeDisabled();
 await page.evaluate(()=>{rows[0].offlineReady=true;window.dispatchEvent(new CustomEvent('brisa-video-import',{detail:{status:'completed',message:'1 vídeo listo'}}));});
 await expect(page.locator('#videosList')).toContainText('Sin conexión');await expect(page.locator('#addVideosBtn')).toBeEnabled();
});
test('Ambos en celular conserva la calidad de vídeo y envía MP4 + MP3 a 320',async({page})=>{
 await prepare(page);await page.evaluate(async()=>{
  window.started=[];window.BrisaDownloads={state:async()=>({status:'idle'}),inspect:async()=>({inspectionId:'both',title:'Prueba',duration:60,formats:[{id:'hd',label:'1080p'}]}),start:async(...args)=>started.push(args)};
  const {setupDownloads}=await import('./downloads.js');setupDownloads({parseVideoLink:()=>({url:'https://youtu.be/abcdefghijk'}),refresh:async()=>{},notify:()=>{}});
 });
 await page.locator('#downloadOutput').selectOption('both');await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');await page.locator('#inspectVideo').click();
 await expect(page.locator('#videoSourceInfo')).toContainText('Dos archivos');await page.getByRole('button',{name:/1080p · MP4 \+ música/}).click();
 expect(await page.evaluate(()=>started)).toEqual([['both','hd',{output:'both',destination:'local',bitrate:320,audioFormat:'original',subtitles:'auto-es'}]]);
});
