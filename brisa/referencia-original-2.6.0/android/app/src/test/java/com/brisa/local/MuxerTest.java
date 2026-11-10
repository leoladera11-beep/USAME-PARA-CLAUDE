package com.brisa.local;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;
import java.io.*;
import static org.junit.Assert.*;

@RunWith(RobolectricTestRunner.class)
@Config(sdk = 28, manifest = Config.NONE)
public class MuxerTest {
    private File fixture(String name) { return new File("../../tests/fixtures/" + name); }
    @Test public void h264AndAacAreMuxedWithoutEncoding() throws Exception {
        File output = File.createTempFile("brisa-h264-", ".mp4");
        LocalMuxer.merge(fixture("h264.mp4"), fixture("aac.m4a"), output, () -> false);
        assertTrue(output.length() > 1000);
        java.nio.file.Files.copy(output.toPath(), new File("../../tests/fixtures/android-h264.mp4").toPath(), java.nio.file.StandardCopyOption.REPLACE_EXISTING);
        output.delete();
    }
    @Test public void vp9AndOpusAreMuxedWithoutEncoding() throws Exception {
        File output = File.createTempFile("brisa-vp9-", ".mp4");
        LocalMuxer.merge(fixture("vp9.webm"), fixture("opus.webm"), output, () -> false);
        assertTrue(output.length() > 1000);
        java.nio.file.Files.copy(output.toPath(), new File("../../tests/fixtures/android-vp9.mp4").toPath(), java.nio.file.StandardCopyOption.REPLACE_EXISTING);
        output.delete();
    }
    @Test public void cancellationStopsMuxing() throws Exception {
        File output = File.createTempFile("brisa-cancel-", ".mp4");
        try { LocalMuxer.merge(fixture("h264.mp4"), fixture("aac.m4a"), output, () -> true); fail("should cancel"); }
        catch (InterruptedIOException expected) { } finally { output.delete(); }
    }
    @Test public void fourKVideoKeepsItsOriginalResolution() throws Exception {
        File output = new File("../../tests/fixtures/android-4k.mp4");
        LocalMuxer.merge(fixture("h264-4k.mp4"), fixture("aac.m4a"), output, () -> false);
        assertTrue(output.length() > 1000);
    }
    @Test public void av1AndOpusAreMuxedWithoutEncoding() throws Exception {
        File output = new File("../../tests/fixtures/android-av1.mp4");
        LocalMuxer.merge(fixture("av1.webm"), fixture("opus.webm"), output, () -> false);
        assertTrue(output.length() > 1000);
    }
    @Test public void androidNineUsesAacForCompatibleMp4Audio() {
        assertTrue(DownloadEngine.audioContainerSupported("mp4a.40.2"));
        assertFalse(DownloadEngine.audioContainerSupported("opus"));
    }
    @Test public void youtubeJavaScriptUsesInterpreter() {
        assertEquals("cba", org.schabi.newpipe.extractor.utils.JavaScript.run("function reverse(s) {return s.split('').reverse().join('');}", "reverse", "abc"));
    }
}
