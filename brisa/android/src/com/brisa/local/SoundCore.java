package com.brisa.local;
/** Shared sound ownership and gain policy; no Android classes, timers or polling. */
public final class SoundCore {
 public static final class Settings {
  public final boolean original;public final int bass,mid,treble;
  public Settings(boolean original,int bass,int mid,int treble){this.original=original;this.bass=clamp(bass);this.mid=clamp(mid);this.treble=clamp(treble);}
 }
 public interface Port {int session();boolean playing();float base();void volume(float value);}
 public interface Effect {boolean control();void configure(Settings settings);void enable();void release();}
 public interface Factory {Effect create(int session);}
 public enum Result {APPLIED,ORIGINAL,PAUSED,UNAVAILABLE}
 public static int clamp(int value){return Math.max(-6,Math.min(6,value));}
 public static double headroom(Settings s){return s.original?0:Math.max(0,Math.max(s.bass,Math.max(s.mid,s.treble)))+1;}
 public static float gain(Settings s){return (float)Math.pow(10,-headroom(s)/20);}
 public static double band(Settings s,double hz){
  if(hz<=125)return s.bass;if(hz>=8000)return s.treble;
  return hz<=1000?s.bass+(s.mid-s.bass)*Math.log(hz/125)/Math.log(8):s.mid+(s.treble-s.mid)*Math.log(hz/1000)/Math.log(8);
 }
 public static final class Engine {
  private final Factory factory;private Object owner;private Port port;private Effect effect;private int session;
  public Engine(Factory factory){this.factory=factory;}
  public Object owner(){return owner;}public int session(){return session;}
  private void restore(){if(port!=null)try{port.volume(port.base());}catch(Exception ignored){}}
  private void clear(){if(effect!=null)try{effect.release();}catch(Exception ignored){}effect=null;owner=null;port=null;session=0;}
  public void release(Object target){if(owner==target){restore();clear();}}
  public Result apply(Object target,Port next,Settings settings){
   int id=next.session();
   if(owner!=target||session!=id){restore();clear();}
   if(!next.playing()||settings.original){if(owner==target){restore();clear();}next.volume(next.base());return settings.original?Result.ORIGINAL:Result.PAUSED;}
   owner=target;port=next;session=id;
   if(id==0){restore();return Result.UNAVAILABLE;}
   try{
    if(effect==null)effect=factory.create(id);
    if(!effect.control()){restore();return Result.UNAVAILABLE;}
    effect.configure(settings);effect.enable();next.volume(next.base()*gain(settings));return Result.APPLIED;
   }catch(Exception failure){restore();clear();return Result.UNAVAILABLE;}
  }
 }
}
