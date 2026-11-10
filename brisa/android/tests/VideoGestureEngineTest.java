package com.brisa.local;
import java.util.*;

public final class VideoGestureEngineTest {
    static final class Task { final Runnable run; final long at,sequence; Task(Runnable r,long at,long n){run=r;this.at=at;sequence=n;} }
    static final class Fake implements VideoGestureEngine.Host,VideoGestureEngine.Scheduler {
        final List<Task> tasks=new ArrayList<>();
        final VideoGestureEngine engine=new VideoGestureEngine(this,this,300,500,12,100);
        long now,sequence,position=50000,duration=100000;
        float speed=1.25f;
        boolean ready=true,holding,playing=true,visible=true;
        int toggles,seeks,feedback;
        final List<Float> speeds=new ArrayList<>();
        public boolean ready(){return ready;}
        public float speed(){return speed;}
        public void speed(float f){speed=f;speeds.add(f);}
        public long position(){return position;}
        public long duration(){return duration;}
        public void seek(long p){position=p;seeks++;}
        public void toggleControls(){visible=!visible;toggles++;}
        public void seekFeedback(int direction){feedback=direction;}
        public void holding(boolean enabled){holding=enabled;}
        public void interacted(){}
        public void later(Runnable r,long delay){tasks.add(new Task(r,now+delay,sequence++));}
        public void cancel(Runnable r){tasks.removeIf(t->t.run==r);}
        void advance(long delay){
            long end=now+delay;
            while(true){
                Task next=tasks.stream().filter(t->t.at<=end).min(Comparator.comparingLong((Task t)->t.at).thenComparingLong(t->t.sequence)).orElse(null);
                if(next==null)break;tasks.remove(next);now=next.at;next.run.run();
            }
            now=end;
        }
        void down(float x){engine.down(x,200,1000,now);}
        void up(float x){engine.up(x,200,now);}
        void tap(float x){down(x);advance(30);up(x);}
        void doubleTap(float x){tap(x);advance(90);tap(x);advance(700);}
    }
    static void equal(Object a,Object b,String why){if(!Objects.equals(a,b))throw new AssertionError(why+": "+a+" != "+b);}
    static int passed;
    static void test(String name,Runnable body){body.run();passed++;System.out.println("PASS "+name);}
    public static void main(String[] args){
        test("single tap toggles once, after double-tap arbitration",()->{
            Fake f=new Fake();f.tap(100);f.advance(299);equal(f.toggles,0,"no premature toggle");f.advance(1);equal(f.toggles,1,"one toggle");equal(f.visible,false,"hide controls");
            f.advance(500);f.tap(100);f.advance(300);equal(f.visible,true,"show again");equal(f.speeds.size(),0,"no speed changes");
        });
        test("left double tap seeks exactly minus ten without single tap or hold",()->{
            Fake f=new Fake();f.doubleTap(100);equal(f.position,40000L,"seek");equal(f.seeks,1,"one seek");equal(f.toggles,0,"no toggle");equal(f.speeds.size(),0,"no boost");equal(f.feedback,-1,"left feedback");
        });
        test("right double tap seeks exactly plus ten",()->{
            Fake f=new Fake();f.doubleTap(900);equal(f.position,60000L,"seek");equal(f.feedback,1,"right feedback");equal(f.toggles,0,"no toggle");
        });
        test("seeking clamps to both ends of the file",()->{
            Fake f=new Fake();f.position=3000;f.doubleTap(100);equal(f.position,0L,"start clamp");
            f.position=94000;f.doubleTap(900);equal(f.position,100000L,"end clamp");
        });
        test("hold temporarily boosts and restores the selected speed on release",()->{
            Fake f=new Fake();f.speed=1.5f;f.down(700);f.advance(499);equal(f.speed,1.5f,"wait before hold");f.advance(1);equal(f.speed,2f,"boost");equal(f.holding,true,"badge");
            f.advance(2000);f.up(700);equal(f.speed,1.5f,"restore preset");equal(f.holding,false,"hide badge");f.advance(700);equal(f.toggles,0,"no tap");equal(f.seeks,0,"no seek");
        });
        test("screen interruption or multitouch cancels boost and pending timers",()->{
            Fake f=new Fake();f.down(700);f.advance(600);f.engine.cancel();equal(f.speed,1.25f,"restore interrupted hold");f.up(700);f.advance(1000);equal(f.toggles,0,"no delayed action");equal(f.tasks.size(),0,"all cancelled");
        });
        test("drag is not mistaken for a hold or a tap",()->{
            Fake f=new Fake();f.down(700);f.advance(100);f.engine.move(750,200);f.advance(800);f.up(750);f.advance(700);equal(f.speeds.size(),0,"no boost");equal(f.toggles,0,"no tap");
        });
        test("two taps on opposite sides do not seek",()->{
            Fake f=new Fake();f.tap(100);f.advance(90);f.tap(900);f.advance(700);equal(f.seeks,0,"no cross-side seek");equal(f.toggles,2,"separate single taps");
        });
        test("hold after an initial tap does not also seek or toggle",()->{
            Fake f=new Fake();f.tap(100);f.advance(80);f.down(100);f.advance(600);equal(f.speed,2f,"held second touch");f.up(100);f.advance(700);equal(f.speed,1.25f,"restore");equal(f.seeks,0,"no seek");equal(f.toggles,0,"no toggle");
        });
        test("manual pause stays paused during and after hold",()->{
            Fake f=new Fake();f.playing=false;f.down(100);f.advance(600);f.up(100);equal(f.playing,false,"pause preserved");equal(f.speed,1.25f,"speed restored");
        });
        test("leaving video cancels a pending single tap",()->{
            Fake f=new Fake();f.tap(100);f.engine.cancel();f.advance(1000);equal(f.toggles,0,"no action after exit");
        });
        test("unready player ignores playback gestures without changing controls",()->{
            Fake f=new Fake();f.ready=false;f.doubleTap(100);f.down(700);f.advance(600);f.up(700);f.advance(700);equal(f.seeks,0,"no seek");equal(f.speeds.size(),0,"no speed mutation");equal(f.toggles,0,"no accidental tap");
        });
        test("unknown duration supports a relative forward seek",()->{
            Fake f=new Fake();f.duration=-9223372036854775807L;f.doubleTap(900);equal(f.position,60000L,"unknown duration");
        });
        System.out.println(passed+" gesture tests passed.");
    }
}
