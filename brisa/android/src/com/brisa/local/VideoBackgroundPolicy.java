package com.brisa.local;

/** Pure decisions shared by PiP and the video transport actions. */
public final class VideoBackgroundPolicy {
    private VideoBackgroundPolicy(){}
    public static boolean mayEnterPip(boolean closing,boolean finishing,boolean interactive,boolean locked,boolean alreadyPip){
        return !closing&&!finishing&&interactive&&!locked&&!alreadyPip;
    }
    public static long seek(long position,long duration,boolean forward){
        position=Math.max(0,position);
        long target=forward?Math.min(Long.MAX_VALUE-10000,position)+10000:Math.max(0,position-10000);
        return duration>=0?Math.min(target,duration):target;
    }
    public static long transportActions(long original){
        // Remove track navigation; expose rewind, fast-forward and scrubbing.
        return (original&~(16L|32L))|8L|64L|256L;
    }
}
