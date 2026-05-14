package gnu.kawa.lispexpr;

import gnu.mapping.InPort;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SyntaxException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ReaderString extends ReadTableEntry {
    @Override // gnu.kawa.lispexpr.ReadTableEntry
    public Object read(Lexer in, int ch, int count) throws SyntaxException, IOException {
        return readString(in, ch, count);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v15, types: [int] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5, types: [char] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r8v0, types: [gnu.text.Lexer] */
    public static String readString(Lexer lexer, int i, int i2) throws SyntaxException, IOException {
        char c;
        char escape;
        int i3 = lexer.tokenBufferLength;
        LineBufferedReader port = lexer.getPort();
        boolean z = port instanceof InPort;
        if (!z) {
            c = 0;
            escape = i;
        } else {
            InPort inPort = (InPort) port;
            c = inPort.readState;
            inPort.readState = (char) i;
            escape = i;
        }
        while (true) {
            int i4 = 13;
            if (escape == 13) {
                try {
                    escape = port.read();
                    if (escape == 10) {
                    }
                } finally {
                    lexer.tokenBufferLength = i3;
                    if (z) {
                        ((InPort) port).readState = c;
                    }
                }
            } else if (port.pos < port.limit && escape != 10) {
                char[] cArr = port.buffer;
                int i5 = port.pos;
                port.pos = i5 + 1;
                escape = cArr[i5];
            } else {
                escape = port.read();
            }
            if (escape != i) {
                switch (escape) {
                    case 13:
                        if (port.getConvertCR()) {
                            i4 = 10;
                            escape = escape;
                        } else {
                            escape = 32;
                        }
                        lexer.tokenBufferAppend(i4);
                        continue;
                    case 92:
                        if (lexer instanceof LispReader) {
                            escape = ((LispReader) lexer).readEscape();
                        } else {
                            escape = port.read();
                        }
                        if (escape == -2) {
                            escape = 10;
                        }
                        break;
                }
                if (escape < 0) {
                    lexer.eofError("unexpected EOF in string literal");
                }
                lexer.tokenBufferAppend(escape);
            } else {
                return new String(lexer.tokenBuffer, i3, lexer.tokenBufferLength - i3).intern();
            }
        }
    }
}
