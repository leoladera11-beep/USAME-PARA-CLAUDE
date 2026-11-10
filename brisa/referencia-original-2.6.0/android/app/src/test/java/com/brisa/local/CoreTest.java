package com.brisa.local;

import org.junit.Test;
import static org.junit.Assert.*;
import java.util.*;

public class CoreTest {
    @Test public void canonicalYoutubeAndRejectedTargets() throws Exception {
        assertEquals("https://www.youtube.com/watch?v=abcdefghijk", SafeNetwork.canonical("https://youtu.be/abcdefghijk?si=tracking"));
        assertEquals("https://www.youtube.com/watch?v=abcdefghijk", SafeNetwork.canonical("https://youtube.com/shorts/abcdefghijk"));
        for (String url : Arrays.asList("http://youtube.com/watch?v=abcdefghijk", "https://user:secret@youtube.com/watch?v=abcdefghijk", "file:///video.mp4", "https://youtube.com.evil.test/watch?v=abcdefghijk", "https://appassets.androidplatform.net/video.mp4")) {
            try { SafeNetwork.canonical(url); fail(url); } catch (Exception expected) { }
        }
    }
    @Test public void shuffleVisitsEveryTrackBeforeRepeating() {
        QueueCycle cycle = new QueueCycle(new Random(7)); List<String> ids = Arrays.asList("a", "b", "c", "d");
        cycle.configure(ids, true, "a"); cycle.visit("a");
        Set<String> visited = new HashSet<>(); visited.add("a"); String current = "a";
        for (int i = 0; i < 3; i++) { current = cycle.next(current, true, "off"); assertNotNull(current); assertTrue(visited.add(current)); }
        assertEquals(4, visited.size()); assertNull(cycle.next(current, true, "off"));
    }
    @Test public void folderImportHandlesCyclesAndKeepsAllAudio() throws Exception {
        Map<String, List<MusicTree.Entry>> folders = new HashMap<>();
        folders.put("root", Arrays.asList(new MusicTree.Entry("sub", "sub", "", true), new MusicTree.Entry("a", "one.mp3", "audio/mpeg", false), new MusicTree.Entry("text", "readme.txt", "text/plain", false)));
        folders.put("sub", Arrays.asList(new MusicTree.Entry("root", "cycle", "", true), new MusicTree.Entry("b", "two.flac", null, false)));
        List<String> imported = new ArrayList<>();
        MusicTree.Result result = MusicTree.walk("root", directory -> new MusicTree.Rows() {
            final Iterator<MusicTree.Entry> values = folders.get(directory).iterator();
            public MusicTree.Entry next() { return values.hasNext() ? values.next() : null; }
            public void close() { }
        }, new MusicTree.Sink() {
            public void audio(MusicTree.Entry entry) { imported.add(entry.id); }
            public boolean cancelled() { return false; }
        });
        assertEquals(Arrays.asList("a", "b"), imported); assertEquals(2, result.audio); assertEquals(0, result.failed);
    }
}
