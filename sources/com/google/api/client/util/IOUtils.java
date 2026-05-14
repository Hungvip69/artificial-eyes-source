package com.google.api.client.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class IOUtils {
    public static void copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        copy(inputStream, outputStream, true);
    }

    public static void copy(InputStream inputStream, OutputStream outputStream, boolean closeInputStream) throws IOException {
        try {
            ByteStreams.copy(inputStream, outputStream);
        } finally {
            if (closeInputStream) {
                inputStream.close();
            }
        }
    }

    public static long computeLength(StreamingContent content) throws IOException {
        ByteCountingOutputStream countingStream = new ByteCountingOutputStream();
        try {
            content.writeTo(countingStream);
            countingStream.close();
            return countingStream.count;
        } catch (Throwable th) {
            countingStream.close();
            throw th;
        }
    }

    public static byte[] serialize(Object value) throws IOException {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        serialize(value, out);
        return out.toByteArray();
    }

    public static void serialize(Object value, OutputStream outputStream) throws IOException {
        try {
            new ObjectOutputStream(outputStream).writeObject(value);
        } finally {
            outputStream.close();
        }
    }

    public static <S extends Serializable> S deserialize(byte[] bArr) throws IOException {
        if (bArr == null) {
            return null;
        }
        return (S) deserialize(new ByteArrayInputStream(bArr));
    }

    public static <S extends Serializable> S deserialize(InputStream inputStream) throws IOException {
        try {
            try {
                return (S) new ObjectInputStream(inputStream).readObject();
            } catch (ClassNotFoundException exception) {
                IOException ioe = new IOException("Failed to deserialize object");
                ioe.initCause(exception);
                throw ioe;
            }
        } finally {
            inputStream.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0048 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isSymbolicLink(java.io.File r8) throws java.lang.Throwable {
        /*
            r0 = 1
            r1 = 0
            java.lang.String r2 = "java.nio.file.Files"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            java.lang.String r3 = "java.nio.file.Path"
            java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            java.lang.Class<java.io.File> r4 = java.io.File.class
            java.lang.String r5 = "toPath"
            java.lang.Class[] r6 = new java.lang.Class[r1]     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            java.lang.reflect.Method r4 = r4.getMethod(r5, r6)     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            java.lang.Object r4 = r4.invoke(r8, r5)     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            java.lang.String r5 = "isSymbolicLink"
            java.lang.Class[] r6 = new java.lang.Class[r0]     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            r6[r1] = r3     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            java.lang.reflect.Method r5 = r2.getMethod(r5, r6)     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            java.lang.Object[] r6 = new java.lang.Object[r0]     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            r6[r1] = r4     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            r7 = 0
            java.lang.Object r5 = r5.invoke(r7, r6)     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            boolean r0 = r5.booleanValue()     // Catch: java.lang.NoSuchMethodException -> L38 java.lang.IllegalAccessException -> L3a java.lang.SecurityException -> L3c java.lang.IllegalArgumentException -> L3e java.lang.ClassNotFoundException -> L40 java.lang.reflect.InvocationTargetException -> L70
            return r0
        L38:
            r2 = move-exception
            goto L42
        L3a:
            r2 = move-exception
            goto L41
        L3c:
            r2 = move-exception
            goto L41
        L3e:
            r2 = move-exception
            goto L41
        L40:
            r2 = move-exception
        L41:
        L42:
            char r2 = java.io.File.separatorChar
            r3 = 92
            if (r2 != r3) goto L49
            return r1
        L49:
            r1 = r8
            java.lang.String r2 = r8.getParent()
            if (r2 == 0) goto L62
            java.io.File r2 = new java.io.File
            java.io.File r3 = r8.getParentFile()
            java.io.File r3 = r3.getCanonicalFile()
            java.lang.String r4 = r8.getName()
            r2.<init>(r3, r4)
            r1 = r2
        L62:
            java.io.File r2 = r1.getCanonicalFile()
            java.io.File r3 = r1.getAbsoluteFile()
            boolean r2 = r2.equals(r3)
            r0 = r0 ^ r2
            return r0
        L70:
            r0 = move-exception
            java.lang.Throwable r1 = r0.getCause()
            java.lang.Class<java.io.IOException> r2 = java.io.IOException.class
            com.google.api.client.util.Throwables.propagateIfPossible(r1, r2)
            java.lang.RuntimeException r2 = new java.lang.RuntimeException
            r2.<init>(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.api.client.util.IOUtils.isSymbolicLink(java.io.File):boolean");
    }
}
