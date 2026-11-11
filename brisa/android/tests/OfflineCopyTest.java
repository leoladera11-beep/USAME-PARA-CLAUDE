package com.brisa.local;
import java.io.*;import java.nio.file.*;import java.util.*;import java.util.concurrent.atomic.*;
public class OfflineCopyTest {
 static int tests;static void check(boolean b){if(!b)throw new AssertionError();}
 interface Action{void run()throws Exception;}static void fail(Action a)throws Exception{try{a.run();throw new AssertionError("Expected incomplete/cancelled copy");}catch(IOException expected){}}
 public static void main(String[] args)throws Exception{
  File root=Files.createTempDirectory("brisa-offline-copy-").toFile();File file=new File(root,"video.mp4");byte[] bytes=new byte[500123];new Random(37).nextBytes(bytes);
  try{
   AtomicLong progress=new AtomicLong();long size=OfflineCopy.copy(new ByteArrayInputStream(bytes),file,bytes.length,()->false,progress::set);check(size==bytes.length&&progress.get()==size&&Arrays.equals(bytes,Files.readAllBytes(file.toPath())));check(!new File(root,"video.mp4.part").exists());tests++;
   OfflineCopy.copy(new ByteArrayInputStream(bytes),file,-1,()->false,n->{});check(file.length()==bytes.length);tests++;
   fail(()->OfflineCopy.copy(new ByteArrayInputStream(new byte[10]),file,20,()->false,n->{}));check(Arrays.equals(bytes,Files.readAllBytes(file.toPath())));tests++;
   fail(()->OfflineCopy.copy(new ByteArrayInputStream(new byte[20]),file,10,()->false,n->{}));check(file.length()==bytes.length);tests++;
   fail(()->OfflineCopy.copy(new ByteArrayInputStream(new byte[0]),file,-1,()->false,n->{}));check(file.length()==bytes.length);tests++;
   AtomicBoolean cancel=new AtomicBoolean();fail(()->OfflineCopy.copy(new ByteArrayInputStream(bytes),file,bytes.length,cancel::get,n->cancel.set(true)));check(file.length()==bytes.length&&!new File(root,"video.mp4.part").exists());tests++;
   InputStream broken=new InputStream(){int n;public int read()throws IOException{if(n++>4)throw new IOException("Drive disconnected");return 1;}};
   fail(()->OfflineCopy.copy(broken,file,-1,()->false,n->{}));check(file.length()==bytes.length&&!new File(root,"video.mp4.part").exists());tests++;
   System.out.println(tests+" offline copy tests passed: exact bytes, unknown size, truncation, overrun, empty, cancellation and I/O failure.");
  }finally{for(File f:root.listFiles())f.delete();root.delete();}
 }
}
