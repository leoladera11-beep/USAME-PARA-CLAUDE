package com.brisa.local;
import android.app.Activity;import android.app.Notification;import android.app.NotificationManager;import android.app.Service;import android.content.*;import android.graphics.*;import android.media.MediaMetadata;import android.media.session.MediaSession;import android.os.*;import android.util.LruCache;import android.webkit.*;import java.io.*;import java.lang.ref.WeakReference;import java.util.*;import org.json.JSONObject;
/** Bounded, event-driven artwork. Native System UI owns the island's final layout. */
public final class Presentation {
 private static final String[] palette={"#3e5941","#6a5940","#455363","#684b4b","#516345","#4d5668"};
 private static final LruCache<Integer,Bitmap> images=new LruCache<>(6);
 private static final Map<Integer,String> notified=new HashMap<>();
 private static final Map<MediaSession,String> metadataKeys=new WeakHashMap<>();
 private static final Map<Service,String> notificationKeys=new WeakHashMap<>();
 private static final Map<Service,Notification> notificationCache=new WeakHashMap<>();
 private static WeakReference<WebView> web=new WeakReference<>(null);private static BroadcastReceiver power;private static Context app;
 static Object read(Object o,String f)throws Exception{return o.getClass().getField(f).get(o);}
 public static int color(String id,String explicit){try{if(explicit!=null&&explicit.matches("#[0-9a-fA-F]{6}"))return Color.parseColor(explicit);}catch(Exception ignored){}return Color.parseColor(palette[(int)((id.hashCode()&0xffffffffL)%palette.length)]);}
 private static JSONObject track(Service s){try{return (JSONObject)read(s,"o");}catch(Exception ignored){return new JSONObject();}}
 private static int accent(Service s){JSONObject t=track(s);String id=t.optString("nativeId",t.optString("id","brisa"));return color(id,t.optString("accentColor"));}
 private static Bitmap image(Context c,int color){
  Bitmap cached=images.get(color);if(cached!=null)return cached;
  Bitmap bitmap=Bitmap.createBitmap(256,256,Bitmap.Config.ARGB_8888);Canvas canvas=new Canvas(bitmap);canvas.drawColor(color);
  int id=c.getResources().getIdentifier("brisa","drawable",c.getPackageName());Bitmap logo=BitmapFactory.decodeResource(c.getResources(),id);
  Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG|Paint.FILTER_BITMAP_FLAG);float side=168,scale=Math.min(side/logo.getWidth(),side/logo.getHeight());float w=logo.getWidth()*scale,h=logo.getHeight()*scale;
  canvas.drawBitmap(logo,null,new RectF((256-w)/2,(256-h)/2,(256+w)/2,(256+h)/2),paint);logo.recycle();images.put(color,bitmap);return bitmap;
 }
 private static void metadata(Service s,MediaSession session){
  if(session==null)return;MediaMetadata old=session.getController().getMetadata();if(old==null)return;
  int color=accent(s);Bitmap icon=old.getBitmap(MediaMetadata.METADATA_KEY_DISPLAY_ICON);Bitmap artwork=image(s,color);
  if(icon!=null&&icon.sameAs(artwork))return;
  session.setMetadata(new MediaMetadata.Builder(old).putBitmap(MediaMetadata.METADATA_KEY_ART,artwork).putBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART,artwork).putBitmap(MediaMetadata.METADATA_KEY_DISPLAY_ICON,artwork).build());
 }
 public static void setMusicMetadata(Service s,MediaSession session,MediaMetadata original){
  int color=accent(s);JSONObject t=track(s);String key=t.optString("nativeId",t.optString("id"))+":"+color+":"+original.getString(MediaMetadata.METADATA_KEY_TITLE)+":"+original.getString(MediaMetadata.METADATA_KEY_ARTIST)+":"+original.getLong(MediaMetadata.METADATA_KEY_DURATION);
  if(key.equals(metadataKeys.get(session)))return;
  Bitmap artwork=image(s,color);
  session.setMetadata(new MediaMetadata.Builder(original).putBitmap(MediaMetadata.METADATA_KEY_ART,artwork).putBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART,artwork).putBitmap(MediaMetadata.METADATA_KEY_DISPLAY_ICON,artwork).build());metadataKeys.put(session,key);
 }
 public static void musicMetadata(Service s){try{metadata(s,(MediaSession)read(s,"d"));}catch(Exception ignored){}}
 public static void videoMetadata(Service s,MediaSession session){try{metadata(s,session);}catch(Exception ignored){}}
 public static Notification decorate(Service s,Notification original){
  try{int color=accent(s);
   String key=original.flags+":"+color+":"+original.extras.getCharSequence(Notification.EXTRA_TITLE)+":"+original.extras.getCharSequence(Notification.EXTRA_TEXT)+":"+original.extras.getParcelable(Notification.EXTRA_MEDIA_SESSION);
   if(original.actions!=null)for(Notification.Action action:original.actions)key+=":"+action.title;
   if("PlaybackService".equals(s.getClass().getSimpleName())&&key.equals(notificationKeys.get(s)))return notificationCache.get(s);
   int small=s.getResources().getIdentifier("ic_brisa_notification","drawable",s.getPackageName());Notification result=Notification.Builder.recoverBuilder(s,original).setLargeIcon(image(s,color)).setSmallIcon(small).setColor(color).setColorized(true).build();if("PlaybackService".equals(s.getClass().getSimpleName())){notificationKeys.put(s,key);notificationCache.put(s,result);}return result;}catch(Exception ignored){return original;}
 }
 public static void notifyIfChanged(NotificationManager manager,int id,Notification n){
  String key=n.flags+":"+n.color+":"+n.extras.getCharSequence(Notification.EXTRA_TITLE)+":"+n.extras.getCharSequence(Notification.EXTRA_TEXT)+":"+n.extras.getParcelable(Notification.EXTRA_MEDIA_SESSION);
  if(n.actions!=null)for(Notification.Action a:n.actions)key+=":"+a.title;
  if(!key.equals(notified.get(id))){notified.put(id,key);manager.notify(id,n);}
 }
 private static String profile(Context c){try{InputStream in=c.getAssets().open("brisa-profile.json");byte[] b=new byte[128];int n=in.read(b);in.close();return new JSONObject(new String(b,0,n,"UTF-8")).optString("profile","a30");}catch(Exception ignored){return "a30";}}
 public static final class Bridge {
  final Context context;Bridge(Context c){context=c;}
  @JavascriptInterface public String profile(){return profileJson(context);}
 }
 private static String profileJson(Context c){try{return new JSONObject().put("profile",profile(c)).put("powerSave",((PowerManager)c.getSystemService(Context.POWER_SERVICE)).isPowerSaveMode()).toString();}catch(Exception ignored){return "{\"profile\":\"a30\",\"powerSave\":true}";}}
 public static void install(Activity a){try{
  dispose(a);app=a.getApplicationContext();WebView view=(WebView)read(a,"e");web=new WeakReference<>(view);view.addJavascriptInterface(new Bridge(app),"BrisaPresentation");
  power=new BroadcastReceiver(){public void onReceive(Context context,Intent intent){WebView v=web.get();if(v!=null)v.post(()->v.evaluateJavascript("window.dispatchEvent(new CustomEvent('brisa-power',{detail:"+profileJson(context)+"}))",null));}};
  IntentFilter filter=new IntentFilter(PowerManager.ACTION_POWER_SAVE_MODE_CHANGED);if(Build.VERSION.SDK_INT>=33)app.registerReceiver(power,filter,Context.RECEIVER_NOT_EXPORTED);else app.registerReceiver(power,filter);
 }catch(Exception ignored){}}
 public static void dispose(Activity a){if(app!=null&&power!=null)try{app.unregisterReceiver(power);}catch(Exception ignored){}power=null;web.clear();}
}
