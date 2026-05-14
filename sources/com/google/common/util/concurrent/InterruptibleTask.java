package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
abstract class InterruptibleTask<T> extends AtomicReference<Runnable> implements Runnable {
    private static final Runnable DONE;
    private static final Runnable INTERRUPTING;
    private static final int MAX_BUSY_WAIT_SPINS = 1000;
    private static final Runnable PARKED;

    abstract void afterRanInterruptibly(@NullableDecl T t, @NullableDecl Throwable th);

    abstract boolean isDone();

    abstract T runInterruptibly() throws Exception;

    abstract String toPendingString();

    InterruptibleTask() {
    }

    static {
        DONE = new DoNothingRunnable();
        INTERRUPTING = new DoNothingRunnable();
        PARKED = new DoNothingRunnable();
    }

    /* JADX INFO: loaded from: classes2.dex */
    private static final class DoNothingRunnable implements Runnable {
        private DoNothingRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:76:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() throws java.lang.Exception {
        /*
            r12 = this;
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r1 = 0
            boolean r1 = r12.compareAndSet(r1, r0)
            if (r1 != 0) goto Lc
            return
        Lc:
            boolean r1 = r12.isDone()
            r2 = 1
            r1 = r1 ^ r2
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 1000(0x3e8, float:1.401E-42)
            if (r1 == 0) goto L74
            java.lang.Object r7 = r12.runInterruptibly()     // Catch: java.lang.Throwable -> L1f
            r3 = r7
            goto L74
        L1f:
            r7 = move-exception
            r4 = r7
            java.lang.Runnable r7 = com.google.common.util.concurrent.InterruptibleTask.DONE
            boolean r7 = r12.compareAndSet(r0, r7)
            if (r7 != 0) goto L6e
            r7 = 0
            r8 = 0
            java.lang.Object r9 = r12.get()
            java.lang.Runnable r9 = (java.lang.Runnable) r9
        L31:
            java.lang.Runnable r10 = com.google.common.util.concurrent.InterruptibleTask.INTERRUPTING
            if (r9 == r10) goto L40
            java.lang.Runnable r10 = com.google.common.util.concurrent.InterruptibleTask.PARKED
            if (r9 != r10) goto L3a
            goto L40
        L3a:
            if (r7 == 0) goto L6e
            r0.interrupt()
            goto L6e
        L40:
            int r8 = r8 + 1
            if (r8 <= r6) goto L63
            java.lang.Runnable r10 = com.google.common.util.concurrent.InterruptibleTask.PARKED
            if (r9 == r10) goto L52
            java.lang.Runnable r10 = com.google.common.util.concurrent.InterruptibleTask.INTERRUPTING
            java.lang.Runnable r11 = com.google.common.util.concurrent.InterruptibleTask.PARKED
            boolean r10 = r12.compareAndSet(r10, r11)
            if (r10 == 0) goto L66
        L52:
            boolean r10 = java.lang.Thread.interrupted()
            if (r10 != 0) goto L5d
            if (r7 == 0) goto L5b
            goto L5d
        L5b:
            r10 = 0
            goto L5e
        L5d:
            r10 = 1
        L5e:
            r7 = r10
            java.util.concurrent.locks.LockSupport.park(r12)
            goto L66
        L63:
            java.lang.Thread.yield()
        L66:
            java.lang.Object r10 = r12.get()
            r9 = r10
            java.lang.Runnable r9 = (java.lang.Runnable) r9
            goto L31
        L6e:
            if (r1 == 0) goto Lc4
        L70:
            r12.afterRanInterruptibly(r3, r4)
            goto Lc4
        L74:
            java.lang.Runnable r7 = com.google.common.util.concurrent.InterruptibleTask.DONE
            boolean r7 = r12.compareAndSet(r0, r7)
            if (r7 != 0) goto Lc1
            r7 = 0
            r8 = 0
            java.lang.Object r9 = r12.get()
            java.lang.Runnable r9 = (java.lang.Runnable) r9
        L84:
            java.lang.Runnable r10 = com.google.common.util.concurrent.InterruptibleTask.INTERRUPTING
            if (r9 == r10) goto L93
            java.lang.Runnable r10 = com.google.common.util.concurrent.InterruptibleTask.PARKED
            if (r9 != r10) goto L8d
            goto L93
        L8d:
            if (r7 == 0) goto Lc1
            r0.interrupt()
            goto Lc1
        L93:
            int r8 = r8 + 1
            if (r8 <= r6) goto Lb6
            java.lang.Runnable r10 = com.google.common.util.concurrent.InterruptibleTask.PARKED
            if (r9 == r10) goto La5
            java.lang.Runnable r10 = com.google.common.util.concurrent.InterruptibleTask.INTERRUPTING
            java.lang.Runnable r11 = com.google.common.util.concurrent.InterruptibleTask.PARKED
            boolean r10 = r12.compareAndSet(r10, r11)
            if (r10 == 0) goto Lb9
        La5:
            boolean r10 = java.lang.Thread.interrupted()
            if (r10 != 0) goto Lb0
            if (r7 == 0) goto Lae
            goto Lb0
        Lae:
            r10 = 0
            goto Lb1
        Lb0:
            r10 = 1
        Lb1:
            r7 = r10
            java.util.concurrent.locks.LockSupport.park(r12)
            goto Lb9
        Lb6:
            java.lang.Thread.yield()
        Lb9:
            java.lang.Object r10 = r12.get()
            r9 = r10
            java.lang.Runnable r9 = (java.lang.Runnable) r9
            goto L84
        Lc1:
            if (r1 == 0) goto Lc4
            goto L70
        Lc4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.InterruptibleTask.run():void");
    }

    final void interruptTask() {
        Runnable currentRunner = get();
        if ((currentRunner instanceof Thread) && compareAndSet(currentRunner, INTERRUPTING)) {
            try {
                ((Thread) currentRunner).interrupt();
            } finally {
                Runnable prev = getAndSet(DONE);
                if (prev == PARKED) {
                    LockSupport.unpark((Thread) currentRunner);
                }
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String result;
        Runnable state = get();
        if (state == DONE) {
            result = "running=[DONE]";
        } else if (state == INTERRUPTING) {
            result = "running=[INTERRUPTED]";
        } else if (state instanceof Thread) {
            result = "running=[RUNNING ON " + ((Thread) state).getName() + "]";
        } else {
            result = "running=[NOT STARTED YET]";
        }
        return result + ", " + toPendingString();
    }
}
