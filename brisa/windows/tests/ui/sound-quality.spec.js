import {test,expect} from '@playwright/test';
import path from 'node:path';
test('20 cambios vídeo/música comparten dos fuentes y conservan ganancia; original y pausa',async({page})=>{
 const errors=[];page.on('pageerror',e=>errors.push(e.message));
 await page.route('**/quality.wav',r=>r.fulfill({path:path.resolve('tests/fixtures/tone.wav'),contentType:'audio/wav'}));
 await page.route('**/quality.mp4',r=>r.fulfill({path:path.resolve('tests/fixtures/h264.mp4'),contentType:'video/mp4'}));
 await page.goto('/');
 await page.evaluate(async()=>{
  const a=window.BrisaPlatform.audio,v=document.querySelector('#localVideo');a.src='/quality.wav';v.src='/quality.mp4';a.loop=v.loop=true;a.muted=v.muted=true;
  if(BrisaSoundEngine.snapshot().settings.mode!=='original')throw new Error('el modo por defecto debe ser el sonido original');
  await a.play();if(BrisaSoundEngine.snapshot().contextState!=='idle')throw new Error('el sonido original no debe crear el grafo de audio');a.pause();
  BrisaSoundNative.configure(JSON.stringify({mode:'gentle',bass:2,mid:0,treble:1}));
  window.qualitySnapshots=[];
  for(let i=0;i<20;i++){await a.play();qualitySnapshots.push(BrisaSoundEngine.snapshot());await v.play();qualitySnapshots.push(BrisaSoundEngine.snapshot());if(!a.paused)throw new Error('music overlaps video');}
  v.pause();await a.play();qualitySnapshots.push(BrisaSoundEngine.snapshot());
 });
 const values=await page.evaluate(()=>qualitySnapshots);
 expect(values.at(-1).sourceCount).toBe(2);expect(values[0].gain).toBeCloseTo(values.at(-1).gain,6);expect(values.every(x=>x.gain===values[0].gain)).toBe(true);expect(values[0].gain).toBeGreaterThan(.6);expect(values[0].gain).toBeLessThan(.72);
 await page.evaluate(()=>BrisaSoundNative.configure(JSON.stringify({mode:'original',bass:6,mid:6,treble:6})));
 await expect.poll(()=>page.evaluate(()=>BrisaSoundEngine.snapshot().gain)).toBe(1);
 await page.evaluate(()=>{BrisaPlatform.audio.pause();document.querySelector('#localVideo').pause();});
 await expect.poll(()=>page.evaluate(()=>BrisaSoundEngine.snapshot().contextState)).toBe('suspended');
 expect(errors).toEqual([]);
});
test('MP3 automático envía 320 y no anuncia de nuevo al restaurar una descarga',async({page})=>{
 await page.addInitScript(()=>{
  window.started=[];window.BrisaDownloads={state:async()=>({status:'completed',title:'Anterior'}),inspect:async()=>({inspectionId:'max',title:'Prueba',duration:60,formats:[{id:'hd',label:'1080p',compatible:true}]}),start:async(...args)=>{started.push(args);window.dispatchEvent(new CustomEvent('brisa-download',{detail:{status:'downloading'}}));},cancel:async()=>{},folder:async()=>{}};
 });
 await page.goto('/');await expect(page.locator('#toast')).toBeHidden();await page.locator('#navVideos').click();
 await page.locator('#downloadOutput').selectOption('mp3');await expect(page.locator('#audioFormat')).toHaveValue('original');await page.locator('#videoLink').fill('https://youtu.be/abcdefghijk');
 await expect(page.locator('#videoFormats button')).toHaveCount(1);await expect(page.locator('#videoSourceInfo')).toContainText('sin recomprimir');await expect(page.getByRole('button',{name:/Descargar música/})).toBeVisible();
 await page.locator('#audioFormat').selectOption('mp3');await expect(page.locator('#videoSourceInfo')).toContainText('con pérdida');
 await page.getByRole('button',{name:/Descargar MP3/}).click();expect(await page.evaluate(()=>started)).toEqual([['max','audio',{output:'mp3',destination:'local',bitrate:320,audioFormat:'mp3'}]]);await expect(page.locator('#downloadOutput')).toBeDisabled();
 await page.evaluate(()=>window.dispatchEvent(new CustomEvent('brisa-download',{detail:{status:'completed',title:'Nuevo'}})));
 await expect(page.locator('#toast')).toContainText('Archivo guardado');
 await page.reload();await expect(page.locator('#toast')).toBeHidden();
});
test('perfil A30 sin desenfoque y color estable; ahorro de batería desactiva efectos',async({page})=>{
 await page.addInitScript(()=>window.BrisaPresentation={profile:()=>JSON.stringify({profile:'a30',powerSave:false})});
 await page.goto('/');await expect(page.locator('html')).toHaveAttribute('data-brisa-profile','a30');
 const colors=await page.evaluate(async()=>{const p=await import('/presentation.js');const t={nativeId:'song-123'};return [p.accentFor(t),p.accentFor({...t}),p.accentFor({...t,accentColor:'#123456'})];});
 expect(colors[0]).toBe(colors[1]);expect(colors[2]).toBe('#123456');
 await page.evaluate(()=>document.body.classList.add('playing'));
 expect(await page.locator('.player').evaluate(e=>getComputedStyle(e,'::after').animationName)).toBe('none');
 expect(await page.locator('.player').evaluate(e=>getComputedStyle(e).backdropFilter)).toBe('none');
 await page.evaluate(()=>window.dispatchEvent(new CustomEvent('brisa-power',{detail:{profile:'f8',powerSave:true}})));await expect(page.locator('html')).toHaveClass(/brisa-power-save/);
});
