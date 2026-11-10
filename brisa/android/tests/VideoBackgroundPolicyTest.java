package com.brisa.local;
public final class VideoBackgroundPolicyTest{
    static int count;
    static void check(boolean result,String name){if(!result)throw new AssertionError(name);count++;System.out.println("PASS "+name);}
    public static void main(String[] args){
        check(VideoBackgroundPolicy.mayEnterPip(false,false,true,false,false),"leaving an open video enables PiP");
        check(!VideoBackgroundPolicy.mayEnterPip(true,false,true,false,false),"explicit video close does not reopen PiP");
        check(!VideoBackgroundPolicy.mayEnterPip(false,true,true,false,false),"finishing activity does not enter PiP");
        check(!VideoBackgroundPolicy.mayEnterPip(false,false,false,false,false),"screen off does not enter PiP");
        check(!VideoBackgroundPolicy.mayEnterPip(false,false,true,true,false),"locked phone does not enter PiP");
        check(!VideoBackgroundPolicy.mayEnterPip(false,false,true,false,true),"existing PiP does not enter again");
        check(VideoBackgroundPolicy.seek(50000,100000,false)==40000,"rewind uses exactly ten seconds");
        check(VideoBackgroundPolicy.seek(50000,100000,true)==60000,"forward uses exactly ten seconds");
        check(VideoBackgroundPolicy.seek(3000,100000,false)==0,"rewind clamps to start");
        check(VideoBackgroundPolicy.seek(99000,100000,true)==100000,"forward clamps to end");
        check(VideoBackgroundPolicy.seek(50000,-9223372036854775807L,true)==60000,"unknown duration supports seek");
        long actions=VideoBackgroundPolicy.transportActions(1|2|4|16|32|512);
        check((actions&(16|32))==0,"track-skip slots are released for video seek buttons");
        check((actions&(8|64|256))==(8|64|256),"rewind forward and scrubbing are advertised");
        check((actions&(1|2|4|512))==(1|2|4|512),"stop and play-pause actions are retained");
        check(VideoBackgroundPolicy.seek(Long.MAX_VALUE,-1,true)==Long.MAX_VALUE,"forward seek cannot overflow");
        System.out.println(count+" background policy tests passed.");
    }
}
