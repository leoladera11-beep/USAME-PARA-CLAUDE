package com.brisa.local;
import android.app.*;import android.app.Service;import android.content.*;import android.content.pm.ServiceInfo;import android.net.Uri;import android.os.*;import java.util.*;import java.util.concurrent.*;import java.util.concurrent.atomic.AtomicBoolean;
/** Foreground only while selected cloud videos are being copied. */
public final class VideoImportService extends Service {
 public static final AtomicBoolean busy=new AtomicBoolean();private final AtomicBoolean cancelled=new AtomicBoolean();private final CancellationSignal signal=new CancellationSignal();private ExecutorService worker;private long last;
 private static final String CHANNEL="brisa-video-import";private static final int ID=2106;
 public IBinder onBind(Intent i){return null;}
 private Notification notification(String text){
  Intent open=new Intent();try{open.setClass(this,Class.forName("com.brisa.local.MainActivity"));}catch(Exception ignored){}
  PendingIntent content=PendingIntent.getActivity(this,0,open,PendingIntent.FLAG_UPDATE_CURRENT|PendingIntent.FLAG_IMMUTABLE);
  PendingIntent cancel=PendingIntent.getService(this,1,new Intent(this,VideoImportService.class).setAction("cancel"),PendingIntent.FLAG_UPDATE_CURRENT|PendingIntent.FLAG_IMMUTABLE);
  int icon=getResources().getIdentifier("ic_brisa_notification","drawable",getPackageName());
  return new Notification.Builder(this,CHANNEL).setSmallIcon(icon).setContentTitle("Brisa · Importando vídeo").setContentText(text).setContentIntent(content).setOngoing(true).setOnlyAlertOnce(true).setProgress(0,0,true).addAction(new Notification.Action.Builder(icon,"Cancelar",cancel).build()).build();
 }
 public int onStartCommand(Intent intent,int flags,int id){
  if(intent!=null&&"cancel".equals(intent.getAction())){cancelled.set(true);signal.cancel();if(!busy.get())stopSelf(id);return START_NOT_STICKY;}
  if(intent==null){stopSelf(id);return START_NOT_STICKY;}
  ArrayList<Uri> uris=intent.getParcelableArrayListExtra(Intent.EXTRA_STREAM);if(uris==null||uris.isEmpty()){stopSelf(id);return START_NOT_STICKY;}
  if(!busy.compareAndSet(false,true))return START_NOT_STICKY;
  NotificationManager manager=getSystemService(NotificationManager.class);manager.createNotificationChannel(new NotificationChannel(CHANNEL,"Importaciones de vídeo",NotificationManager.IMPORTANCE_LOW));
  try{if(Build.VERSION.SDK_INT>=29)startForeground(ID,notification("Preparando copia sin conexión…"),ServiceInfo.FOREGROUND_SERVICE_TYPE_DATA_SYNC);else startForeground(ID,notification("Preparando copia sin conexión…"));}catch(RuntimeException e){busy.set(false);MobileVideoFiles.finish("error","No se pudo mantener la importación activa. Abre Brisa y vuelve a elegir el vídeo.");stopSelf(id);return START_NOT_STICKY;}
  worker=Executors.newSingleThreadExecutor();worker.execute(()->{
   int added=0,failed=0,skipped=0;String error="";
   try{for(int index=0;index<uris.size()&&!cancelled.get();index++){
    final String title="Importando vídeo "+(index+1)+" de "+uris.size();MobileVideoFiles.status("preparing",title+"…",0,0);
    try{boolean copy=MobileVideoFiles.copy(this,uris.get(index),cancelled,signal,bytes->{long now=SystemClock.elapsedRealtime();if(now-last>500){last=now;String text=title+" · "+String.format(Locale.ROOT,"%.1f MB",bytes/1048576.0);MobileVideoFiles.status("preparing",text,bytes,0);manager.notify(ID,notification(text));}});if(copy)added++;else skipped++;}
    catch(Exception e){if(!cancelled.get()){failed++;error=e.getMessage()==null?"Comprueba la conexión, el permiso y el espacio libre.":e.getMessage();}}
   }}finally{
    String message=cancelled.get()?"Importación cancelada. Las copias completas ya importadas se conservan.":added+" vídeos listos"+(skipped>0?" · "+skipped+" ya estaban guardados":"")+(failed>0?" · "+failed+" sin copiar: "+error:"");
    MobileVideoFiles.finish(cancelled.get()?"cancelled":failed>0?"error":"completed",message);busy.set(false);stopForeground(STOP_FOREGROUND_REMOVE);stopSelf();worker.shutdown();
   }
  });return START_NOT_STICKY;
 }
 public void onTimeout(int startId,int fgsType){cancelled.set(true);signal.cancel();stopForeground(STOP_FOREGROUND_REMOVE);stopSelf();}
 public void onDestroy(){cancelled.set(true);signal.cancel();if(worker!=null)worker.shutdown();super.onDestroy();}
}
