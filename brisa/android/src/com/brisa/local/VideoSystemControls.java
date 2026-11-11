package com.brisa.local;

import android.app.Activity;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.app.RemoteAction;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.Icon;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.Log;
import android.util.Rational;
import android.view.View;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;

import java.util.Map;
import java.util.WeakHashMap;

/** Extends the existing video MediaSession; it never creates a second session. */
public final class VideoSystemControls {
    private static final String BACK="com.brisa.local.video.BACK10";
    private static final String FORWARD="com.brisa.local.video.FORWARD10";
    private static final String TOGGLE="com.brisa.local.video.TOGGLE";
    private static final String RESERVE_PREVIOUS="android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS";
    private static final String RESERVE_NEXT="android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT";
    private static final Map<MediaSession,WeakReference<Service>> sessions=Collections.synchronizedMap(new WeakHashMap<MediaSession,WeakReference<Service>>());
    private static WeakReference<Activity> activity=new WeakReference<>(null);

    private static Object read(Object target,String name)throws Exception{return target.getClass().getField(name).get(target);}
    private static MediaSession platformSession(Object media3)throws Exception{
        Object implementation=read(media3,"a");
        Object compat=read(read(implementation,"h"),"o");
        return (MediaSession)read(read(compat,"f"),"a");
    }
    private static G.g0 player(Service service)throws Exception{return (G.g0)read(service,"i");}
    private static G.g0 player(Activity a)throws Exception{return (G.g0)read(a,"c");}
    private static Service service(MediaSession session){
        WeakReference<Service> ref=sessions.get(session);return ref==null?null:ref.get();
    }
    private static int icon(Context c,String name){return c.getResources().getIdentifier(name,"drawable",c.getPackageName());}
    private static PendingIntent pending(Context c,String action,int request){
        Intent intent=new Intent(action).setClassName(c,"com.brisa.local.VideoPlaybackService");
        return PendingIntent.getService(c,request,intent,PendingIntent.FLAG_UPDATE_CURRENT|PendingIntent.FLAG_IMMUTABLE);
    }
    public static void install(Service s){
        try{
            MediaSession session=platformSession(read(s,"j"));sessions.put(session,new WeakReference<>(s));
            PlaybackState current=session.getController().getPlaybackState();
            if(current!=null)session.setPlaybackState(playbackState(session,current));
        }catch(Exception e){Log.w("BrisaVideo","Could not attach system video actions",e);}
    }
    public static void release(Service s){
        synchronized(sessions){sessions.entrySet().removeIf(entry->entry.getValue().get()==null||entry.getValue().get()==s);}
    }
    public static PlaybackState playbackState(MediaSession session,PlaybackState original){
        Service s=service(session);if(s==null||original==null)return original;
        try{
            Presentation.videoMetadata(s,session);
            PlaybackState.Builder builder=new PlaybackState.Builder(original).setActions(VideoBackgroundPolicy.transportActions(original.getActions()));
            boolean back=false,forward=false;
            for(PlaybackState.CustomAction action:original.getCustomActions()){
                back|="back".equals(action.getAction());forward|="forward".equals(action.getAction());
            }
            if(!back)builder.addCustomAction(new PlaybackState.CustomAction.Builder("back","Retroceder 10 segundos",icon(s,"ic_back10")).build());
            if(!forward)builder.addCustomAction(new PlaybackState.CustomAction.Builder("forward","Adelantar 10 segundos",icon(s,"ic_forward10")).build());
            Bundle extras=session.getController().getExtras();
            if(extras!=null&&(extras.getBoolean(RESERVE_PREVIOUS)||extras.getBoolean(RESERVE_NEXT))){
                Bundle copy=new Bundle(extras);copy.putBoolean(RESERVE_PREVIOUS,false);copy.putBoolean(RESERVE_NEXT,false);session.setExtras(copy);
            }
            return builder.build();
        }catch(Exception e){Log.w("BrisaVideo","Could not publish video seek actions",e);return original;}
    }
    public static boolean customAction(Object callback,String action){
        if(!"back".equals(action)&&!"forward".equals(action))return false;
        try{
            // The other branch of this callback belongs to music and remains intact.
            if(((Integer)read(callback,"a"))!=0)return false;
            Object compat=callback.getClass().getMethod("a").invoke(callback);
            if(compat==null)return false;
            Service s=service((MediaSession)read(compat,"a"));if(s==null)return false;
            seek(player(s),"forward".equals(action));return true;
        }catch(Exception e){Log.w("BrisaVideo","Could not seek video from system controls",e);return false;}
    }
    private static void seek(G.g0 p,boolean forward){
        if(p!=null)p.y0(VideoBackgroundPolicy.seek(p.O0(),p.getDuration(),forward));
    }
    public static boolean serviceAction(Service s,Intent intent){
        String action=intent==null?null:intent.getAction();
        if(!BACK.equals(action)&&!FORWARD.equals(action)&&!TOGGLE.equals(action))return false;
        try{
            G.g0 p=player(s);
            if(p!=null){
                if(TOGGLE.equals(action)){if(p.z())p.h0();else p.Q();}
                else seek(p,FORWARD.equals(action));
            }
            refreshActivity();
        }catch(Exception e){Log.w("BrisaVideo","Could not execute PiP action",e);}
        return true;
    }
    public static Notification notification(Notification original){
        if(original==null||original.extras==null)return original;
        try{
            Object token=original.extras.getParcelable(Notification.EXTRA_MEDIA_SESSION);
            if(token==null)return original;
            Service target=null;
            synchronized(sessions){
                for(Map.Entry<MediaSession,WeakReference<Service>> entry:sessions.entrySet()){
                    if(token.equals(entry.getKey().getSessionToken())){target=entry.getValue().get();break;}
                }
            }
            if(target==null)return original;
            G.g0 p=player(target);boolean playing=p!=null&&p.z();
            original.actions=new Notification.Action[]{
                new Notification.Action.Builder(icon(target,"ic_back10"),"Retroceder 10 segundos",pending(target,BACK,810)).build(),
                new Notification.Action.Builder(icon(target,playing?"ic_pause":"ic_play"),playing?"Pausar":"Reproducir",pending(target,TOGGLE,811)).build(),
                new Notification.Action.Builder(icon(target,"ic_forward10"),"Adelantar 10 segundos",pending(target,FORWARD,812)).build()
            };
            original.extras.putIntArray("android.compactActions",new int[]{0,1,2});
            return Presentation.decorate(target,original);
        }catch(Exception e){Log.w("BrisaVideo","Could not decorate video notification",e);}
        return original;
    }
    public static void finishForMusic(){
        Activity a=activity.get();if(a==null)return;
        try{a.getClass().getField("h").setBoolean(a,true);}catch(Exception ignored){}
        a.finish();
    }
    public static void attach(Activity a){activity=new WeakReference<>(a);refresh(a);}
    public static void detach(Activity a){if(activity.get()==a)activity.clear();}
    private static void refreshActivity(){Activity a=activity.get();if(a!=null)a.runOnUiThread(()->refresh(a));}
    private static boolean mayEnter(Activity a){
        try{
            boolean closing=(Boolean)read(a,"h");
            boolean interactive=((PowerManager)a.getSystemService(Context.POWER_SERVICE)).isInteractive();
            boolean locked=((KeyguardManager)a.getSystemService(Context.KEYGUARD_SERVICE)).isKeyguardLocked();
            return VideoBackgroundPolicy.mayEnterPip(closing,a.isFinishing()||a.isDestroyed(),interactive,locked,a.isInPictureInPictureMode());
        }catch(Exception e){return false;}
    }
    private static PictureInPictureParams params(Activity a)throws Exception{
        G.g0 p=player(a);boolean playing=p!=null&&p.z();
        PictureInPictureParams.Builder builder=new PictureInPictureParams.Builder().setAspectRatio(new Rational(16,9));
        builder.setActions(Arrays.asList(
            new RemoteAction(Icon.createWithResource(a,icon(a,"ic_back10")),"Retroceder 10 segundos","Retroceder 10 segundos",pending(a,BACK,810)),
            new RemoteAction(Icon.createWithResource(a,icon(a,playing?"ic_pause":"ic_play")),playing?"Pausar":"Reproducir",playing?"Pausar":"Reproducir",pending(a,TOGGLE,811)),
            new RemoteAction(Icon.createWithResource(a,icon(a,"ic_forward10")),"Adelantar 10 segundos","Adelantar 10 segundos",pending(a,FORWARD,812))
        ));
        View view=(View)read(a,"a");Rect bounds=new Rect();
        if(view!=null&&view.getGlobalVisibleRect(bounds)&&!bounds.isEmpty())builder.setSourceRectHint(bounds);
        if(Build.VERSION.SDK_INT>=31){builder.setAutoEnterEnabled(mayEnter(a));builder.setSeamlessResizeEnabled(true);}
        return builder.build();
    }
    public static void refresh(Activity a){
        if(a.isDestroyed()||a.isFinishing())return;
        try{a.setPictureInPictureParams(params(a));}
        catch(Exception e){Log.w("BrisaVideo","Could not prepare automatic PiP",e);}
    }
    public static void leave(Activity a){enter(a,false);}
    public static void enter(Activity a,boolean explicit){
        if(!mayEnter(a))return;
        try{
            boolean entered=a.enterPictureInPictureMode(params(a));
            if(!entered&&explicit)permissionHint(a);
        }catch(Exception e){if(explicit)permissionHint(a);Log.w("BrisaVideo","PiP not available",e);}
    }
    private static void permissionHint(Activity a){Toast.makeText(a,"Activa Imagen en imagen o Ventana flotante para Brisa en los ajustes del teléfono.",Toast.LENGTH_LONG).show();}
}
