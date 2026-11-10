package com.brisa.local;
import java.util.*;
public class SoundCoreTest {
 static int count;static void check(boolean b,String message){if(!b)throw new AssertionError(message);count++;}static void near(double a,double b,String m){check(Math.abs(a-b)<0.00001,m);}
 static final class Port implements SoundCore.Port {int id=1;boolean playing=true;float base=.8f,volume=.8f;public int session(){return id;}public boolean playing(){return playing;}public float base(){return base;}public void volume(float v){volume=v;}}
 static final class Fx implements SoundCore.Effect {boolean control=true,released,fail;int configured;public boolean control(){return control;}public void configure(SoundCore.Settings s){if(fail)throw new IllegalStateException();configured++;}public void enable(){}public void release(){released=true;}}
 public static void main(String[]args){
  List<Fx> effects=new ArrayList<>();SoundCore.Engine engine=new SoundCore.Engine(id->{Fx f=new Fx();effects.add(f);return f;});
  SoundCore.Settings gentle=new SoundCore.Settings(false,2,0,1),original=new SoundCore.Settings(true,6,6,6);
  Object music=new Object(),video=new Object();Port m=new Port(),v=new Port();v.id=2;
  near(SoundCore.headroom(gentle),3,"default reserves three dB");near(SoundCore.headroom(original),0,"original unity");
  near(SoundCore.band(gentle,125),2,"bass anchor");near(SoundCore.band(gentle,1000),0,"mid anchor");near(SoundCore.band(gentle,8000),1,"treble anchor");
  near(SoundCore.clamp(99),6,"boost capped");near(SoundCore.clamp(-99),-6,"cut capped");
  for(int i=0;i<100;i++){engine.apply(music,m,gentle);near(m.volume,m.base*SoundCore.gain(gentle),"reapply does not compound volume");}
  check(effects.size()==1,"one effect for same session");
  for(int i=0;i<20;i++){
   Fx old=effects.get(effects.size()-1);engine.apply(video,v,gentle);check(old.released,"music effect released before video owns EQ");near(m.volume,m.base,"music base restored");
   old=effects.get(effects.size()-1);engine.apply(music,m,gentle);check(old.released,"video effect released before music owns EQ");near(v.volume,v.base,"video base restored");near(m.volume,m.base*SoundCore.gain(gentle),"switch gain stable");
  }
  Fx fx=effects.get(effects.size()-1);fx.control=false;check(engine.apply(music,m,gentle)==SoundCore.Result.UNAVAILABLE,"loss of control uses fallback");near(m.volume,m.base,"fallback has no attenuation");fx.control=true;engine.apply(music,m,gentle);near(m.volume,m.base*SoundCore.gain(gentle),"control reacquired");
  m.id=3;engine.apply(music,m,gentle);check(fx.released,"new audio session releases old EQ");check(engine.session()==3,"new session owns effect");
  fx=effects.get(effects.size()-1);engine.apply(music,m,original);check(fx.released,"original releases EQ");near(m.volume,m.base,"original keeps user volume");
  engine.apply(music,m,gentle);m.playing=false;check(engine.apply(music,m,gentle)==SoundCore.Result.PAUSED,"pause policy");near(m.volume,m.base,"paused base restored");m.playing=true;
  engine.apply(music,m,gentle);fx=effects.get(effects.size()-1);fx.fail=true;check(engine.apply(music,m,gentle)==SoundCore.Result.UNAVAILABLE,"effect errors fall back");check(fx.released,"failed effect released");near(m.volume,m.base,"failure restores base");
  m.id=0;check(engine.apply(music,m,gentle)==SoundCore.Result.UNAVAILABLE,"zero session does not use global output EQ");near(m.volume,m.base,"zero session unchanged");engine.release(music);check(engine.owner()==null,"release clears ownership");
  System.out.println(count+" sound assertions passed (20 video/music cycles).");
 }
}
