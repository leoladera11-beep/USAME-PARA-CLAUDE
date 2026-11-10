import {test,expect} from '@playwright/test';
test('configurar Drive elige su carpeta como destino sin afirmar que la nube ya se sincronizó',async({page})=>{
 await page.addInitScript(()=>{
  let configured=false;window.cloudCalls=[];
  window.BrisaDriveStorage={status:async()=>({configured,available:configured,folder:configured?'G:\\Mi unidad\\Brisa':null}),choose:async()=>{configured=true;cloudCalls.push('choose');},install:async()=>cloudCalls.push('install')};
  window.BrisaDownloads={state:async()=>({status:'idle'}),inspect:async()=>({inspectionId:'cloud',title:'Mi vídeo',duration:60,formats:[{id:'hd',label:'1080p',compatible:true}]}),start:async(...args)=>{cloudCalls.push(args);window.dispatchEvent(new CustomEvent('brisa-download',{detail:{status:'completed',storage:'drive',output:'both',title:'Mi vídeo'}}));},folder:async()=>{},cancel:async()=>{}};
 });
 await page.goto('/');await page.locator('#navVideos').click();await page.locator('#configurePcDrive').click();
 await expect(page.getByRole('dialog',{name:'Usar tu almacenamiento de Drive'})).toContainText('Ver archivos sin descargarlos');
 await page.locator('#installPcDrive').click();await page.locator('#choosePcDrive').click();await expect(page.locator('#pcDriveDialog')).toBeHidden();
 await expect(page.locator('#downloadDestination')).toHaveValue('drive');await expect(page.locator('#pcStorageNote')).toContainText('Google Drive para ordenadores sincroniza');
 await page.locator('#downloadOutput').selectOption('both');await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');await page.getByRole('button',{name:/1080p · MP4/}).click();
 expect(await page.evaluate(()=>cloudCalls)).toEqual(['install','choose',['cloud','hd',{output:'both',destination:'drive',bitrate:320}]]);
 await expect(page.locator('#downloadStatus')).toContainText('comprueba la sincronización');await expect(page.locator('#downloadStatus')).not.toContainText('sin conexión');
});
test('una carpeta Drive configurada se restaura y la elección local del usuario se conserva',async({page})=>{
 await page.addInitScript(()=>{window.BrisaDriveStorage={status:async()=>({configured:true,available:false,folder:'G:\\Mi unidad'}),choose:async()=>{},install:async()=>{}};});
 await page.goto('/');await page.locator('#navVideos').click();await expect(page.locator('#downloadDestination')).toHaveValue('drive');
 await page.locator('#downloadDestination').selectOption('local');await page.reload();await page.locator('#navVideos').click();await expect(page.locator('#downloadDestination')).toHaveValue('local');
 await page.locator('#configurePcDrive').click();await expect(page.locator('#pcDriveStatus')).toContainText('Unidad no disponible');
});
