package com.brisa.local;
import java.io.*;import java.nio.file.*;import java.util.function.BooleanSupplier;
/** Bounded-memory copy: only a complete, durable file is published. No codec conversion. */
public final class OfflineCopy {
 public interface Progress {void bytes(long copied);}
 public static long copy(InputStream input,File target,long expected,BooleanSupplier cancelled,Progress progress)throws IOException{
  File part=new File(target.getParentFile(),target.getName()+".part");long count=0;
  try{
   try(FileOutputStream output=new FileOutputStream(part)){
    byte[] buffer=new byte[131072];for(;;){if(cancelled.getAsBoolean())throw new InterruptedIOException("Importación cancelada.");int n=input.read(buffer);if(n<0)break;if(n==0)continue;output.write(buffer,0,n);count+=n;if(expected>0&&count>expected)throw new IOException("El tamaño del archivo cambió. Vuelve a elegirlo.");progress.bytes(count);}
    if(cancelled.getAsBoolean())throw new InterruptedIOException("Importación cancelada.");
    if(count==0||expected>0&&count!=expected)throw new EOFException("La copia quedó incompleta. Comprueba tu conexión y el espacio libre.");
    output.getFD().sync();
   }
   Files.move(part.toPath(),target.toPath(),StandardCopyOption.ATOMIC_MOVE,StandardCopyOption.REPLACE_EXISTING);return count;
  }finally{part.delete();}
 }
}
