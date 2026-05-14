package gnu.text;

import gnu.lists.CharSeq;
import java.io.Reader;

/* JADX INFO: loaded from: classes.dex */
public class QueueReader extends Reader implements Appendable {
    boolean EOFseen;
    char[] buffer;
    int limit;
    int mark;
    int pos;
    int readAheadLimit;

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public synchronized void mark(int readAheadLimit) {
        this.readAheadLimit = readAheadLimit;
        this.mark = this.pos;
    }

    @Override // java.io.Reader
    public synchronized void reset() {
        if (this.readAheadLimit > 0) {
            this.pos = this.mark;
        }
    }

    void resize(int len) {
        int cur_size = this.limit - this.pos;
        if (this.readAheadLimit > 0 && this.pos - this.mark <= this.readAheadLimit) {
            cur_size = this.limit - this.mark;
        } else {
            this.mark = this.pos;
        }
        char[] new_buffer = this.buffer.length < cur_size + len ? new char[(cur_size * 2) + len] : this.buffer;
        System.arraycopy(this.buffer, this.mark, new_buffer, 0, cur_size);
        this.buffer = new_buffer;
        this.pos -= this.mark;
        this.mark = 0;
        this.limit = cur_size;
    }

    @Override // java.lang.Appendable
    public QueueReader append(CharSequence csq) {
        if (csq == null) {
            csq = "null";
        }
        return append(csq, 0, csq.length());
    }

    @Override // java.lang.Appendable
    public synchronized QueueReader append(CharSequence csq, int start, int end) {
        if (csq == null) {
            csq = "null";
        }
        int len = end - start;
        reserveSpace(len);
        int sz = this.limit;
        char[] d = this.buffer;
        if (csq instanceof String) {
            ((String) csq).getChars(start, end, d, sz);
        } else if (csq instanceof CharSeq) {
            ((CharSeq) csq).getChars(start, end, d, sz);
        } else {
            int j = sz;
            int i = start;
            while (i < end) {
                d[j] = csq.charAt(i);
                i++;
                j++;
            }
        }
        this.limit = sz + len;
        notifyAll();
        return this;
    }

    public void append(char[] chars) {
        append(chars, 0, chars.length);
    }

    public synchronized void append(char[] chars, int off, int len) {
        reserveSpace(len);
        System.arraycopy(chars, off, this.buffer, this.limit, len);
        this.limit += len;
        notifyAll();
    }

    @Override // java.lang.Appendable
    public synchronized QueueReader append(char ch) {
        reserveSpace(1);
        char[] cArr = this.buffer;
        int i = this.limit;
        this.limit = i + 1;
        cArr[i] = ch;
        notifyAll();
        return this;
    }

    public synchronized void appendEOF() {
        this.EOFseen = true;
    }

    protected void reserveSpace(int len) {
        if (this.buffer == null) {
            this.buffer = new char[len + 100];
        } else if (this.buffer.length < this.limit + len) {
            resize(len);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000e  */
    @Override // java.io.Reader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean ready() {
        /*
            r2 = this;
            monitor-enter(r2)
            int r0 = r2.pos     // Catch: java.lang.Throwable -> L11
            int r1 = r2.limit     // Catch: java.lang.Throwable -> L11
            if (r0 < r1) goto Le
            boolean r0 = r2.EOFseen     // Catch: java.lang.Throwable -> L11
            if (r0 == 0) goto Lc
            goto Le
        Lc:
            r0 = 0
            goto Lf
        Le:
            r0 = 1
        Lf:
            monitor-exit(r2)
            return r0
        L11:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.text.QueueReader.ready():boolean");
    }

    public void checkAvailable() {
    }

    @Override // java.io.Reader
    public synchronized int read() {
        while (this.pos >= this.limit) {
            if (this.EOFseen) {
                return -1;
            }
            checkAvailable();
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
        char[] cArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        char ch = cArr[i];
        return ch;
    }

    @Override // java.io.Reader
    public synchronized int read(char[] cbuf, int off, int len) {
        if (len == 0) {
            return 0;
        }
        while (this.pos >= this.limit) {
            if (this.EOFseen) {
                return -1;
            }
            checkAvailable();
            try {
                wait();
            } catch (InterruptedException e) {
            }
        }
        int avail = this.limit - this.pos;
        if (len > avail) {
            len = avail;
        }
        System.arraycopy(this.buffer, this.pos, cbuf, off, len);
        this.pos += len;
        return len;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.pos = 0;
        this.limit = 0;
        this.mark = 0;
        this.EOFseen = true;
        this.buffer = null;
    }
}
