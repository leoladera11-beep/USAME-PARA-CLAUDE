import java.io.File; import java.net.*; import java.util.*; import java.util.jar.*;
/** Carga y enlaza (verifica) todas las clases com.brisa.local de un jar con el verificador de la JVM. */
public class Verify {
  public static void main(String[] a) throws Exception {
    URLClassLoader loader = new URLClassLoader(new URL[]{new File(a[0]).toURI().toURL(), new File(a[1]).toURI().toURL()}, ClassLoader.getPlatformClassLoader());
    List<String> names = new ArrayList<>();
    try (JarFile jar = new JarFile(a[0])) { for (Enumeration<JarEntry> e = jar.entries(); e.hasMoreElements();) { String n = e.nextElement().getName(); if (n.endsWith(".class") && (a.length < 3 || n.startsWith(a[2]))) names.add(n.substring(0, n.length() - 6).replace('/', '.')); } }
    Collections.sort(names); int ok = 0; List<String> bad = new ArrayList<>();
    for (String n : names) { try { Class<?> c = Class.forName(n, false, loader); c.getDeclaredMethods(); c.getDeclaredFields(); c.getDeclaredConstructors(); ok++; } catch (Throwable t) { bad.add(n + " -> " + t.getClass().getSimpleName() + ": " + String.valueOf(t.getMessage()).split("\n")[0]); } }
    System.out.println(ok + " clases verificadas, " + bad.size() + " con problemas"); for (String b : bad) System.out.println("  " + b);
  }
}
