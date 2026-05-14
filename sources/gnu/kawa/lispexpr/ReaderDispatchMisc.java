package gnu.kawa.lispexpr;

import gnu.mapping.InPort;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SyntaxException;
import java.io.IOException;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class ReaderDispatchMisc extends ReadTableEntry {
    private static ReaderDispatchMisc instance = new ReaderDispatchMisc();
    protected int code;

    public static ReaderDispatchMisc getInstance() {
        return instance;
    }

    public ReaderDispatchMisc() {
        this.code = -1;
    }

    public ReaderDispatchMisc(int code) {
        this.code = code;
    }

    /* JADX WARN: Removed duplicated region for block: B:96:0x01c2  */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
    @Override // gnu.kawa.lispexpr.ReadTableEntry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object read(gnu.text.Lexer r9, int r10, int r11) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 574
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.ReaderDispatchMisc.read(gnu.text.Lexer, int, int):java.lang.Object");
    }

    public static Pattern readRegex(Lexer in, int ch, int count) throws SyntaxException, IOException {
        int startPos = in.tokenBufferLength;
        LineBufferedReader port = in.getPort();
        char saveReadState = 0;
        int flags = 0;
        if (port instanceof InPort) {
            saveReadState = ((InPort) port).readState;
            ((InPort) port).readState = '/';
        }
        while (true) {
            try {
                int c = port.read();
                if (c < 0) {
                    in.eofError("unexpected EOF in regex literal");
                }
                if (c == ch) {
                    break;
                }
                if (c == 92) {
                    c = port.read();
                    if ((c != 32 && c != 9 && c != 13 && c != 10) || !(in instanceof LispReader) || (c = ((LispReader) in).readEscape(c)) != -2) {
                        if (c < 0) {
                            in.eofError("unexpected EOF in regex literal");
                        }
                        if (c != ch) {
                            in.tokenBufferAppend(92);
                        }
                    }
                }
                in.tokenBufferAppend(c);
            } finally {
                in.tokenBufferLength = startPos;
                if (port instanceof InPort) {
                    ((InPort) port).readState = saveReadState;
                }
            }
        }
        String pattern = new String(in.tokenBuffer, startPos, in.tokenBufferLength - startPos);
        while (true) {
            int c2 = in.peek();
            if (c2 == 105 || c2 == 73) {
                flags |= 66;
            } else if (c2 == 115 || c2 == 83) {
                flags |= 32;
            } else if (c2 == 109 || c2 == 77) {
                flags |= 8;
            } else {
                if (!Character.isLetter(c2)) {
                    break;
                }
                in.error("unrecognized regex option '" + ((char) c2) + '\'');
            }
            in.skip();
        }
        return Pattern.compile(pattern, flags);
    }
}
