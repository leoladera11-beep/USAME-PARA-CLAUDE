// Nombre y artista de la música: lo que escribe el usuario manda sobre lo que llega de Android o de Drive.
import {test,expect} from '@playwright/test';

// La app completa con los puentes nativos simulados, igual que tools/capturas.cjs.
async function abrir(page,viewport={width:360,height:780}){
 await page.setViewportSize(viewport);
 await page.addInitScript(()=>{
  const noop=()=>{};let state={id:'',playing:false,prepared:false,position:0,duration:0};
  window.nativeLoads=[];window.nativeQueues=[];window.renames=[];window.seeks=[];
  window.BrisaNative=new Proxy({snapshot:()=>JSON.stringify(state),listVideos:()=>'[]',
   load:json=>{const t=JSON.parse(json);nativeLoads.push(t);state={id:t.id,playing:false,prepared:true,position:42,duration:t.duration};setTimeout(()=>window.BrisaPlatform.receive(state),10);},
   queue:json=>nativeQueues.push(JSON.parse(json)),seek:v=>seeks.push(v),
   play:()=>{state.playing=true;setTimeout(()=>window.BrisaPlatform.receive(state),10);},pause:()=>{state.playing=false;setTimeout(()=>window.BrisaPlatform.receive(state),10);}},{get:(t,k)=>k in t?t[k]:noop});
  window.BrisaSoundNative={settings:()=>'{"mode":"gentle","bass":0,"mid":0,"treble":0}',configure:noop};
  window.BrisaDownloadNative=new Proxy({},{get:()=>id=>setTimeout(()=>window.BrisaDownloadResult({requestId:id,ok:true,result:{status:'idle'}}),5)});
  window.BrisaDriveNative=new Proxy({},{get:(t,k)=>id=>setTimeout(()=>window.BrisaDownloadResult({requestId:id,ok:true,result:k==='status'?{connected:false,email:''}:[]}),5)});
  window.BrisaPresentation={profile:()=>JSON.stringify({profile:'a30',powerSave:false})};
  window.BrisaTuning={state:()=>'{"streamMobile":false}',streamCheck:()=>'',setStreamMobile(){},setAudioFormat(){},rename:json=>renames.push(JSON.parse(json))};
 });
 await page.goto('/index.html');await page.waitForFunction(()=>!!window.BrisaPlatform?.onImport);await page.waitForTimeout(300);
}
const sincronizar=(page,items)=>page.evaluate(items=>window.BrisaPlatform.onImport({importId:'sync-'+Math.random(),batchId:'b'+Math.random(),items,done:true}),items);
const descargada={nativeId:'asset:uno',assetId:'uno',name:'Vídeo oficial - a1b2c3d4.mp3',title:'Vídeo oficial',artist:'',duration:200,size:5000000,offlineReady:true,driveId:'',path:'x1'};
const titulos=page=>page.locator('#trackList .track-meta strong').allTextContents();
async function editar(page,titulo,artista){
 await expect(page.locator('#renameDialog')).toBeVisible();
 await page.locator('#renameTitle').fill(titulo);await page.locator('#renameArtist').fill(artista);
 await page.locator('#renameForm button[type=submit]').click();await expect(page.locator('#renameDialog')).toBeHidden();
}

test('lo que el usuario edita sobrevive a la sincronización de Android y de Drive',async({page})=>{
 await abrir(page);await sincronizar(page,[descargada]);
 await page.locator('#mobileLibraryBtn').click();
 await page.locator('#trackList [data-action="more"]').first().click();
 await page.locator('[data-sheet="rename"]').click();
 await editar(page,'Mi canción','Mi artista');
 expect(await titulos(page)).toEqual(['Mi canción']);
 // La sincronización vuelve a entregar la misma pista con los datos de Android (al abrir, tras cada descarga y con Drive).
 await sincronizar(page,[{...descargada,size:6000000,offlineReady:false,driveId:'d1'}]);
 expect(await titulos(page)).toEqual(['Mi canción']);
 await expect(page.locator('#trackList .track-meta small').first()).toContainText('Mi artista');
 // Tamaño, estado sin conexión y ruta sí se siguen actualizando.
 await expect(page.locator('#trackList .track-meta small').first()).toContainText('En Drive');
 // Y sigue así tras cerrar y volver a abrir la app.
 await page.reload();await page.waitForFunction(()=>!!window.BrisaPlatform?.onImport);await page.waitForTimeout(300);
 await sincronizar(page,[descargada]);await page.locator('#mobileLibraryBtn').click();
 expect(await titulos(page)).toEqual(['Mi canción']);
});

test('la sincronización nunca deja una canción sin título y corrige el nombre de M4A que no se tocó',async({page})=>{
 await abrir(page);
 // Versiones anteriores dejaban «Nombre.m4a» como título de lo que solo estaba en Drive.
 await sincronizar(page,[{nativeId:'asset:dos',assetId:'dos',name:'Los Faroles - Carretera al sur.m4a',title:'Los Faroles - Carretera al sur.m4a',size:10,offlineReady:false,driveId:'d2',path:'x2'},
  {nativeId:'asset:tres',assetId:'tres',name:'Madrugada.m4a',title:'',artist:'',size:10,offlineReady:false,driveId:'d3',path:'x3'}]);
 await page.locator('#mobileLibraryBtn').click();
 expect((await titulos(page)).sort()).toEqual(['Carretera al sur','Madrugada']);
 // Android manda el título vacío cuando el archivo no trae etiquetas: no debe borrar el que ya había.
 await sincronizar(page,[{nativeId:'asset:tres',assetId:'tres',name:'Madrugada.m4a',title:'',artist:'',size:20,offlineReady:true,driveId:'d3',path:'x3'}]);
 expect((await titulos(page)).sort()).toEqual(['Carretera al sur','Madrugada']);
 // Si Android aprende un nombre mejor y el usuario no editó nada, se aplica.
 await sincronizar(page,[{nativeId:'asset:tres',assetId:'tres',name:'Madrugada.m4a',title:'Madrugada',artist:'Trío Albor',size:20,offlineReady:true,driveId:'d3',path:'x3'}]);
 await expect(page.locator('#trackList')).toContainText('Trío Albor');
});

test('editar desde el reproductor ampliado actualiza al momento la notificación y la cola de Android',async({page})=>{
 await abrir(page);await sincronizar(page,[descargada]);
 await page.locator('#mobileLibraryBtn').click();await page.locator('#trackList [data-action="play"]').first().click();
 await page.locator('#expandPlayerBtn').click();
 const boton=page.locator('#nowEdit');await expect(boton).toBeVisible();
 await expect(boton).toHaveAttribute('aria-label','Editar nombre y artista');
 const caja=await boton.boundingBox();expect(caja.width).toBeGreaterThanOrEqual(44);expect(caja.height).toBeGreaterThanOrEqual(44);
 const cargas=await page.evaluate(()=>nativeLoads.length);
 await boton.click();await editar(page,'Título nuevo','Artista nuevo');
 await expect(page.locator('#nowTitle')).toHaveText('Título nuevo');await expect(page.locator('#nowArtist')).toHaveText('Artista nuevo');
 const estado=await page.evaluate(()=>({renames,loads:nativeLoads.length,cola:nativeQueues.at(-1).tracks[0]}));
 expect(estado.renames.at(-1)).toMatchObject({title:'Título nuevo',artist:'Artista nuevo'});
 expect(estado.renames.at(-1).id).toBeTruthy();
 // No se vuelve a cargar la canción: la música no se corta al cambiarle el nombre.
 expect(estado.loads).toBe(cargas);
 expect(estado.cola).toMatchObject({title:'Título nuevo',artist:'Artista nuevo'});
});

test('el diálogo no pide letra, no guarda un título vacío y conserva la letra existente',async({page})=>{
 await abrir(page);await sincronizar(page,[descargada]);
 await page.locator('#mobileLibraryBtn').click();await page.locator('#trackList [data-action="more"]').first().click();
 await page.locator('[data-sheet="rename"]').click();
 await expect(page.locator('#renameDialog textarea')).toHaveCount(0);
 await page.locator('#renameTitle').fill('   ');await page.locator('#renameForm button[type=submit]').click();
 await expect(page.locator('#renameDialog')).toBeVisible();
 await editar(page,'Solo título','');
 expect(await titulos(page)).toEqual(['Solo título']);
 await expect(page.locator('#trackList .track-meta small').first()).toContainText('Artista desconocido');
});

for(const [nombre,viewport] of [['A30',{width:360,height:780}],['F8 Pro',{width:412,height:915}]]){
 test(`±10 s quedan sobre la fila de controles principales en ${nombre}`,async({page})=>{
  await abrir(page,viewport);await sincronizar(page,[descargada]);
  await page.locator('#mobileLibraryBtn').click();await page.locator('#trackList [data-action="play"]').first().click();
  // En el minirreproductor siguen ocultos a propósito.
  await expect(page.locator('#backBtn')).toBeHidden();await expect(page.locator('#forwardBtn')).toBeHidden();
  await page.locator('#expandPlayerBtn').click();await page.waitForTimeout(350);
  const cajas=await page.evaluate(()=>Object.fromEntries(['backBtn','forwardBtn','playBtn','prevBtn','nextBtn','shuffleBtn','repeatBtn','progress'].map(id=>{const r=document.getElementById(id).getBoundingClientRect();return [id,{top:r.top,bottom:r.bottom,left:r.left,right:r.right,width:r.width,height:r.height}];})));
  for(const id of ['backBtn','forwardBtn']){
   expect(cajas[id].width).toBeGreaterThanOrEqual(44);expect(cajas[id].height).toBeGreaterThanOrEqual(44);
   // Debajo de la barra de progreso y por encima de toda la fila principal.
   expect(cajas[id].top).toBeGreaterThanOrEqual(cajas.progress.top);
   for(const principal of ['playBtn','prevBtn','nextBtn','shuffleBtn','repeatBtn'])expect(cajas[id].bottom).toBeLessThanOrEqual(cajas[principal].top+1);
   expect(cajas[id].left).toBeGreaterThanOrEqual(0);expect(cajas[id].right).toBeLessThanOrEqual(viewport.width);
  }
  expect(cajas.backBtn.right).toBeLessThanOrEqual(cajas.forwardBtn.left);
  // La fila principal sigue alineada y nada se sale ni obliga a desplazar en horizontal.
  expect(Math.abs(cajas.prevBtn.top+cajas.prevBtn.height/2-(cajas.playBtn.top+cajas.playBtn.height/2))).toBeLessThan(2);
  expect(cajas.repeatBtn.bottom).toBeLessThanOrEqual(viewport.height);
  expect(await page.evaluate(()=>{const p=document.querySelector('.player');return Math.max(document.documentElement.scrollWidth,p.scrollWidth)-document.documentElement.clientWidth;})).toBeLessThanOrEqual(0);
  await expect(page.getByRole('button',{name:'Retroceder 10 segundos'})).toBeVisible();
  await expect(page.getByRole('button',{name:'Adelantar 10 segundos'})).toBeVisible();
  // Y siguen funcionando.
  await page.evaluate(()=>{seeks.length=0;});await page.locator('#forwardBtn').click();await page.locator('#backBtn').click();await page.locator('#backBtn').click();
  const saltos=await page.evaluate(()=>seeks);expect(saltos).toHaveLength(3);expect(saltos[0]-saltos[1]).toBeCloseTo(10,0);expect(saltos[1]-saltos[2]).toBeCloseTo(10,0);
 });
}

// Reproduce el fallo original con el diálogo que ya existía: se guardaba y la siguiente sincronización lo borraba.
test('editar título y artista desde «Letra y datos» también sobrevive a la sincronización',async({page})=>{
 await abrir(page);await sincronizar(page,[descargada]);
 await page.locator('#mobileLibraryBtn').click();await page.locator('#trackList [data-action="play"]').first().click();
 await page.evaluate(()=>document.getElementById('lookupBtn').click());
 await page.locator('#lookupTitle').fill('Editada con letra');await page.locator('#lookupArtist').fill('Autora');
 await page.locator('#lookupForm button[type=submit]').click();await expect(page.locator('#lookupDialog')).toBeHidden();
 expect(await titulos(page)).toEqual(['Editada con letra']);
 await sincronizar(page,[descargada]);
 expect(await titulos(page)).toEqual(['Editada con letra']);
 await expect(page.locator('#trackList .track-meta small').first()).toContainText('Autora');
});
