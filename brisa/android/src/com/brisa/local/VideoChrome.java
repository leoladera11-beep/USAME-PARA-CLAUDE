package com.brisa.local;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.TextView;
import java.util.WeakHashMap;

/** Display policy and gesture adapter for the supplied 2.7 native player. */
public final class VideoChrome {
    private static final String TAG="brisa-video-chrome";
    private static final WeakHashMap<Activity,Integer> previousOrientations=new WeakHashMap<>();
    private static Object read(Object target,String name){
        try{return target.getClass().getField(name).get(target);}
        catch(Exception e){throw new IllegalStateException(e);}
    }
    private static Object invoke(Object target,String name,Class<?>[] types,Object... args){
        try{return target.getClass().getMethod(name,types).invoke(target,args);}
        catch(Exception e){throw new IllegalStateException(e);}
    }
    private static void setting(Object target,String name,Class<?> type,Object value){invoke(target,name,new Class<?>[]{type},value);}
    private static int dp(Activity a,int n){return Math.round(n*a.getResources().getDisplayMetrics().density);}
    private static boolean full(Activity a){return (Boolean)read(a,"f");}
    private static State state(Activity a){return a.getWindow().getDecorView().findViewWithTag(TAG);}

    private static void noScrollbars(View v){v.setVerticalScrollBarEnabled(false);v.setHorizontalScrollBarEnabled(false);if(v instanceof android.view.ViewGroup){android.view.ViewGroup g=(android.view.ViewGroup)v;for(int i=0;i<g.getChildCount();i++)noScrollbars(g.getChildAt(i));}}
    public static void install(Activity a){
        MobileVideoFiles.attachPlayer(a);noScrollbars(a.getWindow().getDecorView());
        View player=(View)read(a,"a");
        player.setOnClickListener(null);
        ((View)read(a,"e")).setVisibility(View.GONE);
        State s=new State(a,player);
        ((FrameLayout)player.getParent()).addView(s,new FrameLayout.LayoutParams(-1,-1));
        setting(player,"setControllerAutoShow",boolean.class,false);
        setting(player,"setControllerHideOnTouch",boolean.class,false);
        setting(player,"setControllerAnimationEnabled",boolean.class,false);
        setting(player,"setControllerShowTimeoutMs",int.class,0);
        hideSystemBars(a);
        player.post(()->{hideSystemBars(a);s.syncControls();});
        s.showControls();
        VideoSystemControls.attach(a);
        player.post(()->VideoSystemControls.refresh(a));
    }
    public static void mode(Activity a,boolean enabled){
        boolean wasFullscreen=full(a);
        if(enabled&&!wasFullscreen)previousOrientations.put(a,a.getRequestedOrientation());
        try{a.getClass().getField("f").setBoolean(a,enabled);}
        catch(Exception e){throw new IllegalStateException(e);}
        ((View)read(a,"e")).setVisibility(View.GONE);
        ((View)read(a,"a")).setOnClickListener(null);
        if(enabled){
            if(a.getRequestedOrientation()!=ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE)
                a.setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE);
        }else if(wasFullscreen){
            Integer previous=previousOrientations.remove(a);
            a.setRequestedOrientation(previous!=null?previous:ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED);
        }
        hideSystemBars(a);noScrollbars(a.getWindow().getDecorView());
        State s=state(a);
        if(s!=null){
            s.fullscreen.setContentDescription(enabled?"Salir de pantalla completa":"Pantalla completa");
            s.top.requestApplyInsets();
            if(wasFullscreen!=enabled)s.showControls();else s.syncControls();
        }
    }
    private static void hideSystemBars(Activity a){
        if(a.isInPictureInPictureMode())return;
        a.getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN);
        if(Build.VERSION.SDK_INT>=28){
            WindowManager.LayoutParams attributes=a.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode=WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
            a.getWindow().setAttributes(attributes);
        }
        a.getWindow().getDecorView().setSystemUiVisibility(5894);
        if(Build.VERSION.SDK_INT>=30){
            a.getWindow().setDecorFitsSystemWindows(false);
            WindowInsetsController controller=a.getWindow().getInsetsController();
            if(controller!=null){
                controller.setSystemBarsBehavior(WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE);
                controller.hide(WindowInsets.Type.systemBars());
            }
        }
    }
    /** True consumes the complete video gesture before PlayerView can toggle it. */
    public static boolean touch(Activity a,MotionEvent event){
        State s=state(a);return s!=null&&s.route(event);
    }
    public static void resume(Activity a){
        if(read(a,"a")!=null){mode(a,full(a));State s=state(a);if(s!=null)s.interacted();VideoSystemControls.refresh(a);}
    }
    public static void pause(Activity a){
        State s=state(a);if(s!=null)s.cancelInteraction();
    }
    public static void dispose(Activity a){
        State s=state(a);if(s!=null){s.cancelInteraction();s.removeCallbacks(s.clearFeedback);}
        previousOrientations.remove(a);
        VideoSystemControls.detach(a);
    }
    public static void pip(Activity a,boolean enabled){
        ((View)read(a,"e")).setVisibility(View.GONE);
        State s=state(a);
        if(s!=null){s.cancelInteraction();s.setVisibility(enabled?View.GONE:View.VISIBLE);}
        if(!enabled)resume(a);
    }

    private static final class State extends FrameLayout implements VideoGestureEngine.Host,VideoGestureEngine.Scheduler{
        private static final String[] NATIVE_CONTROLS={"exo_play_pause","exo_prev","exo_next","exo_rew","exo_ffwd","exo_rew_with_amount","exo_ffwd_with_amount","exo_progress","exo_settings","exo_subtitle","exo_repeat_toggle","exo_shuffle","exo_fullscreen","exo_minimal_fullscreen","exo_vr","exo_overflow_show","exo_overflow_hide","exo_mute"};
        final Activity activity;
        final View player;
        final View controller;
        final FrameLayout top;
        final Icon back,settings,fullscreen;
        final TextView feedback;
        final VideoGestureEngine gestures;
        boolean controlsVisible=true,captured,nativeTouch,boosting;
        final Runnable hide=()->hideControls();
        final Runnable clearFeedback=()->clearFeedbackNow();

        State(Activity a,View player){
            super(a);this.activity=a;this.player=player;
            controller=(View)read(player,"l");
            setTag(TAG);setClickable(false);
            top=new FrameLayout(a);
            FrameLayout.LayoutParams row=new FrameLayout.LayoutParams(-1,dp(a,56),Gravity.TOP);
            row.topMargin=dp(a,12);addView(top,row);
            back=new Icon(a,2);back.setContentDescription("Salir del vídeo");
            FrameLayout.LayoutParams backLp=new FrameLayout.LayoutParams(dp(a,48),dp(a,48),Gravity.LEFT|Gravity.TOP);
            backLp.leftMargin=dp(a,12);top.addView(back,backLp);
            LinearLayout actions=new LinearLayout(a);
            settings=new Icon(a,1);fullscreen=new Icon(a,0);
            settings.setContentDescription("Ajustes del vídeo");fullscreen.setContentDescription("Pantalla completa");
            actions.addView(settings,new LinearLayout.LayoutParams(dp(a,48),dp(a,48)));
            actions.addView(fullscreen,new LinearLayout.LayoutParams(dp(a,48),dp(a,48)));
            FrameLayout.LayoutParams actionsLp=new FrameLayout.LayoutParams(-2,-2,Gravity.RIGHT|Gravity.TOP);
            actionsLp.rightMargin=dp(a,12);top.addView(actions,actionsLp);
            top.setOnApplyWindowInsetsListener((v,insets)->{
                int topInset=0,left=0,right=0;
                if(Build.VERSION.SDK_INT>=30){
                    android.graphics.Insets bars=insets.getInsets(WindowInsets.Type.systemBars()|WindowInsets.Type.displayCutout());topInset=bars.top;left=bars.left;right=bars.right;
                }else{topInset=insets.getSystemWindowInsetTop();left=insets.getSystemWindowInsetLeft();right=insets.getSystemWindowInsetRight();}
                FrameLayout.LayoutParams p=(FrameLayout.LayoutParams)v.getLayoutParams();
                p.topMargin=dp(a,12)+topInset;p.leftMargin=left;p.rightMargin=right;v.setLayoutParams(p);return insets;
            });
            feedback=new TextView(a);feedback.setTextColor(Color.WHITE);feedback.setTextSize(18);
            feedback.setGravity(Gravity.CENTER);feedback.setPadding(dp(a,18),dp(a,10),dp(a,18),dp(a,10));
            GradientDrawable background=new GradientDrawable();background.setColor(0xb0000000);background.setCornerRadius(dp(a,24));feedback.setBackground(background);
            feedback.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
            addView(feedback,new FrameLayout.LayoutParams(-2,-2,Gravity.CENTER));feedback.setVisibility(View.INVISIBLE);
            ViewConfiguration config=ViewConfiguration.get(a);
            gestures=new VideoGestureEngine(this,this,ViewConfiguration.getDoubleTapTimeout(),ViewConfiguration.getLongPressTimeout(),config.getScaledTouchSlop(),config.getScaledDoubleTapSlop());
            back.setOnClickListener(v->{cancelInteraction();invoke(a,"f",new Class<?>[0]);});
            fullscreen.setOnClickListener(v->{gestures.cancel();invoke(a,"e",new Class<?>[]{boolean.class},!full(a));});
            settings.setOnClickListener(v->{gestures.cancel();removeCallbacks(hide);menu(a,settings,()->interacted());});
        }
        G.g0 nativePlayer(){return (G.g0)read(activity,"c");}
        public boolean ready(){return nativePlayer()!=null;}
        public float speed(){return nativePlayer().g().a;}
        public void speed(float value){G.g0 p=nativePlayer();if(p!=null)p.h(value);}
        public long position(){return nativePlayer().O0();}
        public long duration(){return nativePlayer().getDuration();}
        public void seek(long value){nativePlayer().y0(value);}
        public void later(Runnable task,long delay){postDelayed(task,delay);}
        public void cancel(Runnable task){removeCallbacks(task);}
        public void toggleControls(){if(controlsVisible)hideControls();else showControls();}
        public void seekFeedback(int direction){
            showFeedback(direction<0?"−10 s":"+10 s",direction);postDelayed(clearFeedback,800);
        }
        public void holding(boolean enabled){
            boosting=enabled;removeCallbacks(hide);
            if(enabled)showFeedback("2×",0);else{removeCallbacks(clearFeedback);feedback.setVisibility(View.INVISIBLE);}
        }
        public void interacted(){removeCallbacks(hide);if(controlsVisible&&!boosting&&!nativeTouch)postDelayed(hide,4000);}
        void clearFeedbackNow(){feedback.setVisibility(View.INVISIBLE);}
        void showFeedback(String text,int side){
            removeCallbacks(clearFeedback);
            FrameLayout.LayoutParams p=(FrameLayout.LayoutParams)feedback.getLayoutParams();
            p.gravity=side==0?Gravity.TOP|Gravity.CENTER_HORIZONTAL:Gravity.CENTER_VERTICAL|(side<0?Gravity.LEFT:Gravity.RIGHT);
            p.topMargin=side==0?dp(activity,24):0;p.leftMargin=side<0?getWidth()/5:0;p.rightMargin=side>0?getWidth()/5:0;
            feedback.setLayoutParams(p);feedback.setText(text);feedback.setVisibility(View.VISIBLE);
        }
        void showControls(){controlsVisible=true;syncControls();interacted();}
        void hideControls(){removeCallbacks(hide);controlsVisible=false;syncControls();}
        void syncControls(){
            boolean visible=controlsVisible&&!activity.isInPictureInPictureMode();
            top.setVisibility(visible?View.VISIBLE:View.INVISIBLE);
            if(visible)invoke(player,"e",new Class<?>[]{boolean.class},true);
            else invoke(controller,"g",new Class<?>[0]);
        }
        void cancelInteraction(){
            gestures.cancel();captured=false;nativeTouch=false;boosting=false;removeCallbacks(hide);
            removeCallbacks(clearFeedback);feedback.setVisibility(View.INVISIBLE);
        }
        private boolean hit(View view,float x,float y){
            Rect rect=new Rect();return view!=null&&view.isShown()&&view.getAlpha()>0f&&view.getGlobalVisibleRect(rect)&&rect.contains((int)x,(int)y);
        }
        private boolean controlAt(MotionEvent event){
            float x=event.getRawX(),y=event.getRawY();
            if(hit(back,x,y)||hit(settings,x,y)||hit(fullscreen,x,y))return true;
            for(String name:NATIVE_CONTROLS){
                int id=activity.getResources().getIdentifier(name,"id",activity.getPackageName());
                if(id!=0&&hit(player.findViewById(id),x,y))return true;
            }
            return false;
        }
        boolean route(MotionEvent event){
            int action=event.getActionMasked();
            if(activity.isInPictureInPictureMode())return false;
            if(action==MotionEvent.ACTION_DOWN){
                removeCallbacks(hide);nativeTouch=controlAt(event);
                if(nativeTouch){gestures.cancel();captured=false;return false;}
                Rect bounds=new Rect();
                captured=player.getGlobalVisibleRect(bounds)&&bounds.contains((int)event.getRawX(),(int)event.getRawY());
                if(captured)gestures.down(event.getRawX()-bounds.left,event.getRawY()-bounds.top,bounds.width(),event.getEventTime());
                return captured;
            }
            if(!captured){
                if(action==MotionEvent.ACTION_UP||action==MotionEvent.ACTION_CANCEL){nativeTouch=false;interacted();}
                return false;
            }
            int[] location=new int[2];player.getLocationOnScreen(location);
            if(action==MotionEvent.ACTION_MOVE)gestures.move(event.getRawX()-location[0],event.getRawY()-location[1]);
            else if(action==MotionEvent.ACTION_UP){gestures.up(event.getRawX()-location[0],event.getRawY()-location[1],event.getEventTime());captured=false;}
            else if(action==MotionEvent.ACTION_CANCEL){gestures.cancel();captured=false;interacted();}
            else if(action==MotionEvent.ACTION_POINTER_DOWN){gestures.cancel();interacted();}
            return true;
        }
        @Override protected void onDetachedFromWindow(){cancelInteraction();super.onDetachedFromWindow();}
    }
    private static void menu(Activity a,View anchor,Runnable dismissed){
        PopupMenu menu=new PopupMenu(a,anchor);
        menu.getMenu().add(0,1,0,"Subtítulos");menu.getMenu().add(0,2,1,"Velocidad de reproducción");
        menu.getMenu().add(0,3,2,"Ventana flotante");menu.getMenu().add(0,4,3,"Volver a videos");
        menu.setOnDismissListener(m->dismissed.run());
        menu.setOnMenuItemClickListener(item->{
            LinearLayout old=(LinearLayout)read(a,"e");
            switch(item.getItemId()){
                case 1:old.getChildAt(2).performClick();break;
                case 2:
                    View settings=((View)read(a,"a")).findViewById(a.getResources().getIdentifier("exo_settings","id",a.getPackageName()));
                    if(settings!=null)settings.performClick();break;
                case 3:old.getChildAt(3).performClick();break;
                case 4:invoke(a,"f",new Class<?>[0]);break;
            }
            return true;
        });menu.show();
    }
    private static final class Icon extends View{
        final Paint paint=new Paint(Paint.ANTI_ALIAS_FLAG);final int kind;
        Icon(Activity a,int kind){super(a);this.kind=kind;setClickable(true);setFocusable(true);setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_YES);}
        @Override protected void onDraw(Canvas canvas){
            super.onDraw(canvas);canvas.save();canvas.scale(getWidth()/48f,getHeight()/48f);
            paint.setStyle(Paint.Style.FILL);paint.setColor(0x88000000);canvas.drawCircle(24,24,21,paint);
            paint.setStyle(Paint.Style.STROKE);paint.setStrokeWidth(2);paint.setColor(Color.WHITE);
            if(kind==1){canvas.drawCircle(24,24,8,paint);canvas.drawCircle(24,24,3,paint);for(int i=0;i<8;i++){canvas.save();canvas.rotate(i*45,24,24);canvas.drawLine(24,12,24,16,paint);canvas.restore();}}
            else if(kind==2){canvas.drawLine(33,24,15,24,paint);canvas.drawLine(15,24,23,16,paint);canvas.drawLine(15,24,23,32,paint);}
            else{paint.setPathEffect(new DashPathEffect(new float[]{4,3},0));canvas.drawRect(new RectF(13,13,35,35),paint);paint.setPathEffect(null);}
            canvas.restore();
        }
    }
}
