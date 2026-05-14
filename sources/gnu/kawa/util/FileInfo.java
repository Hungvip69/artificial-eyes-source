package gnu.kawa.util;

import gnu.mapping.InPort;
import gnu.mapping.OutPort;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Hashtable;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: FixupHtmlToc.java */
/* JADX INFO: loaded from: classes2.dex */
class FileInfo {
    StringBuffer beforeNavbarText;
    ByteArrayOutputStream bout;
    String[] childLinkText;
    OutPort cout;
    File file;
    FileInputStream fin;
    InPort in;
    int nchildren;
    StringBuffer newNavbarText;
    StringBuffer oldNavbarText;
    FileInfo parent;
    String parentName;
    String path;
    boolean scanned;
    boolean writeNeeded;
    static Hashtable fileMap = new Hashtable();
    static final Pattern childPat = Pattern.compile("<a .*</a>");
    static final Pattern parentPat = Pattern.compile("<ul[^>]* parent=['\"]([^'\"]*)['\"]");
    static final Pattern linkPat = Pattern.compile(" href=['\"]([^'\"]*)['\"]");

    FileInfo() {
    }

    public static FileInfo find(File file) throws Throwable {
        String abs = file.getCanonicalPath();
        FileInfo info = (FileInfo) fileMap.get(abs);
        if (info == null) {
            FileInfo info2 = new FileInfo();
            info2.file = file;
            fileMap.put(abs, info2);
            return info2;
        }
        return info;
    }

    public void scan() throws Throwable {
        if (this.scanned) {
            return;
        }
        this.scanned = true;
        this.fin = new FileInputStream(this.file);
        this.in = new InPort(new BufferedInputStream(this.fin));
        this.oldNavbarText = new StringBuffer();
        this.newNavbarText = new StringBuffer();
        if (this.writeNeeded) {
            this.bout = new ByteArrayOutputStream();
            this.cout = new OutPort(this.bout);
        }
        boolean inNavbar = false;
        boolean inChildList = false;
        Vector chvec = new Vector();
        while (true) {
            String line = this.in.readLine();
            if (line == null) {
                break;
            }
            if (inNavbar) {
                if (line.indexOf("<!--end-generated-navbar-->") >= 0) {
                    break;
                }
                this.oldNavbarText.append(line);
                this.oldNavbarText.append('\n');
                if (inChildList) {
                    if (line.indexOf("<!--end-children-toc-->") >= 0) {
                        inChildList = false;
                    } else {
                        Matcher childMatcher = childPat.matcher(line);
                        if (childMatcher.find()) {
                            chvec.add(childMatcher.group());
                        }
                        Matcher parentMatcher = parentPat.matcher(line);
                        if (parentMatcher.find() && this.parentName == null) {
                            this.parentName = parentMatcher.group(1);
                        }
                    }
                }
                if (line.indexOf("<!--start-children-toc-->") >= 0) {
                    inChildList = true;
                }
            } else if (line.indexOf("<!--start-generated-navbar-->") >= 0) {
                inNavbar = true;
            }
            if (this.writeNeeded && !inNavbar) {
                this.cout.println(line);
            }
        }
        String[] charr = new String[chvec.size()];
        this.nchildren = charr.length;
        chvec.copyInto(charr);
        this.childLinkText = charr;
        if (!this.writeNeeded) {
            this.in.close();
        }
        if (this.parentName != null) {
            File parentFile = new File(this.file.toURI().resolve(this.parentName));
            FileInfo parentInfo = find(parentFile);
            parentInfo.scan();
            this.parent = parentInfo;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00b1 A[PHI: r8 r9
      0x00b1: PHI (r8v3 'linkText' java.lang.String) = (r8v2 'linkText' java.lang.String), (r8v4 'linkText' java.lang.String), (r8v4 'linkText' java.lang.String) binds: [B:17:0x004b, B:26:0x00ab, B:28:0x00ae] A[DONT_GENERATE, DONT_INLINE]
      0x00b1: PHI (r9v1 'ancestor' boolean) = (r9v0 'ancestor' boolean), (r9v2 'ancestor' boolean), (r9v2 'ancestor' boolean) binds: [B:17:0x004b, B:26:0x00ab, B:28:0x00ae] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void writeLinks(int r18, java.lang.StringBuffer r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.util.FileInfo.writeLinks(int, java.lang.StringBuffer):void");
    }

    public void write() throws Throwable {
        int level = 0;
        FileInfo current = this;
        while (current.parent != null) {
            current = current.parent;
            level++;
        }
        this.cout.println("<!--start-generated-navbar-->");
        writeLinks(level, this.newNavbarText);
        this.cout.print(this.newNavbarText);
        this.cout.println("<!--end-generated-navbar-->");
        while (true) {
            String line = this.in.readLine();
            if (line == null) {
                break;
            } else {
                this.cout.println(line);
            }
        }
        new StringBuffer();
        this.in.close();
        if (this.oldNavbarText.toString().equals(this.newNavbarText.toString())) {
            System.err.println("fixup " + this.file + " - no change");
            return;
        }
        FileOutputStream outs = new FileOutputStream(this.file);
        byte[] bbuf = this.bout.toByteArray();
        outs.write(bbuf);
        outs.close();
        System.err.println("fixup " + this.file + " - updated");
    }
}
