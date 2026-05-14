package gnu.xquery.lang;

import com.google.android.gms.common.internal.ImagesContract;
import com.google.api.client.http.HttpStatusCodes;
import gnu.bytecode.ClassType;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.BeginExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.ErrorExp;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.LambdaExp;
import gnu.expr.LetExp;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.ScopeExp;
import gnu.kawa.functions.Convert;
import gnu.kawa.lispexpr.LangPrimType;
import gnu.kawa.reflect.InstanceOf;
import gnu.kawa.reflect.OccurrenceType;
import gnu.kawa.reflect.SingletonType;
import gnu.kawa.xml.DescendantOrSelfAxis;
import gnu.kawa.xml.ElementType;
import gnu.kawa.xml.MakeWithBaseUri;
import gnu.kawa.xml.NodeType;
import gnu.kawa.xml.ParentAxis;
import gnu.kawa.xml.ProcessingInstructionType;
import gnu.kawa.xml.TreeScanner;
import gnu.kawa.xml.XDataType;
import gnu.mapping.CharArrayInPort;
import gnu.mapping.Environment;
import gnu.mapping.InPort;
import gnu.mapping.Namespace;
import gnu.mapping.Procedure;
import gnu.mapping.Symbol;
import gnu.mapping.TtyInPort;
import gnu.mapping.WrappedException;
import gnu.math.IntNum;
import gnu.text.FilePath;
import gnu.text.Lexer;
import gnu.text.LineBufferedReader;
import gnu.text.Path;
import gnu.text.SourceError;
import gnu.text.SourceMessages;
import gnu.text.SyntaxException;
import gnu.text.URIPath;
import gnu.xml.NamespaceBinding;
import gnu.xml.TextUtils;
import gnu.xml.XName;
import gnu.xquery.util.CastableAs;
import gnu.xquery.util.NamedCollator;
import gnu.xquery.util.QNameUtils;
import gnu.xquery.util.RelativeStep;
import gnu.xquery.util.ValuesFilter;
import java.io.IOException;
import java.util.Stack;
import java.util.Vector;

/* JADX INFO: loaded from: classes2.dex */
public class XQParser extends Lexer {
    static final int ARROW_TOKEN = 82;
    static final int ATTRIBUTE_TOKEN = 252;
    static final int AXIS_ANCESTOR = 0;
    static final int AXIS_ANCESTOR_OR_SELF = 1;
    static final int AXIS_ATTRIBUTE = 2;
    static final int AXIS_CHILD = 3;
    static final int AXIS_DESCENDANT = 4;
    static final int AXIS_DESCENDANT_OR_SELF = 5;
    static final int AXIS_FOLLOWING = 6;
    static final int AXIS_FOLLOWING_SIBLING = 7;
    static final int AXIS_NAMESPACE = 8;
    static final int AXIS_PARENT = 9;
    static final int AXIS_PRECEDING = 10;
    static final int AXIS_PRECEDING_SIBLING = 11;
    static final int AXIS_SELF = 12;
    static final int CASE_DOLLAR_TOKEN = 247;
    static final int COLON_COLON_TOKEN = 88;
    static final int COLON_EQUAL_TOKEN = 76;
    static final int COMMENT_TOKEN = 254;
    static final int COUNT_OP_AXIS = 13;
    static final char DECIMAL_TOKEN = '1';
    static final int DECLARE_BASE_URI_TOKEN = 66;
    static final int DECLARE_BOUNDARY_SPACE_TOKEN = 83;
    static final int DECLARE_CONSTRUCTION_TOKEN = 75;
    static final int DECLARE_COPY_NAMESPACES_TOKEN = 76;
    static final int DECLARE_FUNCTION_TOKEN = 80;
    static final int DECLARE_NAMESPACE_TOKEN = 78;
    static final int DECLARE_OPTION_TOKEN = 111;
    static final int DECLARE_ORDERING_TOKEN = 85;
    static final int DECLARE_VARIABLE_TOKEN = 86;
    static final int DEFAULT_COLLATION_TOKEN = 71;
    static final int DEFAULT_ELEMENT_TOKEN = 69;
    static final int DEFAULT_FUNCTION_TOKEN = 79;
    static final int DEFAULT_ORDER_TOKEN = 72;
    static final int DEFINE_QNAME_TOKEN = 87;
    static final int DOCUMENT_TOKEN = 256;
    static final int DOTDOT_TOKEN = 51;
    static final char DOUBLE_TOKEN = '2';
    static final int ELEMENT_TOKEN = 251;
    static final int EOF_TOKEN = -1;
    static final int EOL_TOKEN = 10;
    static final int EVERY_DOLLAR_TOKEN = 246;
    static final int FNAME_TOKEN = 70;
    static final int FOR_DOLLAR_TOKEN = 243;
    static final int IF_LPAREN_TOKEN = 241;
    static final int IMPORT_MODULE_TOKEN = 73;
    static final int IMPORT_SCHEMA_TOKEN = 84;
    static final char INTEGER_TOKEN = '0';
    static final int LET_DOLLAR_TOKEN = 244;
    static final int MODULE_NAMESPACE_TOKEN = 77;
    static final int NCNAME_COLON_TOKEN = 67;
    static final int NCNAME_TOKEN = 65;
    static final int OP_ADD = 413;
    static final int OP_AND = 401;
    static final int OP_ATTRIBUTE = 236;
    static final int OP_AXIS_FIRST = 100;
    static final int OP_BASE = 400;
    static final int OP_CASTABLE_AS = 424;
    static final int OP_CAST_AS = 425;
    static final int OP_COMMENT = 232;
    static final int OP_DIV = 416;
    static final int OP_DOCUMENT = 234;
    static final int OP_ELEMENT = 235;
    static final int OP_EMPTY_SEQUENCE = 238;
    static final int OP_EQ = 426;
    static final int OP_EQU = 402;
    static final int OP_EXCEPT = 421;
    static final int OP_GE = 431;
    static final int OP_GEQ = 407;
    static final int OP_GRT = 405;
    static final int OP_GRTGRT = 410;
    static final int OP_GT = 430;
    static final int OP_IDIV = 417;
    static final int OP_INSTANCEOF = 422;
    static final int OP_INTERSECT = 420;
    static final int OP_IS = 408;
    static final int OP_ISNOT = 409;
    static final int OP_ITEM = 237;
    static final int OP_LE = 429;
    static final int OP_LEQ = 406;
    static final int OP_LSS = 404;
    static final int OP_LSSLSS = 411;
    static final int OP_LT = 428;
    static final int OP_MOD = 418;
    static final int OP_MUL = 415;
    static final int OP_NE = 427;
    static final int OP_NEQ = 403;
    static final int OP_NODE = 230;
    static final int OP_OR = 400;
    static final int OP_PI = 233;
    static final int OP_RANGE_TO = 412;
    static final int OP_SCHEMA_ATTRIBUTE = 239;
    static final int OP_SCHEMA_ELEMENT = 240;
    static final int OP_SUB = 414;
    static final int OP_TEXT = 231;
    static final int OP_TREAT_AS = 423;
    static final int OP_UNION = 419;
    static final int OP_WHERE = 196;
    static final int ORDERED_LBRACE_TOKEN = 249;
    static final int PI_TOKEN = 255;
    static final int PRAGMA_START_TOKEN = 197;
    static final int QNAME_TOKEN = 81;
    static final int SLASHSLASH_TOKEN = 68;
    static final int SOME_DOLLAR_TOKEN = 245;
    static final int STRING_TOKEN = 34;
    static final int TEXT_TOKEN = 253;
    static final int TYPESWITCH_LPAREN_TOKEN = 242;
    static final int UNORDERED_LBRACE_TOKEN = 250;
    static final int VALIDATE_LBRACE_TOKEN = 248;
    static final int XQUERY_VERSION_TOKEN = 89;
    public static final String[] axisNames;
    static NamespaceBinding builtinNamespaces;
    public static final QuoteExp getExternalFunction;
    Path baseURI;
    boolean baseURIDeclarationSeen;
    boolean boundarySpaceDeclarationSeen;
    boolean boundarySpacePreserve;
    int commentCount;
    Compilation comp;
    boolean constructionModeDeclarationSeen;
    boolean constructionModeStrip;
    NamespaceBinding constructorNamespaces;
    boolean copyNamespacesDeclarationSeen;
    int copyNamespacesMode;
    int curColumn;
    int curLine;
    int curToken;
    Object curValue;
    NamedCollator defaultCollator;
    String defaultElementNamespace;
    char defaultEmptyOrder;
    boolean emptyOrderDeclarationSeen;
    int enclosedExpressionsSeen;
    String errorIfComment;
    Declaration[] flworDecls;
    int flworDeclsCount;
    int flworDeclsFirst;
    public Namespace[] functionNamespacePath;
    XQuery interpreter;
    String libraryModuleNamespace;
    boolean orderingModeSeen;
    boolean orderingModeUnordered;
    int parseContext;
    int parseCount;
    NamespaceBinding prologNamespaces;
    private int saveToken;
    private Object saveValue;
    boolean seenDeclaration;
    int seenLast;
    int seenPosition;
    private boolean warnedOldStyleKindTest;
    public static boolean warnOldVersion = true;
    public static boolean warnHidePreviousDeclaration = false;
    static final Symbol DOT_VARNAME = Symbol.makeUninterned("$dot$");
    static final Symbol POSITION_VARNAME = Symbol.makeUninterned("$position$");
    static final Symbol LAST_VARNAME = Symbol.makeUninterned("$last$");
    public static final InstanceOf instanceOf = new InstanceOf(XQuery.getInstance(), "instance");
    public static final CastableAs castableAs = CastableAs.castableAs;
    public static final Convert treatAs = Convert.as;
    static PrimProcedure proc_OccurrenceType_getInstance = new PrimProcedure(ClassType.make("gnu.kawa.reflect.OccurrenceType").getDeclaredMethod("getInstance", 3));
    public static QuoteExp makeChildAxisStep = QuoteExp.getInstance(new PrimProcedure("gnu.kawa.xml.ChildAxis", "make", 1));
    public static QuoteExp makeDescendantAxisStep = QuoteExp.getInstance(new PrimProcedure("gnu.kawa.xml.DescendantAxis", "make", 1));
    public static Expression makeText = makeFunctionExp("gnu.kawa.xml.MakeText", "makeText");
    static final Expression makeCDATA = makeFunctionExp("gnu.kawa.xml.MakeCDATA", "makeCDATA");

    static {
        NamespaceBinding ns = NamespaceBinding.predefinedXML;
        builtinNamespaces = new NamespaceBinding(ImagesContract.LOCAL, XQuery.LOCAL_NAMESPACE, new NamespaceBinding("qexo", XQuery.QEXO_FUNCTION_NAMESPACE, new NamespaceBinding("kawa", XQuery.KAWA_FUNCTION_NAMESPACE, new NamespaceBinding("html", "http://www.w3.org/1999/xhtml", new NamespaceBinding("fn", XQuery.XQUERY_FUNCTION_NAMESPACE, new NamespaceBinding("xsi", XQuery.SCHEMA_INSTANCE_NAMESPACE, new NamespaceBinding("xs", XQuery.SCHEMA_NAMESPACE, new NamespaceBinding("xml", NamespaceBinding.XML_NAMESPACE, ns))))))));
        getExternalFunction = QuoteExp.getInstance(new PrimProcedure("gnu.xquery.lang.XQuery", "getExternal", 2));
        axisNames = new String[13];
        axisNames[0] = "ancestor";
        axisNames[1] = "ancestor-or-self";
        axisNames[2] = "attribute";
        axisNames[3] = "child";
        axisNames[4] = "descendant";
        axisNames[5] = "descendant-or-self";
        axisNames[6] = "following";
        axisNames[7] = "following-sibling";
        axisNames[8] = "namespace";
        axisNames[9] = "parent";
        axisNames[10] = "preceding";
        axisNames[11] = "preceding-sibling";
        axisNames[12] = "self";
    }

    public void setStaticBaseUri(String uri) {
        try {
            this.baseURI = fixupStaticBaseUri(URIPath.valueOf(uri));
        } catch (Throwable th) {
            ex = th;
            if (ex instanceof WrappedException) {
                ex = ((WrappedException) ex).getCause();
            }
            error('e', "invalid URI: " + ex.getMessage());
        }
    }

    static Path fixupStaticBaseUri(Path path) {
        Path path2 = path.getAbsolute();
        if (path2 instanceof FilePath) {
            return URIPath.valueOf(path2.toURI());
        }
        return path2;
    }

    public String getStaticBaseUri() {
        LineBufferedReader port;
        Path path = this.baseURI;
        if (path == null) {
            Environment env = Environment.getCurrent();
            Object value = env.get(Symbol.make("", "base-uri"), null, null);
            if (value != null && !(value instanceof Path)) {
                path = URIPath.valueOf(value.toString());
            }
            if (path == null && (port = getPort()) != null) {
                path = port.getPath();
                if ((path instanceof FilePath) && (!path.exists() || (port instanceof TtyInPort) || (port instanceof CharArrayInPort))) {
                    path = null;
                }
            }
            if (path == null) {
                path = Path.currentPath();
            }
            path = fixupStaticBaseUri(path);
            this.baseURI = path;
        }
        return path.toString();
    }

    public String resolveAgainstBaseUri(String uri) {
        if (Path.uriSchemeSpecified(uri)) {
            return uri;
        }
        String base = getStaticBaseUri();
        Path basePath = Path.valueOf(base);
        return basePath.resolve(uri).toString();
    }

    final int skipSpace() throws SyntaxException, IOException {
        return skipSpace(true);
    }

    final int skipSpace(boolean verticalToo) throws SyntaxException, IOException {
        int ch;
        while (true) {
            ch = read();
            if (ch == 40) {
                if (!checkNext(':')) {
                    return 40;
                }
                skipComment();
            } else if (ch == 123) {
                int ch2 = read();
                if (ch2 != 45) {
                    unread(ch2);
                    return 123;
                }
                int ch3 = read();
                if (ch3 != 45) {
                    unread(ch3);
                    unread(45);
                    return 123;
                }
                skipOldComment();
            } else if (!verticalToo) {
                if (ch != 32 && ch != 9) {
                    break;
                }
            } else if (ch < 0 || !Character.isWhitespace((char) ch)) {
                break;
            }
        }
        return ch;
    }

    final void skipToSemicolon() throws IOException {
        int next;
        do {
            next = read();
            if (next < 0) {
                return;
            }
        } while (next != 59);
    }

    final void skipOldComment() throws SyntaxException, IOException {
        int seenDashes = 0;
        int startLine = getLineNumber() + 1;
        int startColumn = getColumnNumber() - 2;
        warnOldVersion("use (: :) instead of old-style comment {-- --}");
        while (true) {
            int ch = read();
            if (ch == 45) {
                seenDashes++;
            } else {
                if (ch == 125 && seenDashes >= 2) {
                    return;
                }
                if (ch < 0) {
                    this.curLine = startLine;
                    this.curColumn = startColumn;
                    eofError("non-terminated comment starting here");
                } else {
                    seenDashes = 0;
                }
            }
        }
    }

    final void skipComment() throws SyntaxException, IOException {
        this.commentCount++;
        int startLine = getLineNumber() + 1;
        int startColumn = getColumnNumber() - 1;
        if (this.errorIfComment != null) {
            this.curLine = startLine;
            this.curColumn = startColumn;
            error('e', this.errorIfComment);
        }
        int prev = 0;
        int commentNesting = 0;
        char saveReadState = pushNesting(':');
        while (true) {
            int ch = read();
            if (ch == 58) {
                if (prev == 40) {
                    commentNesting++;
                    ch = 0;
                }
            } else if (ch == 41 && prev == 58) {
                if (commentNesting == 0) {
                    popNesting(saveReadState);
                    return;
                }
                commentNesting--;
            } else if (ch < 0) {
                this.curLine = startLine;
                this.curColumn = startColumn;
                eofError("non-terminated comment starting here");
            }
            prev = ch;
        }
    }

    final int peekNonSpace(String message) throws SyntaxException, IOException {
        int ch = skipSpace();
        if (ch < 0) {
            eofError(message);
        }
        unread(ch);
        return ch;
    }

    @Override // gnu.text.Lexer
    public void mark() throws IOException {
        super.mark();
        this.saveToken = this.curToken;
        this.saveValue = this.curValue;
    }

    @Override // gnu.text.Lexer, java.io.Reader
    public void reset() throws IOException {
        this.curToken = this.saveToken;
        this.curValue = this.saveValue;
        super.reset();
    }

    private int setToken(int token, int width) {
        this.curToken = token;
        this.curLine = this.port.getLineNumber() + 1;
        this.curColumn = (this.port.getColumnNumber() + 1) - width;
        return token;
    }

    void checkSeparator(char ch) {
        if (XName.isNameStart(ch)) {
            error('e', "missing separator", "XPST0003");
        }
    }

    int getRawToken() throws SyntaxException, IOException {
        char c;
        int next;
        int next2;
        while (true) {
            int next3 = readUnicodeChar();
            if (next3 < 0) {
                return setToken(-1, 0);
            }
            if (next3 == 10 || next3 == 13) {
                if (this.nesting <= 0) {
                    return setToken(10, 0);
                }
            } else if (next3 == 40) {
                if (checkNext(':')) {
                    skipComment();
                } else {
                    if (checkNext('#')) {
                        return setToken(PRAGMA_START_TOKEN, 2);
                    }
                    return setToken(40, 1);
                }
            } else if (next3 == 123) {
                if (!checkNext('-')) {
                    return setToken(123, 1);
                }
                if (read() != 45) {
                    unread();
                    unread();
                    return setToken(123, 1);
                }
                skipOldComment();
            } else if (next3 != 32 && next3 != 9) {
                this.tokenBufferLength = 0;
                this.curLine = this.port.getLineNumber() + 1;
                this.curColumn = this.port.getColumnNumber();
                char ch = (char) next3;
                switch (ch) {
                    case '!':
                        if (checkNext('=')) {
                            ch = 403;
                        }
                        break;
                    case '\"':
                    case '\'':
                        char saveReadState = pushNesting((char) next3);
                        while (true) {
                            int next4 = readUnicodeChar();
                            if (next4 < 0) {
                                eofError("unexpected end-of-file in string starting here");
                            }
                            if (next4 == 38) {
                                parseEntityOrCharRef();
                            } else {
                                if (ch == next4) {
                                    if (ch == peek()) {
                                        next4 = read();
                                    } else {
                                        popNesting(saveReadState);
                                        ch = '\"';
                                    }
                                }
                                tokenBufferAppend(next4);
                            }
                            break;
                        }
                        break;
                    case '$':
                    case ')':
                    case ',':
                    case ';':
                    case '?':
                    case '@':
                    case '[':
                    case ']':
                    case '}':
                        break;
                    case '*':
                        ch = 415;
                        break;
                    case '+':
                        ch = 413;
                        break;
                    case '-':
                        ch = 414;
                        break;
                    case '/':
                        if (checkNext('/')) {
                            ch = 'D';
                        }
                        break;
                    case ':':
                        if (checkNext('=')) {
                            ch = 'L';
                        } else if (checkNext(':')) {
                            ch = 'X';
                        }
                        break;
                    case '<':
                        ch = checkNext('=') ? (char) 406 : checkNext('<') ? (char) 411 : (char) 404;
                        break;
                    case '=':
                        if (checkNext('>')) {
                        }
                        ch = 402;
                        break;
                    case '>':
                        if (checkNext('=')) {
                            c = 407;
                        } else {
                            c = checkNext('>') ? (char) 410 : (char) 405;
                        }
                        ch = c;
                        break;
                    case '|':
                        ch = 419;
                        break;
                    default:
                        if (Character.isDigit(ch) || (ch == '.' && Character.isDigit((char) peek()))) {
                            boolean seenDot = ch == '.';
                            while (true) {
                                tokenBufferAppend(ch);
                                next = read();
                                if (next >= 0) {
                                    ch = (char) next;
                                    if (ch == '.') {
                                        if (!seenDot) {
                                            seenDot = true;
                                        }
                                    } else if (!Character.isDigit(ch)) {
                                    }
                                }
                            }
                            if (next == 101 || next == 69) {
                                tokenBufferAppend((char) next);
                                int next5 = read();
                                if (next5 == 43 || next5 == 45) {
                                    tokenBufferAppend(next5);
                                    next5 = read();
                                }
                                int expDigits = 0;
                                while (true) {
                                    if (next5 >= 0) {
                                        char ch2 = (char) next5;
                                        if (!Character.isDigit(ch2)) {
                                            checkSeparator(ch2);
                                            unread();
                                        } else {
                                            tokenBufferAppend(ch2);
                                            next5 = read();
                                            expDigits++;
                                        }
                                    }
                                }
                                if (expDigits == 0) {
                                    error('e', "no digits following exponent", "XPST0003");
                                }
                                ch = '2';
                            } else {
                                char ch3 = seenDot ? DECIMAL_TOKEN : INTEGER_TOKEN;
                                if (next >= 0) {
                                    checkSeparator((char) next);
                                    unread(next);
                                }
                                ch = ch3;
                            }
                        } else if (ch == '.') {
                            if (checkNext('.')) {
                                ch = '3';
                            }
                        } else if (!XName.isNameStart(ch)) {
                            if (ch < ' ' || ch >= 127) {
                                syntaxError("invalid character '\\u" + Integer.toHexString(ch) + '\'');
                            } else {
                                syntaxError("invalid character '" + ch + '\'');
                            }
                        } else {
                            do {
                                tokenBufferAppend(ch);
                                next2 = read();
                                ch = (char) next2;
                            } while (XName.isNamePart(ch));
                            if (next2 < 0) {
                                ch = 'A';
                            } else {
                                if (next2 != 58) {
                                    ch = 'A';
                                } else {
                                    next2 = read();
                                    if (next2 < 0) {
                                        eofError("unexpected end-of-file after NAME ':'");
                                    }
                                    int ch4 = (char) next2;
                                    if (XName.isNameStart(ch4)) {
                                        tokenBufferAppend(58);
                                        do {
                                            tokenBufferAppend(ch4);
                                            next2 = read();
                                            ch4 = (char) next2;
                                        } while (XName.isNamePart(ch4));
                                        ch = 'Q';
                                    } else if (ch4 == 61) {
                                        unread(ch4);
                                        ch = 'A';
                                    } else {
                                        ch = 'C';
                                    }
                                }
                                unread(next2);
                            }
                        }
                        break;
                }
                this.curToken = ch;
                return ch;
            }
        }
    }

    public void getDelimited(String delimiter) throws SyntaxException, IOException {
        if (!readDelimited(delimiter)) {
            eofError("unexpected end-of-file looking for '" + delimiter + '\'');
        }
    }

    public void appendNamedEntity(String name) {
        String name2 = name.intern();
        char ch = '?';
        if (name2 == "lt") {
            ch = '<';
        } else if (name2 == "gt") {
            ch = '>';
        } else if (name2 == "amp") {
            ch = '&';
        } else if (name2 == "quot") {
            ch = '\"';
        } else if (name2 == "apos") {
            ch = '\'';
        } else {
            error("unknown enity reference: '" + name2 + "'");
        }
        tokenBufferAppend(ch);
    }

    boolean match(String word1, String word2, boolean force) throws SyntaxException, IOException {
        if (match(word1)) {
            mark();
            getRawToken();
            if (match(word2)) {
                reset();
                getRawToken();
                return true;
            }
            reset();
            if (force) {
                error('e', "'" + word1 + "' must be followed by '" + word2 + "'", "XPST0003");
                return true;
            }
            return false;
        }
        return false;
    }

    int peekOperator() throws SyntaxException, IOException {
        while (this.curToken == 10) {
            if (this.nesting == 0) {
                return 10;
            }
            getRawToken();
        }
        if (this.curToken == 65) {
            int len = this.tokenBufferLength;
            switch (len) {
                case 2:
                    char c1 = this.tokenBuffer[0];
                    char c2 = this.tokenBuffer[1];
                    if (c1 == 'o' && c2 == 'r') {
                        this.curToken = HttpStatusCodes.STATUS_CODE_BAD_REQUEST;
                    } else if (c1 == 't' && c2 == 'o') {
                        this.curToken = 412;
                    } else if (c1 == 'i' && c2 == 's') {
                        this.curToken = 408;
                    } else if (c1 == 'e' && c2 == 'q') {
                        this.curToken = OP_EQ;
                    } else if (c1 == 'n' && c2 == 'e') {
                        this.curToken = OP_NE;
                    } else if (c1 != 'g') {
                        if (c1 == 'l') {
                            if (c2 == 'e') {
                                this.curToken = OP_LE;
                            } else if (c2 == 't') {
                                this.curToken = OP_LT;
                            }
                        }
                    } else if (c2 == 'e') {
                        this.curToken = OP_GE;
                    } else if (c2 == 't') {
                        this.curToken = OP_GT;
                    }
                    break;
                case 3:
                    char c12 = this.tokenBuffer[0];
                    char c22 = this.tokenBuffer[1];
                    char c3 = this.tokenBuffer[2];
                    if (c12 != 'a') {
                        if (c12 == 'm') {
                            if (c22 == 'u' && c3 == 'l') {
                                this.curToken = 415;
                            }
                            if (c22 == 'o' && c3 == 'd') {
                                this.curToken = 418;
                            }
                        } else if (c12 == 'd' && c22 == 'i' && c3 == 'v') {
                            this.curToken = 416;
                        }
                    } else if (c22 == 'n' && c3 == 'd') {
                        this.curToken = 401;
                    }
                    break;
                case 4:
                    if (match("idiv")) {
                        this.curToken = 417;
                    } else if (match("cast", "as", true)) {
                        this.curToken = OP_CAST_AS;
                    }
                    break;
                case 5:
                    if (match("where")) {
                        this.curToken = 196;
                    } else if (match("isnot")) {
                        this.curToken = 409;
                    } else if (match("union")) {
                        this.curToken = 419;
                    } else if (match("treat", "as", true)) {
                        this.curToken = 423;
                    }
                    break;
                case 6:
                    if (match("except")) {
                        this.curToken = 421;
                    }
                    break;
                case 8:
                    if (match("instance", "of", true)) {
                        this.curToken = 422;
                    } else if (match("castable", "as", true)) {
                        this.curToken = OP_CASTABLE_AS;
                    }
                    break;
                case 9:
                    if (match("intersect")) {
                        this.curToken = 420;
                    }
                    break;
                case 10:
                    if (match("instanceof")) {
                        warnOldVersion("use 'instanceof of' (two words) instead of 'instanceof'");
                        this.curToken = 422;
                    }
                    break;
            }
        }
        int len2 = this.curToken;
        return len2;
    }

    private boolean lookingAt(String word0, String word1) throws SyntaxException, IOException {
        if (!word0.equals(this.curValue)) {
            return false;
        }
        int i = 0;
        int len = word1.length();
        while (true) {
            int ch = read();
            if (i != len) {
                if (ch < 0) {
                    break;
                }
                int i2 = i + 1;
                if (ch != word1.charAt(i)) {
                    i = i2;
                    break;
                }
                i = i2;
            } else {
                if (ch < 0) {
                    return true;
                }
                if (!XName.isNamePart((char) ch)) {
                    unread();
                    return true;
                }
                i++;
            }
        }
        this.port.skip(-i);
        return false;
    }

    int getAxis() {
        String name = new String(this.tokenBuffer, 0, this.tokenBufferLength).intern();
        int i = 13;
        do {
            i--;
            if (i < 0) {
                break;
            }
        } while (axisNames[i] != name);
        if (i < 0 || i == 8) {
            error('e', "unknown axis name '" + name + '\'', "XPST0003");
            i = 3;
        }
        return (char) (i + 100);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:242:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0357  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    int peekOperand() throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 978
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.peekOperand():int");
    }

    void checkAllowedNamespaceDeclaration(String prefix, String uri, boolean inConstructor) {
        boolean xmlPrefix = "xml".equals(prefix);
        if (NamespaceBinding.XML_NAMESPACE.equals(uri)) {
            if (!xmlPrefix || !inConstructor) {
                error('e', "namespace uri cannot be the same as the prefined xml namespace", "XQST0070");
                return;
            }
            return;
        }
        if (xmlPrefix || "xmlns".equals(prefix)) {
            error('e', "namespace prefix cannot be 'xml' or 'xmlns'", "XQST0070");
        }
    }

    void pushNamespace(String prefix, String uri) {
        if (uri.length() == 0) {
            uri = null;
        }
        this.prologNamespaces = new NamespaceBinding(prefix, uri, this.prologNamespaces);
    }

    public XQParser(InPort port, SourceMessages messages, XQuery interp) {
        super(port, messages);
        this.defaultCollator = null;
        this.defaultEmptyOrder = 'L';
        this.baseURI = null;
        this.copyNamespacesMode = 3;
        this.functionNamespacePath = XQuery.defaultFunctionNamespacePath;
        this.defaultElementNamespace = "";
        this.constructorNamespaces = NamespaceBinding.predefinedXML;
        this.interpreter = interp;
        this.nesting = 1;
        NamespaceBinding ns = builtinNamespaces;
        this.prologNamespaces = ns;
    }

    @Override // gnu.text.Lexer
    public void setInteractive(boolean v) {
        if (this.interactive != v) {
            int i = this.nesting;
            this.nesting = v ? i - 1 : i + 1;
        }
        this.interactive = v;
    }

    private static final int priority(int opcode) {
        switch (opcode) {
            case HttpStatusCodes.STATUS_CODE_BAD_REQUEST /* 400 */:
                return 1;
            case 401:
                return 2;
            case 402:
            case 403:
            case 404:
            case 405:
            case 406:
            case 407:
            case 408:
            case 409:
            case 410:
            case 411:
            case OP_EQ /* 426 */:
            case OP_NE /* 427 */:
            case OP_LT /* 428 */:
            case OP_LE /* 429 */:
            case OP_GT /* 430 */:
            case OP_GE /* 431 */:
                return 3;
            case 412:
                return 4;
            case 413:
            case 414:
                return 5;
            case 415:
            case 416:
            case 417:
            case 418:
                return 6;
            case 419:
                return 7;
            case 420:
            case 421:
                return 8;
            case 422:
                return 9;
            case 423:
                return 10;
            case OP_CASTABLE_AS /* 424 */:
                return 11;
            case OP_CAST_AS /* 425 */:
                return 12;
            default:
                return 0;
        }
    }

    static Expression makeBinary(Expression func, Expression exp1, Expression exp2) {
        Expression[] args = {exp1, exp2};
        return new ApplyExp(func, args);
    }

    static Expression makeExprSequence(Expression exp1, Expression exp2) {
        return makeBinary(makeFunctionExp("gnu.kawa.functions.AppendValues", "appendValues"), exp1, exp2);
    }

    Expression makeBinary(int op, Expression exp1, Expression exp2) throws SyntaxException, IOException {
        Expression func;
        switch (op) {
            case 402:
                func = makeFunctionExp("gnu.xquery.util.Compare", "=");
                break;
            case 403:
                func = makeFunctionExp("gnu.xquery.util.Compare", "!=");
                break;
            case 404:
                func = makeFunctionExp("gnu.xquery.util.Compare", "<");
                break;
            case 405:
                func = makeFunctionExp("gnu.xquery.util.Compare", ">");
                break;
            case 406:
                func = makeFunctionExp("gnu.xquery.util.Compare", "<=");
                break;
            case 407:
                func = makeFunctionExp("gnu.xquery.util.Compare", ">=");
                break;
            case 408:
                func = makeFunctionExp("gnu.kawa.xml.NodeCompare", "$Eq", "is");
                break;
            case 409:
                func = makeFunctionExp("gnu.kawa.xml.NodeCompare", "$Ne", "isnot");
                break;
            case 410:
                func = makeFunctionExp("gnu.kawa.xml.NodeCompare", "$Gr", ">>");
                break;
            case 411:
                func = makeFunctionExp("gnu.kawa.xml.NodeCompare", "$Ls", "<<");
                break;
            case 412:
                func = makeFunctionExp("gnu.xquery.util.IntegerRange", "integerRange");
                break;
            case 413:
                func = makeFunctionExp("gnu.xquery.util.ArithOp", "add", "+");
                break;
            case 414:
                func = makeFunctionExp("gnu.xquery.util.ArithOp", "sub", "-");
                break;
            case 415:
                func = makeFunctionExp("gnu.xquery.util.ArithOp", "mul", "*");
                break;
            case 416:
                func = makeFunctionExp("gnu.xquery.util.ArithOp", "div", "div");
                break;
            case 417:
                func = makeFunctionExp("gnu.xquery.util.ArithOp", "idiv", "idiv");
                break;
            case 418:
                func = makeFunctionExp("gnu.xquery.util.ArithOp", "mod", "mod");
                break;
            case 419:
                func = makeFunctionExp("gnu.kawa.xml.UnionNodes", "unionNodes");
                break;
            case 420:
                func = makeFunctionExp("gnu.kawa.xml.IntersectNodes", "intersectNodes");
                break;
            case 421:
                func = makeFunctionExp("gnu.kawa.xml.IntersectNodes", "exceptNodes");
                break;
            case 422:
            case 423:
            case OP_CASTABLE_AS /* 424 */:
            case OP_CAST_AS /* 425 */:
            default:
                return syntaxError("unimplemented binary op: " + op);
            case OP_EQ /* 426 */:
                func = makeFunctionExp("gnu.xquery.util.Compare", "valEq", "eq");
                break;
            case OP_NE /* 427 */:
                func = makeFunctionExp("gnu.xquery.util.Compare", "valNe", "ne");
                break;
            case OP_LT /* 428 */:
                func = makeFunctionExp("gnu.xquery.util.Compare", "valLt", "lt");
                break;
            case OP_LE /* 429 */:
                func = makeFunctionExp("gnu.xquery.util.Compare", "valLe", "le");
                break;
            case OP_GT /* 430 */:
                func = makeFunctionExp("gnu.xquery.util.Compare", "valGt", "gt");
                break;
            case OP_GE /* 431 */:
                func = makeFunctionExp("gnu.xquery.util.Compare", "valGe", "ge");
                break;
        }
        return makeBinary(func, exp1, exp2);
    }

    private void parseSimpleKindType() throws SyntaxException, IOException {
        getRawToken();
        if (this.curToken == 41) {
            getRawToken();
        } else {
            error("expected ')'");
        }
    }

    public Expression parseNamedNodeType(boolean attribute) throws SyntaxException, IOException {
        Expression qname;
        Expression tname = null;
        getRawToken();
        if (this.curToken == 41) {
            qname = QuoteExp.getInstance(ElementType.MATCH_ANY_QNAME);
            getRawToken();
        } else {
            if (this.curToken == 81 || this.curToken == 65) {
                qname = parseNameTest(attribute);
            } else {
                if (this.curToken != 415) {
                    syntaxError("expected QName or *");
                }
                qname = QuoteExp.getInstance(ElementType.MATCH_ANY_QNAME);
            }
            getRawToken();
            if (this.curToken == 44) {
                getRawToken();
                if (this.curToken == 81 || this.curToken == 65) {
                    tname = parseDataType();
                } else {
                    syntaxError("expected QName");
                }
            }
            if (this.curToken == 41) {
                getRawToken();
            } else {
                error("expected ')' after element");
            }
        }
        return makeNamedNodeType(attribute, qname, tname);
    }

    static Expression makeNamedNodeType(boolean attribute, Expression qname, Expression tname) {
        Expression[] expressionArr = new Expression[2];
        ClassType nodeType = ClassType.make(attribute ? "gnu.kawa.xml.AttributeType" : "gnu.kawa.xml.ElementType");
        ApplyExp elt = new ApplyExp(nodeType.getDeclaredMethod("make", 1), qname);
        elt.setFlag(4);
        if (tname == null) {
            return elt;
        }
        return new BeginExp(tname, elt);
    }

    private void warnOldStyleKindTest() {
        if (this.warnedOldStyleKindTest) {
            return;
        }
        error('w', "old-style KindTest - first one here");
        this.warnedOldStyleKindTest = true;
    }

    public Expression parseOptionalTypeDeclaration() throws SyntaxException, IOException {
        if (!match("as")) {
            return null;
        }
        getRawToken();
        return parseDataType();
    }

    public Expression parseDataType() throws SyntaxException, IOException {
        int min;
        int max;
        Expression etype = parseItemType();
        if (etype == null) {
            if (this.curToken != OP_EMPTY_SEQUENCE) {
                return syntaxError("bad syntax - expected DataType");
            }
            parseSimpleKindType();
            if (this.curToken == 63 || this.curToken == 413 || this.curToken == 415) {
                getRawToken();
                return syntaxError("occurrence-indicator meaningless after empty-sequence()");
            }
            etype = QuoteExp.getInstance(OccurrenceType.emptySequenceType);
            min = 0;
            max = 0;
        } else if (this.curToken == 63) {
            min = 0;
            max = 1;
        } else if (this.curToken == 413) {
            min = 1;
            max = -1;
        } else {
            int max2 = this.curToken;
            if (max2 == 415) {
                min = 0;
                max = -1;
            } else {
                min = 1;
                max = 1;
            }
        }
        if (this.parseContext == 67 && max != 1) {
            return syntaxError("type to 'cast as' or 'castable as' must be a 'SingleType'");
        }
        if (min != max) {
            getRawToken();
            Expression[] args = {etype, QuoteExp.getInstance(IntNum.make(min)), QuoteExp.getInstance(IntNum.make(max))};
            ApplyExp otype = new ApplyExp(proc_OccurrenceType_getInstance, args);
            otype.setFlag(4);
            return otype;
        }
        return etype;
    }

    public Expression parseMaybeKindTest() throws SyntaxException, IOException {
        Type type;
        switch (this.curToken) {
            case OP_NODE /* 230 */:
                parseSimpleKindType();
                type = NodeType.anyNodeTest;
                break;
            case OP_TEXT /* 231 */:
                parseSimpleKindType();
                type = NodeType.textNodeTest;
                break;
            case OP_COMMENT /* 232 */:
                parseSimpleKindType();
                type = NodeType.commentNodeTest;
                break;
            case 233:
                getRawToken();
                String piTarget = null;
                if (this.curToken == 65 || this.curToken == 34) {
                    piTarget = new String(this.tokenBuffer, 0, this.tokenBufferLength);
                    getRawToken();
                }
                if (this.curToken == 41) {
                    getRawToken();
                } else {
                    error("expected ')'");
                }
                type = ProcessingInstructionType.getInstance(piTarget);
                break;
            case OP_DOCUMENT /* 234 */:
                parseSimpleKindType();
                type = NodeType.documentNodeTest;
                break;
            case OP_ELEMENT /* 235 */:
            case OP_ATTRIBUTE /* 236 */:
                return parseNamedNodeType(this.curToken == OP_ATTRIBUTE);
            default:
                return null;
        }
        return QuoteExp.getInstance(type);
    }

    public Expression parseItemType() throws SyntaxException, IOException {
        Type type;
        peekOperand();
        Expression etype = parseMaybeKindTest();
        if (etype != null) {
            if (this.parseContext == 67) {
                type = XDataType.anyAtomicType;
            } else {
                return etype;
            }
        } else if (this.curToken == OP_ITEM) {
            parseSimpleKindType();
            type = SingletonType.getInstance();
        } else {
            if (this.curToken == 65 || this.curToken == 81) {
                String tname = new String(this.tokenBuffer, 0, this.tokenBufferLength);
                ReferenceExp rexp = new ReferenceExp(tname);
                rexp.setFlag(16);
                maybeSetLine(rexp, this.curLine, this.curColumn);
                getRawToken();
                return rexp;
            }
            return null;
        }
        return QuoteExp.getInstance(type);
    }

    Object parseURILiteral() throws SyntaxException, IOException {
        getRawToken();
        if (this.curToken != 34) {
            return declError("expected a URILiteral");
        }
        String str = new String(this.tokenBuffer, 0, this.tokenBufferLength);
        return TextUtils.replaceWhitespace(str, true);
    }

    Expression parseExpr() throws SyntaxException, IOException {
        return parseExprSingle();
    }

    final Expression parseExprSingle() throws SyntaxException, IOException {
        int i = this.curLine;
        int i2 = this.curColumn;
        peekOperand();
        switch (this.curToken) {
            case 241:
                return parseIfExpr();
            case 242:
                return parseTypeSwitch();
            case FOR_DOLLAR_TOKEN /* 243 */:
                return parseFLWRExpression(true);
            case LET_DOLLAR_TOKEN /* 244 */:
                return parseFLWRExpression(false);
            case SOME_DOLLAR_TOKEN /* 245 */:
                return parseQuantifiedExpr(false);
            case EVERY_DOLLAR_TOKEN /* 246 */:
                return parseQuantifiedExpr(true);
            default:
                return parseBinaryExpr(priority(HttpStatusCodes.STATUS_CODE_BAD_REQUEST));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d4, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    gnu.expr.Expression parseBinaryExpr(int r13) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 224
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parseBinaryExpr(int):gnu.expr.Expression");
    }

    Expression parseUnaryExpr() throws SyntaxException, IOException {
        if (this.curToken == 414 || this.curToken == 413) {
            int op = this.curToken;
            getRawToken();
            Expression exp = parseUnaryExpr();
            Expression func = makeFunctionExp("gnu.xquery.util.ArithOp", op == 413 ? "plus" : "minus", op == 413 ? "+" : "-");
            return new ApplyExp(func, exp);
        }
        Expression exp2 = parseUnionExpr();
        return exp2;
    }

    Expression parseUnionExpr() throws SyntaxException, IOException {
        Expression exp = parseIntersectExceptExpr();
        while (true) {
            int op = peekOperator();
            if (op == 419) {
                getRawToken();
                Expression exp2 = parseIntersectExceptExpr();
                exp = makeBinary(op, exp, exp2);
            } else {
                return exp;
            }
        }
    }

    Expression parseIntersectExceptExpr() throws SyntaxException, IOException {
        Expression exp = parsePathExpr();
        while (true) {
            int op = peekOperator();
            if (op == 420 || op == 421) {
                getRawToken();
                Expression exp2 = parsePathExpr();
                exp = makeBinary(op, exp, exp2);
            } else {
                return exp;
            }
        }
    }

    Expression parsePathExpr() throws SyntaxException, IOException {
        Expression dot;
        Expression step1;
        if (this.curToken == 47 || this.curToken == 68) {
            Declaration dotDecl = this.comp.lexical.lookup((Object) DOT_VARNAME, false);
            if (dotDecl == null) {
                dot = syntaxError("context item is undefined", "XPDY0002");
            } else {
                dot = new ReferenceExp(DOT_VARNAME, dotDecl);
            }
            Expression step12 = new ApplyExp(ClassType.make("gnu.xquery.util.NodeUtils").getDeclaredMethod("rootDocument", 1), dot);
            int next = skipSpace(this.nesting != 0);
            unread(next);
            if (next < 0 || next == 41 || next == 125) {
                getRawToken();
                return step12;
            }
            step1 = step12;
        } else {
            step1 = parseStepExpr();
        }
        return parseRelativePathExpr(step1);
    }

    Expression parseNameTest(boolean attribute) throws SyntaxException, IOException {
        String local = null;
        String prefix = null;
        if (this.curToken == 81) {
            int colon = this.tokenBufferLength;
            do {
                colon--;
            } while (this.tokenBuffer[colon] != ':');
            prefix = new String(this.tokenBuffer, 0, colon);
            int colon2 = colon + 1;
            local = new String(this.tokenBuffer, colon2, this.tokenBufferLength - colon2);
        } else {
            if (this.curToken == 415) {
                int next = read();
                String local2 = "";
                if (next != 58) {
                    unread(next);
                } else {
                    int next2 = read();
                    if (next2 < 0) {
                        eofError("unexpected end-of-file after '*:'");
                    }
                    if (XName.isNameStart((char) next2)) {
                        unread();
                        getRawToken();
                        if (this.curToken != 65) {
                            syntaxError("invalid name test");
                        } else {
                            local2 = new String(this.tokenBuffer, 0, this.tokenBufferLength).intern();
                        }
                    } else if (next2 != 42) {
                        syntaxError("missing local-name after '*:'");
                    }
                }
                return QuoteExp.getInstance(new Symbol(null, local2));
            }
            int next3 = this.curToken;
            if (next3 == 65) {
                local = new String(this.tokenBuffer, 0, this.tokenBufferLength);
                if (attribute) {
                    return new QuoteExp(Namespace.EmptyNamespace.getSymbol(local.intern()));
                }
                prefix = null;
            } else if (this.curToken == 67) {
                prefix = new String(this.tokenBuffer, 0, this.tokenBufferLength);
                int next4 = read();
                if (next4 != 42) {
                    syntaxError("invalid characters after 'NCName:'");
                }
                local = "";
            }
        }
        if (prefix != null) {
            prefix = prefix.intern();
        }
        Expression[] args = new Expression[3];
        args[0] = new ApplyExp((Expression) new ReferenceExp(XQResolveNames.resolvePrefixDecl), QuoteExp.getInstance(prefix));
        args[1] = new QuoteExp(local == null ? "" : local);
        args[2] = new QuoteExp(prefix);
        ApplyExp make = new ApplyExp(Compilation.typeSymbol.getDeclaredMethod("make", 3), args);
        make.setFlag(4);
        return make;
    }

    Expression parseNodeTest(int i) throws SyntaxException, IOException {
        Expression referenceExp;
        QuoteExp quoteExp;
        String str;
        peekOperand();
        Expression[] expressionArr = new Expression[1];
        Expression maybeKindTest = parseMaybeKindTest();
        if (maybeKindTest != null) {
            expressionArr[0] = maybeKindTest;
        } else if (this.curToken == 65 || this.curToken == 81 || this.curToken == 67 || this.curToken == 415) {
            expressionArr[0] = makeNamedNodeType(i == 2, parseNameTest(i == 2), null);
        } else {
            if (i >= 0) {
                return syntaxError("unsupported axis '" + axisNames[i] + "::'");
            }
            return null;
        }
        Declaration declarationLookup = this.comp.lexical.lookup((Object) DOT_VARNAME, false);
        if (declarationLookup == null) {
            referenceExp = syntaxError("node test when context item is undefined", "XPDY0002");
        } else {
            referenceExp = new ReferenceExp(DOT_VARNAME, declarationLookup);
        }
        if (maybeKindTest == null) {
            getRawToken();
        }
        if (i == 3 || i == -1) {
            quoteExp = makeChildAxisStep;
        } else if (i == 4) {
            quoteExp = makeDescendantAxisStep;
        } else {
            switch (i) {
                case 0:
                    str = "Ancestor";
                    break;
                case 1:
                    str = "AncestorOrSelf";
                    break;
                case 2:
                    str = "Attribute";
                    break;
                case 3:
                case 4:
                case 8:
                default:
                    throw new Error();
                case 5:
                    str = "DescendantOrSelf";
                    break;
                case 6:
                    str = "Following";
                    break;
                case 7:
                    str = "FollowingSibling";
                    break;
                case 9:
                    str = "Parent";
                    break;
                case 10:
                    str = "Preceding";
                    break;
                case 11:
                    str = "PrecedingSibling";
                    break;
                case 12:
                    str = "Self";
                    break;
            }
            quoteExp = QuoteExp.getInstance(new PrimProcedure("gnu.kawa.xml." + str + "Axis", "make", 1));
        }
        ApplyExp applyExp = new ApplyExp((Expression) quoteExp, expressionArr);
        applyExp.setFlag(4);
        return new ApplyExp((Expression) applyExp, referenceExp);
    }

    Expression parseRelativePathExpr(Expression exp) throws SyntaxException, IOException {
        Expression beforeSlashSlash = null;
        while (true) {
            if (this.curToken == 47 || this.curToken == 68) {
                boolean descendants = this.curToken == 68;
                LambdaExp lexp = new LambdaExp(3);
                Declaration dotDecl = lexp.addDeclaration(DOT_VARNAME);
                dotDecl.setFlag(262144L);
                dotDecl.setType(NodeType.anyNodeTest);
                dotDecl.noteValue(null);
                lexp.addDeclaration(POSITION_VARNAME, LangPrimType.intType);
                lexp.addDeclaration(LAST_VARNAME, LangPrimType.intType);
                this.comp.push(lexp);
                if (descendants) {
                    this.curToken = 47;
                    Expression dot = new ReferenceExp(DOT_VARNAME, dotDecl);
                    Expression[] args = {dot};
                    TreeScanner op = DescendantOrSelfAxis.anyNode;
                    lexp.body = new ApplyExp(op, args);
                    beforeSlashSlash = exp;
                } else {
                    getRawToken();
                    Expression exp2 = parseStepExpr();
                    if (beforeSlashSlash != null && (exp2 instanceof ApplyExp)) {
                        Expression func = ((ApplyExp) exp2).getFunction();
                        if (func instanceof ApplyExp) {
                            ApplyExp aexp = (ApplyExp) func;
                            if (aexp.getFunction() == makeChildAxisStep) {
                                aexp.setFunction(makeDescendantAxisStep);
                                exp = beforeSlashSlash;
                            }
                        }
                    }
                    lexp.body = exp2;
                    beforeSlashSlash = null;
                }
                this.comp.pop(lexp);
                Expression[] args2 = {exp, lexp};
                exp = new ApplyExp(RelativeStep.relativeStep, args2);
            } else {
                return exp;
            }
        }
    }

    Expression parseStepExpr() throws SyntaxException, IOException {
        Expression exp;
        Expression unqualifiedStep;
        if (this.curToken == 46 || this.curToken == 51) {
            int axis = this.curToken == 46 ? 12 : 9;
            getRawToken();
            Declaration dotDecl = this.comp.lexical.lookup((Object) DOT_VARNAME, false);
            if (dotDecl == null) {
                exp = syntaxError("context item is undefined", "XPDY0002");
            } else {
                exp = new ReferenceExp(DOT_VARNAME, dotDecl);
            }
            if (axis == 9) {
                Expression[] args = {exp};
                exp = new ApplyExp(ParentAxis.make(NodeType.anyNodeTest), args);
            }
            return parseStepQualifiers(exp, axis != 12 ? axis : -1);
        }
        int axis2 = peekOperand() - 100;
        if (axis2 >= 0 && axis2 < 13) {
            getRawToken();
            unqualifiedStep = parseNodeTest(axis2);
        } else if (this.curToken == 64) {
            getRawToken();
            axis2 = 2;
            unqualifiedStep = parseNodeTest(2);
        } else if (this.curToken == OP_ATTRIBUTE) {
            axis2 = 2;
            unqualifiedStep = parseNodeTest(2);
        } else {
            unqualifiedStep = parseNodeTest(-1);
            if (unqualifiedStep != null) {
                axis2 = 3;
            } else {
                axis2 = -1;
                unqualifiedStep = parsePrimaryExpr();
            }
        }
        return parseStepQualifiers(unqualifiedStep, axis2);
    }

    Expression parseStepQualifiers(Expression exp, int axis) throws SyntaxException, IOException {
        Procedure valuesFilter;
        while (this.curToken == 91) {
            int startLine = getLineNumber() + 1;
            int startColumn = getColumnNumber() + 1;
            int i = this.seenPosition;
            int i2 = this.seenLast;
            getRawToken();
            LambdaExp lexp = new LambdaExp(3);
            maybeSetLine(lexp, startLine, startColumn);
            Declaration dot = lexp.addDeclaration(DOT_VARNAME);
            if (axis >= 0) {
                dot.setType(NodeType.anyNodeTest);
            } else {
                dot.setType(SingletonType.getInstance());
            }
            lexp.addDeclaration(POSITION_VARNAME, Type.intType);
            lexp.addDeclaration(LAST_VARNAME, Type.intType);
            this.comp.push(lexp);
            dot.noteValue(null);
            Expression cond = parseExprSequence(93, false);
            if (this.curToken == -1) {
                eofError("missing ']' - unexpected end-of-file");
            }
            if (axis < 0) {
                valuesFilter = ValuesFilter.exprFilter;
            } else if (axis == 0 || axis == 1 || axis == 9 || axis == 10 || axis == 11) {
                valuesFilter = ValuesFilter.reverseFilter;
            } else {
                valuesFilter = ValuesFilter.forwardFilter;
            }
            maybeSetLine(cond, startLine, startColumn);
            this.comp.pop(lexp);
            lexp.body = cond;
            getRawToken();
            Expression[] args = {exp, lexp};
            exp = new ApplyExp(valuesFilter, args);
        }
        return exp;
    }

    Expression parsePrimaryExpr() throws SyntaxException, IOException {
        Expression exp = parseMaybePrimaryExpr();
        if (exp == null) {
            Expression exp2 = syntaxError("missing expression");
            if (this.curToken != -1) {
                getRawToken();
            }
            return exp2;
        }
        return exp;
    }

    void parseEntityOrCharRef() throws SyntaxException, IOException {
        int base;
        int next = read();
        if (next == 35) {
            int next2 = read();
            if (next2 == 120) {
                base = 16;
                next2 = read();
            } else {
                base = 10;
            }
            int value = 0;
            while (next2 >= 0) {
                int digit = Character.digit((char) next2, base);
                if (digit < 0 || value >= 134217728) {
                    break;
                }
                value = (value * base) + digit;
                next2 = read();
            }
            if (next2 != 59) {
                unread();
                error("invalid character reference");
                return;
            } else if ((value > 0 && value <= 55295) || ((value >= 57344 && value <= 65533) || (value >= 65536 && value <= 1114111))) {
                tokenBufferAppend(value);
                return;
            } else {
                error('e', "invalid character value " + value, "XQST0090");
                return;
            }
        }
        int saveLength = this.tokenBufferLength;
        while (next >= 0) {
            char ch = (char) next;
            if (!XName.isNamePart(ch)) {
                break;
            }
            tokenBufferAppend(ch);
            next = read();
        }
        if (next != 59) {
            unread();
            error("invalid entity reference");
        } else {
            String ref = new String(this.tokenBuffer, saveLength, this.tokenBufferLength - saveLength);
            this.tokenBufferLength = saveLength;
            appendNamedEntity(ref);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x015a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x015b  */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void parseContent(char r17, java.util.Vector r18) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 385
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parseContent(char, java.util.Vector):void");
    }

    Expression parseEnclosedExpr() throws SyntaxException, IOException {
        String saveErrorIfComment = this.errorIfComment;
        this.errorIfComment = null;
        char saveReadState = pushNesting('{');
        peekNonSpace("unexpected end-of-file after '{'");
        int startLine = getLineNumber() + 1;
        int startColumn = getColumnNumber() + 1;
        getRawToken();
        Expression exp = parseExpr();
        while (this.curToken != 125) {
            if (this.curToken == -1 || this.curToken == 41 || this.curToken == 93) {
                exp = syntaxError("missing '}'");
                break;
            }
            if (this.curToken != 44) {
                exp = syntaxError("missing '}' or ','");
            } else {
                getRawToken();
            }
            exp = makeExprSequence(exp, parseExpr());
        }
        maybeSetLine(exp, startLine, startColumn);
        popNesting(saveReadState);
        this.errorIfComment = saveErrorIfComment;
        return exp;
    }

    public static Expression booleanValue(Expression exp) {
        Expression[] args = {exp};
        Expression string = makeFunctionExp("gnu.xquery.util.BooleanValue", "booleanValue");
        return new ApplyExp(string, args);
    }

    Expression parseXMLConstructor(int next, boolean inElementContent) throws SyntaxException, IOException {
        if (next == 33) {
            int next2 = read();
            if (next2 == 45 && peek() == 45) {
                skip();
                getDelimited("-->");
                boolean bad = false;
                int i = this.tokenBufferLength;
                boolean sawHyphen = true;
                while (true) {
                    i--;
                    if (i >= 0) {
                        boolean curHyphen = this.tokenBuffer[i] == '-';
                        if (sawHyphen && curHyphen) {
                            bad = true;
                            break;
                        }
                        sawHyphen = curHyphen;
                    } else {
                        break;
                    }
                }
                if (bad) {
                    return syntaxError("consecutive or final hyphen in XML comment");
                }
                Expression[] args = {new QuoteExp(new String(this.tokenBuffer, 0, this.tokenBufferLength))};
                return new ApplyExp(makeFunctionExp("gnu.kawa.xml.CommentConstructor", "commentConstructor"), args);
            }
            if (next2 == 91 && read() == 67 && read() == 68 && read() == 65 && read() == 84 && read() == 65 && read() == 91) {
                if (!inElementContent) {
                    error('e', "CDATA section must be in element content");
                }
                getDelimited("]]>");
                Expression[] args2 = {new QuoteExp(new String(this.tokenBuffer, 0, this.tokenBufferLength))};
                return new ApplyExp(makeCDATA, args2);
            }
            return syntaxError("'<!' must be followed by '--' or '[CDATA['");
        }
        if (next == 63) {
            int next3 = peek();
            if (next3 < 0 || !XName.isNameStart((char) next3) || getRawToken() != 65) {
                syntaxError("missing target after '<?'");
            }
            String target = new String(this.tokenBuffer, 0, this.tokenBufferLength);
            int nspaces = 0;
            while (true) {
                int ch = read();
                if (ch < 0) {
                    break;
                }
                if (!Character.isWhitespace((char) ch)) {
                    unread();
                    break;
                }
                nspaces++;
            }
            getDelimited("?>");
            if (nspaces == 0 && this.tokenBufferLength > 0) {
                syntaxError("target must be followed by space or '?>'");
            }
            String content = new String(this.tokenBuffer, 0, this.tokenBufferLength);
            Expression[] args3 = {new QuoteExp(target), new QuoteExp(content)};
            return new ApplyExp(makeFunctionExp("gnu.kawa.xml.MakeProcInst", "makeProcInst"), args3);
        }
        if (next < 0 || !XName.isNameStart((char) next)) {
            return syntaxError("expected QName after '<'");
        }
        unread(next);
        getRawToken();
        char saveReadState = pushNesting('<');
        Expression exp = parseElementConstructor();
        if (!inElementContent) {
            exp = wrapWithBaseUri(exp);
        }
        popNesting(saveReadState);
        return exp;
    }

    static ApplyExp castQName(Expression value, boolean element) {
        Declaration fdecl = element ? XQResolveNames.xsQNameDecl : XQResolveNames.xsQNameIgnoreDefaultDecl;
        return new ApplyExp((Expression) new ReferenceExp(fdecl), value);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x022b, code lost:
    
        return syntaxError("'<" + r1 + ">' closed by '</" + r6 + ">'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x022c, code lost:
    
        r20.errorIfComment = "comment not allowed in element end tag";
        r5 = skipSpace();
        r20.errorIfComment = null;
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0239, code lost:
    
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x023a, code lost:
    
        if (r7 == 62) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0242, code lost:
    
        return syntaxError("missing '>' after end element");
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0243, code lost:
    
        r5 = new gnu.expr.Expression[r2.size()];
        r2.copyInto(r5);
        r6 = new gnu.kawa.xml.MakeElement();
        r6.copyNamespacesMode = r20.copyNamespacesMode;
        r6.setNamespaceNodes(r3);
        r8 = new gnu.expr.ApplyExp((gnu.expr.Expression) new gnu.expr.QuoteExp(r6), r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0262, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01bc, code lost:
    
        r20.errorIfComment = null;
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01c0, code lost:
    
        if (r7 != 47) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01c2, code lost:
    
        r7 = read();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01c6, code lost:
    
        if (r7 != 62) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01c8, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01ca, code lost:
    
        unread(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01cd, code lost:
    
        if (r4 != false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01cf, code lost:
    
        if (r7 == 62) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01d7, code lost:
    
        return syntaxError("missing '>' after start element");
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d8, code lost:
    
        parseContent('<', r2);
        r5 = peek();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01e1, code lost:
    
        if (r5 < 0) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01e8, code lost:
    
        if (gnu.xml.XName.isNameStart((char) r5) != false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01f0, code lost:
    
        return syntaxError("invalid tag syntax after '</'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01f1, code lost:
    
        getRawToken();
        r6 = new java.lang.String(r20.tokenBuffer, 0, r20.tokenBufferLength);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0202, code lost:
    
        if (r6.equals(r1) != false) goto L101;
     */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    gnu.expr.Expression parseElementConstructor() throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 611
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parseElementConstructor():gnu.expr.Expression");
    }

    Expression wrapWithBaseUri(Expression exp) {
        if (getStaticBaseUri() == null) {
            return exp;
        }
        return new ApplyExp(MakeWithBaseUri.makeWithBaseUri, new ApplyExp((Expression) new ReferenceExp(XQResolveNames.staticBaseUriDecl), Expression.noExpressions), exp).setLine(exp);
    }

    Expression parseParenExpr() throws SyntaxException, IOException {
        getRawToken();
        char saveReadState = pushNesting('(');
        Expression exp = parseExprSequence(41, true);
        popNesting(saveReadState);
        if (this.curToken == -1) {
            eofError("missing ')' - unexpected end-of-file");
        }
        return exp;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0044, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    gnu.expr.Expression parseExprSequence(int r6, boolean r7) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.curToken
            if (r0 == r6) goto L45
            int r0 = r5.curToken
            r1 = -1
            if (r0 != r1) goto La
            goto L45
        La:
            r0 = 0
        Lb:
            gnu.expr.Expression r2 = r5.parseExprSingle()
            if (r0 != 0) goto L13
            r3 = r2
            goto L17
        L13:
            gnu.expr.Expression r3 = makeExprSequence(r0, r2)
        L17:
            r0 = r3
            int r3 = r5.curToken
            if (r3 == r6) goto L44
            int r3 = r5.curToken
            if (r3 != r1) goto L21
            goto L44
        L21:
            int r3 = r5.nesting
            if (r3 != 0) goto L2c
            int r3 = r5.curToken
            r4 = 10
            if (r3 != r4) goto L2c
            return r0
        L2c:
            int r3 = r5.curToken
            r4 = 44
            if (r3 == r4) goto L40
            r1 = 41
            if (r6 != r1) goto L39
            java.lang.String r1 = "expected ')'"
            goto L3b
        L39:
            java.lang.String r1 = "confused by syntax error"
        L3b:
            gnu.expr.Expression r1 = r5.syntaxError(r1)
            return r1
        L40:
            r5.getRawToken()
            goto Lb
        L44:
            return r0
        L45:
            if (r7 != 0) goto L4c
            java.lang.String r0 = "missing expression"
            r5.syntaxError(r0)
        L4c:
            gnu.expr.QuoteExp r0 = gnu.expr.QuoteExp.voidExp
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parseExprSequence(int, boolean):gnu.expr.Expression");
    }

    Expression parseTypeSwitch() throws SyntaxException, IOException {
        Declaration decl;
        Declaration decl2;
        char save = pushNesting('t');
        Expression selector = parseParenExpr();
        getRawToken();
        Vector vec = new Vector();
        vec.addElement(selector);
        while (true) {
            if (match("case")) {
                pushNesting('c');
                getRawToken();
                if (this.curToken == 36) {
                    decl2 = parseVariableDeclaration();
                    if (decl2 == null) {
                        return syntaxError("missing Variable after '$'");
                    }
                    getRawToken();
                    if (match("as")) {
                        getRawToken();
                    } else {
                        error('e', "missing 'as'");
                    }
                } else {
                    decl2 = new Declaration("(arg)");
                }
                decl2.setTypeExp(parseDataType());
                popNesting('t');
                LambdaExp lexp = new LambdaExp(1);
                lexp.addDeclaration(decl2);
                if (match("return")) {
                    getRawToken();
                } else {
                    error("missing 'return' after 'case'");
                }
                this.comp.push(lexp);
                pushNesting('r');
                Expression caseExpr = parseExpr();
                lexp.body = caseExpr;
                popNesting('t');
                this.comp.pop(lexp);
                vec.addElement(lexp);
            } else {
                if (match("default")) {
                    LambdaExp lexp2 = new LambdaExp(1);
                    getRawToken();
                    if (this.curToken == 36) {
                        decl = parseVariableDeclaration();
                        if (decl == null) {
                            return syntaxError("missing Variable after '$'");
                        }
                        getRawToken();
                    } else {
                        decl = new Declaration("(arg)");
                    }
                    lexp2.addDeclaration(decl);
                    if (match("return")) {
                        getRawToken();
                    } else {
                        error("missing 'return' after 'default'");
                    }
                    this.comp.push(lexp2);
                    Expression defaultExpr = parseExpr();
                    lexp2.body = defaultExpr;
                    this.comp.pop(lexp2);
                    vec.addElement(lexp2);
                } else {
                    error(this.comp.isPedantic() ? 'e' : 'w', "no 'default' clause in 'typeswitch'", "XPST0003");
                }
                popNesting(save);
                Expression[] args = new Expression[vec.size()];
                vec.copyInto(args);
                return new ApplyExp(makeFunctionExp("gnu.kawa.reflect.TypeSwitch", "typeSwitch"), args);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x026b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    gnu.expr.Expression parseMaybePrimaryExpr() throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 930
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parseMaybePrimaryExpr():gnu.expr.Expression");
    }

    public Expression parseIfExpr() throws SyntaxException, IOException {
        char saveReadState1 = pushNesting('i');
        getRawToken();
        char saveReadState2 = pushNesting('(');
        Expression cond = parseExprSequence(41, false);
        popNesting(saveReadState2);
        if (this.curToken == -1) {
            eofError("missing ')' - unexpected end-of-file");
        }
        getRawToken();
        if (!match("then")) {
            syntaxError("missing 'then'");
        } else {
            getRawToken();
        }
        Expression thenPart = parseExpr();
        if (!match("else")) {
            syntaxError("missing 'else'");
        } else {
            getRawToken();
        }
        popNesting(saveReadState1);
        Expression elsePart = parseExpr();
        return new IfExp(booleanValue(cond), thenPart, elsePart);
    }

    public boolean match(String word) {
        int len;
        char cs;
        char cb;
        if (this.curToken != 65 || this.tokenBufferLength != (len = word.length())) {
            return false;
        }
        int i = len;
        do {
            i--;
            if (i >= 0) {
                cs = word.charAt(i);
                cb = this.tokenBuffer[i];
            } else {
                return true;
            }
        } while (cs == cb);
        return false;
    }

    public Object parseVariable() throws SyntaxException, IOException {
        if (this.curToken == 36) {
            getRawToken();
        } else {
            syntaxError("missing '$' before variable name");
        }
        String str = new String(this.tokenBuffer, 0, this.tokenBufferLength);
        if (this.curToken == 81) {
            return str;
        }
        if (this.curToken == 65) {
            return Namespace.EmptyNamespace.getSymbol(str.intern());
        }
        return null;
    }

    public Declaration parseVariableDeclaration() throws SyntaxException, IOException {
        Object name = parseVariable();
        if (name == null) {
            return null;
        }
        Declaration decl = new Declaration(name);
        maybeSetLine(decl, getLineNumber() + 1, (getColumnNumber() + 1) - this.tokenBufferLength);
        return decl;
    }

    public Expression parseFLWRExpression(boolean isFor) throws SyntaxException, IOException {
        int flworDeclsSave = this.flworDeclsFirst;
        this.flworDeclsFirst = this.flworDeclsCount;
        Expression exp = parseFLWRInner(isFor);
        if (match("order")) {
            char saveNesting = pushNesting(isFor ? 'f' : 'l');
            getRawToken();
            if (match("by")) {
                getRawToken();
            } else {
                error("missing 'by' following 'order'");
            }
            Stack specs = new Stack();
            while (true) {
                boolean descending = false;
                char emptyOrder = this.defaultEmptyOrder;
                LambdaExp lexp = new LambdaExp(this.flworDeclsCount - this.flworDeclsFirst);
                for (int i = this.flworDeclsFirst; i < this.flworDeclsCount; i++) {
                    lexp.addDeclaration(this.flworDecls[i].getSymbol());
                }
                this.comp.push(lexp);
                lexp.body = parseExprSingle();
                this.comp.pop(lexp);
                specs.push(lexp);
                if (match("ascending")) {
                    getRawToken();
                } else if (match("descending")) {
                    getRawToken();
                    descending = true;
                }
                if (match("empty")) {
                    getRawToken();
                    if (match("greatest")) {
                        getRawToken();
                        emptyOrder = 'G';
                    } else if (match("least")) {
                        getRawToken();
                        emptyOrder = 'L';
                    } else {
                        error("'empty' sequence order must be 'greatest' or 'least'");
                    }
                }
                specs.push(new QuoteExp((descending ? "D" : "A") + emptyOrder));
                Object collation = this.defaultCollator;
                if (match("collation")) {
                    Object uri = parseURILiteral();
                    if (uri instanceof String) {
                        try {
                            String uriString = resolveAgainstBaseUri((String) uri);
                            collation = NamedCollator.make(uriString);
                        } catch (Exception e) {
                            error('e', "unknown collation '" + uri + "'", "XQST0076");
                        }
                    }
                    getRawToken();
                }
                specs.push(new QuoteExp(collation));
                if (this.curToken != 44) {
                    break;
                }
                getRawToken();
            }
            if (!match("return")) {
                return syntaxError("expected 'return' clause");
            }
            getRawToken();
            LambdaExp lexp2 = new LambdaExp(this.flworDeclsCount - this.flworDeclsFirst);
            for (int i2 = this.flworDeclsFirst; i2 < this.flworDeclsCount; i2++) {
                lexp2.addDeclaration(this.flworDecls[i2].getSymbol());
            }
            popNesting(saveNesting);
            this.comp.push(lexp2);
            lexp2.body = parseExprSingle();
            this.comp.pop(lexp2);
            int nspecs = specs.size();
            Expression[] args = new Expression[nspecs + 2];
            args[0] = exp;
            args[1] = lexp2;
            for (int i3 = 0; i3 < nspecs; i3++) {
                args[i3 + 2] = (Expression) specs.elementAt(i3);
            }
            return new ApplyExp(makeFunctionExp("gnu.xquery.util.OrderedMap", "orderedMap"), args);
        }
        this.flworDeclsCount = this.flworDeclsFirst;
        this.flworDeclsFirst = flworDeclsSave;
        return exp;
    }

    public Expression parseFLWRInner(boolean isFor) throws SyntaxException, IOException {
        ScopeExp sc;
        Expression cond;
        Expression body;
        Expression body2;
        char saveNesting = pushNesting(isFor ? 'f' : 'l');
        this.curToken = 36;
        Declaration decl = parseVariableDeclaration();
        if (decl == null) {
            return syntaxError("missing Variable - saw " + tokenString());
        }
        if (this.flworDecls == null) {
            this.flworDecls = new Declaration[8];
        } else if (this.flworDeclsCount >= this.flworDecls.length) {
            Declaration[] tmp = new Declaration[this.flworDeclsCount * 2];
            System.arraycopy(this.flworDecls, 0, tmp, 0, this.flworDeclsCount);
            this.flworDecls = tmp;
        }
        Declaration[] tmp2 = this.flworDecls;
        int i = this.flworDeclsCount;
        this.flworDeclsCount = i + 1;
        tmp2[i] = decl;
        getRawToken();
        Expression type = parseOptionalTypeDeclaration();
        Expression[] inits = new Expression[1];
        Declaration posDecl = null;
        if (isFor) {
            boolean sawAt = match("at");
            LambdaExp lexp = new LambdaExp(sawAt ? 2 : 1);
            if (sawAt) {
                getRawToken();
                if (this.curToken == 36) {
                    posDecl = parseVariableDeclaration();
                    getRawToken();
                }
                if (posDecl == null) {
                    syntaxError("missing Variable after 'at'");
                }
            }
            sc = lexp;
            if (match("in")) {
                getRawToken();
            } else {
                if (this.curToken == 76) {
                    getRawToken();
                }
                syntaxError("missing 'in' in 'for' clause");
            }
        } else {
            if (this.curToken == 76) {
                getRawToken();
            } else {
                if (match("in")) {
                    getRawToken();
                }
                syntaxError("missing ':=' in 'let' clause");
            }
            LetExp let = new LetExp(inits);
            sc = let;
        }
        inits[0] = parseExprSingle();
        if (type != null && !isFor) {
            inits[0] = Compilation.makeCoercion(inits[0], type);
        }
        popNesting(saveNesting);
        this.comp.push(sc);
        sc.addDeclaration(decl);
        if (type != null) {
            decl.setTypeExp(type);
        }
        if (isFor) {
            decl.noteValue(null);
            decl.setFlag(262144L);
        }
        if (posDecl != null) {
            sc.addDeclaration(posDecl);
            posDecl.setType(LangPrimType.intType);
            posDecl.noteValue(null);
            posDecl.setFlag(262144L);
        }
        if (this.curToken != 44) {
            if (!match("for")) {
                if (!match("let")) {
                    char save = pushNesting('w');
                    if (this.curToken != 196) {
                        if (match("where")) {
                            cond = parseExprSingle();
                        } else {
                            cond = null;
                        }
                    } else {
                        getRawToken();
                        cond = parseExprSingle();
                    }
                    popNesting(save);
                    boolean sawStable = match("stable");
                    if (sawStable) {
                        getRawToken();
                    }
                    boolean sawReturn = match("return");
                    boolean sawOrder = match("order");
                    if (!sawReturn && !sawOrder && !match("let") && !match("for")) {
                        return syntaxError("missing 'return' clause");
                    }
                    if (!sawOrder) {
                        peekNonSpace("unexpected eof-of-file after 'return'");
                    }
                    int bodyLine = getLineNumber() + 1;
                    int bodyColumn = getColumnNumber() + 1;
                    if (sawReturn) {
                        getRawToken();
                    }
                    if (sawOrder) {
                        int ndecls = this.flworDeclsCount - this.flworDeclsFirst;
                        Expression[] args = new Expression[ndecls];
                        int i2 = 0;
                        while (i2 < ndecls) {
                            args[i2] = new ReferenceExp(this.flworDecls[this.flworDeclsFirst + i2]);
                            i2++;
                            save = save;
                            decl = decl;
                            type = type;
                        }
                        body = new ApplyExp(new PrimProcedure("gnu.xquery.util.OrderedMap", "makeTuple$V", 1), args);
                    } else {
                        body = parseExprSingle();
                    }
                    if (cond == null) {
                        body2 = body;
                    } else {
                        body2 = new IfExp(booleanValue(cond), body, QuoteExp.voidExp);
                    }
                    maybeSetLine(body2, bodyLine, bodyColumn);
                } else {
                    getRawToken();
                    if (this.curToken != 36) {
                        return syntaxError("missing $NAME after 'let'");
                    }
                    body2 = parseFLWRInner(false);
                }
            } else {
                getRawToken();
                if (this.curToken != 36) {
                    return syntaxError("missing $NAME after 'for'");
                }
                body2 = parseFLWRInner(true);
            }
        } else {
            getRawToken();
            if (this.curToken != 36) {
                return syntaxError("missing $NAME after ','");
            }
            body2 = parseFLWRInner(isFor);
        }
        this.comp.pop(sc);
        if (isFor) {
            LambdaExp lexp2 = (LambdaExp) sc;
            lexp2.body = body2;
            return new ApplyExp(makeFunctionExp("gnu.kawa.functions.ValuesMap", lexp2.min_args == 1 ? "valuesMap" : "valuesMapWithPos"), sc, inits[0]);
        }
        ((LetExp) sc).setBody(body2);
        return sc;
    }

    public Expression parseQuantifiedExpr(boolean isEvery) throws SyntaxException, IOException {
        Expression body;
        char saveNesting = pushNesting(isEvery ? 'e' : 's');
        this.curToken = 36;
        Declaration decl = parseVariableDeclaration();
        if (decl == null) {
            return syntaxError("missing Variable token:" + this.curToken);
        }
        getRawToken();
        LambdaExp lexp = new LambdaExp(1);
        lexp.addDeclaration(decl);
        decl.noteValue(null);
        decl.setFlag(262144L);
        decl.setTypeExp(parseOptionalTypeDeclaration());
        if (match("in")) {
            getRawToken();
        } else {
            if (this.curToken == 76) {
                getRawToken();
            }
            syntaxError("missing 'in' in QuantifiedExpr");
        }
        Expression[] inits = {parseExprSingle()};
        popNesting(saveNesting);
        this.comp.push(lexp);
        if (this.curToken == 44) {
            getRawToken();
            if (this.curToken != 36) {
                return syntaxError("missing $NAME after ','");
            }
            body = parseQuantifiedExpr(isEvery);
        } else {
            boolean sawSatisfies = match("satisfies");
            if (!sawSatisfies && !match("every") && !match("some")) {
                return syntaxError("missing 'satisfies' clause");
            }
            peekNonSpace("unexpected eof-of-file after 'satisfies'");
            int bodyLine = getLineNumber() + 1;
            int bodyColumn = getColumnNumber() + 1;
            if (sawSatisfies) {
                getRawToken();
            }
            Expression body2 = parseExprSingle();
            maybeSetLine(body2, bodyLine, bodyColumn);
            body = body2;
        }
        this.comp.pop(lexp);
        lexp.body = body;
        Expression[] args = {lexp, inits[0]};
        return new ApplyExp(makeFunctionExp("gnu.xquery.util.ValuesEvery", isEvery ? "every" : "some"), args);
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0151, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public gnu.expr.Expression parseFunctionDefinition(int r13, int r14) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 379
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parseFunctionDefinition(int, int):gnu.expr.Expression");
    }

    public Object readObject() throws SyntaxException, IOException {
        return parse(null);
    }

    protected Symbol namespaceResolve(String name, boolean function) {
        int colon = name.indexOf(58);
        String prefix = colon >= 0 ? name.substring(0, colon).intern() : function ? XQuery.DEFAULT_FUNCTION_PREFIX : XQuery.DEFAULT_ELEMENT_PREFIX;
        String uri = QNameUtils.lookupPrefix(prefix, this.constructorNamespaces, this.prologNamespaces);
        if (uri == null) {
            if (colon < 0) {
                uri = "";
            } else if (!this.comp.isPedantic()) {
                try {
                    Class.forName(prefix);
                    uri = "class:" + prefix;
                } catch (Exception e) {
                    uri = null;
                }
            }
            if (uri == null) {
                getMessages().error('e', "unknown namespace prefix '" + prefix + "'", "XPST0081");
                uri = "(unknown namespace)";
            }
        }
        String local = colon < 0 ? name : name.substring(colon + 1);
        return Symbol.make(uri, local, prefix);
    }

    void parseSeparator() throws SyntaxException, IOException {
        int startLine = this.port.getLineNumber() + 1;
        int startColumn = this.port.getColumnNumber() + 1;
        int next = skipSpace(this.nesting != 0);
        if (next == 59) {
            return;
        }
        if (warnOldVersion && next != 10) {
            this.curLine = startLine;
            this.curColumn = startColumn;
            error('w', "missing ';' after declaration");
        }
        if (next >= 0) {
            unread(next);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0566  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0594  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0599  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public gnu.expr.Expression parse(gnu.expr.Compilation r18) throws gnu.text.SyntaxException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 2222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQParser.parse(gnu.expr.Compilation):gnu.expr.Expression");
    }

    public void handleOption(Symbol name, String value) {
    }

    public static Expression makeFunctionExp(String className, String name) {
        return makeFunctionExp(className, Compilation.mangleNameIfNeeded(name), name);
    }

    public static Expression makeFunctionExp(String className, String fieldName, String name) {
        return new ReferenceExp(name, Declaration.getDeclarationValueFromStatic(className, fieldName, name));
    }

    String tokenString() {
        switch (this.curToken) {
            case -1:
                return "<EOF>";
            case 34:
                StringBuffer sbuf = new StringBuffer();
                sbuf.append('\"');
                for (int i = 0; i < this.tokenBufferLength; i++) {
                    char ch = this.tokenBuffer[i];
                    if (ch == '\"') {
                        sbuf.append('\"');
                    }
                    sbuf.append(ch);
                }
                sbuf.append('\"');
                return sbuf.toString();
            case 65:
            case 81:
                return new String(this.tokenBuffer, 0, this.tokenBufferLength);
            case 70:
                return new String(this.tokenBuffer, 0, this.tokenBufferLength) + " + '('";
            default:
                return (this.curToken < 100 || this.curToken - 100 >= 13) ? (this.curToken < 32 || this.curToken >= 127) ? Integer.toString(this.curToken) : Integer.toString(this.curToken) + "='" + ((char) this.curToken) + "'" : axisNames[this.curToken - 100] + "::-axis(" + this.curToken + ")";
        }
    }

    public void error(char severity, String message, String code) {
        SourceMessages messages = getMessages();
        SourceError err = new SourceError(severity, this.port.getName(), this.curLine, this.curColumn, message);
        err.code = code;
        messages.error(err);
    }

    @Override // gnu.text.Lexer
    public void error(char severity, String message) {
        error(severity, message, null);
    }

    public Expression declError(String message) throws SyntaxException, IOException {
        if (this.interactive) {
            return syntaxError(message);
        }
        error(message);
        while (this.curToken != 59 && this.curToken != -1) {
            getRawToken();
        }
        return new ErrorExp(message);
    }

    public Expression syntaxError(String message, String code) throws SyntaxException, IOException {
        int ch;
        error('e', message, code);
        if (this.interactive) {
            this.curToken = 0;
            this.curValue = null;
            this.nesting = 0;
            ((InPort) getPort()).readState = '\n';
            do {
                ch = read();
                if (ch >= 0) {
                    if (ch == 13) {
                        break;
                    }
                } else {
                    break;
                }
            } while (ch != 10);
            unread(ch);
            throw new SyntaxException(getMessages());
        }
        return new ErrorExp(message);
    }

    public Expression syntaxError(String message) throws SyntaxException, IOException {
        return syntaxError(message, "XPST0003");
    }

    @Override // gnu.text.Lexer
    public void eofError(String msg) throws SyntaxException {
        fatal(msg, "XPST0003");
    }

    public void fatal(String msg, String code) throws SyntaxException {
        SourceMessages messages = getMessages();
        SourceError err = new SourceError('f', this.port.getName(), this.curLine, this.curColumn, msg);
        err.code = code;
        messages.error(err);
        throw new SyntaxException(messages);
    }

    void warnOldVersion(String message) {
        if (warnOldVersion || this.comp.isPedantic()) {
            error(this.comp.isPedantic() ? 'e' : 'w', message);
        }
    }

    public void maybeSetLine(Expression exp, int line, int column) {
        String file = getName();
        if (file != null && exp.getFileName() == null && !(exp instanceof QuoteExp)) {
            exp.setFile(file);
            exp.setLine(line, column);
        }
    }

    public void maybeSetLine(Declaration decl, int line, int column) {
        String file = getName();
        if (file != null) {
            decl.setFile(file);
            decl.setLine(line, column);
        }
    }
}
