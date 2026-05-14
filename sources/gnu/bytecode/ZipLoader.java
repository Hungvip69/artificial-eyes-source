package gnu.bytecode;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Vector;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: classes.dex */
public class ZipLoader extends ClassLoader {
    private Vector<Object> loadedClasses;
    int size = 0;
    ZipFile zar;
    private String zipname;

    public ZipLoader(String name) throws IOException {
        this.zipname = name;
        this.zar = new ZipFile(name);
        Enumeration<? extends ZipEntry> enumerationEntries = this.zar.entries();
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry ent = enumerationEntries.nextElement();
            if (!ent.isDirectory()) {
                this.size++;
            }
        }
        this.loadedClasses = new Vector<>(this.size);
    }

    @Override // java.lang.ClassLoader
    public Class loadClass(String str, boolean z) throws ClassNotFoundException {
        Class<?> cls;
        int iIndexOf = this.loadedClasses.indexOf(str);
        boolean z2 = true;
        if (iIndexOf >= 0) {
            cls = (Class) this.loadedClasses.elementAt(iIndexOf + 1);
        } else if (this.zar == null && this.loadedClasses.size() == this.size * 2) {
            cls = Class.forName(str);
        } else {
            String str2 = str.replace('.', '/') + ".class";
            if (this.zar != null) {
                z2 = false;
            } else {
                try {
                    this.zar = new ZipFile(this.zipname);
                } catch (IOException e) {
                    throw new ClassNotFoundException("IOException while loading " + str2 + " from ziparchive \"" + str + "\": " + e.toString());
                }
            }
            ZipEntry entry = this.zar.getEntry(str2);
            if (entry == null) {
                if (z2) {
                    try {
                        close();
                    } catch (IOException e2) {
                        throw new RuntimeException("failed to close \"" + this.zipname + "\"");
                    }
                }
                cls = Class.forName(str);
            } else {
                try {
                    int size = (int) entry.getSize();
                    byte[] bArr = new byte[size];
                    new DataInputStream(this.zar.getInputStream(entry)).readFully(bArr);
                    Class<?> clsDefineClass = defineClass(str, bArr, 0, size);
                    this.loadedClasses.addElement(str);
                    this.loadedClasses.addElement(clsDefineClass);
                    if (this.size * 2 == this.loadedClasses.size()) {
                        close();
                    }
                    cls = clsDefineClass;
                } catch (IOException e3) {
                    throw new ClassNotFoundException("IOException while loading " + str2 + " from ziparchive \"" + str + "\": " + e3.toString());
                }
            }
        }
        if (z) {
            resolveClass(cls);
        }
        return cls;
    }

    public Class loadAllClasses() throws IOException {
        Enumeration<? extends ZipEntry> enumerationEntries = this.zar.entries();
        Class<?> cls = null;
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry member = enumerationEntries.nextElement();
            String name = member.getName().replace('/', '.');
            String name2 = name.substring(0, name.length() - "/class".length());
            int member_size = (int) member.getSize();
            InputStream strm = this.zar.getInputStream(member);
            byte[] bytes = new byte[member_size];
            new DataInputStream(strm).readFully(bytes);
            Class<?> clsDefineClass = defineClass(name2, bytes, 0, member_size);
            if (cls == null) {
                cls = clsDefineClass;
            }
            this.loadedClasses.addElement(name2);
            this.loadedClasses.addElement(clsDefineClass);
        }
        close();
        return cls;
    }

    public void close() throws IOException {
        if (this.zar != null) {
            this.zar.close();
        }
        this.zar = null;
    }
}
