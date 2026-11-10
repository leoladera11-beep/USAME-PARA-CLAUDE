import {test,expect} from '@playwright/test';
import fs from 'node:fs';
const html=fs.readFileSync(new URL('../../../android/decoded/assets/index.html',import.meta.url),'utf8').replace(/<script\b[^>]*>[\s\S]*?<\/script>/gi,'');
async function setup(page,status='completed'){
  await page.route('**/index.html',route=>route.fulfill({body:html,contentType:'text/html'}));
  await page.goto('/index.html');
  await page.evaluate(async status=>{
    window.notices=[];window.refreshes=0;window.stateReads=0;window.savedState={status,title:'Archivo existente'};
    window.BrisaDownloads={state:async()=>{window.stateReads++;return window.savedState;},start:async()=>{},cancel:async()=>{},folder:async()=>{}};
    const {setupDownloads}=await import('./downloads.js');
    setupDownloads({parseVideoLink:()=>null,refresh:async()=>{window.refreshes++;},notify:text=>window.notices.push(text)});
  },status);
  await expect.poll(()=>page.evaluate(()=>window.stateReads)).toBe(1);
  if(status==='completed')await expect.poll(()=>page.evaluate(()=>window.refreshes)).toBe(1);
}
async function emit(page,state){
  const before=await page.evaluate(()=>window.refreshes);
  await page.evaluate(value=>window.dispatchEvent(new CustomEvent('brisa-download',{detail:value})),state);
  if(state.status==='completed')await expect.poll(()=>page.evaluate(()=>window.refreshes)).toBeGreaterThan(before);
}
async function visibilityCycle(page){
  await page.evaluate(()=>{
    Object.defineProperty(document,'hidden',{configurable:true,value:true});document.dispatchEvent(new Event('visibilitychange'));
    Object.defineProperty(document,'hidden',{configurable:true,value:false});document.dispatchEvent(new Event('visibilitychange'));
  });
}
test('opening or reopening with an old completed result does not show the notice',async({page})=>{
  await setup(page);expect(await page.evaluate(()=>window.notices)).toEqual([]);
  await setup(page);expect(await page.evaluate(()=>window.notices)).toEqual([]);
});
test('screen off/on and leaving/returning refresh silently',async({page})=>{
  await setup(page);
  for(let i=0;i<3;i++)await visibilityCycle(page);
  await expect.poll(()=>page.evaluate(()=>window.refreshes)).toBe(4);
  expect(await page.evaluate(()=>window.notices)).toEqual([]);
});
test('a new completed download announces once, duplicate events and restoration do not repeat it',async({page})=>{
  await setup(page,'idle');
  await emit(page,{status:'downloading',title:'Nuevo archivo'});
  await emit(page,{status:'completed',title:'Nuevo archivo'});
  await expect.poll(()=>page.evaluate(()=>window.notices.length)).toBe(1);
  await emit(page,{status:'completed',title:'Nuevo archivo'});
  await page.evaluate(()=>window.savedState={status:'completed',title:'Nuevo archivo'});
  await visibilityCycle(page);
  await expect.poll(()=>page.evaluate(()=>window.stateReads)).toBe(2);
  expect(await page.evaluate(()=>window.notices)).toEqual(['Archivo guardado · disponible sin conexión.']);
});
test('each subsequent new download may announce, including its warning',async({page})=>{
  await setup(page);
  await emit(page,{status:'starting',title:'Nuevo'});
  await emit(page,{status:'completed',title:'Nuevo'});
  await expect.poll(()=>page.evaluate(()=>window.notices.length)).toBe(1);
  await emit(page,{status:'starting',title:'Siguiente'});
  await emit(page,{status:'completed',title:'Siguiente',warning:'Archivo guardado; subida pendiente.'});
  await expect.poll(()=>page.evaluate(()=>window.notices.length)).toBe(2);
  expect(await page.evaluate(()=>window.notices[1])).toBe('Archivo guardado; subida pendiente.');
});
test('a download completed while away is restored without an entry notification',async({page})=>{
  await setup(page,'downloading');
  await page.evaluate(()=>window.savedState={status:'completed',title:'Terminó fuera de la app'});
  await visibilityCycle(page);
  await expect.poll(()=>page.evaluate(()=>window.refreshes)).toBe(1);
  expect(await page.evaluate(()=>window.notices)).toEqual([]);
});
