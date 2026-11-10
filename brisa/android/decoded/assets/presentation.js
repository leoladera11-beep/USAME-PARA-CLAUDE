const palette=['#3e5941','#6a5940','#455363','#684b4b','#516345','#4d5668'];
export function accentFor(track){
 if(/^#[\da-f]{6}$/i.test(track?.accentColor||''))return track.accentColor;
 const key=String(track?.nativeId||track?.id||'brisa');let hash=0;for(let i=0;i<key.length;i++)hash=(Math.imul(hash,31)+key.charCodeAt(i))|0;
 return palette[(hash>>>0)%palette.length];
}
export function presentTrack(track){const color=accentFor(track);if(track)track.accentColor=color;document.documentElement.style.setProperty('--track-accent',color);}
function profile(detail){document.documentElement.dataset.brisaProfile=detail.profile||'desktop';document.documentElement.classList.toggle('brisa-power-save',!!detail.powerSave);}
try{profile(window.BrisaPresentation?JSON.parse(window.BrisaPresentation.profile()):{profile:'desktop'});}catch{profile({profile:'a30',powerSave:true});}
window.addEventListener('brisa-power',event=>profile(event.detail));
const visibility=()=>document.documentElement.classList.toggle('brisa-background',document.hidden);
document.addEventListener('visibilitychange',visibility);visibility();
