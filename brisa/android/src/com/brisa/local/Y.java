package com.brisa.local;
import android.content.Context;import android.media.MediaPlayer;import android.media.audiofx.Equalizer;import java.util.WeakHashMap;import org.json.JSONObject;
/** ABI-compatible adapter for the recovered music service. */
public final class Y {
 public static final WeakHashMap<MediaPlayer,Y> e=new WeakHashMap<>();
 public final Context a;public final MediaPlayer b;public Equalizer c;public float d=1;
 public Y(Context context,MediaPlayer player){a=context.getApplicationContext();b=player;try{d=context.getClass().getField("l").getFloat(context);}catch(Exception ignored){}}
 public static int b(JSONObject s,String key,int fallback){return SoundCore.clamp(s.optInt(key,fallback));}
 public static JSONObject d(Context context){try{return new JSONObject(context.getSharedPreferences("brisa-sound",0).getString("settings","{\"mode\":\"gentle\",\"bass\":2,\"mid\":0,\"treble\":1}"));}catch(Exception ignored){return new JSONObject();}}
 public static void c(MediaPlayer player){SoundSessions.release(player);Y y=e.remove(player);if(y!=null&&y.c!=null){try{y.c.release();}catch(Exception ignored){}y.c=null;}}
 public static void e(PlaybackService service,MediaPlayer player,float volume){if(player==null)return;Y y=e.get(player);if(y==null){y=new Y(service,player);e.put(player,y);}y.d=volume;y.a();}
 public void a(){SoundSessions.music(a,b,d);}
}
