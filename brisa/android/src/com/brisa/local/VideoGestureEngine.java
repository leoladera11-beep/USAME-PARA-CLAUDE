package com.brisa.local;

/** Touch arbitration independent of Android: a tap, double tap and hold cannot
 * each fire for the same sequence. Playback intent is never changed here. */
public final class VideoGestureEngine {
    public interface Host {
        boolean ready();
        float speed();
        void speed(float value);
        long position();
        long duration();
        void seek(long position);
        void toggleControls();
        void seekFeedback(int direction);
        void holding(boolean enabled);
        void interacted();
    }
    public interface Scheduler {
        void later(Runnable task, long delay);
        void cancel(Runnable task);
    }
    private final Host host;
    private final Scheduler scheduler;
    private final long doubleDelay, holdDelay;
    private final float moveSlop, doubleSlop;
    private boolean active, moved, held, boosted, secondTap, pendingTap;
    private float downX, downY, tapX, tapY, previousSpeed;
    private int side, tapSide;
    private long tapTime;
    private final Runnable single = () -> confirmSingle();
    private final Runnable hold = () -> beginHold();

    public VideoGestureEngine(Host host, Scheduler scheduler, long doubleDelay,
                              long holdDelay, float moveSlop, float doubleSlop) {
        this.host=host;this.scheduler=scheduler;this.doubleDelay=doubleDelay;
        this.holdDelay=holdDelay;this.moveSlop=moveSlop;this.doubleSlop=doubleSlop;
    }
    public void down(float x,float y,float width,long time) {
        if(active)cancel();
        side=x<width/2f?-1:1;
        secondTap=pendingTap&&time>=tapTime&&time-tapTime<=doubleDelay
            &&side==tapSide&&distance(x,y,tapX,tapY)<=doubleSlop;
        if(secondTap){scheduler.cancel(single);pendingTap=false;}
        else if(pendingTap){scheduler.cancel(single);confirmSingle();}
        active=true;moved=false;held=false;boosted=false;downX=x;downY=y;
        scheduler.later(hold,holdDelay);
    }
    public void move(float x,float y) {
        if(active&&!held&&distance(x,y,downX,downY)>moveSlop){moved=true;scheduler.cancel(hold);}
    }
    public void up(float x,float y,long time) {
        if(!active)return;
        move(x,y);scheduler.cancel(hold);active=false;
        if(held){endHold();host.interacted();return;}
        if(moved){host.interacted();return;}
        if(secondTap){
            if(host.ready()){
                long current=Math.max(0,host.position());
                long target=side<0?Math.max(0,current-10000):Math.min(Long.MAX_VALUE-10000,current)+10000;
                long duration=host.duration();
                if(duration>=0)target=Math.min(target,duration);
                host.seek(target);host.seekFeedback(side);
            }
            host.interacted();
        }else{
            pendingTap=true;tapX=x;tapY=y;tapSide=side;tapTime=time;
            scheduler.later(single,doubleDelay);
        }
    }
    private void confirmSingle(){
        if(!pendingTap)return;
        pendingTap=false;host.toggleControls();
    }
    private void beginHold(){
        if(!active||moved)return;
        held=true;
        if(host.ready()){
            previousSpeed=host.speed();host.speed(2f);boosted=true;host.holding(true);
        }
    }
    private void endHold(){
        if(boosted){boosted=false;host.speed(previousSpeed);host.holding(false);}
    }
    public void cancel(){
        scheduler.cancel(hold);scheduler.cancel(single);pendingTap=false;
        active=false;endHold();held=false;secondTap=false;
    }
    private static float distance(float x,float y,float a,float b){return (float)Math.hypot(x-a,y-b);}
}
