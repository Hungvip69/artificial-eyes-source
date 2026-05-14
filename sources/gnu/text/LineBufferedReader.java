package gnu.text;

import gnu.bytecode.Access;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

/* JADX INFO: loaded from: classes.dex */
public class LineBufferedReader extends Reader {
    public static final int BUFFER_SIZE = 8192;
    private static final int CONVERT_CR = 1;
    private static final int DONT_KEEP_FULL_LINES = 8;
    private static final int PREV_WAS_CR = 4;
    private static final int USER_BUFFER = 2;
    public char[] buffer;
    private int flags;
    int highestPos;
    protected Reader in;
    public int limit;
    protected int lineNumber;
    private int lineStartPos;
    protected int markPos;
    Path path;
    public int pos;
    public char readState = '\n';
    protected int readAheadLimit = 0;

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    public char getReadState() {
        return this.readState;
    }

    public void setKeepFullLines(boolean keep) {
        if (keep) {
            this.flags &= -9;
        } else {
            this.flags |= 8;
        }
    }

    public final boolean getConvertCR() {
        return (this.flags & 1) != 0;
    }

    public final void setConvertCR(boolean convertCR) {
        if (convertCR) {
            this.flags |= 1;
        } else {
            this.flags &= -2;
        }
    }

    public LineBufferedReader(InputStream in) {
        this.in = new InputStreamReader(in);
    }

    public LineBufferedReader(Reader in) {
        this.in = in;
    }

    public void lineStart(boolean revisited) throws IOException {
    }

    public int fill(int len) throws IOException {
        return this.in.read(this.buffer, this.pos, len);
    }

    private void clearMark() {
        this.readAheadLimit = 0;
        int i = this.lineStartPos >= 0 ? this.lineStartPos : 0;
        while (true) {
            i++;
            if (i < this.pos) {
                char ch = this.buffer[i - 1];
                if (ch == '\n' || (ch == '\r' && (!getConvertCR() || this.buffer[i] != '\n'))) {
                    this.lineNumber++;
                    this.lineStartPos = i;
                }
            } else {
                return;
            }
        }
    }

    public void setBuffer(char[] buffer) throws IOException {
        if (buffer == null) {
            if (this.buffer != null) {
                char[] buffer2 = new char[this.buffer.length];
                System.arraycopy(this.buffer, 0, buffer2, 0, this.buffer.length);
                this.buffer = buffer2;
            }
            this.flags &= -3;
            return;
        }
        if (this.limit - this.pos > buffer.length) {
            throw new IOException("setBuffer - too short");
        }
        this.flags |= 2;
        reserve(buffer, 0);
    }

    private void reserve(char[] buffer, int reserve) throws IOException {
        int saveStart;
        int reserve2 = reserve + this.limit;
        if (reserve2 <= buffer.length) {
            saveStart = 0;
        } else {
            saveStart = this.pos;
            if (this.readAheadLimit > 0 && this.markPos < this.pos) {
                if (this.pos - this.markPos > this.readAheadLimit || ((this.flags & 2) != 0 && reserve2 - this.markPos > buffer.length)) {
                    clearMark();
                } else {
                    saveStart = this.markPos;
                }
            }
            int reserve3 = reserve2 - buffer.length;
            if (reserve3 > saveStart || (saveStart > this.lineStartPos && (this.flags & 8) == 0)) {
                if (reserve3 <= this.lineStartPos && saveStart > this.lineStartPos) {
                    saveStart = this.lineStartPos;
                } else if ((this.flags & 2) != 0) {
                    saveStart -= (saveStart - reserve3) >> 2;
                } else {
                    if (this.lineStartPos >= 0) {
                        saveStart = this.lineStartPos;
                    }
                    buffer = new char[buffer.length * 2];
                }
            }
            this.lineStartPos -= saveStart;
            this.limit -= saveStart;
            this.markPos -= saveStart;
            this.pos -= saveStart;
            this.highestPos -= saveStart;
        }
        if (this.limit > 0) {
            System.arraycopy(this.buffer, saveStart, buffer, 0, this.limit);
        }
        this.buffer = buffer;
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        char prev;
        if (this.pos > 0) {
            prev = this.buffer[this.pos - 1];
        } else if ((this.flags & 4) != 0) {
            prev = '\r';
        } else if (this.lineStartPos >= 0) {
            prev = '\n';
        } else {
            prev = 0;
        }
        if (prev == '\r' || prev == '\n') {
            if (this.lineStartPos < this.pos && (this.readAheadLimit == 0 || this.pos <= this.markPos)) {
                this.lineStartPos = this.pos;
                this.lineNumber++;
            }
            boolean revisited = this.pos < this.highestPos;
            if (prev != '\n' || (this.pos > 1 ? this.buffer[this.pos - 2] != '\r' : (this.flags & 4) == 0)) {
                lineStart(revisited);
            }
            if (!revisited) {
                this.highestPos = this.pos + 1;
            }
        }
        if (this.pos >= this.limit) {
            if (this.buffer == null) {
                this.buffer = new char[8192];
            } else if (this.limit == this.buffer.length) {
                reserve(this.buffer, 1);
            }
            if (this.pos == 0) {
                if (prev == '\r') {
                    this.flags |= 4;
                } else {
                    this.flags &= -5;
                }
            }
            int readCount = fill(this.buffer.length - this.pos);
            if (readCount <= 0) {
                return -1;
            }
            this.limit += readCount;
        }
        char[] cArr = this.buffer;
        int i = this.pos;
        this.pos = i + 1;
        char c = cArr[i];
        if (c == '\n') {
            if (prev == '\r') {
                if (this.lineStartPos == this.pos - 1) {
                    this.lineNumber--;
                    this.lineStartPos--;
                }
                if (getConvertCR()) {
                    return read();
                }
            }
        } else if (c == '\r' && getConvertCR()) {
            return 10;
        }
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [int] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15, types: [char, int] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v9 */
    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        char c;
        if (this.pos >= this.limit) {
            c = 0;
        } else if (this.pos > 0) {
            c = this.buffer[this.pos - 1];
        } else if ((this.flags & 4) != 0 || this.lineStartPos >= 0) {
            c = 10;
        } else {
            c = 0;
        }
        int i3 = i2;
        while (i3 > 0) {
            if (this.pos >= this.limit || c == 10 || c == 13) {
                if (this.pos >= this.limit && i3 < i2) {
                    return i2 - i3;
                }
                c = read();
                if (c < 0) {
                    int i4 = i2 - i3;
                    if (i4 <= 0) {
                        return -1;
                    }
                    return i4;
                }
                cArr[i] = (char) c;
                i3--;
                i++;
            } else {
                int i5 = this.pos;
                int i6 = this.limit;
                if (i3 < i6 - i5) {
                    i6 = i5 + i3;
                }
                while (i5 < i6) {
                    c = this.buffer[i5];
                    if (c == 10 || c == 13) {
                        break;
                    }
                    cArr[i] = (char) c;
                    i5++;
                    i++;
                }
                i3 -= i5 - this.pos;
                this.pos = i5;
            }
        }
        return i2;
    }

    public Path getPath() {
        return this.path;
    }

    public void setPath(Path path) {
        this.path = path;
    }

    public String getName() {
        if (this.path == null) {
            return null;
        }
        return this.path.toString();
    }

    public void setName(Object name) {
        setPath(Path.valueOf(name));
    }

    public int getLineNumber() {
        int lineno = this.lineNumber;
        if (this.readAheadLimit != 0) {
            return lineno + countLines(this.buffer, this.lineStartPos < 0 ? 0 : this.lineStartPos, this.pos);
        }
        if (this.pos > 0 && this.pos > this.lineStartPos) {
            char prev = this.buffer[this.pos - 1];
            if (prev == '\n' || prev == '\r') {
                return lineno + 1;
            }
            return lineno;
        }
        return lineno;
    }

    public void setLineNumber(int lineNumber) {
        this.lineNumber += lineNumber - getLineNumber();
    }

    public void incrLineNumber(int lineDelta, int lineStartPos) {
        this.lineNumber += lineDelta;
        this.lineStartPos = lineStartPos;
    }

    public int getColumnNumber() {
        char prev;
        if (this.pos > 0 && ((prev = this.buffer[this.pos - 1]) == '\n' || prev == '\r')) {
            return 0;
        }
        if (this.readAheadLimit <= 0) {
            return this.pos - this.lineStartPos;
        }
        int i = this.lineStartPos >= 0 ? this.lineStartPos : 0;
        int start = i;
        while (i < this.pos) {
            int i2 = i + 1;
            char ch = this.buffer[i];
            if (ch == '\n' || ch == '\r') {
                start = i2;
            }
            i = i2;
        }
        int col = this.pos - start;
        if (this.lineStartPos < 0) {
            return col - this.lineStartPos;
        }
        return col;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public synchronized void mark(int readAheadLimit) {
        if (this.readAheadLimit > 0) {
            clearMark();
        }
        this.readAheadLimit = readAheadLimit;
        this.markPos = this.pos;
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        if (this.readAheadLimit <= 0) {
            throw new IOException("mark invalid");
        }
        if (this.pos > this.highestPos) {
            this.highestPos = this.pos;
        }
        this.pos = this.markPos;
        this.readAheadLimit = 0;
    }

    public void readLine(StringBuffer sbuf, char mode) throws IOException {
        while (read() >= 0) {
            int start = this.pos - 1;
            this.pos = start;
            while (this.pos < this.limit) {
                char[] cArr = this.buffer;
                int i = this.pos;
                this.pos = i + 1;
                char c = cArr[i];
                if (c == '\r' || c == '\n') {
                    sbuf.append(this.buffer, start, (this.pos - 1) - start);
                    if (mode == 'P') {
                        this.pos--;
                        return;
                    }
                    if (getConvertCR() || c == '\n') {
                        if (mode != 'I') {
                            sbuf.append('\n');
                            return;
                        }
                        return;
                    }
                    if (mode != 'I') {
                        sbuf.append('\r');
                    }
                    int ch = read();
                    if (ch == 10) {
                        if (mode != 'I') {
                            sbuf.append('\n');
                            return;
                        }
                        return;
                    } else {
                        if (ch >= 0) {
                            unread_quick();
                            return;
                        }
                        return;
                    }
                }
            }
            sbuf.append(this.buffer, start, this.pos - start);
        }
    }

    public String readLine() throws IOException {
        int ch = read();
        if (ch < 0) {
            return null;
        }
        if (ch == 13 || ch == 10) {
            return "";
        }
        int start = this.pos - 1;
        while (this.pos < this.limit) {
            char[] cArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            char c = cArr[i];
            if (c == '\r' || c == '\n') {
                int end = this.pos - 1;
                if (c != '\n' && !getConvertCR()) {
                    if (this.pos >= this.limit) {
                        this.pos--;
                        StringBuffer sbuf = new StringBuffer(100);
                        sbuf.append(this.buffer, start, this.pos - start);
                        readLine(sbuf, Access.INNERCLASS_CONTEXT);
                        return sbuf.toString();
                    }
                    if (this.buffer[this.pos] == '\n') {
                        this.pos++;
                    }
                }
                return new String(this.buffer, start, end - start);
            }
        }
        StringBuffer sbuf2 = new StringBuffer(100);
        sbuf2.append(this.buffer, start, this.pos - start);
        readLine(sbuf2, Access.INNERCLASS_CONTEXT);
        return sbuf2.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15, types: [char] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public int skip(int i) throws IOException {
        char c;
        if (i < 0) {
            int i2 = -i;
            while (i2 > 0 && this.pos > 0) {
                unread();
                i2--;
            }
            return i + i2;
        }
        int i3 = i;
        if (this.pos >= this.limit) {
            c = 0;
        } else if (this.pos > 0) {
            c = this.buffer[this.pos - 1];
        } else if ((this.flags & 4) != 0 || this.lineStartPos >= 0) {
            c = 10;
        } else {
            c = 0;
        }
        while (i3 > 0) {
            if (c == 10 || c == 13 || this.pos >= this.limit) {
                c = read();
                if (c < 0) {
                    return i - i3;
                }
                i3--;
            } else {
                int i4 = this.pos;
                int i5 = this.limit;
                if (i3 < i5 - i4) {
                    i5 = i4 + i3;
                }
                while (i4 < i5) {
                    c = this.buffer[i4];
                    if (c == 10 || c == 13) {
                        break;
                    }
                    i4++;
                }
                i3 -= i4 - this.pos;
                this.pos = i4;
            }
        }
        return i;
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        return this.pos < this.limit || this.in.ready();
    }

    public final void skip_quick() throws IOException {
        this.pos++;
    }

    public void skip() throws IOException {
        read();
    }

    static int countLines(char[] buffer, int start, int limit) {
        int count = 0;
        char prev = 0;
        for (int i = start; i < limit; i++) {
            char ch = buffer[i];
            if ((ch == '\n' && prev != '\r') || ch == '\r') {
                count++;
            }
            prev = ch;
        }
        return count;
    }

    public void skipRestOfLine() throws IOException {
        int c;
        do {
            c = read();
            if (c < 0) {
                return;
            }
            if (c == 13) {
                int c2 = read();
                if (c2 >= 0 && c2 != 10) {
                    unread();
                    return;
                }
                return;
            }
        } while (c != 10);
    }

    public void unread() throws IOException {
        if (this.pos == 0) {
            throw new IOException("unread too much");
        }
        this.pos--;
        char ch = this.buffer[this.pos];
        if (ch == '\n' || ch == '\r') {
            if (this.pos > 0 && ch == '\n' && getConvertCR() && this.buffer[this.pos - 1] == '\r') {
                this.pos--;
            }
            if (this.pos < this.lineStartPos) {
                this.lineNumber--;
                int i = this.pos;
                while (i > 0) {
                    i--;
                    char ch2 = this.buffer[i];
                    if (ch2 == '\r' || ch2 == '\n') {
                        i++;
                        break;
                    }
                }
                this.lineStartPos = i;
            }
        }
    }

    public void unread_quick() {
        this.pos--;
    }

    public int peek() throws IOException {
        char ch;
        if (this.pos < this.limit && this.pos > 0 && (ch = this.buffer[this.pos - 1]) != '\n' && ch != '\r') {
            char ch2 = this.buffer[this.pos];
            if (ch2 == '\r' && getConvertCR()) {
                return 10;
            }
            return ch2;
        }
        int c = read();
        if (c >= 0) {
            unread_quick();
        }
        return c;
    }
}
