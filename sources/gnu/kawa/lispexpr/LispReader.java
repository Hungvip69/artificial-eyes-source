package gnu.kawa.lispexpr;

import gnu.bytecode.Access;
import gnu.expr.Keyword;
import gnu.expr.QuoteExp;
import gnu.expr.Special;
import gnu.kawa.util.GeneralHashTable;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.lists.Sequence;
import gnu.mapping.Environment;
import gnu.mapping.InPort;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.math.IntNum;
import gnu.text.Char;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class LispReader extends Lexer {
    static final int SCM_COMPLEX = 1;
    public static final int SCM_NUMBERS = 1;
    public static final char TOKEN_ESCAPE_CHAR = 65535;
    protected boolean seenEscapes;
    GeneralHashTable<Integer, Object> sharedStructureTable;

    public LispReader(LineBufferedReader port) {
        super(port);
    }

    public LispReader(LineBufferedReader port, SourceMessages messages) {
        super(port, messages);
    }

    public final void readNestedComment(char c1, char c2) throws SyntaxException, IOException {
        int commentNesting = 1;
        int startLine = this.port.getLineNumber();
        int startColumn = this.port.getColumnNumber();
        do {
            int c = read();
            if (c == 124) {
                c = read();
                if (c == c1) {
                    commentNesting--;
                }
            } else if (c == c1 && (c = read()) == c2) {
                commentNesting++;
            }
            if (c < 0) {
                eofError("unexpected end-of-file in " + c1 + c2 + " comment starting here", startLine + 1, startColumn - 1);
                return;
            }
        } while (commentNesting > 0);
    }

    static char getReadCase() {
        try {
            String read_case_string = Environment.getCurrent().get("symbol-read-case", "P").toString();
            char read_case = read_case_string.charAt(0);
            if (read_case != 'P') {
                if (read_case == 'u') {
                    return 'U';
                }
                if (read_case == 'd' || read_case == 'l' || read_case == 'L') {
                    return 'D';
                }
                if (read_case == 'i') {
                    return Access.INNERCLASS_CONTEXT;
                }
                return read_case;
            }
            return read_case;
        } catch (Exception e) {
            return 'P';
        }
    }

    public Object readValues(int ch, ReadTable rtable) throws SyntaxException, IOException {
        return readValues(ch, rtable.lookup(ch), rtable);
    }

    public Object readValues(int ch, ReadTableEntry entry, ReadTable rtable) throws SyntaxException, IOException {
        int startPos = this.tokenBufferLength;
        this.seenEscapes = false;
        int kind = entry.getKind();
        switch (kind) {
            case 0:
                String err = "invalid character #\\" + ((char) ch);
                if (this.interactive) {
                    fatal(err);
                } else {
                    error(err);
                }
                return Values.empty;
            case 1:
                return Values.empty;
            case 2:
            case 3:
            case 4:
            default:
                return readAndHandleToken(ch, startPos, rtable);
            case 5:
            case 6:
                return entry.read(this, ch, -1);
        }
    }

    protected Object readAndHandleToken(int ch, int startPos, ReadTable rtable) throws SyntaxException, IOException {
        Object value;
        readToken(ch, getReadCase(), rtable);
        int endPos = this.tokenBufferLength;
        if (!this.seenEscapes && (value = parseNumber(this.tokenBuffer, startPos, endPos - startPos, (char) 0, 0, 1)) != null && !(value instanceof String)) {
            return value;
        }
        char readCase = getReadCase();
        char c = TOKEN_ESCAPE_CHAR;
        if (readCase == 'I') {
            int upperCount = 0;
            int lowerCount = 0;
            int i = startPos;
            while (i < endPos) {
                char ci = this.tokenBuffer[i];
                if (ci == 65535) {
                    i++;
                } else if (Character.isLowerCase(ci)) {
                    lowerCount++;
                } else if (Character.isUpperCase(ci)) {
                    upperCount++;
                }
                i++;
            }
            if (lowerCount == 0) {
                readCase = 'D';
            } else if (upperCount == 0) {
                readCase = 'U';
            } else {
                readCase = 'P';
            }
        }
        int upperCount2 = startPos + 2;
        boolean handleUri = endPos >= upperCount2 && this.tokenBuffer[endPos + (-1)] == '}' && this.tokenBuffer[endPos + (-2)] != 65535 && peek() == 58;
        int packageMarker = -1;
        int lbrace = -1;
        int rbrace = -1;
        int braceNesting = 0;
        int j = startPos;
        int i2 = startPos;
        while (i2 < endPos) {
            char ci2 = this.tokenBuffer[i2];
            if (ci2 == c) {
                i2++;
                if (i2 < endPos) {
                    this.tokenBuffer[j] = this.tokenBuffer[i2];
                    j++;
                }
            } else {
                if (handleUri) {
                    if (ci2 == '{') {
                        if (lbrace < 0) {
                            lbrace = j;
                        } else if (braceNesting == 0) {
                        }
                        braceNesting++;
                    } else if (ci2 == '}' && braceNesting - 1 >= 0 && braceNesting == 0 && rbrace < 0) {
                        rbrace = j;
                    }
                }
                if (braceNesting <= 0) {
                    if (ci2 == ':') {
                        packageMarker = packageMarker >= 0 ? -1 : j;
                    } else if (readCase == 'U') {
                        ci2 = Character.toUpperCase(ci2);
                    } else if (readCase == 'D') {
                        ci2 = Character.toLowerCase(ci2);
                    }
                }
                this.tokenBuffer[j] = ci2;
                j++;
            }
            i2++;
            c = TOKEN_ESCAPE_CHAR;
        }
        int endPos2 = j;
        int len = endPos2 - startPos;
        if (lbrace >= 0 && rbrace > lbrace) {
            String prefix = lbrace > 0 ? new String(this.tokenBuffer, startPos, lbrace - startPos) : null;
            int lbrace2 = lbrace + 1;
            String uri = new String(this.tokenBuffer, lbrace2, rbrace - lbrace2);
            read();
            int ch2 = read();
            Object rightOperand = readValues(ch2, rtable.lookup(ch2), rtable);
            if (!(rightOperand instanceof SimpleSymbol)) {
                error("expected identifier in symbol after '{URI}:'");
            }
            return Symbol.valueOf(rightOperand.toString(), uri, prefix);
        }
        if (rtable.initialColonIsKeyword && packageMarker == startPos && len > 1) {
            int startPos2 = 1 + startPos;
            String str = new String(this.tokenBuffer, startPos2, endPos2 - startPos2);
            return Keyword.make(str.intern());
        }
        if (rtable.finalColonIsKeyword && packageMarker == endPos2 - 1 && (len > 1 || this.seenEscapes)) {
            String str2 = new String(this.tokenBuffer, startPos, len - 1);
            return Keyword.make(str2.intern());
        }
        return rtable.makeSymbol(new String(this.tokenBuffer, startPos, len));
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002f, code lost:
    
        unread(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void readToken(int r8, char r9, gnu.kawa.lispexpr.ReadTable r10) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            r7 = this;
            r0 = 0
            r1 = 0
        L2:
            if (r8 >= 0) goto Lb
            if (r0 == 0) goto L47
            java.lang.String r2 = "unexpected EOF between escapes"
            r7.eofError(r2)
        Lb:
            gnu.kawa.lispexpr.ReadTableEntry r2 = r10.lookup(r8)
            int r3 = r2.getKind()
            r4 = 65535(0xffff, float:9.1834E-41)
            if (r3 != 0) goto L33
            if (r0 == 0) goto L22
            r7.tokenBufferAppend(r4)
            r7.tokenBufferAppend(r8)
            goto Laa
        L22:
            r4 = 125(0x7d, float:1.75E-43)
            if (r8 != r4) goto L2f
            int r1 = r1 + (-1)
            if (r1 < 0) goto L2f
            r7.tokenBufferAppend(r8)
            goto Laa
        L2f:
            r7.unread(r8)
            goto L47
        L33:
            char r5 = r10.postfixLookupOperator
            if (r8 != r5) goto L4f
            if (r0 != 0) goto L4f
            gnu.text.LineBufferedReader r5 = r7.port
            int r5 = r5.peek()
            char r6 = r10.postfixLookupOperator
            if (r5 != r6) goto L48
            r7.unread(r8)
        L47:
            return
        L48:
            boolean r6 = r7.validPostfixLookupStart(r5, r10)
            if (r6 == 0) goto L4f
            r3 = 5
        L4f:
            r5 = 3
            r6 = 1
            if (r3 != r5) goto L77
            int r8 = r7.read()
            if (r8 >= 0) goto L5e
            java.lang.String r5 = "unexpected EOF after single escape"
            r7.eofError(r5)
        L5e:
            boolean r5 = r10.hexEscapeAfterBackslash
            if (r5 == 0) goto L6e
            r5 = 120(0x78, float:1.68E-43)
            if (r8 == r5) goto L6a
            r5 = 88
            if (r8 != r5) goto L6e
        L6a:
            int r8 = r7.readHexEscape()
        L6e:
            r7.tokenBufferAppend(r4)
            r7.tokenBufferAppend(r8)
            r7.seenEscapes = r6
            goto Laa
        L77:
            r5 = 4
            if (r3 != r5) goto L83
            if (r0 != 0) goto L7e
            r4 = 1
            goto L7f
        L7e:
            r4 = 0
        L7f:
            r0 = r4
            r7.seenEscapes = r6
            goto Laa
        L83:
            if (r0 == 0) goto L8c
            r7.tokenBufferAppend(r4)
            r7.tokenBufferAppend(r8)
            goto Laa
        L8c:
            switch(r3) {
                case 1: goto La6;
                case 2: goto L98;
                case 3: goto L8f;
                case 4: goto L94;
                case 5: goto L90;
                case 6: goto La2;
                default: goto L8f;
            }
        L8f:
            goto Laa
        L90:
            r7.unread(r8)
            return
        L94:
            r0 = 1
            r7.seenEscapes = r6
            goto Laa
        L98:
            r4 = 123(0x7b, float:1.72E-43)
            if (r8 != r4) goto La2
            gnu.kawa.lispexpr.ReadTableEntry r4 = gnu.kawa.lispexpr.ReadTableEntry.brace
            if (r2 != r4) goto La2
            int r1 = r1 + 1
        La2:
            r7.tokenBufferAppend(r8)
            goto Laa
        La6:
            r7.unread(r8)
            return
        Laa:
            int r8 = r7.read()
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.LispReader.readToken(int, char, gnu.kawa.lispexpr.ReadTable):void");
    }

    public Object readObject() throws SyntaxException, IOException {
        int line;
        int column;
        Object value;
        char saveReadState = ((InPort) this.port).readState;
        int startPos = this.tokenBufferLength;
        ((InPort) this.port).readState = ' ';
        try {
            ReadTable rtable = ReadTable.getCurrent();
            do {
                line = this.port.getLineNumber();
                column = this.port.getColumnNumber();
                int ch = this.port.read();
                if (ch < 0) {
                    return Sequence.eofValue;
                }
                value = readValues(ch, rtable);
            } while (value == Values.empty);
            return handlePostfix(value, rtable, line, column);
        } finally {
            this.tokenBufferLength = startPos;
            ((InPort) this.port).readState = saveReadState;
        }
    }

    protected boolean validPostfixLookupStart(int ch, ReadTable rtable) throws IOException {
        int kind;
        if (ch < 0 || ch == 58 || ch == rtable.postfixLookupOperator) {
            return false;
        }
        return ch == 44 || (kind = rtable.lookup(ch).getKind()) == 2 || kind == 6 || kind == 4 || kind == 3;
    }

    Object handlePostfix(Object value, ReadTable rtable, int line, int column) throws SyntaxException, IOException {
        if (value == QuoteExp.voidExp) {
            value = Values.empty;
        }
        while (true) {
            int ch = this.port.peek();
            if (ch < 0 || ch != rtable.postfixLookupOperator) {
                break;
            }
            this.port.read();
            int ch2 = this.port.peek();
            if (!validPostfixLookupStart(ch2, rtable)) {
                unread();
                break;
            }
            int ch3 = this.port.read();
            Object rightOperand = readValues(ch3, rtable.lookup(ch3), rtable);
            value = PairWithPosition.make(LispLanguage.lookup_sym, LList.list2(value, LList.list2(rtable.makeSymbol(LispLanguage.quasiquote_sym), rightOperand)), this.port.getName(), line + 1, column + 1);
        }
        return value;
    }

    private boolean isPotentialNumber(char[] buffer, int start, int end) {
        int sawDigits = 0;
        for (int i = start; i < end; i++) {
            char ch = buffer[i];
            if (Character.isDigit(ch)) {
                sawDigits++;
            } else if (ch == '-' || ch == '+') {
                if (i + 1 == end) {
                    return false;
                }
            } else {
                if (ch == '#') {
                    return true;
                }
                if (Character.isLetter(ch) || ch == '/' || ch == '_' || ch == '^') {
                    if (i == start) {
                        return false;
                    }
                } else if (ch != '.') {
                    return false;
                }
            }
        }
        return sawDigits > 0;
    }

    public static Object parseNumber(CharSequence str, int radix) {
        char[] buf;
        if (str instanceof FString) {
            buf = ((FString) str).data;
        } else {
            buf = str.toString().toCharArray();
        }
        int len = str.length();
        return parseNumber(buf, 0, len, (char) 0, radix, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:173:0x0236, code lost:
    
        if (r1 >= 0) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0238, code lost:
    
        if (r17 == false) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x023a, code lost:
    
        r2 = r4 + 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x023c, code lost:
    
        if (r2 >= r8) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0244, code lost:
    
        if (r26[r4 + 3] != '.') goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x024a, code lost:
    
        if (r26[r2] != '0') goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x024c, code lost:
    
        r10 = 'n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0252, code lost:
    
        if (r26[r4] != 'i') goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x0258, code lost:
    
        if (r26[r4 + 1] != 'n') goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x0260, code lost:
    
        if (r26[r4 + 2] != 'f') goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0262, code lost:
    
        r10 = 'i';
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0267, code lost:
    
        if (r26[r4] != 'n') goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x026f, code lost:
    
        if (r26[r4 + 1] != 'a') goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0275, code lost:
    
        if (r26[r4 + 2] != 'n') goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x0278, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:196:0x0279, code lost:
    
        if (r10 != 0) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x027b, code lost:
    
        return "no digits";
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x027c, code lost:
    
        r9 = r4 + 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0280, code lost:
    
        r9 = r4;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0285, code lost:
    
        if (r13 == 'i') goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x0289, code lost:
    
        if (r13 == 'I') goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x028b, code lost:
    
        r18 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0290, code lost:
    
        r18 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0292, code lost:
    
        r19 = Double.POSITIVE_INFINITY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x029a, code lost:
    
        if (r10 == 0) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x029f, code lost:
    
        if (r10 != 'i') goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x02a1, code lost:
    
        r0 = Double.POSITIVE_INFINITY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x02a4, code lost:
    
        r0 = Double.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x02a8, code lost:
    
        if (r21 == false) goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x02aa, code lost:
    
        r0 = -r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x02ab, code lost:
    
        r2 = new gnu.math.DFloNum(r0);
        r0 = 0;
        r10 = 'e';
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x02b4, code lost:
    
        if (r3 >= 0) goto L250;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x02b6, code lost:
    
        if (r0 < 0) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x02b8, code lost:
    
        r10 = 'e';
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x02bc, code lost:
    
        r10 = 'e';
        r0 = valueOf(r26, r1, r9 - r1, r11, r21, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x02c9, code lost:
    
        if (r12 != null) goto L222;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x02cb, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x02d1, code lost:
    
        if (r0.isZero() == false) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x02d3, code lost:
    
        r1 = r12.isZero();
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x02d7, code lost:
    
        if (r18 == false) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x02db, code lost:
    
        if (r1 == false) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x02dd, code lost:
    
        r1 = Double.NaN;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x02e0, code lost:
    
        if (r16 == false) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x02e2, code lost:
    
        r19 = Double.NEGATIVE_INFINITY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x02e4, code lost:
    
        r1 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x02e6, code lost:
    
        r0 = new gnu.math.DFloNum(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x02ea, code lost:
    
        if (r1 == false) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x02ec, code lost:
    
        return "0/0 is undefined";
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x02ef, code lost:
    
        r0 = gnu.math.RatNum.make(r12, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x02f3, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x02f5, code lost:
    
        r2 = gnu.math.RatNum.make(r12, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x02fa, code lost:
    
        if (r18 == false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0300, code lost:
    
        if (r2.isExact() == false) goto L249;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x0304, code lost:
    
        if (r16 == false) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x030a, code lost:
    
        if (r2.isZero() == false) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x030c, code lost:
    
        r1 = -0.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x030f, code lost:
    
        r1 = r2.doubleValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0313, code lost:
    
        r2 = new gnu.math.DFloNum(r1);
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x031a, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x031d, code lost:
    
        r10 = 'e';
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x031f, code lost:
    
        if (r1 <= r0) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0321, code lost:
    
        if (r0 < 0) goto L254;
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0323, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0324, code lost:
    
        if (r12 == null) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x0326, code lost:
    
        return "floating-point number after fraction symbol '/'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0329, code lost:
    
        r0 = new java.lang.String(r26, r1, r9 - r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0330, code lost:
    
        if (r3 < 0) goto L263;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x0332, code lost:
    
        r2 = java.lang.Character.toLowerCase(r26[r3]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x0338, code lost:
    
        if (r2 == r10) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x033a, code lost:
    
        r3 = r3 - r1;
        r0 = r0.substring(0, r3) + r10 + r0.substring(r3 + r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x035d, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x035f, code lost:
    
        r0 = gnu.lists.Convert.parseDouble(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x0365, code lost:
    
        if (r21 == false) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x0367, code lost:
    
        r0 = -r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x0368, code lost:
    
        r3 = new gnu.math.DFloNum(r0);
        r0 = r2;
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x036d, code lost:
    
        if (r13 == r10) goto L273;
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0371, code lost:
    
        if (r13 != 'E') goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0374, code lost:
    
        r6 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0376, code lost:
    
        r6 = r2.toExact();
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x037b, code lost:
    
        if (r9 >= r8) goto L329;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x037d, code lost:
    
        r1 = r9 + 1;
        r0 = r26[r9];
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x0383, code lost:
    
        if (r0 != '@') goto L292;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0385, code lost:
    
        r0 = parseNumber(r26, r1, r8 - r1, r13, 10, r31);
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x0394, code lost:
    
        if ((r0 instanceof java.lang.String) == false) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x0396, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0399, code lost:
    
        if ((r0 instanceof gnu.math.RealNum) != false) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x039b, code lost:
    
        return "invalid complex polar constant";
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x039e, code lost:
    
        r0 = (gnu.math.RealNum) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x03a4, code lost:
    
        if (r6.isZero() == false) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x03aa, code lost:
    
        if (r0.isExact() != false) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x03b3, code lost:
    
        return new gnu.math.DFloNum(0.0d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x03b8, code lost:
    
        return gnu.math.Complex.polar(r6, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x03bb, code lost:
    
        if (r0 == '-') goto L316;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x03bf, code lost:
    
        if (r0 != '+') goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x03c2, code lost:
    
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x03c7, code lost:
    
        if (java.lang.Character.isLetter(r0) != false) goto L301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x03c9, code lost:
    
        r1 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x03cc, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x03ce, code lost:
    
        if (r1 != r8) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x03d1, code lost:
    
        if (r11 != r14) goto L313;
     */
    /* JADX WARN: Code restructure failed: missing block: B:304:0x03d3, code lost:
    
        r0 = r26[r1 - 1];
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x03d9, code lost:
    
        if (r0 == 'i') goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x03dd, code lost:
    
        if (r0 != 'I') goto L376;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x03df, code lost:
    
        if (r1 >= r8) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x03e1, code lost:
    
        return "junk after imaginary suffix 'i'";
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x03ec, code lost:
    
        return gnu.math.Complex.make(gnu.math.IntNum.zero(), r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x03ed, code lost:
    
        return "excess junk after number";
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x03f0, code lost:
    
        r0 = r1 + 1;
        r1 = r26[r1];
        r1 = r0;
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x03fe, code lost:
    
        r1 = r1 - 1;
        r0 = parseNumber(r26, r1, r8 - r1, r13, 10, r31);
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x040f, code lost:
    
        if ((r0 instanceof java.lang.String) == false) goto L319;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x0411, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0414, code lost:
    
        if ((r0 instanceof gnu.math.Complex) != false) goto L323;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x042f, code lost:
    
        return "invalid numeric constant (" + r0 + ")";
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0430, code lost:
    
        r0 = (gnu.math.Complex) r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x043a, code lost:
    
        if (r0.re().isZero() != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x043c, code lost:
    
        return "invalid numeric constant";
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0447, code lost:
    
        return gnu.math.Complex.make(r6, r0.im());
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x044a, code lost:
    
        if ((r6 instanceof gnu.math.DFloNum) == false) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x044c, code lost:
    
        if (r0 <= 0) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x044e, code lost:
    
        if (r0 == r10) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0450, code lost:
    
        r1 = r6.doubleValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x0454, code lost:
    
        switch(r0) {
            case 100: goto L340;
            case 102: goto L338;
            case 108: goto L336;
            case 115: goto L338;
            default: goto L342;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x045c, code lost:
    
        return java.math.BigDecimal.valueOf(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x0462, code lost:
    
        return java.lang.Float.valueOf((float) r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0467, code lost:
    
        return java.lang.Double.valueOf(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0468, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:?, code lost:
    
        return "excess junk after number";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object parseNumber(char[] r26, int r27, int r28, char r29, int r30, int r31) {
        /*
            Method dump skipped, instruction units count: 1248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.LispReader.parseNumber(char[], int, int, char, int, int):java.lang.Object");
    }

    private static IntNum valueOf(char[] buffer, int digits_start, int number_of_digits, int radix, boolean negative, long lvalue) {
        if (number_of_digits + radix <= 28) {
            return IntNum.make(negative ? -lvalue : lvalue);
        }
        return IntNum.valueOf(buffer, digits_start, number_of_digits, radix, negative);
    }

    public int readEscape() throws SyntaxException, IOException {
        int c = read();
        if (c < 0) {
            eofError("unexpected EOF in character literal");
            return -1;
        }
        return readEscape(c);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0089 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int readEscape(int r7) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.LispReader.readEscape(int):int");
    }

    public int readHexEscape() throws SyntaxException, IOException {
        int d;
        int c = 0;
        while (true) {
            d = read();
            int v = Character.digit((char) d, 16);
            if (v < 0) {
                break;
            }
            c = (c << 4) + v;
        }
        if (d != 59 && d >= 0) {
            unread(d);
        }
        return c;
    }

    public final Object readObject(int c) throws SyntaxException, IOException {
        unread(c);
        return readObject();
    }

    public Object readCommand() throws SyntaxException, IOException {
        return readObject();
    }

    protected Object makeNil() {
        return LList.Empty;
    }

    protected Pair makePair(Object car, int line, int column) {
        return makePair(car, LList.Empty, line, column);
    }

    protected Pair makePair(Object car, Object cdr, int line, int column) {
        String pname = this.port.getName();
        if (pname != null && line >= 0) {
            return PairWithPosition.make(car, cdr, pname, line + 1, column + 1);
        }
        return Pair.make(car, cdr);
    }

    protected void setCdr(Object pair, Object cdr) {
        ((Pair) pair).setCdrBackdoor(cdr);
    }

    public static Object readNumberWithRadix(int previous, LispReader reader, int radix) throws SyntaxException, IOException {
        int startPos = reader.tokenBufferLength - previous;
        reader.readToken(reader.read(), 'P', ReadTable.getCurrent());
        int endPos = reader.tokenBufferLength;
        if (startPos == endPos) {
            reader.error("missing numeric token");
            return IntNum.zero();
        }
        Object result = parseNumber(reader.tokenBuffer, startPos, endPos - startPos, (char) 0, radix, 0);
        if (result instanceof String) {
            reader.error((String) result);
            return IntNum.zero();
        }
        if (result == null) {
            reader.error("invalid numeric constant");
            return IntNum.zero();
        }
        return result;
    }

    public static Object readCharacter(LispReader reader) throws SyntaxException, IOException {
        int ch = reader.read();
        if (ch < 0) {
            reader.eofError("unexpected EOF in character literal");
        }
        int startPos = reader.tokenBufferLength;
        reader.tokenBufferAppend(ch);
        reader.readToken(reader.read(), 'D', ReadTable.getCurrent());
        char[] tokenBuffer = reader.tokenBuffer;
        int length = reader.tokenBufferLength - startPos;
        if (length == 1) {
            return Char.make(tokenBuffer[startPos]);
        }
        String name = new String(tokenBuffer, startPos, length);
        int ch2 = Char.nameToChar(name);
        if (ch2 >= 0) {
            return Char.make(ch2);
        }
        char c = tokenBuffer[startPos];
        if (c == 'x' || c == 'X') {
            int value = 0;
            for (int i = 1; i != length; i++) {
                int v = Character.digit(tokenBuffer[startPos + i], 16);
                if (v >= 0 && (value = (value * 16) + v) <= 1114111) {
                }
            }
            return Char.make(value);
        }
        int ch3 = Character.digit((int) c, 8);
        if (ch3 >= 0) {
            int value2 = ch3;
            for (int i2 = 1; i2 != length; i2++) {
                int ch4 = Character.digit(tokenBuffer[startPos + i2], 8);
                if (ch4 >= 0) {
                    value2 = (value2 * 8) + ch4;
                }
            }
            return Char.make(value2);
        }
        reader.error("unknown character name: " + name);
        return Char.make(63);
    }

    public static Object readSpecial(LispReader reader) throws SyntaxException, IOException {
        int ch = reader.read();
        if (ch < 0) {
            reader.eofError("unexpected EOF in #! special form");
        }
        if (ch == 47 && reader.getLineNumber() == 0 && reader.getColumnNumber() == 3) {
            ReaderIgnoreRestOfLine.getInstance().read(reader, 35, 1);
            return Values.empty;
        }
        int startPos = reader.tokenBufferLength;
        reader.tokenBufferAppend(ch);
        reader.readToken(reader.read(), 'D', ReadTable.getCurrent());
        int length = reader.tokenBufferLength - startPos;
        String name = new String(reader.tokenBuffer, startPos, length);
        if (name.equals("optional")) {
            return Special.optional;
        }
        if (name.equals("rest")) {
            return Special.rest;
        }
        if (name.equals("key")) {
            return Special.key;
        }
        if (name.equals("eof")) {
            return Special.eof;
        }
        if (name.equals("void")) {
            return QuoteExp.voidExp;
        }
        if (name.equals("default")) {
            return Special.dfault;
        }
        if (name.equals("undefined")) {
            return Special.undefined;
        }
        if (name.equals("abstract")) {
            return Special.abstractSpecial;
        }
        if (name.equals("null")) {
            return null;
        }
        reader.error("unknown named constant #!" + name);
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static gnu.lists.SimpleVector readSimpleVector(gnu.kawa.lispexpr.LispReader r6, char r7) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.lispexpr.LispReader.readSimpleVector(gnu.kawa.lispexpr.LispReader, char):gnu.lists.SimpleVector");
    }
}
