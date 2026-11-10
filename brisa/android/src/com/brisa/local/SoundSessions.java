package com.brisa.local;
import android.app.Service;import android.content.Context;import android.media.MediaPlayer;import android.media.audiofx.Equalizer;import android.os.Handler;import android.os.Looper;import android.util.Log;import java.lang.ref.WeakReference;import org.json.JSONObject;
/** One effect owner at a time and an acknowledged video-to-music handoff. */
public final class SoundSessions {
 private static final Handler main=new Handler(Looper.getMainLooper());
 private static Object current;private static SoundCore.Port currentPort;private static Context currentContext;
 private static final SoundCore.Engine engine=new SoundCore.Engine(session->{
  final Object owner=current;final Equalizer eq=new Equalizer(0,session);
  eq.setControlStatusListener((effect,control)->main.post(()->{if(current==owner&&engineOwner()==owner)reapply();}));
  return new SoundCore.Effect(){
   public boolean control(){return eq.hasControl();}
   public void configure(SoundCore.Settings s){short[] range=eq.getBandLevelRange();for(short i=0;i<eq.getNumberOfBands();i++){short level=(short)Math.max(range[0],Math.min(range[1],Math.round(SoundCore.band(s,eq.getCenterFreq(i)/1000.0)*100)));eq.setBandLevel(i,level);}}
   public void enable(){if(eq.setEnabled(true)!=0)throw new IllegalStateException("EQ enable rejected");}
   public void release(){eq.release();}
  };
 });
 private static WeakReference<Service> pendingMusic=new WeakReference<>(null);private static WeakReference<MediaPlayer> pendingPlayer=new WeakReference<>(null);private static Service waitingVideo;
 private static Object engineOwner(){return engine.owner();}
 static Object read(Object o,String key)throws Exception{return o.getClass().getField(key).get(o);}
 static Object call(Object o,String method,Class<?>[] types,Object... args)throws Exception{return o.getClass().getMethod(method,types).invoke(o,args);}
 private static SoundCore.Settings settings(Context c){JSONObject s=Y.d(c);return new SoundCore.Settings(!"gentle".equals(s.optString("mode")),Y.b(s,"bass",2),Y.b(s,"mid",0),Y.b(s,"treble",1));}
 private static void update(Context context,Object owner,SoundCore.Port port){current=owner;currentPort=port;currentContext=context.getApplicationContext();engine.apply(owner,port,settings(context));}
 private static void reapply(){if(current!=null&&currentPort!=null&&currentContext!=null)update(currentContext,current,currentPort);}
 public static void release(Object owner){engine.release(owner);if(current==owner){current=null;currentPort=null;currentContext=null;}}
 public static void music(Context context,MediaPlayer player,float base){
  if(player==null)return;
  update(context,player,new SoundCore.Port(){public int session(){return player.getAudioSessionId();}public boolean playing(){return player.isPlaying();}public float base(){return Math.max(0,Math.min(1,base));}public void volume(float v){player.setVolume(v,v);}});
 }
 public static void video(Service service){
  try{
   G.g0 p=(G.g0)read(service,"i");Object idValue=call(read(p,"C"),"c",new Class<?>[0]);final int id=(Integer)idValue;
   update(service,service,new SoundCore.Port(){public int session(){return id;}public boolean playing(){return p.I();}public float base(){return 1f;}public void volume(float v){p.J0(v);}});
  }catch(Exception e){release(service);try{((G.g0)read(service,"i")).J0(1f);}catch(Exception ignored){}Log.w("BrisaSound","Video effect unavailable; using original sound",e);}
 }
 /** Called before the music service takes audio focus. False defers start until video teardown acknowledges release. */
 public static boolean beforeMusic(Service music){
  try{
   Service video=(Service)Class.forName("com.brisa.local.VideoPlaybackService").getField("o").get(null);
   if(video==null)return true;
   pendingMusic=new WeakReference<>(music);pendingPlayer=new WeakReference<>((MediaPlayer)read(music,"c"));waitingVideo=video;
   release(video);G.g0 p=(G.g0)read(video,"i");p.h0();p.u();
   VideoSystemControls.finishForMusic();video.stopSelf();return false;
  }catch(Exception e){Log.w("BrisaSound","Could not complete video handoff",e);return false;}
 }
 public static void videoDestroyed(Service video){
  release(video);
  if(waitingVideo!=video)return;
  Service music=pendingMusic.get();MediaPlayer expected=pendingPlayer.get();waitingVideo=null;pendingMusic.clear();pendingPlayer.clear();
  if(music!=null&&expected!=null)main.post(()->{try{if(read(music,"c")==expected&&(Boolean)read(music,"f")&&(Boolean)read(music,"e"))call(music,"r",new Class<?>[0]);}catch(Exception e){Log.w("BrisaSound","Music resume cancelled",e);}});
 }
 public static void sessionChanged(Service service){release(service);video(service);}
}
