package gnu.kawa.functions;

import appinventor.ai_quachtanhung124.artificial_eyes.R;
import gnu.lists.FString;
import gnu.mapping.CharArrayInPort;
import gnu.mapping.InPort;
import gnu.mapping.Procedure1;
import gnu.text.CompoundFormat;
import gnu.text.LineBufferedReader;
import gnu.text.LiteralFormat;
import gnu.text.PadFormat;
import gnu.text.ReportFormat;
import java.io.IOException;
import java.text.ParseException;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class ParseFormat extends Procedure1 {
    public static final int PARAM_FROM_LIST = -1610612736;
    public static final int PARAM_UNSPECIFIED = -1073741824;
    public static final int SEEN_HASH = 16;
    public static final int SEEN_MINUS = 1;
    public static final int SEEN_PLUS = 2;
    public static final int SEEN_SPACE = 4;
    public static final int SEEN_ZERO = 8;
    public static final ParseFormat parseFormat = new ParseFormat(false);
    boolean emacsStyle;

    public ParseFormat(boolean emacsStyle) {
        this.emacsStyle = true;
        this.emacsStyle = emacsStyle;
    }

    public ReportFormat parseFormat(LineBufferedReader fmt) throws IOException, ParseException {
        return parseFormat(fmt, this.emacsStyle ? '?' : '~');
    }

    public static ReportFormat parseFormat(LineBufferedReader lineBufferedReader, char c) throws IOException, ParseException {
        int i;
        java.text.Format objectFormat;
        int i2;
        int i3;
        int i4;
        int i5;
        StringBuffer stringBuffer = new StringBuffer(100);
        Vector vector = new Vector();
        while (true) {
            int i6 = lineBufferedReader.read();
            if (i6 >= 0) {
                if (i6 != c) {
                    stringBuffer.append((char) i6);
                } else {
                    i6 = lineBufferedReader.read();
                    if (i6 == c) {
                        stringBuffer.append((char) i6);
                    }
                }
            }
            int length = stringBuffer.length();
            int i7 = 0;
            if (length > 0) {
                char[] cArr = new char[length];
                stringBuffer.getChars(0, length, cArr, 0);
                stringBuffer.setLength(0);
                vector.addElement(new LiteralFormat(cArr));
            }
            if (i6 >= 0) {
                if (i6 == 36) {
                    if (Character.digit((char) lineBufferedReader.read(), 10) < 0) {
                        throw new ParseException("missing number (position) after '%$'", -1);
                    }
                    do {
                        i6 = lineBufferedReader.read();
                    } while (Character.digit((char) i6, 10) >= 0);
                }
                int i8 = 0;
                while (true) {
                    char c2 = (char) i6;
                    switch (c2) {
                        case ' ':
                            i5 = i8 | 4;
                            break;
                        case '#':
                            i5 = i8 | 16;
                            break;
                        case '+':
                            i5 = i8 | 2;
                            break;
                        case '-':
                            i5 = i8 | 1;
                            break;
                        case '0':
                            i5 = i8 | 8;
                            break;
                        default:
                            int iDigit = Character.digit(c2, 10);
                            if (iDigit >= 0) {
                                while (true) {
                                    i6 = lineBufferedReader.read();
                                    int iDigit2 = Character.digit((char) i6, 10);
                                    if (iDigit2 >= 0) {
                                        iDigit = (iDigit * 10) + iDigit2;
                                    }
                                }
                            } else if (i6 != 42) {
                                iDigit = -1073741824;
                            } else {
                                iDigit = -1610612736;
                            }
                            if (i6 != 46) {
                                i = -1073741824;
                            } else if (i6 == 42) {
                                i = -1610612736;
                            } else {
                                int i9 = 0;
                                while (true) {
                                    i6 = lineBufferedReader.read();
                                    int iDigit3 = Character.digit((char) i6, 10);
                                    if (iDigit3 < 0) {
                                        i = i9;
                                    } else {
                                        i9 = (i9 * 10) + iDigit3;
                                    }
                                }
                            }
                            switch (i6) {
                                case 83:
                                case 115:
                                    objectFormat = new ObjectFormat(i6 == 83, i);
                                    break;
                                case 88:
                                case 100:
                                case 105:
                                case 111:
                                case R.styleable.AppCompatTheme_viewInflaterClass /* 120 */:
                                    if (i6 == 100 || i6 == 105) {
                                        i2 = 0;
                                        i3 = 10;
                                    } else if (i6 == 111) {
                                        i2 = 0;
                                        i3 = 8;
                                    } else {
                                        i3 = 16;
                                        i2 = i6 == 88 ? 32 : 0;
                                    }
                                    int i10 = (i8 & 9) == 8 ? 48 : 32;
                                    if ((i8 & 16) != 0) {
                                        i2 |= 8;
                                    }
                                    if ((i8 & 2) != 0) {
                                        i2 |= 2;
                                    }
                                    if ((i8 & 1) != 0) {
                                        i2 |= 16;
                                    }
                                    if ((i8 & 4) == 0) {
                                        i4 = i2;
                                    } else {
                                        i4 = i2 | 4;
                                    }
                                    if (i != -1073741824) {
                                        i8 &= -9;
                                        objectFormat = IntegerFormat.getInstance(i3, i, 48, -1073741824, -1073741824, i4 | 64);
                                    } else {
                                        objectFormat = IntegerFormat.getInstance(i3, iDigit, i10, -1073741824, -1073741824, i4);
                                    }
                                    break;
                                case 101:
                                case 102:
                                case 103:
                                    objectFormat = new ObjectFormat(false);
                                    break;
                                default:
                                    throw new ParseException("unknown format character '" + i6 + "'", -1);
                            }
                            if (iDigit > 0) {
                                char c3 = (i8 & 8) != 0 ? '0' : ' ';
                                if ((i8 & 1) != 0) {
                                    i7 = 100;
                                } else if (c3 == '0') {
                                    i7 = -1;
                                }
                                objectFormat = new PadFormat(objectFormat, iDigit, c3, i7);
                            }
                            vector.addElement(objectFormat);
                            continue;
                    }
                    i8 = i5;
                    i6 = lineBufferedReader.read();
                }
            } else {
                int size = vector.size();
                if (size == 1) {
                    Object objElementAt = vector.elementAt(0);
                    if (objElementAt instanceof ReportFormat) {
                        return (ReportFormat) objElementAt;
                    }
                }
                java.text.Format[] formatArr = new java.text.Format[size];
                vector.copyInto(formatArr);
                return new CompoundFormat(formatArr);
            }
        }
    }

    @Override // gnu.mapping.Procedure1, gnu.mapping.Procedure
    public Object apply1(Object arg) {
        return asFormat(arg, this.emacsStyle ? '?' : '~');
    }

    public static ReportFormat asFormat(Object arg, char style) {
        InPort iport;
        try {
            if (arg instanceof ReportFormat) {
                return (ReportFormat) arg;
            }
            if (style == '~') {
                return new LispFormat(arg.toString());
            }
            if (arg instanceof FString) {
                FString str = (FString) arg;
                iport = new CharArrayInPort(str.data, str.size);
            } else {
                iport = new CharArrayInPort(arg.toString());
            }
            try {
                return parseFormat(iport, style);
            } finally {
                iport.close();
            }
        } catch (IOException ex) {
            throw new RuntimeException("Error parsing format (" + ex + ")");
        } catch (IndexOutOfBoundsException e) {
            throw new RuntimeException("End while parsing format");
        } catch (ParseException ex2) {
            throw new RuntimeException("Invalid format (" + ex2 + ")");
        }
    }
}
