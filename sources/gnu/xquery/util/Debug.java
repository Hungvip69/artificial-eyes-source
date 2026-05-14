package gnu.xquery.util;

import gnu.mapping.OutPort;

/* JADX INFO: loaded from: classes2.dex */
public class Debug {
    public static String tracePrefix = "XQuery-trace: ";
    public static OutPort tracePort = null;
    public static String traceFilename = "XQuery-trace.log";
    public static boolean traceShouldFlush = true;
    public static boolean traceShouldAppend = false;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0057 A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:10:0x0038, B:11:0x003a, B:13:0x0057, B:9:0x0018, B:6:0x0007), top: B:21:0x0003, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized java.lang.Object trace(java.lang.Object r6, java.lang.Object r7) {
        /*
            java.lang.Class<gnu.xquery.util.Debug> r0 = gnu.xquery.util.Debug.class
            monitor-enter(r0)
            gnu.mapping.OutPort r1 = gnu.xquery.util.Debug.tracePort     // Catch: java.lang.Throwable -> L5c
            if (r1 != 0) goto L3a
            gnu.mapping.OutPort r2 = new gnu.mapping.OutPort     // Catch: java.lang.Throwable -> L17
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L17
            java.lang.String r4 = gnu.xquery.util.Debug.traceFilename     // Catch: java.lang.Throwable -> L17
            boolean r5 = gnu.xquery.util.Debug.traceShouldAppend     // Catch: java.lang.Throwable -> L17
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L17
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L17
            r1 = r2
            goto L38
        L17:
            r2 = move-exception
            gnu.mapping.WrappedException r3 = new gnu.mapping.WrappedException     // Catch: java.lang.Throwable -> L5c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r4.<init>()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r5 = "Could not open '"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r5 = gnu.xquery.util.Debug.traceFilename     // Catch: java.lang.Throwable -> L5c
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r5 = "' for fn:trace output"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L5c
            r3.<init>(r4, r2)     // Catch: java.lang.Throwable -> L5c
        L38:
            gnu.xquery.util.Debug.tracePort = r1     // Catch: java.lang.Throwable -> L5c
        L3a:
            java.lang.String r2 = gnu.xquery.util.Debug.tracePrefix     // Catch: java.lang.Throwable -> L5c
            r1.print(r2)     // Catch: java.lang.Throwable -> L5c
            r1.print(r7)     // Catch: java.lang.Throwable -> L5c
            r2 = 32
            r1.print(r2)     // Catch: java.lang.Throwable -> L5c
            gnu.xml.XMLPrinter r2 = new gnu.xml.XMLPrinter     // Catch: java.lang.Throwable -> L5c
            r3 = 0
            r2.<init>(r1, r3)     // Catch: java.lang.Throwable -> L5c
            r2.writeObject(r6)     // Catch: java.lang.Throwable -> L5c
            r1.println()     // Catch: java.lang.Throwable -> L5c
            boolean r3 = gnu.xquery.util.Debug.traceShouldFlush     // Catch: java.lang.Throwable -> L5c
            if (r3 == 0) goto L5a
            r1.flush()     // Catch: java.lang.Throwable -> L5c
        L5a:
            monitor-exit(r0)
            return r6
        L5c:
            r6 = move-exception
            monitor-exit(r0)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.util.Debug.trace(java.lang.Object, java.lang.Object):java.lang.Object");
    }
}
