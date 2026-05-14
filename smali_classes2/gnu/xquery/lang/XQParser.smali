.class public Lgnu/xquery/lang/XQParser;
.super Lgnu/text/Lexer;
.source "XQParser.java"


# static fields
.field static final ARROW_TOKEN:I = 0x52

.field static final ATTRIBUTE_TOKEN:I = 0xfc

.field static final AXIS_ANCESTOR:I = 0x0

.field static final AXIS_ANCESTOR_OR_SELF:I = 0x1

.field static final AXIS_ATTRIBUTE:I = 0x2

.field static final AXIS_CHILD:I = 0x3

.field static final AXIS_DESCENDANT:I = 0x4

.field static final AXIS_DESCENDANT_OR_SELF:I = 0x5

.field static final AXIS_FOLLOWING:I = 0x6

.field static final AXIS_FOLLOWING_SIBLING:I = 0x7

.field static final AXIS_NAMESPACE:I = 0x8

.field static final AXIS_PARENT:I = 0x9

.field static final AXIS_PRECEDING:I = 0xa

.field static final AXIS_PRECEDING_SIBLING:I = 0xb

.field static final AXIS_SELF:I = 0xc

.field static final CASE_DOLLAR_TOKEN:I = 0xf7

.field static final COLON_COLON_TOKEN:I = 0x58

.field static final COLON_EQUAL_TOKEN:I = 0x4c

.field static final COMMENT_TOKEN:I = 0xfe

.field static final COUNT_OP_AXIS:I = 0xd

.field static final DECIMAL_TOKEN:C = '1'

.field static final DECLARE_BASE_URI_TOKEN:I = 0x42

.field static final DECLARE_BOUNDARY_SPACE_TOKEN:I = 0x53

.field static final DECLARE_CONSTRUCTION_TOKEN:I = 0x4b

.field static final DECLARE_COPY_NAMESPACES_TOKEN:I = 0x4c

.field static final DECLARE_FUNCTION_TOKEN:I = 0x50

.field static final DECLARE_NAMESPACE_TOKEN:I = 0x4e

.field static final DECLARE_OPTION_TOKEN:I = 0x6f

.field static final DECLARE_ORDERING_TOKEN:I = 0x55

.field static final DECLARE_VARIABLE_TOKEN:I = 0x56

.field static final DEFAULT_COLLATION_TOKEN:I = 0x47

.field static final DEFAULT_ELEMENT_TOKEN:I = 0x45

.field static final DEFAULT_FUNCTION_TOKEN:I = 0x4f

.field static final DEFAULT_ORDER_TOKEN:I = 0x48

.field static final DEFINE_QNAME_TOKEN:I = 0x57

.field static final DOCUMENT_TOKEN:I = 0x100

.field static final DOTDOT_TOKEN:I = 0x33

.field static final DOT_VARNAME:Lgnu/mapping/Symbol;

.field static final DOUBLE_TOKEN:C = '2'

.field static final ELEMENT_TOKEN:I = 0xfb

.field static final EOF_TOKEN:I = -0x1

.field static final EOL_TOKEN:I = 0xa

.field static final EVERY_DOLLAR_TOKEN:I = 0xf6

.field static final FNAME_TOKEN:I = 0x46

.field static final FOR_DOLLAR_TOKEN:I = 0xf3

.field static final IF_LPAREN_TOKEN:I = 0xf1

.field static final IMPORT_MODULE_TOKEN:I = 0x49

.field static final IMPORT_SCHEMA_TOKEN:I = 0x54

.field static final INTEGER_TOKEN:C = '0'

.field static final LAST_VARNAME:Lgnu/mapping/Symbol;

.field static final LET_DOLLAR_TOKEN:I = 0xf4

.field static final MODULE_NAMESPACE_TOKEN:I = 0x4d

.field static final NCNAME_COLON_TOKEN:I = 0x43

.field static final NCNAME_TOKEN:I = 0x41

.field static final OP_ADD:I = 0x19d

.field static final OP_AND:I = 0x191

.field static final OP_ATTRIBUTE:I = 0xec

.field static final OP_AXIS_FIRST:I = 0x64

.field static final OP_BASE:I = 0x190

.field static final OP_CASTABLE_AS:I = 0x1a8

.field static final OP_CAST_AS:I = 0x1a9

.field static final OP_COMMENT:I = 0xe8

.field static final OP_DIV:I = 0x1a0

.field static final OP_DOCUMENT:I = 0xea

.field static final OP_ELEMENT:I = 0xeb

.field static final OP_EMPTY_SEQUENCE:I = 0xee

.field static final OP_EQ:I = 0x1aa

.field static final OP_EQU:I = 0x192

.field static final OP_EXCEPT:I = 0x1a5

.field static final OP_GE:I = 0x1af

.field static final OP_GEQ:I = 0x197

.field static final OP_GRT:I = 0x195

.field static final OP_GRTGRT:I = 0x19a

.field static final OP_GT:I = 0x1ae

.field static final OP_IDIV:I = 0x1a1

.field static final OP_INSTANCEOF:I = 0x1a6

.field static final OP_INTERSECT:I = 0x1a4

.field static final OP_IS:I = 0x198

.field static final OP_ISNOT:I = 0x199

.field static final OP_ITEM:I = 0xed

.field static final OP_LE:I = 0x1ad

.field static final OP_LEQ:I = 0x196

.field static final OP_LSS:I = 0x194

.field static final OP_LSSLSS:I = 0x19b

.field static final OP_LT:I = 0x1ac

.field static final OP_MOD:I = 0x1a2

.field static final OP_MUL:I = 0x19f

.field static final OP_NE:I = 0x1ab

.field static final OP_NEQ:I = 0x193

.field static final OP_NODE:I = 0xe6

.field static final OP_OR:I = 0x190

.field static final OP_PI:I = 0xe9

.field static final OP_RANGE_TO:I = 0x19c

.field static final OP_SCHEMA_ATTRIBUTE:I = 0xef

.field static final OP_SCHEMA_ELEMENT:I = 0xf0

.field static final OP_SUB:I = 0x19e

.field static final OP_TEXT:I = 0xe7

.field static final OP_TREAT_AS:I = 0x1a7

.field static final OP_UNION:I = 0x1a3

.field static final OP_WHERE:I = 0xc4

.field static final ORDERED_LBRACE_TOKEN:I = 0xf9

.field static final PI_TOKEN:I = 0xff

.field static final POSITION_VARNAME:Lgnu/mapping/Symbol;

.field static final PRAGMA_START_TOKEN:I = 0xc5

.field static final QNAME_TOKEN:I = 0x51

.field static final SLASHSLASH_TOKEN:I = 0x44

.field static final SOME_DOLLAR_TOKEN:I = 0xf5

.field static final STRING_TOKEN:I = 0x22

.field static final TEXT_TOKEN:I = 0xfd

.field static final TYPESWITCH_LPAREN_TOKEN:I = 0xf2

.field static final UNORDERED_LBRACE_TOKEN:I = 0xfa

.field static final VALIDATE_LBRACE_TOKEN:I = 0xf8

.field static final XQUERY_VERSION_TOKEN:I = 0x59

.field public static final axisNames:[Ljava/lang/String;

.field static builtinNamespaces:Lgnu/xml/NamespaceBinding;

.field public static final castableAs:Lgnu/xquery/util/CastableAs;

.field public static final getExternalFunction:Lgnu/expr/QuoteExp;

.field public static final instanceOf:Lgnu/kawa/reflect/InstanceOf;

.field static final makeCDATA:Lgnu/expr/Expression;

.field public static makeChildAxisStep:Lgnu/expr/QuoteExp;

.field public static makeDescendantAxisStep:Lgnu/expr/QuoteExp;

.field public static makeText:Lgnu/expr/Expression;

.field static proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

.field public static final treatAs:Lgnu/kawa/functions/Convert;

.field public static warnHidePreviousDeclaration:Z

.field public static warnOldVersion:Z


# instance fields
.field baseURI:Lgnu/text/Path;

.field baseURIDeclarationSeen:Z

.field boundarySpaceDeclarationSeen:Z

.field boundarySpacePreserve:Z

.field commentCount:I

.field comp:Lgnu/expr/Compilation;

.field constructionModeDeclarationSeen:Z

.field constructionModeStrip:Z

.field constructorNamespaces:Lgnu/xml/NamespaceBinding;

.field copyNamespacesDeclarationSeen:Z

.field copyNamespacesMode:I

.field curColumn:I

.field curLine:I

.field curToken:I

.field curValue:Ljava/lang/Object;

.field defaultCollator:Lgnu/xquery/util/NamedCollator;

.field defaultElementNamespace:Ljava/lang/String;

.field defaultEmptyOrder:C

.field emptyOrderDeclarationSeen:Z

.field enclosedExpressionsSeen:I

.field errorIfComment:Ljava/lang/String;

.field flworDecls:[Lgnu/expr/Declaration;

.field flworDeclsCount:I

.field flworDeclsFirst:I

.field public functionNamespacePath:[Lgnu/mapping/Namespace;

.field interpreter:Lgnu/xquery/lang/XQuery;

.field libraryModuleNamespace:Ljava/lang/String;

.field orderingModeSeen:Z

.field orderingModeUnordered:Z

.field parseContext:I

.field parseCount:I

.field prologNamespaces:Lgnu/xml/NamespaceBinding;

.field private saveToken:I

.field private saveValue:Ljava/lang/Object;

.field seenDeclaration:Z

.field seenLast:I

.field seenPosition:I

.field private warnedOldStyleKindTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    .line 56
    const/4 v1, 0x0

    sput-boolean v1, Lgnu/xquery/lang/XQParser;->warnHidePreviousDeclaration:Z

    .line 59
    const-string v2, "$dot$"

    invoke-static {v2}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    .line 62
    const-string v2, "$position$"

    invoke-static {v2}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    .line 65
    const-string v2, "$last$"

    invoke-static {v2}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    .line 67
    new-instance v2, Lgnu/kawa/reflect/InstanceOf;

    invoke-static {}, Lgnu/xquery/lang/XQuery;->getInstance()Lgnu/xquery/lang/XQuery;

    move-result-object v3

    const-string v4, "instance"

    invoke-direct {v2, v3, v4}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v2, Lgnu/xquery/lang/XQParser;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    .line 69
    sget-object v2, Lgnu/xquery/util/CastableAs;->castableAs:Lgnu/xquery/util/CastableAs;

    sput-object v2, Lgnu/xquery/lang/XQParser;->castableAs:Lgnu/xquery/util/CastableAs;

    .line 70
    sget-object v2, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    sput-object v2, Lgnu/xquery/lang/XQParser;->treatAs:Lgnu/kawa/functions/Convert;

    .line 1528
    new-instance v2, Lgnu/expr/PrimProcedure;

    const-string v3, "gnu.kawa.reflect.OccurrenceType"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "getInstance"

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v2, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    .line 1958
    new-instance v2, Lgnu/expr/PrimProcedure;

    const-string v3, "gnu.kawa.xml.ChildAxis"

    const-string v4, "make"

    invoke-direct {v2, v3, v4, v0}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    .line 1960
    new-instance v2, Lgnu/expr/PrimProcedure;

    const-string v3, "gnu.kawa.xml.DescendantAxis"

    invoke-direct {v2, v3, v4, v0}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    .line 2262
    const-string v2, "gnu.kawa.xml.MakeText"

    const-string v3, "makeText"

    invoke-static {v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    .line 2448
    const-string v2, "gnu.kawa.xml.MakeCDATA"

    const-string v3, "makeCDATA"

    invoke-static {v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    .line 3654
    sget-object v2, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    .line 3655
    .local v2, "ns":Lgnu/xml/NamespaceBinding;
    new-instance v3, Lgnu/xml/NamespaceBinding;

    const-string v4, "xml"

    const-string v6, "http://www.w3.org/XML/1998/namespace"

    invoke-direct {v3, v4, v6, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v2, v3

    .line 3656
    new-instance v3, Lgnu/xml/NamespaceBinding;

    const-string v4, "xs"

    const-string v6, "http://www.w3.org/2001/XMLSchema"

    invoke-direct {v3, v4, v6, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v2, v3

    .line 3657
    new-instance v3, Lgnu/xml/NamespaceBinding;

    const-string v4, "xsi"

    const-string v6, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-direct {v3, v4, v6, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v2, v3

    .line 3658
    new-instance v3, Lgnu/xml/NamespaceBinding;

    const-string v4, "fn"

    const-string v6, "http://www.w3.org/2005/xpath-functions"

    invoke-direct {v3, v4, v6, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v2, v3

    .line 3659
    new-instance v3, Lgnu/xml/NamespaceBinding;

    const-string v4, "html"

    const-string v6, "http://www.w3.org/1999/xhtml"

    invoke-direct {v3, v4, v6, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v2, v3

    .line 3660
    new-instance v3, Lgnu/xml/NamespaceBinding;

    const-string v4, "kawa"

    const-string v6, "http://kawa.gnu.org/"

    invoke-direct {v3, v4, v6, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v2, v3

    .line 3661
    new-instance v3, Lgnu/xml/NamespaceBinding;

    const-string v4, "qexo"

    const-string v6, "http://qexo.gnu.org/"

    invoke-direct {v3, v4, v6, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v2, v3

    .line 3662
    new-instance v3, Lgnu/xml/NamespaceBinding;

    const-string v4, "local"

    const-string v6, "http://www.w3.org/2005/xquery-local-functions"

    invoke-direct {v3, v4, v6, v2}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v2, v3

    .line 3663
    sput-object v2, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    .line 3721
    .end local v2    # "ns":Lgnu/xml/NamespaceBinding;
    new-instance v2, Lgnu/expr/PrimProcedure;

    const-string v3, "gnu.xquery.lang.XQuery"

    const-string v4, "getExternal"

    const/4 v6, 0x2

    invoke-direct {v2, v3, v4, v6}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    sput-object v2, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    .line 4275
    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    .line 4278
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const-string v3, "ancestor"

    aput-object v3, v2, v1

    .line 4279
    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const-string v2, "ancestor-or-self"

    aput-object v2, v1, v0

    .line 4280
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const-string v1, "attribute"

    aput-object v1, v0, v6

    .line 4281
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const-string v1, "child"

    aput-object v1, v0, v5

    .line 4282
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "descendant"

    aput-object v2, v0, v1

    .line 4283
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "descendant-or-self"

    aput-object v2, v0, v1

    .line 4284
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "following"

    aput-object v2, v0, v1

    .line 4285
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "following-sibling"

    aput-object v2, v0, v1

    .line 4286
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "namespace"

    aput-object v2, v0, v1

    .line 4287
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "parent"

    aput-object v2, v0, v1

    .line 4288
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "preceding"

    aput-object v2, v0, v1

    .line 4289
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "preceding-sibling"

    aput-object v2, v0, v1

    .line 4290
    sget-object v0, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "self"

    aput-object v2, v0, v1

    .line 4291
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V
    .locals 2
    .param p1, "port"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "interp"    # Lgnu/xquery/lang/XQuery;

    .line 1220
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 77
    const/16 v1, 0x4c

    iput-char v1, p0, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 80
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    .line 158
    const/4 v0, 0x3

    iput v0, p0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 166
    sget-object v0, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 3641
    const-string v0, ""

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->defaultElementNamespace:Ljava/lang/String;

    .line 3646
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1221
    iput-object p3, p0, Lgnu/xquery/lang/XQParser;->interpreter:Lgnu/xquery/lang/XQuery;

    .line 1222
    const/4 v0, 0x1

    iput v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 1225
    sget-object v0, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1226
    .local v0, "ns":Lgnu/xml/NamespaceBinding;
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1227
    return-void
.end method

.method public static booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 2442
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/expr/Expression;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2443
    .local v0, "args":[Lgnu/expr/Expression;
    const-string v1, "gnu.xquery.util.BooleanValue"

    const-string v2, "booleanValue"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 2445
    .local v1, "string":Lgnu/expr/Expression;
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, v1, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v2
.end method

.method static castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;
    .locals 5
    .param p0, "value"    # Lgnu/expr/Expression;
    .param p1, "element"    # Z

    .line 2552
    if-eqz p1, :cond_0

    sget-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameDecl:Lgnu/expr/Declaration;

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/xquery/lang/XQResolveNames;->xsQNameIgnoreDefaultDecl:Lgnu/expr/Declaration;

    .line 2554
    .local v0, "fdecl":Lgnu/expr/Declaration;
    :goto_0
    new-instance v1, Lgnu/expr/ApplyExp;

    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v0}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-direct {v1, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method static fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;
    .locals 1
    .param p0, "path"    # Lgnu/text/Path;

    .line 99
    invoke-virtual {p0}, Lgnu/text/Path;->getAbsolute()Lgnu/text/Path;

    move-result-object p0

    .line 100
    instance-of v0, p0, Lgnu/text/FilePath;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lgnu/text/Path;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->valueOf(Ljava/net/URI;)Lgnu/text/URIPath;

    move-result-object p0

    .line 102
    :cond_0
    return-object p0
.end method

.method private lookingAt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "word0"    # Ljava/lang/String;
    .param p2, "word1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 899
    return v1

    .line 900
    :cond_0
    const/4 v0, 0x0

    .line 901
    .local v0, "i":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 904
    .local v2, "len":I
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    .line 905
    .local v3, "ch":I
    if-ne v0, v2, :cond_3

    .line 907
    const/4 v4, 0x1

    if-gez v3, :cond_1

    .line 908
    return v4

    .line 909
    :cond_1
    int-to-char v5, v3

    invoke-static {v5}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 911
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 912
    return v4

    .line 914
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 915
    goto :goto_1

    .line 917
    :cond_3
    if-ltz v3, :cond_5

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .local v4, "i":I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_4

    .line 918
    move v0, v4

    goto :goto_1

    .line 919
    .end local v3    # "ch":I
    :cond_4
    move v0, v4

    goto :goto_0

    .line 920
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_5
    :goto_1
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    neg-int v4, v0

    invoke-virtual {v3, v4}, Lgnu/text/LineBufferedReader;->skip(I)I

    .line 921
    return v1
.end method

.method static makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2
    .param p0, "func"    # Lgnu/expr/Expression;
    .param p1, "exp1"    # Lgnu/expr/Expression;
    .param p2, "exp2"    # Lgnu/expr/Expression;

    .line 1277
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 1278
    .local v0, "args":[Lgnu/expr/Expression;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1279
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1280
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, p0, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1
.end method

.method static makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2
    .param p0, "exp1"    # Lgnu/expr/Expression;
    .param p1, "exp2"    # Lgnu/expr/Expression;

    .line 1285
    const-string v0, "gnu.kawa.functions.AppendValues"

    const-string v1, "appendValues"

    invoke-static {v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lgnu/xquery/lang/XQParser;->makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 4295
    invoke-static {p1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public static makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 4303
    new-instance v0, Lgnu/expr/ReferenceExp;

    invoke-static {p0, p1, p2}, Lgnu/expr/Declaration;->getDeclarationValueFromStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    return-object v0
.end method

.method static makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6
    .param p0, "attribute"    # Z
    .param p1, "qname"    # Lgnu/expr/Expression;
    .param p2, "tname"    # Lgnu/expr/Expression;

    .line 1434
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 1435
    .local v0, "name":[Lgnu/expr/Expression;
    if-eqz p0, :cond_0

    const-string v1, "gnu.kawa.xml.AttributeType"

    goto :goto_0

    :cond_0
    const-string v1, "gnu.kawa.xml.ElementType"

    :goto_0
    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 1438
    .local v1, "nodeType":Lgnu/bytecode/ClassType;
    new-instance v2, Lgnu/expr/ApplyExp;

    const-string v3, "make"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    new-array v4, v4, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v2, v3, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 1440
    .local v2, "elt":Lgnu/expr/ApplyExp;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1441
    if-nez p2, :cond_1

    .line 1442
    return-object v2

    .line 1446
    :cond_1
    new-instance v3, Lgnu/expr/BeginExp;

    invoke-direct {v3, p2, v2}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v3
.end method

.method private parseSimpleKindType()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1384
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1385
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    .line 1386
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    .line 1388
    :cond_0
    const-string v0, "expected \')\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 1389
    :goto_0
    return-void
.end method

.method private static final priority(I)I
    .locals 1
    .param p0, "opcode"    # I

    .line 1238
    packed-switch p0, :pswitch_data_0

    .line 1270
    const/4 v0, 0x0

    return v0

    .line 1268
    :pswitch_0
    const/16 v0, 0xc

    return v0

    .line 1266
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 1264
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 1262
    :pswitch_3
    const/16 v0, 0x9

    return v0

    .line 1260
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 1258
    :pswitch_5
    const/4 v0, 0x7

    return v0

    .line 1256
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 1254
    :pswitch_7
    const/4 v0, 0x5

    return v0

    .line 1252
    :pswitch_8
    const/4 v0, 0x4

    return v0

    .line 1250
    :pswitch_9
    const/4 v0, 0x3

    return v0

    .line 1243
    :pswitch_a
    const/4 v0, 0x2

    return v0

    .line 1241
    :pswitch_b
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private setToken(II)I
    .locals 1
    .param p1, "token"    # I
    .param p2, "width"    # I

    .line 485
    iput p1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 486
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 487
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, p2

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 488
    return p1
.end method

.method private warnOldStyleKindTest()V
    .locals 2

    .line 1453
    iget-boolean v0, p0, Lgnu/xquery/lang/XQParser;->warnedOldStyleKindTest:Z

    if-eqz v0, :cond_0

    .line 1454
    return-void

    .line 1455
    :cond_0
    const/16 v0, 0x77

    const-string v1, "old-style KindTest - first one here"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 1456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/xquery/lang/XQParser;->warnedOldStyleKindTest:Z

    .line 1457
    return-void
.end method


# virtual methods
.method public appendNamedEntity(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 742
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 743
    const/16 v0, 0x3f

    .line 744
    .local v0, "ch":C
    const-string v1, "lt"

    if-ne p1, v1, :cond_0

    .line 745
    const/16 v0, 0x3c

    goto :goto_0

    .line 746
    :cond_0
    const-string v1, "gt"

    if-ne p1, v1, :cond_1

    .line 747
    const/16 v0, 0x3e

    goto :goto_0

    .line 748
    :cond_1
    const-string v1, "amp"

    if-ne p1, v1, :cond_2

    .line 749
    const/16 v0, 0x26

    goto :goto_0

    .line 750
    :cond_2
    const-string v1, "quot"

    if-ne p1, v1, :cond_3

    .line 751
    const/16 v0, 0x22

    goto :goto_0

    .line 752
    :cond_3
    const-string v1, "apos"

    if-ne p1, v1, :cond_4

    .line 753
    const/16 v0, 0x27

    goto :goto_0

    .line 755
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown enity reference: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 756
    :goto_0
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 757
    return-void
.end method

.method checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "inConstructor"    # Z

    .line 1199
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1200
    .local v0, "xmlPrefix":Z
    const-string v1, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "XQST0070"

    const/16 v3, 0x65

    if-eqz v1, :cond_1

    .line 1202
    if-eqz v0, :cond_0

    if-nez p3, :cond_3

    .line 1203
    :cond_0
    const-string v1, "namespace uri cannot be the same as the prefined xml namespace"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :cond_1
    if-nez v0, :cond_2

    const-string v1, "xmlns"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1207
    :cond_2
    const-string v1, "namespace prefix cannot be \'xml\' or \'xmlns\'"

    invoke-virtual {p0, v3, v1, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 1209
    :cond_3
    :goto_0
    return-void
.end method

.method checkSeparator(C)V
    .locals 3
    .param p1, "ch"    # C

    .line 493
    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "missing separator"

    const-string v1, "XPST0003"

    const/16 v2, 0x65

    invoke-virtual {p0, v2, v0, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    return-void
.end method

.method public declError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4359
    iget-boolean v0, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eqz v0, :cond_0

    .line 4360
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4361
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 4364
    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_2

    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 4365
    goto :goto_1

    .line 4366
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    .line 4368
    :cond_2
    :goto_1
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public eofError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4410
    const-string v0, "XPST0003"

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQParser;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    .line 4411
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .locals 1
    .param p1, "severity"    # C
    .param p2, "message"    # Ljava/lang/String;

    .line 4353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4354
    return-void
.end method

.method public error(CLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "severity"    # C
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .line 4344
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .line 4345
    .local v0, "messages":Lgnu/text/SourceMessages;
    new-instance v7, Lgnu/text/SourceError;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    move-object v1, v7

    move v2, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 4347
    .local v1, "err":Lgnu/text/SourceError;
    iput-object p3, v1, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 4348
    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 4349
    return-void
.end method

.method public fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4415
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .line 4416
    .local v0, "messages":Lgnu/text/SourceMessages;
    new-instance v7, Lgnu/text/SourceError;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    const/16 v2, 0x66

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lgnu/text/SourceError;-><init>(CLjava/lang/String;IILjava/lang/String;)V

    .line 4418
    .local v1, "err":Lgnu/text/SourceError;
    iput-object p2, v1, Lgnu/text/SourceError;->code:Ljava/lang/String;

    .line 4419
    invoke-virtual {v0, v1}, Lgnu/text/SourceMessages;->error(Lgnu/text/SourceError;)V

    .line 4420
    new-instance v2, Lgnu/text/SyntaxException;

    invoke-direct {v2, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v2
.end method

.method getAxis()I
    .locals 5

    .line 927
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0xd

    .local v1, "i":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 930
    sget-object v2, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_0

    .line 931
    nop

    .line 932
    :cond_1
    if-ltz v1, :cond_2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 935
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown axis name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XPST0003"

    const/16 v4, 0x65

    invoke-virtual {p0, v4, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 936
    const/4 v1, 0x3

    .line 938
    :cond_3
    add-int/lit8 v2, v1, 0x64

    int-to-char v2, v2

    return v2
.end method

.method public getDelimited(Ljava/lang/String;)V
    .locals 2
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 736
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->readDelimited(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected end-of-file looking for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 738
    :cond_0
    return-void
.end method

.method getRawToken()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 503
    nop

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->readUnicodeChar()I

    move-result v0

    .line 504
    .local v0, "next":I
    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 505
    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v1

    return v1

    .line 506
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2d

    const/16 v3, 0xd

    if-ne v0, v3, :cond_2

    goto/16 :goto_e

    .line 511
    :cond_2
    const/16 v2, 0x28

    const/16 v3, 0x3a

    const/4 v4, 0x1

    if-ne v0, v2, :cond_5

    .line 513
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipComment()V

    goto :goto_0

    .line 515
    :cond_3
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 516
    const/16 v1, 0xc5

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v1

    return v1

    .line 518
    :cond_4
    invoke-direct {p0, v2, v4}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v1

    return v1

    .line 520
    :cond_5
    const/16 v2, 0x2d

    const/16 v5, 0x7b

    if-ne v0, v5, :cond_8

    .line 522
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-nez v1, :cond_6

    .line 523
    invoke-direct {p0, v5, v4}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v1

    return v1

    .line 524
    :cond_6
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 525
    if-eq v0, v2, :cond_7

    .line 528
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 529
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 530
    invoke-direct {p0, v5, v4}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v1

    return v1

    .line 532
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipOldComment()V

    goto :goto_0

    .line 534
    :cond_8
    const/16 v5, 0x20

    if-eq v0, v5, :cond_0

    const/16 v6, 0x9

    if-eq v0, v6, :cond_0

    .line 535
    nop

    .line 537
    iput v1, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 538
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v6

    add-int/2addr v6, v4

    iput v6, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 539
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v6}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v6

    iput v6, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 540
    int-to-char v6, v0

    .line 541
    .local v6, "ch":C
    const/16 v7, 0x3e

    const/16 v8, 0x3d

    sparse-switch v6, :sswitch_data_0

    const/4 v7, 0x0

    .line 610
    .local v7, "saveReadState":C
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    const/16 v10, 0x2e

    if-nez v9, :cond_1e

    if-ne v6, v10, :cond_13

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v9

    int-to-char v9, v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_13

    goto/16 :goto_5

    .line 553
    .end local v7    # "saveReadState":C
    :sswitch_0
    const/16 v6, 0x1a3

    .line 554
    goto/16 :goto_d

    .line 578
    :sswitch_1
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x197

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x19a

    goto :goto_1

    :cond_a
    const/16 v1, 0x195

    :goto_1
    move v6, v1

    .line 580
    goto/16 :goto_d

    .line 573
    :sswitch_2
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 574
    const/16 v6, 0x52

    .line 575
    :cond_b
    const/16 v6, 0x192

    .line 576
    goto/16 :goto_d

    .line 582
    :sswitch_3
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x196

    goto :goto_2

    :cond_c
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x19b

    goto :goto_2

    :cond_d
    const/16 v1, 0x194

    :goto_2
    move v6, v1

    .line 584
    goto/16 :goto_d

    .line 547
    :sswitch_4
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 548
    const/16 v6, 0x4c

    goto/16 :goto_d

    .line 549
    :cond_e
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 550
    const/16 v6, 0x58

    goto/16 :goto_d

    .line 569
    :sswitch_5
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 570
    const/16 v6, 0x44

    goto/16 :goto_d

    .line 562
    :sswitch_6
    const/16 v6, 0x19e

    .line 563
    goto/16 :goto_d

    .line 559
    :sswitch_7
    const/16 v6, 0x19d

    .line 560
    goto/16 :goto_d

    .line 556
    :sswitch_8
    const/16 v6, 0x19f

    .line 557
    goto/16 :goto_d

    .line 545
    :sswitch_9
    goto/16 :goto_d

    .line 586
    :sswitch_a
    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    .line 589
    .local v1, "saveReadState":C
    :goto_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->readUnicodeChar()I

    move-result v0

    .line 590
    if-gez v0, :cond_f

    .line 591
    const-string v2, "unexpected end-of-file in string starting here"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 592
    :cond_f
    const/16 v2, 0x26

    if-ne v0, v2, :cond_10

    .line 594
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseEntityOrCharRef()V

    .line 595
    goto :goto_3

    .line 597
    :cond_10
    if-ne v6, v0, :cond_12

    .line 599
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v0

    .line 600
    if-eq v6, v0, :cond_11

    .line 601
    nop

    .line 606
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 607
    const/16 v6, 0x22

    .line 608
    goto/16 :goto_d

    .line 602
    :cond_11
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 604
    :cond_12
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto :goto_3

    .line 565
    .end local v1    # "saveReadState":C
    :sswitch_b
    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 566
    const/16 v6, 0x193

    goto/16 :goto_d

    .line 668
    .restart local v7    # "saveReadState":C
    :cond_13
    if-ne v6, v10, :cond_14

    .line 670
    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 671
    const/16 v6, 0x33

    goto/16 :goto_d

    .line 674
    :cond_14
    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 678
    :cond_15
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 679
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 680
    int-to-char v6, v0

    .line 681
    invoke-static {v6}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 682
    nop

    .line 684
    if-gez v0, :cond_16

    .line 685
    const/16 v6, 0x41

    goto/16 :goto_d

    .line 688
    :cond_16
    if-eq v0, v3, :cond_17

    .line 689
    const/16 v1, 0x41

    move v6, v1

    .end local v6    # "ch":C
    .local v1, "ch":C
    goto :goto_4

    .line 692
    .end local v1    # "ch":C
    .restart local v6    # "ch":C
    :cond_17
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 693
    if-gez v0, :cond_18

    .line 694
    const-string v1, "unexpected end-of-file after NAME \':\'"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 695
    :cond_18
    int-to-char v1, v0

    .line 696
    .end local v6    # "ch":C
    .restart local v1    # "ch":C
    invoke-static {v1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 698
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 701
    :cond_19
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 702
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 703
    int-to-char v1, v0

    .line 704
    invoke-static {v1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 705
    nop

    .line 707
    const/16 v1, 0x51

    move v6, v1

    goto :goto_4

    .line 709
    :cond_1a
    if-ne v1, v8, :cond_1b

    .line 711
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 712
    const/16 v1, 0x41

    move v6, v1

    goto :goto_4

    .line 715
    :cond_1b
    const/16 v1, 0x43

    move v6, v1

    .line 717
    .end local v1    # "ch":C
    .restart local v6    # "ch":C
    :goto_4
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto/16 :goto_d

    .line 720
    :cond_1c
    const/16 v1, 0x27

    if-lt v6, v5, :cond_1d

    const/16 v2, 0x7f

    if-ge v6, v2, :cond_1d

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_d

    .line 723
    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid character \'\\u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto/16 :goto_d

    .line 613
    :cond_1e
    :goto_5
    if-ne v6, v10, :cond_1f

    const/4 v1, 0x1

    .line 616
    .local v1, "seenDot":Z
    :cond_1f
    :goto_6
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 617
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 618
    if-gez v0, :cond_20

    .line 619
    goto :goto_7

    .line 620
    :cond_20
    int-to-char v6, v0

    .line 621
    if-ne v6, v10, :cond_22

    .line 623
    if-eqz v1, :cond_21

    goto :goto_7

    .line 624
    :cond_21
    const/4 v1, 0x1

    goto :goto_6

    .line 626
    :cond_22
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 627
    nop

    .line 629
    :goto_7
    const/16 v3, 0x65

    if-eq v0, v3, :cond_26

    const/16 v4, 0x45

    if-ne v0, v4, :cond_23

    goto :goto_9

    .line 660
    :cond_23
    if-eqz v1, :cond_24

    const/16 v2, 0x31

    goto :goto_8

    :cond_24
    const/16 v2, 0x30

    .line 661
    .end local v6    # "ch":C
    .local v2, "ch":C
    :goto_8
    if-ltz v0, :cond_25

    .line 663
    int-to-char v3, v0

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->checkSeparator(C)V

    .line 664
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 667
    .end local v1    # "seenDot":Z
    :cond_25
    move v6, v2

    goto :goto_c

    .line 631
    .end local v2    # "ch":C
    .restart local v1    # "seenDot":Z
    .restart local v6    # "ch":C
    :cond_26
    :goto_9
    int-to-char v4, v0

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 632
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 633
    const/16 v4, 0x2b

    if-eq v0, v4, :cond_27

    if-ne v0, v2, :cond_28

    .line 635
    :cond_27
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 636
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 638
    :cond_28
    const/4 v2, 0x0

    .line 641
    .local v2, "expDigits":I
    :goto_a
    if-gez v0, :cond_29

    .line 642
    goto :goto_b

    .line 643
    :cond_29
    int-to-char v6, v0

    .line 644
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 646
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->checkSeparator(C)V

    .line 647
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 648
    nop

    .line 654
    :goto_b
    if-nez v2, :cond_2a

    .line 655
    const-string v4, "no digits following exponent"

    const-string v5, "XPST0003"

    invoke-virtual {p0, v3, v4, v5}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_2a
    const/16 v2, 0x32

    .line 657
    .end local v6    # "ch":C
    .local v2, "ch":C
    move v6, v2

    .line 667
    .end local v1    # "seenDot":Z
    .end local v2    # "ch":C
    .restart local v6    # "ch":C
    :goto_c
    nop

    .line 725
    .end local v7    # "saveReadState":C
    :cond_2b
    :goto_d
    iput v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 726
    return v6

    .line 650
    .restart local v1    # "seenDot":Z
    .local v2, "expDigits":I
    .restart local v7    # "saveReadState":C
    :cond_2c
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 651
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 508
    .end local v1    # "seenDot":Z
    .end local v2    # "expDigits":I
    .end local v6    # "ch":C
    .end local v7    # "saveReadState":C
    :cond_2d
    :goto_e
    iget v3, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-gtz v3, :cond_0

    .line 509
    invoke-direct {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->setToken(II)I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_b
        0x22 -> :sswitch_a
        0x24 -> :sswitch_9
        0x27 -> :sswitch_a
        0x29 -> :sswitch_9
        0x2a -> :sswitch_8
        0x2b -> :sswitch_7
        0x2c -> :sswitch_9
        0x2d -> :sswitch_6
        0x2f -> :sswitch_5
        0x3a -> :sswitch_4
        0x3b -> :sswitch_9
        0x3c -> :sswitch_3
        0x3d -> :sswitch_2
        0x3e -> :sswitch_1
        0x3f -> :sswitch_9
        0x40 -> :sswitch_9
        0x5b -> :sswitch_9
        0x5d -> :sswitch_9
        0x7c -> :sswitch_0
        0x7d -> :sswitch_9
    .end sparse-switch
.end method

.method public getStaticBaseUri()Ljava/lang/String;
    .locals 5

    .line 107
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    .line 108
    .local v0, "path":Lgnu/text/Path;
    if-nez v0, :cond_5

    .line 110
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 111
    .local v1, "env":Lgnu/mapping/Environment;
    const-string v2, ""

    const-string v3, "base-uri"

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 114
    instance-of v3, v2, Lgnu/text/Path;

    if-eqz v3, :cond_0

    .line 115
    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v0

    .line 121
    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v3

    move-object v4, v3

    .local v4, "port":Lgnu/text/LineBufferedReader;
    if-eqz v3, :cond_3

    .line 123
    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object v0

    .line 124
    instance-of v3, v0, Lgnu/text/FilePath;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lgnu/text/Path;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v4, Lgnu/mapping/TtyInPort;

    if-nez v3, :cond_2

    instance-of v3, v4, Lgnu/mapping/CharArrayInPort;

    if-eqz v3, :cond_3

    .line 128
    :cond_2
    const/4 v0, 0x0

    .line 131
    .end local v4    # "port":Lgnu/text/LineBufferedReader;
    :cond_3
    if-nez v0, :cond_4

    .line 132
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    .line 134
    :cond_4
    invoke-static {v0}, Lgnu/xquery/lang/XQParser;->fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    .line 135
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;

    .line 138
    .end local v1    # "env":Lgnu/mapping/Environment;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public handleOption(Lgnu/mapping/Symbol;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "value"    # Ljava/lang/String;

    .line 4273
    return-void
.end method

.method makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 5
    .param p1, "op"    # I
    .param p2, "exp1"    # Lgnu/expr/Expression;
    .param p3, "exp2"    # Lgnu/expr/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1294
    const-string v0, "gnu.kawa.xml.IntersectNodes"

    const-string v1, "gnu.kawa.xml.NodeCompare"

    const-string v2, "gnu.xquery.util.ArithOp"

    const-string v3, "gnu.xquery.util.Compare"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v4

    .line 1376
    .local v0, "func":Lgnu/expr/Expression;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unimplemented binary op: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_1
    move-object v0, v4

    .line 1330
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "valGe"

    const-string v2, "ge"

    invoke-static {v3, v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1331
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_2
    move-object v0, v4

    .line 1327
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "valGt"

    const-string v2, "gt"

    invoke-static {v3, v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1328
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_3
    move-object v0, v4

    .line 1324
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "valLe"

    const-string v2, "le"

    invoke-static {v3, v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1325
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_4
    move-object v0, v4

    .line 1321
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "valLt"

    const-string v2, "lt"

    invoke-static {v3, v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1322
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_5
    move-object v0, v4

    .line 1318
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "valNe"

    const-string v2, "ne"

    invoke-static {v3, v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1319
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_6
    move-object v0, v4

    .line 1315
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "valEq"

    const-string v2, "eq"

    invoke-static {v3, v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1316
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_7
    move-object v1, v4

    .line 1373
    .local v1, "func":Lgnu/expr/Expression;
    const-string v2, "exceptNodes"

    invoke-static {v0, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1374
    .end local v1    # "func":Lgnu/expr/Expression;
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_8
    move-object v1, v4

    .line 1369
    .restart local v1    # "func":Lgnu/expr/Expression;
    const-string v2, "intersectNodes"

    invoke-static {v0, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1371
    .end local v1    # "func":Lgnu/expr/Expression;
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_9
    move-object v0, v4

    .line 1366
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "gnu.kawa.xml.UnionNodes"

    const-string v2, "unionNodes"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1367
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_a
    move-object v0, v4

    .line 1312
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "mod"

    invoke-static {v2, v1, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1313
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_b
    move-object v0, v4

    .line 1309
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "idiv"

    invoke-static {v2, v1, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1310
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_c
    move-object v0, v4

    .line 1306
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "div"

    invoke-static {v2, v1, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1307
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_d
    move-object v0, v4

    .line 1303
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "mul"

    const-string v3, "*"

    invoke-static {v2, v1, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1304
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_e
    move-object v0, v4

    .line 1300
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "sub"

    const-string v3, "-"

    invoke-static {v2, v1, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1301
    goto/16 :goto_0

    .line 1297
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_f
    const-string v0, "add"

    const-string v1, "+"

    invoke-static {v2, v0, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1298
    .restart local v0    # "func":Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_10
    move-object v0, v4

    .line 1363
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "gnu.xquery.util.IntegerRange"

    const-string v2, "integerRange"

    invoke-static {v1, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1364
    goto/16 :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_11
    move-object v0, v4

    .line 1360
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v2, "$Ls"

    const-string v3, "<<"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1361
    goto :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_12
    move-object v0, v4

    .line 1357
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v2, "$Gr"

    const-string v3, ">>"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1358
    goto :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_13
    move-object v0, v4

    .line 1354
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v2, "$Ne"

    const-string v3, "isnot"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1355
    goto :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_14
    move-object v0, v4

    .line 1351
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v2, "$Eq"

    const-string v3, "is"

    invoke-static {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1352
    goto :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_15
    move-object v0, v4

    .line 1348
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, ">="

    invoke-static {v3, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1349
    goto :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_16
    move-object v0, v4

    .line 1342
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "<="

    invoke-static {v3, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1343
    goto :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_17
    move-object v0, v4

    .line 1345
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, ">"

    invoke-static {v3, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1346
    goto :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_18
    move-object v0, v4

    .line 1339
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "<"

    invoke-static {v3, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1340
    goto :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_19
    move-object v0, v4

    .line 1336
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "!="

    invoke-static {v3, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1337
    goto :goto_0

    .line 1294
    .end local v0    # "func":Lgnu/expr/Expression;
    :pswitch_1a
    move-object v0, v4

    .line 1333
    .restart local v0    # "func":Lgnu/expr/Expression;
    const-string v1, "="

    invoke-static {v3, v1}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1334
    nop

    .line 1378
    :goto_0
    invoke-static {v0, p2, p3}, Lgnu/xquery/lang/XQParser;->makeBinary(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x192
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public mark()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-super {p0}, Lgnu/text/Lexer;->mark()V

    .line 471
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    iput v0, p0, Lgnu/xquery/lang/XQParser;->saveToken:I

    .line 472
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->saveValue:Ljava/lang/Object;

    .line 473
    return-void
.end method

.method public match(Ljava/lang/String;)Z
    .locals 5
    .param p1, "word"    # Ljava/lang/String;

    .line 3159
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x41

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 3160
    return v2

    .line 3161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3162
    .local v0, "len":I
    iget v1, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-eq v1, v0, :cond_1

    .line 3163
    return v2

    .line 3164
    :cond_1
    move v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 3166
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3167
    .local v3, "cs":C
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v4, v4, v1

    .line 3168
    .local v4, "cb":C
    if-eq v3, v4, :cond_2

    .line 3169
    return v2

    .line 3170
    .end local v3    # "cs":C
    .end local v4    # "cb":C
    :cond_2
    goto :goto_0

    .line 3171
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "word1"    # Ljava/lang/String;
    .param p2, "word2"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 762
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->mark()V

    .line 765
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 766
    invoke-virtual {p0, p2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 768
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->reset()V

    .line 769
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 770
    return v1

    .line 772
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->reset()V

    .line 773
    if-eqz p3, :cond_1

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' must be followed by \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XPST0003"

    const/16 v3, 0x65

    invoke-virtual {p0, v3, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 777
    return v1

    .line 780
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public maybeSetLine(Lgnu/expr/Declaration;II)V
    .locals 1
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "line"    # I
    .param p3, "column"    # I

    .line 4442
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4443
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4445
    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->setFile(Ljava/lang/String;)V

    .line 4446
    invoke-virtual {p1, p2, p3}, Lgnu/expr/Declaration;->setLine(II)V

    .line 4448
    :cond_0
    return-void
.end method

.method public maybeSetLine(Lgnu/expr/Expression;II)V
    .locals 2
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "line"    # I
    .param p3, "column"    # I

    .line 4431
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4432
    .local v0, "file":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    instance-of v1, p1, Lgnu/expr/QuoteExp;

    if-nez v1, :cond_0

    .line 4435
    invoke-virtual {p1, v0}, Lgnu/expr/Expression;->setFile(Ljava/lang/String;)V

    .line 4436
    invoke-virtual {p1, p2, p3}, Lgnu/expr/Expression;->setLine(II)V

    .line 4438
    :cond_0
    return-void
.end method

.method protected namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "function"    # Z

    .line 3668
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3669
    .local v0, "colon":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "(functions)"

    goto :goto_0

    :cond_1
    sget-object v1, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 3672
    .local v1, "prefix":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->constructorNamespaces:Lgnu/xml/NamespaceBinding;

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-static {v1, v2, v3}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v2

    .line 3675
    .local v2, "uri":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 3677
    if-gez v0, :cond_2

    .line 3678
    const-string v2, ""

    goto :goto_1

    .line 3679
    :cond_2
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v3}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3683
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3684
    .local v3, "cl":Ljava/lang/Class;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "class:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 3689
    .end local v3    # "cl":Ljava/lang/Class;
    goto :goto_1

    .line 3686
    :catch_0
    move-exception v3

    .line 3688
    .local v3, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 3691
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 3693
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown namespace prefix \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "XPST0081"

    const/16 v6, 0x65

    invoke-virtual {v3, v6, v4, v5}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3696
    const-string v2, "(unknown namespace)"

    .line 3699
    :cond_4
    if-gez v0, :cond_5

    move-object v3, p1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3700
    .local v3, "local":Ljava/lang/String;
    :goto_2
    invoke-static {v2, v3, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    return-object v4
.end method

.method public parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3730
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iput-object v8, v1, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    .line 3731
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v0

    .line 3732
    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 3733
    return-object v2

    .line 3734
    :cond_0
    iget v3, v1, Lgnu/xquery/lang/XQParser;->parseCount:I

    const/4 v9, 0x1

    add-int/2addr v3, v9

    iput v3, v1, Lgnu/xquery/lang/XQParser;->parseCount:I

    .line 3735
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 3736
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v3

    add-int/2addr v3, v9

    .line 3737
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v4

    add-int/2addr v4, v9

    .line 3740
    const/16 v5, 0x23

    const/16 v6, 0xa

    if-ne v0, v5, :cond_3

    if-ne v3, v9, :cond_3

    if-ne v4, v9, :cond_3

    .line 3742
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    .line 3743
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    const/16 v5, 0x21

    if-ne v0, v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    const/16 v5, 0x2f

    if-eq v0, v5, :cond_2

    .line 3744
    :cond_1
    const-string v5, "\'#\' is only allowed in initial \'#!/PROGRAM\'"

    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3745
    :cond_2
    :goto_0
    const/16 v5, 0xd

    if-eq v0, v5, :cond_3

    if-eq v0, v6, :cond_3

    if-ltz v0, :cond_3

    .line 3746
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    goto :goto_0

    .line 3749
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    .line 3750
    return-object v2

    .line 3751
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    .line 3753
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x77

    const-string v10, "namespace"

    const/16 v11, 0x41

    if-ne v0, v11, :cond_6

    iget-object v0, v1, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3756
    sget-boolean v0, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v0, :cond_5

    .line 3757
    const-string v0, "use \'declare namespace\' instead of \'namespace\'"

    invoke-virtual {v1, v7, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3758
    :cond_5
    const/16 v0, 0x4e

    iput v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3766
    :cond_6
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const-string v12, "missing \'=\' in namespace declaration"

    const-string v13, "XQST0088"

    const-string v14, "missing namespace prefix"

    const-string v15, "missing uri in namespace declaration"

    const-string v2, "strip"

    const-string v6, "preserve"

    const/16 v11, 0x22

    const/16 v5, 0x65

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 4261
    const/16 v15, 0x65

    const/4 v0, -0x1

    invoke-virtual {v1, v0, v9}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v0

    .line 4262
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0xa

    if-ne v2, v5, :cond_64

    .line 4263
    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto/16 :goto_24

    .line 4172
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4173
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x51

    if-eq v0, v2, :cond_7

    .line 4174
    const-string v0, "expected QName after \'declare option\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1

    .line 4177
    :cond_7
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v2, v7, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4178
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    iget-object v3, v1, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v5, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v2, v3, v4, v5}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 4179
    invoke-virtual {v1, v0, v7}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 4180
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4181
    iget v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v3, v11, :cond_8

    .line 4182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected string literal after \'declare option "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1

    .line 4185
    :cond_8
    new-instance v0, Ljava/lang/String;

    iget-object v3, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v3, v7, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2, v0}, Lgnu/xquery/lang/XQParser;->handleOption(Lgnu/mapping/Symbol;Ljava/lang/String;)V

    .line 4187
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4188
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    .line 4189
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4206
    :sswitch_1
    iget v0, v1, Lgnu/xquery/lang/XQParser;->parseCount:I

    if-eq v0, v9, :cond_9

    .line 4207
    const-string v0, "\'xquery version\' does not start module"

    invoke-virtual {v1, v5, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_2

    .line 4208
    :cond_9
    iget v0, v1, Lgnu/xquery/lang/XQParser;->commentCount:I

    if-lez v0, :cond_a

    .line 4209
    const-string v0, "comments should not precede \'xquery version\'"

    const/16 v2, 0x77

    invoke-virtual {v1, v2, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4210
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4211
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v0, v11, :cond_16

    .line 4213
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v2, v7, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4214
    const-string v2, "1.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 4215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unrecognized xquery version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XQST0031"

    invoke-virtual {v1, v5, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4216
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4217
    nop

    .line 4220
    const-string v0, "encoding"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4222
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4223
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, v11, :cond_c

    .line 4224
    const-string v0, "invalid encoding specification"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4227
    :cond_c
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v2, v7, v3}, Ljava/lang/String;-><init>([CII)V

    .line 4228
    iget v0, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 4229
    if-nez v0, :cond_d

    const/4 v7, 0x1

    .line 4230
    :cond_d
    :goto_3
    const/4 v2, -0x1

    add-int/2addr v0, v2

    if-ltz v0, :cond_12

    if-nez v7, :cond_12

    .line 4232
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v2, v2, v0

    .line 4233
    const/16 v3, 0x41

    if-lt v2, v3, :cond_e

    const/16 v3, 0x5a

    if-le v2, v3, :cond_d

    :cond_e
    const/16 v3, 0x61

    if-lt v2, v3, :cond_f

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_f

    .line 4234
    goto :goto_3

    .line 4235
    :cond_f
    if-eqz v0, :cond_11

    const/16 v3, 0x30

    if-lt v2, v3, :cond_10

    const/16 v3, 0x39

    if-le v2, v3, :cond_d

    :cond_10
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_d

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_d

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_d

    .line 4238
    :cond_11
    const/4 v7, 0x1

    goto :goto_3

    .line 4240
    :cond_12
    if-eqz v7, :cond_13

    .line 4241
    const-string v0, "invalid encoding name syntax"

    const-string v2, "XQST0087"

    invoke-virtual {v1, v5, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4243
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4246
    :cond_14
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_15

    .line 4247
    const-string v0, "missing \';\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4248
    :cond_15
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4219
    :cond_16
    const-string v0, "missing version string after \'xquery version\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3769
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    add-int/2addr v0, v9

    .line 3770
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v9

    .line 3771
    const-string v3, "unexpected end-of-file after \'define QName\'"

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    move-result v3

    .line 3772
    const/16 v4, 0x28

    if-ne v3, v4, :cond_17

    .line 3774
    const-string v3, "\'missing \'function\' after \'define\'"

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3775
    const/16 v3, 0x41

    iput v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3776
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->parseFunctionDefinition(II)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3779
    :cond_17
    const-string v0, "missing keyword after \'define\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3795
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3796
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v0

    .line 3797
    if-nez v0, :cond_18

    .line 3798
    const-string v0, "missing Variable"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3799
    :cond_18
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    .line 3800
    instance-of v6, v2, Ljava/lang/String;

    if-eqz v6, :cond_19

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v6

    iget-object v10, v1, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v10}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v10

    iget v11, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v12, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v6, v10, v11, v12}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 3803
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v7}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->setSymbol(Ljava/lang/Object;)V

    .line 3805
    :cond_19
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 3807
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/Symbol;

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 3808
    iget-object v6, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eq v2, v6, :cond_1b

    const-string v6, "http://www.w3.org/2005/xquery-local-functions"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 3810
    :cond_1a
    const-string v2, "variable not in namespace of library module"

    const-string v6, "XQST0048"

    invoke-virtual {v1, v5, v2, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3813
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3814
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3815
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v2

    .line 3816
    invoke-virtual {v0, v9}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 3818
    const-wide/16 v5, 0x4000

    invoke-virtual {v0, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3819
    nop

    .line 3820
    nop

    .line 3821
    iget v5, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x192

    if-eq v5, v6, :cond_1d

    iget v5, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_1c

    goto :goto_4

    :cond_1c
    const/4 v5, 0x0

    goto :goto_5

    .line 3823
    :cond_1d
    :goto_4
    iget v5, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x192

    if-ne v5, v6, :cond_1e

    .line 3824
    const-string v5, "declare variable contains \'=\' instead of \':=\'"

    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3825
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3826
    const/4 v5, 0x1

    .line 3828
    :goto_5
    iget v6, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v8, 0x7b

    if-ne v6, v8, :cond_1f

    .line 3830
    const-string v5, "obsolete \'{\' in variable declaration"

    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 3831
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v5

    .line 3832
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    goto :goto_9

    .line 3834
    :cond_1f
    const-string v6, "external"

    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 3836
    const/4 v5, 0x2

    new-array v5, v5, [Lgnu/expr/Expression;

    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v6, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v6, v7}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v6

    aput-object v6, v5, v7

    if-nez v2, :cond_20

    sget-object v6, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    goto :goto_6

    :cond_20
    move-object v6, v2

    :goto_6
    aput-object v6, v5, v9

    .line 3841
    new-instance v6, Lgnu/expr/ApplyExp;

    sget-object v7, Lgnu/xquery/lang/XQParser;->getExternalFunction:Lgnu/expr/QuoteExp;

    invoke-direct {v6, v7, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3842
    iget v5, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v7, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v1, v6, v5, v7}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3843
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3844
    move-object v5, v6

    goto :goto_9

    .line 3847
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v6

    .line 3848
    nop

    .line 3849
    if-eqz v5, :cond_23

    if-nez v6, :cond_22

    goto :goto_7

    :cond_22
    const/16 v16, 0x0

    goto :goto_8

    .line 3850
    :cond_23
    :goto_7
    const-string v5, "expected \':= init\' or \'external\'"

    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    move-object/from16 v16, v5

    .line 3851
    :goto_8
    if-nez v6, :cond_24

    .line 3852
    move-object/from16 v5, v16

    goto :goto_9

    .line 3851
    :cond_24
    move-object v5, v6

    .line 3854
    :goto_9
    if-eqz v2, :cond_25

    .line 3855
    invoke-static {v5, v2}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    .line 3856
    :cond_25
    invoke-virtual {v0, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3857
    invoke-static {v0, v5}, Lgnu/expr/SetExp;->makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;

    move-result-object v0

    .line 3858
    invoke-virtual {v1, v0, v3, v4}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3859
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    .line 3860
    return-object v0

    .line 4192
    :sswitch_4
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->orderingModeSeen:Z

    if-eqz v0, :cond_26

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_26

    .line 4193
    const-string v0, "duplicate \'declare ordering\' seen"

    const-string v2, "XQST0065"

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4194
    :cond_26
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->orderingModeSeen:Z

    .line 4195
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4196
    const-string v0, "ordered"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4197
    iput-boolean v7, v1, Lgnu/xquery/lang/XQParser;->orderingModeUnordered:Z

    goto :goto_a

    .line 4198
    :cond_27
    const-string v0, "unordered"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4199
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->orderingModeUnordered:Z

    .line 4202
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4203
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4201
    :cond_28
    const-string v0, "ordering declaration must be ordered or unordered"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4091
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4092
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x192

    if-ne v0, v3, :cond_29

    .line 4094
    const-string v0, "obsolate \'=\' in boundary-space declaration"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4095
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4097
    :cond_29
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->boundarySpaceDeclarationSeen:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_2a

    .line 4098
    const-string v0, "duplicate \'declare boundary-space\' seen"

    const-string v3, "XQST0068"

    invoke-virtual {v1, v0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4099
    :cond_2a
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->boundarySpaceDeclarationSeen:Z

    .line 4100
    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4101
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    goto :goto_b

    .line 4102
    :cond_2b
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4103
    iput-boolean v7, v1, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    goto :goto_b

    .line 4104
    :cond_2c
    const-string v0, "skip"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4106
    const-string v0, "update: declare boundary-space skip -> strip"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4107
    iput-boolean v7, v1, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    .line 4111
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4112
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4110
    :cond_2d
    const-string v0, "boundary-space declaration must be preserve or strip"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3782
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    add-int/2addr v0, v9

    .line 3783
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v9

    .line 3784
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3785
    const-string v5, "unexpected end-of-file after \'define function\'"

    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3786
    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v5

    .line 3787
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->parseFunctionDefinition(II)Lgnu/expr/Expression;

    move-result-object v0

    .line 3788
    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3789
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 3790
    invoke-virtual {v1, v0, v3, v4}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3791
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    .line 3792
    return-object v0

    .line 3864
    :sswitch_7
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3865
    const/16 v2, 0x4d

    if-ne v0, v2, :cond_2e

    iget-object v6, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v6, :cond_2e

    .line 3867
    const-string v6, "duplicate module declaration"

    invoke-virtual {v1, v5, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_c

    .line 3868
    :cond_2e
    iget-boolean v6, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    if-eqz v6, :cond_2f

    iget-boolean v6, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v6, :cond_2f

    .line 3869
    const-string v6, "namespace declared after function/variable/option"

    invoke-virtual {v1, v5, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3870
    :cond_2f
    :goto_c
    iget v6, v1, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v6, :cond_30

    const/4 v6, 0x1

    goto :goto_d

    :cond_30
    const/4 v6, 0x0

    :goto_d
    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v6

    .line 3871
    if-ltz v6, :cond_38

    .line 3873
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 3874
    int-to-char v6, v6

    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 3876
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3877
    iget v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x41

    if-eq v3, v4, :cond_31

    .line 3878
    invoke-virtual {v1, v14}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3879
    :cond_31
    new-instance v3, Ljava/lang/String;

    iget-object v4, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v6, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v7, v6}, Ljava/lang/String;-><init>([CII)V

    .line 3880
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3881
    iget v4, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x192

    if-eq v4, v6, :cond_32

    .line 3882
    invoke-virtual {v1, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3883
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3884
    iget v4, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v4, v11, :cond_33

    .line 3885
    invoke-virtual {v1, v15}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3886
    :cond_33
    new-instance v4, Ljava/lang/String;

    iget-object v6, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v9, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, v6, v7, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 3887
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 3888
    iget-object v6, v1, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    .line 3889
    :goto_e
    sget-object v9, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    if-eq v6, v9, :cond_35

    .line 3892
    invoke-virtual {v6}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v9

    if-ne v9, v3, :cond_34

    .line 3894
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "duplicate declarations for the same namespace prefix \'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "XQST0033"

    invoke-virtual {v1, v5, v6, v9}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3898
    goto :goto_f

    .line 3890
    :cond_34
    invoke-virtual {v6}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v6

    goto :goto_e

    .line 3901
    :cond_35
    :goto_f
    invoke-virtual {v1, v3, v4}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    invoke-virtual {v1, v3, v4, v7}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3903
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 3904
    if-ne v0, v2, :cond_37

    .line 3906
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 3907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/xquery/lang/XQuery;->makeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3909
    invoke-virtual {v0, v2}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 3910
    new-instance v3, Lgnu/bytecode/ClassType;

    invoke-direct {v3, v2}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    iput-object v3, v8, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 3911
    iget-object v2, v8, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 3912
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v2

    .line 3913
    invoke-virtual {v2, v8}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    .line 3914
    invoke-virtual {v2, v4}, Lgnu/expr/ModuleInfo;->setNamespaceUri(Ljava/lang/String;)V

    .line 3915
    iget-object v2, v8, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 3916
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_36

    .line 3917
    const-string v0, "zero-length module namespace"

    invoke-virtual {v1, v0, v13}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3918
    :cond_36
    iput-object v4, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    .line 3920
    :cond_37
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 3925
    :cond_38
    :sswitch_8
    const-string v0, "\'import schema\' not implemented"

    const-string v2, "XQST0009"

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 4129
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4130
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesDeclarationSeen:Z

    if-eqz v0, :cond_39

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_39

    .line 4131
    const-string v0, "duplicate \'declare copy-namespaces\' seen"

    const-string v2, "XQST0055"

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4132
    :cond_39
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesDeclarationSeen:Z

    .line 4133
    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4134
    iget v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    or-int/2addr v0, v9

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    goto :goto_10

    .line 4135
    :cond_3a
    const-string v0, "no-preserve"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4136
    iget v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 4139
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4140
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_3b

    .line 4141
    const-string v0, "missing \',\' in copy-namespaces declaration"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4142
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4143
    const-string v0, "inherit"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 4144
    iget v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    goto :goto_11

    .line 4145
    :cond_3c
    const-string v0, "no-inherit"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4146
    iget v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    .line 4149
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4150
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4148
    :cond_3d
    const-string v0, "expected \'inherit\' or \'no-inherit\' in copy-namespaces declaration"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4138
    :cond_3e
    const-string v0, "expected \'preserve\' or \'no-preserve\' after \'declare copy-namespaces\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4115
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4116
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->constructionModeDeclarationSeen:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_3f

    .line 4117
    const-string v0, "duplicate \'declare construction\' seen"

    const-string v3, "XQST0067"

    invoke-virtual {v1, v0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4118
    :cond_3f
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->constructionModeDeclarationSeen:Z

    .line 4119
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4120
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->constructionModeStrip:Z

    goto :goto_12

    .line 4121
    :cond_40
    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 4122
    iput-boolean v7, v1, Lgnu/xquery/lang/XQParser;->constructionModeStrip:Z

    .line 4125
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4126
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4124
    :cond_41
    const-string v0, "construction declaration must be strip or preserve"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3928
    :goto_13
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3929
    nop

    .line 3930
    invoke-virtual {v1, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3932
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3933
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x41

    if-eq v0, v2, :cond_42

    .line 3934
    invoke-virtual {v1, v14}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3935
    :cond_42
    new-instance v2, Ljava/lang/String;

    iget-object v0, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v6, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v0, v7, v6}, Ljava/lang/String;-><init>([CII)V

    .line 3936
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3937
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x192

    if-eq v0, v6, :cond_43

    .line 3938
    invoke-virtual {v1, v12}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3939
    :cond_43
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_14

    .line 3930
    :cond_44
    const/4 v2, 0x0

    .line 3941
    :goto_14
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, v11, :cond_45

    .line 3942
    invoke-virtual {v1, v15}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3943
    :cond_45
    iget v0, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-nez v0, :cond_46

    .line 3944
    const-string v0, "zero-length target namespace"

    invoke-virtual {v1, v0, v13}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3945
    :cond_46
    new-instance v0, Ljava/lang/String;

    iget-object v6, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v10, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v6, v7, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 3946
    if-eqz v2, :cond_47

    .line 3948
    invoke-virtual {v1, v2, v10, v7}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3949
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v10}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    :cond_47
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3953
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lgnu/expr/ModuleManager;->find(Lgnu/expr/Compilation;)Lgnu/expr/ModuleInfo;

    .line 3956
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v12

    .line 3957
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 3958
    invoke-static {v10}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3959
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2, v3, v4}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    .line 3960
    const-string v2, "at"

    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3964
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3965
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, v11, :cond_48

    .line 3966
    const-string v0, "missing module location"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3967
    :cond_48
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v2, v7, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v14, 0x2e

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lgnu/xquery/lang/XQuery;->makeClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3971
    invoke-static {v0, v12}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v3

    .line 3972
    if-nez v3, :cond_49

    .line 3973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "malformed URL: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 3974
    :cond_49
    const/4 v4, 0x0

    const/16 v15, 0x65

    move-object v5, v13

    move-object v6, v12

    const/4 v14, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 3976
    iget v0, v1, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v0, :cond_4a

    const/4 v7, 0x1

    goto :goto_16

    :cond_4a
    const/4 v7, 0x0

    :goto_16
    invoke-virtual {v1, v7}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v0

    .line 3977
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_4b

    .line 3979
    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 3980
    nop

    .line 3983
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    goto :goto_1a

    .line 3982
    :cond_4b
    const/16 v5, 0x65

    const/4 v7, 0x0

    goto :goto_15

    .line 3987
    :cond_4c
    const/4 v14, 0x0

    const/16 v15, 0x65

    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v11

    .line 3988
    nop

    .line 3991
    :try_start_0
    invoke-virtual {v11, v0}, Lgnu/expr/ModuleManager;->loadPackageInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4001
    :goto_17
    goto :goto_18

    .line 3998
    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 4000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading map for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_18

    .line 3993
    :catch_0
    move-exception v0

    goto :goto_17

    .line 4002
    :goto_18
    const/4 v7, 0x0

    .line 4004
    :goto_19
    invoke-virtual {v11, v14}, Lgnu/expr/ModuleManager;->getModule(I)Lgnu/expr/ModuleInfo;

    move-result-object v3

    .line 4005
    if-nez v3, :cond_50

    .line 4006
    nop

    .line 4012
    if-nez v7, :cond_4d

    .line 4013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no module found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4014
    :cond_4d
    nop

    .line 4015
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_4e

    .line 4016
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4018
    :cond_4e
    :goto_1a
    iget-object v0, v8, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    if-eqz v0, :cond_4f

    iget-object v0, v8, Lgnu/expr/Compilation;->pendingImports:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_4f

    .line 4020
    const-string v0, "module import forms a cycle"

    const-string v2, "XQST0073"

    invoke-virtual {v1, v15, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4022
    :cond_4f
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 4023
    invoke-virtual {v13, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4024
    invoke-static {v0}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4007
    :cond_50
    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->getNamespaceUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 4008
    goto :goto_1b

    .line 4009
    :cond_51
    add-int/lit8 v0, v7, 0x1

    .line 4010
    invoke-virtual {v3}, Lgnu/expr/ModuleInfo;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v13

    move-object v6, v12

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move v7, v0

    .line 4002
    :goto_1b
    add-int/lit8 v14, v14, 0x1

    goto :goto_19

    .line 4153
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4154
    const-string v0, "empty"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    .line 4155
    iget-boolean v2, v1, Lgnu/xquery/lang/XQParser;->emptyOrderDeclarationSeen:Z

    if-eqz v2, :cond_52

    iget-boolean v2, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v2, :cond_52

    .line 4156
    const-string v2, "duplicate \'declare default empty order\' seen"

    const-string v3, "XQST0069"

    invoke-virtual {v1, v2, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4157
    :cond_52
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->emptyOrderDeclarationSeen:Z

    .line 4158
    const-string v2, "expected \'empty greatest\' or \'empty least\'"

    if-eqz v0, :cond_53

    .line 4159
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_1c

    .line 4161
    :cond_53
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4162
    :goto_1c
    const-string v0, "greatest"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 4163
    const/16 v0, 0x47

    iput-char v0, v1, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    goto :goto_1d

    .line 4164
    :cond_54
    const-string v0, "least"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 4165
    const/16 v0, 0x4c

    iput-char v0, v1, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 4168
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4169
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4167
    :cond_55
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4027
    :sswitch_d
    const/16 v15, 0x65

    iget-object v0, v1, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    const-string v2, "XQST0038"

    if-eqz v0, :cond_56

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_56

    .line 4028
    const-string v0, "duplicate default collation declaration"

    invoke-virtual {v1, v15, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4029
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v0

    .line 4030
    instance-of v3, v0, Lgnu/expr/Expression;

    if-eqz v3, :cond_57

    .line 4031
    check-cast v0, Lgnu/expr/Expression;

    return-object v0

    .line 4032
    :cond_57
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 4035
    :try_start_1
    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4036
    invoke-static {v3}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v0

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4042
    goto :goto_1e

    .line 4038
    :catch_1
    move-exception v0

    .line 4040
    sget-object v0, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    iput-object v0, v1, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 4041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown collation \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v15, v0, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4043
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4044
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4048
    :sswitch_e
    const/4 v14, 0x0

    const/16 v15, 0x65

    iget v0, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_58

    const/4 v7, 0x1

    goto :goto_1f

    :cond_58
    const/4 v7, 0x0

    .line 4049
    :goto_1f
    if-eqz v7, :cond_59

    const-string v0, "(functions)"

    goto :goto_20

    :cond_59
    sget-object v0, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 4051
    :goto_20
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    sget-object v3, Lgnu/xquery/lang/XQParser;->builtinNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v2, v0, v3}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 4052
    const-string v2, "duplicate default namespace declaration"

    const-string v3, "XQST0066"

    invoke-virtual {v1, v15, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .line 4055
    :cond_5a
    iget-boolean v2, v1, Lgnu/xquery/lang/XQParser;->seenDeclaration:Z

    if-eqz v2, :cond_5b

    iget-boolean v2, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v2, :cond_5b

    .line 4056
    const-string v2, "default namespace declared after function/variable/option"

    invoke-virtual {v1, v15, v2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4057
    :cond_5b
    :goto_21
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4058
    invoke-virtual {v1, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 4059
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_22

    .line 4062
    :cond_5c
    nop

    .line 4063
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const-string v3, "expected \'namespace\' keyword"

    if-eq v2, v11, :cond_5d

    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x192

    if-eq v2, v4, :cond_5d

    .line 4064
    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4066
    :cond_5d
    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4068
    :goto_22
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x192

    if-eq v2, v3, :cond_5e

    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x4c

    if-ne v2, v3, :cond_5f

    .line 4070
    :cond_5e
    const-string v2, "extra \'=\' in default namespace declaration"

    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 4071
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 4073
    :cond_5f
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v11, :cond_60

    .line 4074
    const-string v0, "missing namespace uri"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 4075
    :cond_60
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v14, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 4076
    if-eqz v7, :cond_61

    .line 4078
    new-array v3, v9, [Lgnu/mapping/Namespace;

    iput-object v3, v1, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 4079
    iget-object v3, v1, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    invoke-static {v2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v4

    aput-object v4, v3, v14

    goto :goto_23

    .line 4083
    :cond_61
    iput-object v2, v1, Lgnu/xquery/lang/XQParser;->defaultElementNamespace:Ljava/lang/String;

    .line 4085
    :goto_23
    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->pushNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 4086
    invoke-virtual {v1, v0, v2, v14}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4087
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4088
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4251
    :sswitch_f
    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->baseURIDeclarationSeen:Z

    if-eqz v0, :cond_62

    iget-boolean v0, v1, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-nez v0, :cond_62

    .line 4252
    const-string v0, "duplicate \'declare base-uri\' seen"

    const-string v2, "XQST0032"

    invoke-virtual {v1, v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    .line 4253
    :cond_62
    iput-boolean v9, v1, Lgnu/xquery/lang/XQParser;->baseURIDeclarationSeen:Z

    .line 4254
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v0

    .line 4255
    instance-of v2, v0, Lgnu/expr/Expression;

    if-eqz v2, :cond_63

    .line 4256
    check-cast v0, Lgnu/expr/Expression;

    return-object v0

    .line 4257
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseSeparator()V

    .line 4258
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->setStaticBaseUri(Ljava/lang/String;)V

    .line 4259
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 4264
    :cond_64
    :goto_24
    invoke-virtual {v1, v0, v3, v4}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 4265
    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v2, :cond_65

    .line 4266
    const-string v2, "query body in a library module"

    const-string v3, "XPST0003"

    invoke-virtual {v1, v15, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4267
    :cond_65
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_f
        0x45 -> :sswitch_e
        0x47 -> :sswitch_d
        0x48 -> :sswitch_c
        0x49 -> :sswitch_b
        0x4b -> :sswitch_a
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x4e -> :sswitch_7
        0x4f -> :sswitch_e
        0x50 -> :sswitch_6
        0x53 -> :sswitch_5
        0x54 -> :sswitch_8
        0x55 -> :sswitch_4
        0x56 -> :sswitch_3
        0x57 -> :sswitch_2
        0x59 -> :sswitch_1
        0x6f -> :sswitch_0
    .end sparse-switch
.end method

.method parseBinaryExpr(I)Lgnu/expr/Expression;
    .locals 12
    .param p1, "prio"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1673
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseUnaryExpr()Lgnu/expr/Expression;

    move-result-object v0

    .local v0, "exp":Lgnu/expr/Expression;
    const/4 v1, 0x0

    .line 1676
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v2

    .line 1677
    .local v2, "token":I
    const/16 v3, 0xa

    if-eq v2, v3, :cond_8

    const/16 v3, 0x194

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 1681
    :cond_0
    invoke-static {v2}, Lgnu/xquery/lang/XQParser;->priority(I)I

    move-result v3

    .line 1682
    .local v3, "tokPriority":I
    if-ge v3, p1, :cond_1

    .line 1683
    return-object v0

    .line 1684
    :cond_1
    const/16 v4, 0x25

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v4

    .line 1685
    .local v4, "saveReadState":C
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1686
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 1687
    const-string v5, "instanceOf"

    const/4 v6, 0x2

    const/16 v7, 0x1a6

    const-string v8, "gnu.xquery.lang.XQParser"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lt v2, v7, :cond_4

    const/16 v11, 0x1a9

    if-gt v2, v11, :cond_4

    .line 1689
    if-eq v2, v11, :cond_2

    const/16 v7, 0x1a8

    if-ne v2, v7, :cond_3

    .line 1690
    :cond_2
    const/16 v7, 0x43

    iput v7, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    .line 1691
    :cond_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v7

    .line 1692
    .local v7, "type":Lgnu/expr/Expression;
    iput v9, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    .line 1693
    new-array v6, v6, [Lgnu/expr/Expression;

    .line 1695
    .local v6, "args":[Lgnu/expr/Expression;
    packed-switch v2, :pswitch_data_0

    .line 1715
    .local v1, "func":Lgnu/expr/Expression;
    aput-object v7, v6, v9

    .line 1716
    aput-object v0, v6, v10

    .line 1717
    new-instance v5, Lgnu/expr/ReferenceExp;

    sget-object v8, Lgnu/xquery/lang/XQResolveNames;->castAsDecl:Lgnu/expr/Declaration;

    invoke-direct {v5, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v1, v5

    goto :goto_1

    .line 1704
    :pswitch_0
    aput-object v0, v6, v9

    .line 1705
    aput-object v7, v6, v10

    .line 1706
    new-instance v5, Lgnu/expr/ReferenceExp;

    sget-object v8, Lgnu/xquery/lang/XQResolveNames;->castableAsDecl:Lgnu/expr/Declaration;

    invoke-direct {v5, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    move-object v1, v5

    .line 1707
    goto :goto_1

    .line 1709
    :pswitch_1
    aput-object v7, v6, v9

    .line 1710
    aput-object v0, v6, v10

    .line 1711
    const-string v5, "treatAs"

    invoke-static {v8, v5}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 1713
    goto :goto_1

    .line 1698
    .end local v1    # "func":Lgnu/expr/Expression;
    :pswitch_2
    aput-object v0, v6, v9

    .line 1699
    aput-object v7, v6, v10

    .line 1700
    invoke-static {v8, v5}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .line 1702
    .restart local v1    # "func":Lgnu/expr/Expression;
    nop

    .line 1720
    :goto_1
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, v1, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v5

    .line 1721
    .end local v1    # "func":Lgnu/expr/Expression;
    .end local v6    # "args":[Lgnu/expr/Expression;
    .end local v7    # "type":Lgnu/expr/Expression;
    goto :goto_2

    .line 1722
    :cond_4
    if-ne v2, v7, :cond_5

    .line 1724
    new-array v6, v6, [Lgnu/expr/Expression;

    aput-object v0, v6, v9

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v7

    aput-object v7, v6, v10

    .line 1725
    .restart local v6    # "args":[Lgnu/expr/Expression;
    new-instance v7, Lgnu/expr/ApplyExp;

    invoke-static {v8, v5}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    invoke-direct {v7, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v7

    .line 1728
    .end local v6    # "args":[Lgnu/expr/Expression;
    goto :goto_2

    .line 1731
    :cond_5
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->parseBinaryExpr(I)Lgnu/expr/Expression;

    move-result-object v5

    .line 1732
    .local v5, "exp2":Lgnu/expr/Expression;
    const/16 v6, 0x191

    if-ne v2, v6, :cond_6

    .line 1733
    new-instance v6, Lgnu/expr/IfExp;

    invoke-static {v0}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v7

    invoke-static {v5}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v8

    sget-object v9, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    invoke-direct {v6, v7, v8, v9}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v6

    goto :goto_2

    .line 1734
    :cond_6
    const/16 v6, 0x190

    if-ne v2, v6, :cond_7

    .line 1735
    new-instance v6, Lgnu/expr/IfExp;

    invoke-static {v0}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v7

    sget-object v8, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    invoke-static {v5}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v0, v6

    goto :goto_2

    .line 1737
    :cond_7
    invoke-virtual {p0, v2, v0, v5}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1739
    .end local v2    # "token":I
    .end local v3    # "tokPriority":I
    .end local v4    # "saveReadState":C
    .end local v5    # "exp2":Lgnu/expr/Expression;
    :goto_2
    goto/16 :goto_0

    .line 1680
    .restart local v2    # "token":I
    :cond_8
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1a6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method parseContent(CLjava/util/Vector;)V
    .locals 16
    .param p1, "delimiter"    # C
    .param p2, "result"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2273
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    iput v3, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2274
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v4

    .line 2275
    .local v4, "startSize":I
    add-int/lit8 v5, v4, -0x1

    .line 2276
    .local v5, "prevEnclosed":I
    iget-boolean v6, v0, Lgnu/xquery/lang/XQParser;->boundarySpacePreserve:Z

    const/16 v7, 0x3c

    const/4 v8, 0x1

    if-nez v6, :cond_0

    if-ne v1, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 2277
    .local v6, "skipBoundarySpace":Z
    :goto_0
    move v9, v6

    .line 2280
    .local v9, "skippable":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v10

    .line 2281
    .local v10, "next":I
    if-ne v10, v1, :cond_a

    .line 2283
    if-ne v1, v7, :cond_9

    .line 2285
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v10

    .line 2286
    const/4 v11, 0x0

    .line 2287
    .local v11, "text":Lgnu/expr/Expression;
    iget v12, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-lez v12, :cond_1

    .line 2289
    new-instance v12, Ljava/lang/String;

    iget-object v13, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v14, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v12, v13, v3, v14}, Ljava/lang/String;-><init>([CII)V

    .line 2290
    .local v12, "str":Ljava/lang/String;
    new-array v13, v8, [Lgnu/expr/Expression;

    new-instance v14, Lgnu/expr/QuoteExp;

    invoke-direct {v14, v12}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v14, v13, v3

    .line 2291
    .local v13, "args":[Lgnu/expr/Expression;
    new-instance v14, Lgnu/expr/ApplyExp;

    sget-object v15, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    invoke-direct {v14, v15, v13}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v11, v14

    .line 2293
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "args":[Lgnu/expr/Expression;
    :cond_1
    iput v3, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2294
    const/16 v12, 0x2f

    if-ne v10, v12, :cond_2

    .line 2296
    if-eqz v11, :cond_18

    if-nez v9, :cond_18

    .line 2297
    invoke-virtual {v2, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 2300
    :cond_2
    invoke-virtual {v0, v10, v8}, Lgnu/xquery/lang/XQParser;->parseXMLConstructor(IZ)Lgnu/expr/Expression;

    move-result-object v12

    .line 2301
    .local v12, "content":Lgnu/expr/Expression;
    const/4 v13, 0x0

    .line 2302
    .local v13, "isCDATA":Z
    const/4 v14, 0x0

    .line 2303
    .local v14, "emptyCDATA":Z
    instance-of v15, v12, Lgnu/expr/ApplyExp;

    if-eqz v15, :cond_4

    .line 2305
    move-object v15, v12

    check-cast v15, Lgnu/expr/ApplyExp;

    .line 2306
    .local v15, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v15}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v8

    sget-object v7, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    if-ne v8, v7, :cond_4

    .line 2308
    const/4 v13, 0x1

    .line 2309
    invoke-virtual {v15, v3}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2310
    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    move v14, v8

    .line 2313
    .end local v7    # "str":Ljava/lang/String;
    .end local v15    # "aexp":Lgnu/expr/ApplyExp;
    :cond_4
    if-eqz v11, :cond_6

    if-eqz v9, :cond_5

    if-eqz v13, :cond_6

    .line 2314
    :cond_5
    invoke-virtual {v2, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2315
    :cond_6
    if-eqz v13, :cond_7

    .line 2316
    const/4 v7, 0x0

    move v9, v7

    .end local v9    # "skippable":Z
    .local v7, "skippable":Z
    goto :goto_3

    .line 2318
    .end local v7    # "skippable":Z
    .restart local v9    # "skippable":Z
    :cond_7
    move v7, v6

    move v9, v7

    .line 2319
    :goto_3
    if-nez v14, :cond_8

    .line 2320
    invoke-virtual {v2, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2321
    :cond_8
    iput v3, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2322
    const/16 v7, 0x3c

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 2324
    .end local v11    # "text":Lgnu/expr/Expression;
    .end local v12    # "content":Lgnu/expr/Expression;
    .end local v13    # "isCDATA":Z
    .end local v14    # "emptyCDATA":Z
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2326
    invoke-virtual/range {p0 .. p1}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2327
    const/16 v7, 0x3c

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 2330
    :cond_a
    const/16 v7, 0x7b

    if-eq v10, v1, :cond_13

    if-ltz v10, :cond_13

    if-ne v10, v7, :cond_b

    const/16 v8, 0x3c

    goto :goto_4

    .line 2369
    :cond_b
    const/16 v7, 0x7d

    if-ne v10, v7, :cond_d

    .line 2371
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v8

    .line 2372
    .end local v10    # "next":I
    .local v8, "next":I
    if-ne v8, v7, :cond_c

    .line 2374
    invoke-virtual {v0, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2375
    const/4 v7, 0x0

    move v9, v7

    const/16 v8, 0x3c

    const/4 v12, 0x1

    .end local v9    # "skippable":Z
    .restart local v7    # "skippable":Z
    goto/16 :goto_9

    .line 2379
    .end local v7    # "skippable":Z
    .restart local v9    # "skippable":Z
    :cond_c
    const-string v7, "unexpected \'}\' in element content"

    invoke-virtual {v0, v7}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2380
    invoke-virtual {v0, v8}, Lgnu/xquery/lang/XQParser;->unread(I)V

    const/16 v8, 0x3c

    const/4 v12, 0x1

    goto/16 :goto_9

    .line 2383
    .end local v8    # "next":I
    .restart local v10    # "next":I
    :cond_d
    const/16 v7, 0x26

    if-ne v10, v7, :cond_e

    .line 2385
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEntityOrCharRef()V

    .line 2386
    const/4 v7, 0x0

    move v9, v7

    const/16 v8, 0x3c

    const/4 v12, 0x1

    .end local v9    # "skippable":Z
    .restart local v7    # "skippable":Z
    goto/16 :goto_9

    .line 2390
    .end local v7    # "skippable":Z
    .restart local v9    # "skippable":Z
    :cond_e
    const/16 v7, 0x3c

    if-eq v1, v7, :cond_10

    const/16 v7, 0x9

    if-eq v10, v7, :cond_f

    const/16 v7, 0xa

    if-eq v10, v7, :cond_f

    const/16 v7, 0xd

    if-ne v10, v7, :cond_10

    .line 2392
    :cond_f
    const/16 v10, 0x20

    .line 2393
    :cond_10
    const/16 v8, 0x3c

    if-ne v10, v8, :cond_11

    .line 2394
    const/16 v7, 0x65

    const-string v11, "\'<\' must be quoted in a direct attribute value"

    invoke-virtual {v0, v7, v11}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 2395
    :cond_11
    if-eqz v9, :cond_12

    .line 2396
    int-to-char v7, v10

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    .line 2397
    :cond_12
    int-to-char v7, v10

    invoke-virtual {v0, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    const/4 v12, 0x1

    goto/16 :goto_9

    .line 2330
    :cond_13
    const/16 v8, 0x3c

    .line 2332
    :goto_4
    if-ne v10, v7, :cond_14

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v11

    goto :goto_5

    :cond_14
    const/4 v11, -0x1

    .line 2333
    .local v11, "postBrace":I
    :goto_5
    if-ne v11, v7, :cond_15

    .line 2335
    invoke-virtual {v0, v7}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2336
    const/4 v9, 0x0

    .line 2337
    const/16 v7, 0x3c

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 2342
    :cond_15
    iget v12, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-lez v12, :cond_16

    if-nez v9, :cond_16

    .line 2343
    new-instance v7, Ljava/lang/String;

    iget-object v12, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v13, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v7, v12, v3, v13}, Ljava/lang/String;-><init>([CII)V

    .local v7, "text":Ljava/lang/String;
    goto :goto_6

    .line 2344
    .end local v7    # "text":Ljava/lang/String;
    :cond_16
    if-ne v10, v7, :cond_17

    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v7

    if-ne v5, v7, :cond_17

    .line 2347
    const-string v7, ""

    .line 2350
    .restart local v7    # "text":Ljava/lang/String;
    :goto_6
    const/4 v12, 0x1

    new-array v13, v12, [Lgnu/expr/Expression;

    new-instance v12, Lgnu/expr/QuoteExp;

    invoke-direct {v12, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v12, v13, v3

    move-object v12, v13

    .line 2351
    .local v12, "args":[Lgnu/expr/Expression;
    new-instance v13, Lgnu/expr/ApplyExp;

    sget-object v14, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    invoke-direct {v13, v14, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v2, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2353
    .end local v7    # "text":Ljava/lang/String;
    .end local v12    # "args":[Lgnu/expr/Expression;
    :cond_17
    iput v3, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2354
    if-ne v10, v1, :cond_19

    .line 2355
    nop

    .line 2400
    .end local v10    # "next":I
    .end local v11    # "postBrace":I
    :cond_18
    :goto_7
    return-void

    .line 2356
    .restart local v10    # "next":I
    .restart local v11    # "postBrace":I
    :cond_19
    if-gez v10, :cond_1a

    .line 2357
    const-string v7, "unexpected end-of-file"

    invoke-virtual {v0, v7}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    const/4 v12, 0x1

    goto :goto_8

    .line 2360
    :cond_1a
    invoke-virtual {v0, v11}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2361
    iget v7, v0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    const/4 v12, 0x1

    add-int/2addr v7, v12

    iput v7, v0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    .line 2362
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v7

    .line 2363
    .local v7, "exp":Lgnu/expr/Expression;
    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2364
    iput v3, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2365
    invoke-virtual/range {p2 .. p2}, Ljava/util/Vector;->size()I

    move-result v5

    .line 2366
    move v9, v6

    .line 2368
    .end local v7    # "exp":Lgnu/expr/Expression;
    .end local v11    # "postBrace":I
    :goto_8
    nop

    .line 2399
    .end local v10    # "next":I
    :goto_9
    const/16 v7, 0x3c

    const/4 v8, 0x1

    goto/16 :goto_1
.end method

.method public parseDataType()Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1472
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseItemType()Lgnu/expr/Expression;

    move-result-object v0

    .line 1474
    .local v0, "etype":Lgnu/expr/Expression;
    const/16 v1, 0x19f

    const/16 v2, 0x19d

    const/16 v3, 0x3f

    if-nez v0, :cond_3

    .line 1476
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0xee

    if-eq v4, v5, :cond_0

    .line 1477
    const-string v1, "bad syntax - expected DataType"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 1478
    :cond_0
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1479
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v4, v3, :cond_2

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v3, v2, :cond_2

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 1484
    :cond_1
    sget-object v1, Lgnu/kawa/reflect/OccurrenceType;->emptySequenceType:Lgnu/bytecode/Type;

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    .line 1485
    const/4 v1, 0x0

    .line 1486
    .local v1, "min":I
    const/4 v2, 0x0

    .local v2, "max":I
    goto :goto_1

    .line 1481
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1482
    const-string v1, "occurrence-indicator meaningless after empty-sequence()"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 1488
    :cond_3
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v4, v3, :cond_4

    .line 1490
    const/4 v1, 0x0

    .line 1491
    .restart local v1    # "min":I
    const/4 v2, 0x1

    .restart local v2    # "max":I
    goto :goto_1

    .line 1493
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_4
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v3, v2, :cond_5

    .line 1495
    const/4 v1, 0x1

    .line 1496
    .restart local v1    # "min":I
    const/4 v2, -0x1

    .restart local v2    # "max":I
    goto :goto_1

    .line 1498
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_5
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v1, :cond_6

    .line 1500
    const/4 v1, 0x0

    .line 1501
    .restart local v1    # "min":I
    const/4 v2, -0x1

    .restart local v2    # "max":I
    goto :goto_1

    .line 1505
    .end local v1    # "min":I
    .end local v2    # "max":I
    :cond_6
    const/4 v1, 0x1

    .line 1506
    .restart local v1    # "min":I
    const/4 v2, 0x1

    .line 1508
    .restart local v2    # "max":I
    :goto_1
    iget v3, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    const/16 v4, 0x43

    const/4 v5, 0x1

    if-ne v3, v4, :cond_7

    .line 1510
    if-eq v2, v5, :cond_7

    .line 1511
    const-string v3, "type to \'cast as\' or \'castable as\' must be a \'SingleType\'"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 1513
    :cond_7
    if-eq v1, v2, :cond_8

    .line 1515
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1516
    const/4 v3, 0x3

    new-array v3, v3, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 1519
    .local v3, "args":[Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    sget-object v5, Lgnu/xquery/lang/XQParser;->proc_OccurrenceType_getInstance:Lgnu/expr/PrimProcedure;

    invoke-direct {v4, v5, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 1522
    .local v4, "otype":Lgnu/expr/ApplyExp;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1523
    return-object v4

    .line 1525
    .end local v3    # "args":[Lgnu/expr/Expression;
    .end local v4    # "otype":Lgnu/expr/ApplyExp;
    :cond_8
    return-object v0
.end method

.method parseElementConstructor()Lgnu/expr/Expression;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2570
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v3, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    .line 2571
    .local v1, "startTag":Ljava/lang/String;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 2573
    .local v2, "vec":Ljava/util/Vector;
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2574
    const-string v3, "comment not allowed in element start tag"

    iput-object v3, v0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2575
    const/4 v3, 0x0

    .line 2579
    .local v3, "nsBindings":Lgnu/xml/NamespaceBinding;
    :goto_0
    const/4 v6, 0x0

    .line 2580
    .local v6, "sawSpace":Z
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v7

    .line 2581
    .local v7, "ch":I
    :goto_1
    if-ltz v7, :cond_0

    int-to-char v8, v7

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2583
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v7

    .line 2584
    const/4 v6, 0x1

    goto :goto_1

    .line 2586
    :cond_0
    const/16 v8, 0x2f

    const/16 v9, 0x3e

    const/4 v10, 0x0

    if-ltz v7, :cond_14

    if-eq v7, v9, :cond_14

    if-ne v7, v8, :cond_1

    .line 2587
    goto/16 :goto_e

    .line 2588
    :cond_1
    if-nez v6, :cond_2

    .line 2589
    const-string v11, "missing space before attribute"

    invoke-virtual {v0, v11}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2590
    :cond_2
    invoke-virtual {v0, v7}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2591
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2592
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v11

    .line 2593
    .local v11, "vecSize":I
    iget v12, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v13, 0x41

    if-eq v12, v13, :cond_3

    iget v12, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v14, 0x51

    if-eq v12, v14, :cond_3

    .line 2594
    goto/16 :goto_e

    .line 2595
    :cond_3
    new-instance v8, Ljava/lang/String;

    iget-object v9, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v12, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v8, v9, v4, v12}, Ljava/lang/String;-><init>([CII)V

    .line 2596
    .local v8, "attrName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v9

    add-int/2addr v9, v5

    .line 2597
    .local v9, "startLine":I
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v12

    add-int/2addr v12, v5

    iget v14, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v12, v14

    .line 2598
    .local v12, "startColumn":I
    const/4 v14, 0x0

    .line 2599
    .local v14, "definingNamespace":Ljava/lang/String;
    iget v15, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v15, v13, :cond_4

    .line 2601
    const-string v13, "xmlns"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2602
    const-string v14, ""

    goto :goto_2

    .line 2606
    :cond_4
    const-string v13, "xmlns:"

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2607
    const/4 v13, 0x6

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    .line 2609
    :cond_5
    :goto_2
    if-eqz v14, :cond_6

    move-object v13, v10

    goto :goto_3

    :cond_6
    sget-object v13, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    .line 2612
    .local v13, "makeAttr":Lgnu/expr/Expression;
    :goto_3
    new-instance v15, Lgnu/expr/QuoteExp;

    invoke-direct {v15, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-static {v15, v4}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2613
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v7

    .line 2614
    const/16 v15, 0x3d

    if-eq v7, v15, :cond_7

    .line 2616
    iput-object v10, v0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2617
    const-string v4, "missing \'=\' after attribute"

    invoke-virtual {v0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 2619
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v7

    .line 2620
    iget v15, v0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    .line 2621
    .local v15, "enclosedExpressionsStart":I
    const/16 v10, 0x7b

    if-ne v7, v10, :cond_8

    .line 2623
    const-string v10, "enclosed attribute value expression should be quoted"

    invoke-virtual {v0, v10}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 2624
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    .line 2627
    :cond_8
    int-to-char v10, v7

    invoke-virtual {v0, v10, v2}, Lgnu/xquery/lang/XQParser;->parseContent(CLjava/util/Vector;)V

    .line 2628
    :goto_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v10

    sub-int/2addr v10, v11

    .line 2629
    .local v10, "n":I
    if-eqz v14, :cond_12

    .line 2631
    const-string v16, ""

    .line 2632
    .local v16, "ns":Ljava/lang/String;
    if-ne v10, v5, :cond_9

    .line 2633
    const-string v16, ""

    move-object/from16 v4, v16

    goto :goto_7

    .line 2634
    :cond_9
    iget v5, v0, Lgnu/xquery/lang/XQParser;->enclosedExpressionsSeen:I

    if-le v5, v15, :cond_a

    .line 2635
    const-string v5, "enclosed expression not allowed in namespace declaration"

    invoke-virtual {v0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-object/from16 v4, v16

    goto :goto_7

    .line 2638
    :cond_a
    add-int/lit8 v5, v11, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 2640
    .local v5, "x":Ljava/lang/Object;
    instance-of v4, v5, Lgnu/expr/ApplyExp;

    if-eqz v4, :cond_c

    move-object v4, v5

    check-cast v4, Lgnu/expr/ApplyExp;

    move-object/from16 v17, v4

    .local v17, "ax":Lgnu/expr/ApplyExp;
    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v4

    move-object/from16 v18, v5

    .end local v5    # "x":Ljava/lang/Object;
    .local v18, "x":Ljava/lang/Object;
    sget-object v5, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    if-ne v4, v5, :cond_b

    .line 2642
    move-object/from16 v4, v17

    const/4 v5, 0x0

    .end local v17    # "ax":Lgnu/expr/ApplyExp;
    .local v4, "ax":Lgnu/expr/ApplyExp;
    invoke-virtual {v4, v5}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v17

    move-object/from16 v5, v17

    .end local v18    # "x":Ljava/lang/Object;
    .local v17, "x":Ljava/lang/Object;
    goto :goto_6

    .line 2640
    .end local v4    # "ax":Lgnu/expr/ApplyExp;
    .local v17, "ax":Lgnu/expr/ApplyExp;
    .restart local v18    # "x":Ljava/lang/Object;
    :cond_b
    move-object/from16 v4, v17

    .end local v17    # "ax":Lgnu/expr/ApplyExp;
    .restart local v4    # "ax":Lgnu/expr/ApplyExp;
    goto :goto_5

    .end local v4    # "ax":Lgnu/expr/ApplyExp;
    .end local v18    # "x":Ljava/lang/Object;
    .restart local v5    # "x":Ljava/lang/Object;
    :cond_c
    move-object/from16 v18, v5

    .line 2643
    .end local v5    # "x":Ljava/lang/Object;
    .restart local v18    # "x":Ljava/lang/Object;
    :goto_5
    move-object/from16 v5, v18

    .end local v18    # "x":Ljava/lang/Object;
    .restart local v5    # "x":Ljava/lang/Object;
    :goto_6
    move-object v4, v5

    check-cast v4, Lgnu/expr/QuoteExp;

    invoke-virtual {v4}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v4, v16

    .line 2646
    .end local v5    # "x":Ljava/lang/Object;
    .end local v16    # "ns":Ljava/lang/String;
    .local v4, "ns":Ljava/lang/String;
    :goto_7
    invoke-virtual {v2, v11}, Ljava/util/Vector;->setSize(I)V

    .line 2647
    const/4 v5, 0x1

    invoke-virtual {v0, v14, v4, v5}, Lgnu/xquery/lang/XQParser;->checkAllowedNamespaceDeclaration(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2648
    const-string v5, ""

    if-ne v14, v5, :cond_d

    .line 2649
    const/4 v14, 0x0

    .line 2650
    :cond_d
    move-object/from16 v16, v3

    .line 2651
    .local v16, "nsb":Lgnu/xml/NamespaceBinding;
    :goto_8
    if-eqz v16, :cond_10

    .line 2653
    move/from16 v17, v6

    .end local v6    # "sawSpace":Z
    .local v17, "sawSpace":Z
    invoke-virtual/range {v16 .. v16}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v6

    if-ne v6, v14, :cond_f

    .line 2655
    if-nez v14, :cond_e

    const-string v6, "duplicate default namespace declaration"

    move/from16 v18, v7

    goto :goto_9

    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v7

    .end local v7    # "ch":I
    .local v18, "ch":I
    const-string v7, "duplicate namespace prefix \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_9
    const-string v7, "XQST0071"

    move-object/from16 v19, v8

    .end local v8    # "attrName":Ljava/lang/String;
    .local v19, "attrName":Ljava/lang/String;
    const/16 v8, 0x65

    invoke-virtual {v0, v8, v6, v7}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 2660
    goto :goto_a

    .line 2651
    .end local v18    # "ch":I
    .end local v19    # "attrName":Ljava/lang/String;
    .restart local v7    # "ch":I
    .restart local v8    # "attrName":Ljava/lang/String;
    :cond_f
    move/from16 v18, v7

    move-object/from16 v19, v8

    .end local v7    # "ch":I
    .end local v8    # "attrName":Ljava/lang/String;
    .restart local v18    # "ch":I
    .restart local v19    # "attrName":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v16

    move/from16 v6, v17

    goto :goto_8

    .end local v17    # "sawSpace":Z
    .end local v18    # "ch":I
    .end local v19    # "attrName":Ljava/lang/String;
    .restart local v6    # "sawSpace":Z
    .restart local v7    # "ch":I
    .restart local v8    # "attrName":Ljava/lang/String;
    :cond_10
    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    .line 2663
    .end local v6    # "sawSpace":Z
    .end local v7    # "ch":I
    .end local v8    # "attrName":Ljava/lang/String;
    .end local v16    # "nsb":Lgnu/xml/NamespaceBinding;
    .restart local v17    # "sawSpace":Z
    .restart local v18    # "ch":I
    .restart local v19    # "attrName":Ljava/lang/String;
    :goto_a
    new-instance v6, Lgnu/xml/NamespaceBinding;

    if-ne v4, v5, :cond_11

    const/4 v5, 0x0

    goto :goto_b

    :cond_11
    move-object v5, v4

    :goto_b
    invoke-direct {v6, v14, v5, v3}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    move-object v3, v6

    .line 2667
    .end local v4    # "ns":Ljava/lang/String;
    goto :goto_d

    .line 2670
    .end local v17    # "sawSpace":Z
    .end local v18    # "ch":I
    .end local v19    # "attrName":Ljava/lang/String;
    .restart local v6    # "sawSpace":Z
    .restart local v7    # "ch":I
    .restart local v8    # "attrName":Ljava/lang/String;
    :cond_12
    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v19, v8

    .end local v6    # "sawSpace":Z
    .end local v7    # "ch":I
    .end local v8    # "attrName":Ljava/lang/String;
    .restart local v17    # "sawSpace":Z
    .restart local v18    # "ch":I
    .restart local v19    # "attrName":Ljava/lang/String;
    new-array v4, v10, [Lgnu/expr/Expression;

    .line 2671
    .local v4, "args":[Lgnu/expr/Expression;
    move v5, v10

    .local v5, "i":I
    :goto_c
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_13

    .line 2672
    add-int v6, v11, v5

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    aput-object v6, v4, v5

    goto :goto_c

    .line 2673
    .end local v5    # "i":I
    :cond_13
    invoke-virtual {v2, v11}, Ljava/util/Vector;->setSize(I)V

    .line 2674
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, v13, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2675
    .local v5, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v0, v5, v9, v12}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2676
    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2678
    .end local v4    # "args":[Lgnu/expr/Expression;
    .end local v5    # "aexp":Lgnu/expr/ApplyExp;
    .end local v9    # "startLine":I
    .end local v10    # "n":I
    .end local v11    # "vecSize":I
    .end local v12    # "startColumn":I
    .end local v13    # "makeAttr":Lgnu/expr/Expression;
    .end local v14    # "definingNamespace":Ljava/lang/String;
    .end local v15    # "enclosedExpressionsStart":I
    .end local v17    # "sawSpace":Z
    .end local v19    # "attrName":Ljava/lang/String;
    :goto_d
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2586
    .end local v18    # "ch":I
    .restart local v6    # "sawSpace":Z
    .restart local v7    # "ch":I
    :cond_14
    move/from16 v17, v6

    .line 2679
    .end local v6    # "sawSpace":Z
    :goto_e
    const/4 v4, 0x0

    iput-object v4, v0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2680
    const/4 v4, 0x0

    .line 2681
    .local v4, "empty":Z
    if-ne v7, v8, :cond_16

    .line 2683
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v7

    .line 2684
    if-ne v7, v9, :cond_15

    .line 2685
    const/4 v4, 0x1

    goto :goto_f

    .line 2687
    :cond_15
    invoke-virtual {v0, v7}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2689
    :cond_16
    :goto_f
    if-nez v4, :cond_1b

    .line 2691
    if-eq v7, v9, :cond_17

    .line 2692
    const-string v5, "missing \'>\' after start element"

    invoke-virtual {v0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    .line 2693
    :cond_17
    const/16 v5, 0x3c

    invoke-virtual {v0, v5, v2}, Lgnu/xquery/lang/XQParser;->parseContent(CLjava/util/Vector;)V

    .line 2694
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v5

    .line 2695
    .end local v7    # "ch":I
    .local v5, "ch":I
    if-ltz v5, :cond_1a

    .line 2697
    int-to-char v6, v5

    invoke-static {v6}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-nez v6, :cond_18

    .line 2698
    const-string v6, "invalid tag syntax after \'</\'"

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    return-object v6

    .line 2699
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2700
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v8, v0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    const/4 v10, 0x0

    invoke-direct {v6, v7, v10, v8}, Ljava/lang/String;-><init>([CII)V

    .line 2701
    .local v6, "tag":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 2702
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\'<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">\' closed by \'</"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ">\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    return-object v7

    .line 2703
    :cond_19
    const-string v7, "comment not allowed in element end tag"

    iput-object v7, v0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2704
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v5

    .line 2705
    const/4 v7, 0x0

    iput-object v7, v0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    move v7, v5

    goto :goto_10

    .line 2695
    .end local v6    # "tag":Ljava/lang/String;
    :cond_1a
    move v7, v5

    .line 2707
    .end local v5    # "ch":I
    .restart local v7    # "ch":I
    :goto_10
    if-eq v7, v9, :cond_1b

    .line 2708
    const-string v5, "missing \'>\' after end element"

    invoke-virtual {v0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    .line 2710
    :cond_1b
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Lgnu/expr/Expression;

    .line 2711
    .local v5, "args":[Lgnu/expr/Expression;
    invoke-virtual {v2, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2712
    new-instance v6, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v6}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 2713
    .local v6, "mkElement":Lgnu/kawa/xml/MakeElement;
    iget v8, v0, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    iput v8, v6, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    .line 2717
    invoke-virtual {v6, v3}, Lgnu/kawa/xml/MakeElement;->setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V

    .line 2718
    new-instance v8, Lgnu/expr/ApplyExp;

    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-direct {v9, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v8, v9, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 2719
    .local v8, "result":Lgnu/expr/Expression;
    return-object v8
.end method

.method parseEnclosedExpr()Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2408
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2409
    .local v0, "saveErrorIfComment":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2410
    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    .line 2411
    .local v1, "saveReadState":C
    const-string v2, "unexpected end-of-file after \'{\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 2412
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 2413
    .local v2, "startLine":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 2414
    .local v3, "startColumn":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2415
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v4

    .line 2418
    .local v4, "exp":Lgnu/expr/Expression;
    :goto_0
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_0

    .line 2419
    goto :goto_3

    .line 2420
    :cond_0
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x29

    if-eq v5, v6, :cond_3

    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 2425
    :cond_1
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_2

    .line 2426
    const-string v5, "missing \'}\' or \',\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_1

    .line 2428
    :cond_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2430
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/xquery/lang/XQParser;->makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_0

    .line 2422
    :cond_3
    :goto_2
    const-string v5, "missing \'}\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    .line 2423
    nop

    .line 2433
    :goto_3
    invoke-virtual {p0, v4, v2, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2434
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2435
    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    .line 2436
    return-object v4
.end method

.method parseEntityOrCharRef()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2197
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 2198
    .local v0, "next":I
    const/16 v1, 0x23

    const/16 v2, 0x3b

    if-ne v0, v1, :cond_9

    .line 2201
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 2202
    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 2204
    const/16 v1, 0x10

    .line 2205
    .local v1, "base":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    goto :goto_0

    .line 2208
    .end local v1    # "base":I
    :cond_0
    const/16 v1, 0xa

    .line 2209
    .restart local v1    # "base":I
    :goto_0
    const/4 v3, 0x0

    .line 2210
    .local v3, "value":I
    :goto_1
    if-ltz v0, :cond_3

    .line 2212
    int-to-char v4, v0

    .line 2213
    .local v4, "ch":C
    invoke-static {v4, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 2214
    .local v5, "digit":I
    if-gez v5, :cond_1

    .line 2215
    goto :goto_2

    .line 2216
    :cond_1
    const/high16 v6, 0x8000000

    if-lt v3, v6, :cond_2

    .line 2217
    goto :goto_2

    .line 2218
    :cond_2
    mul-int v3, v3, v1

    .line 2219
    add-int/2addr v3, v5

    .line 2220
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 2221
    .end local v4    # "ch":C
    .end local v5    # "digit":I
    goto :goto_1

    .line 2222
    :cond_3
    :goto_2
    if-eq v0, v2, :cond_4

    .line 2224
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 2225
    const-string v2, "invalid character reference"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 2228
    :cond_4
    if-lez v3, :cond_5

    const v2, 0xd7ff

    if-le v3, v2, :cond_7

    :cond_5
    const v2, 0xe000

    if-lt v3, v2, :cond_6

    const v2, 0xfffd

    if-le v3, v2, :cond_7

    :cond_6
    const/high16 v2, 0x10000

    if-lt v3, v2, :cond_8

    const v2, 0x10ffff

    if-gt v3, v2, :cond_8

    .line 2231
    :cond_7
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    goto :goto_3

    .line 2233
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid character value "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "XQST0090"

    const/16 v5, 0x65

    invoke-virtual {p0, v5, v2, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 2234
    .end local v1    # "base":I
    .end local v3    # "value":I
    :goto_3
    goto :goto_6

    .line 2237
    :cond_9
    iget v1, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2238
    .local v1, "saveLength":I
    :goto_4
    if-ltz v0, :cond_b

    .line 2240
    int-to-char v3, v0

    .line 2241
    .local v3, "ch":C
    invoke-static {v3}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2242
    goto :goto_5

    .line 2243
    :cond_a
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->tokenBufferAppend(I)V

    .line 2244
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 2245
    .end local v3    # "ch":C
    goto :goto_4

    .line 2246
    :cond_b
    :goto_5
    if-eq v0, v2, :cond_c

    .line 2248
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 2249
    const-string v2, "invalid entity reference"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2250
    return-void

    .line 2252
    :cond_c
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v4, v1

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2254
    .local v2, "ref":Ljava/lang/String;
    iput v1, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2255
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->appendNamedEntity(Ljava/lang/String;)V

    .line 2257
    .end local v1    # "saveLength":I
    .end local v2    # "ref":Ljava/lang/String;
    :goto_6
    return-void
.end method

.method parseExpr()Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1638
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method parseExprSequence(IZ)Lgnu/expr/Expression;
    .locals 5
    .param p1, "rightToken"    # I
    .param p2, "optional"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2752
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v0, p1, :cond_7

    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_4

    .line 2758
    :cond_0
    const/4 v0, 0x0

    .line 2761
    .local v0, "exp":Lgnu/expr/Expression;
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v2

    .line 2763
    .local v2, "exp1":Lgnu/expr/Expression;
    if-nez v0, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-static {v0, v2}, Lgnu/xquery/lang/XQParser;->makeExprSequence(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    :goto_1
    move-object v0, v3

    .line 2764
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v3, p1, :cond_6

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v3, v1, :cond_2

    .line 2765
    goto :goto_3

    .line 2766
    :cond_2
    iget v3, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-nez v3, :cond_3

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 2767
    return-object v0

    .line 2768
    :cond_3
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_5

    .line 2769
    const/16 v1, 0x29

    if-ne p1, v1, :cond_4

    const-string v1, "expected \')\'"

    goto :goto_2

    :cond_4
    const-string v1, "confused by syntax error"

    :goto_2
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 2771
    :cond_5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2772
    .end local v2    # "exp1":Lgnu/expr/Expression;
    goto :goto_0

    .line 2773
    :cond_6
    :goto_3
    return-object v0

    .line 2754
    .end local v0    # "exp":Lgnu/expr/Expression;
    :cond_7
    :goto_4
    if-nez p2, :cond_8

    .line 2755
    const-string v0, "missing expression"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2756
    :cond_8
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v0
.end method

.method final parseExprSingle()Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1644
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 1645
    .local v0, "startLine":I
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 1646
    .local v1, "startColumn":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    .line 1647
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 1666
    const/16 v2, 0x190

    invoke-static {v2}, Lgnu/xquery/lang/XQParser;->priority(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->parseBinaryExpr(I)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 1664
    :pswitch_0
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 1662
    :pswitch_1
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 1660
    :pswitch_2
    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->parseFLWRExpression(Z)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 1658
    :pswitch_3
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->parseFLWRExpression(Z)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 1656
    :pswitch_4
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseTypeSwitch()Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 1654
    :pswitch_5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseIfExpr()Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseFLWRExpression(Z)Lgnu/expr/Expression;
    .locals 13
    .param p1, "isFor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3208
    iget v0, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .line 3209
    .local v0, "flworDeclsSave":I
    iget v1, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    iput v1, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .line 3210
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 3212
    .local v1, "exp":Lgnu/expr/Expression;
    const-string v2, "order"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3214
    if-eqz p1, :cond_0

    const/16 v2, 0x66

    goto :goto_0

    :cond_0
    const/16 v2, 0x6c

    :goto_0
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v2

    .line 3215
    .local v2, "saveNesting":C
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3216
    const-string v3, "by"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3217
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_1

    .line 3219
    :cond_1
    const-string v3, "missing \'by\' following \'order\'"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3220
    :goto_1
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 3223
    .local v3, "specs":Ljava/util/Stack;
    :goto_2
    const/4 v4, 0x0

    .line 3224
    .local v4, "descending":Z
    iget-char v5, p0, Lgnu/xquery/lang/XQParser;->defaultEmptyOrder:C

    .line 3226
    .local v5, "emptyOrder":C
    new-instance v6, Lgnu/expr/LambdaExp;

    iget v7, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    iget v8, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    sub-int/2addr v7, v8

    invoke-direct {v6, v7}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3227
    .local v6, "lexp":Lgnu/expr/LambdaExp;
    iget v7, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .local v7, "i":I
    :goto_3
    iget v8, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    if-ge v7, v8, :cond_2

    .line 3228
    iget-object v8, p0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    .line 3227
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3229
    .end local v7    # "i":I
    :cond_2
    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v7, v6}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3230
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v7

    iput-object v7, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3231
    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v7, v6}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3232
    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3234
    const-string v7, "ascending"

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3235
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_4

    .line 3236
    :cond_3
    const-string v7, "descending"

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3238
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3239
    const/4 v4, 0x1

    .line 3241
    :cond_4
    :goto_4
    const-string v7, "empty"

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3243
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3244
    const-string v7, "greatest"

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3246
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3247
    const/16 v5, 0x47

    goto :goto_5

    .line 3249
    :cond_5
    const-string v7, "least"

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3251
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3252
    const/16 v5, 0x4c

    goto :goto_5

    .line 3255
    :cond_6
    const-string v7, "\'empty\' sequence order must be \'greatest\' or \'least\'"

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 3258
    :cond_7
    :goto_5
    new-instance v7, Lgnu/expr/QuoteExp;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_8

    const-string v9, "D"

    goto :goto_6

    :cond_8
    const-string v9, "A"

    :goto_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3259
    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->defaultCollator:Lgnu/xquery/util/NamedCollator;

    .line 3260
    .local v7, "collation":Ljava/lang/Object;
    const-string v8, "collation"

    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3262
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseURILiteral()Ljava/lang/Object;

    move-result-object v8

    .line 3263
    .local v8, "uri":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 3267
    :try_start_0
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3268
    .local v9, "uriString":Ljava/lang/String;
    invoke-static {v9}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v10

    .line 3273
    .end local v9    # "uriString":Ljava/lang/String;
    goto :goto_7

    .line 3270
    :catch_0
    move-exception v9

    .line 3272
    .local v9, "name":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown collation \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "XQST0076"

    const/16 v12, 0x65

    invoke-virtual {p0, v12, v10, v11}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3275
    .end local v9    # "name":Ljava/lang/Exception;
    :cond_9
    :goto_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3277
    .end local v8    # "uri":Ljava/lang/Object;
    :cond_a
    new-instance v8, Lgnu/expr/QuoteExp;

    invoke-direct {v8, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3278
    iget v8, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_e

    .line 3279
    nop

    .line 3282
    .end local v4    # "descending":Z
    .end local v5    # "emptyOrder":C
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    .end local v7    # "collation":Ljava/lang/Object;
    const-string v4, "return"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 3283
    const-string v4, "expected \'return\' clause"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 3284
    :cond_b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3286
    new-instance v4, Lgnu/expr/LambdaExp;

    iget v5, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    iget v6, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    sub-int/2addr v5, v6

    invoke-direct {v4, v5}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3288
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    iget v5, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .local v5, "i":I
    :goto_8
    iget v6, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    if-ge v5, v6, :cond_c

    .line 3289
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    .line 3288
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 3290
    .end local v5    # "i":I
    :cond_c
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3291
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5, v4}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3292
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v5

    iput-object v5, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3293
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5, v4}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3294
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v5

    .line 3295
    .local v5, "nspecs":I
    add-int/lit8 v6, v5, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    .line 3296
    .local v6, "args":[Lgnu/expr/Expression;
    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 3297
    const/4 v7, 0x1

    aput-object v4, v6, v7

    .line 3298
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    if-ge v7, v5, :cond_d

    .line 3299
    add-int/lit8 v8, v7, 0x2

    invoke-virtual {v3, v7}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/expr/Expression;

    aput-object v9, v6, v8

    .line 3298
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 3300
    .end local v7    # "i":I
    :cond_d
    new-instance v7, Lgnu/expr/ApplyExp;

    const-string v8, "gnu.xquery.util.OrderedMap"

    const-string v9, "orderedMap"

    invoke-static {v8, v9}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v7

    .line 3280
    .local v4, "descending":Z
    .local v5, "emptyOrder":C
    .local v6, "lexp":Lgnu/expr/LambdaExp;
    .local v7, "collation":Ljava/lang/Object;
    :cond_e
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3281
    .end local v4    # "descending":Z
    .end local v5    # "emptyOrder":C
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    .end local v7    # "collation":Ljava/lang/Object;
    goto/16 :goto_2

    .line 3305
    .end local v2    # "saveNesting":C
    .end local v3    # "specs":Ljava/util/Stack;
    :cond_f
    iget v2, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    iput v2, p0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    .line 3306
    iput v0, p0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    .line 3307
    return-object v1
.end method

.method public parseFLWRInner(Z)Lgnu/expr/Expression;
    .locals 21
    .param p1, "isFor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3321
    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    const/16 v1, 0x66

    goto :goto_0

    :cond_0
    const/16 v1, 0x6c

    :goto_0
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    .line 3322
    .local v1, "saveNesting":C
    const/16 v2, 0x24

    iput v2, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3323
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v3

    .line 3324
    .local v3, "decl":Lgnu/expr/Declaration;
    if-nez v3, :cond_1

    .line 3325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing Variable - saw "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->tokenString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 3326
    :cond_1
    iget-object v4, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-nez v4, :cond_2

    .line 3327
    const/16 v4, 0x8

    new-array v4, v4, [Lgnu/expr/Declaration;

    iput-object v4, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    goto :goto_1

    .line 3328
    :cond_2
    iget v4, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    iget-object v7, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    array-length v7, v7

    if-lt v4, v7, :cond_3

    .line 3330
    iget v4, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Lgnu/expr/Declaration;

    .line 3331
    .local v4, "tmp":[Lgnu/expr/Declaration;
    iget-object v7, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    iget v8, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    invoke-static {v7, v6, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3332
    iput-object v4, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    .line 3334
    .end local v4    # "tmp":[Lgnu/expr/Declaration;
    :cond_3
    :goto_1
    iget-object v4, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    iget v7, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    aput-object v3, v4, v7

    .line 3335
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3337
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v4

    .line 3339
    .local v4, "type":Lgnu/expr/Expression;
    const/4 v7, 0x1

    new-array v8, v7, [Lgnu/expr/Expression;

    .line 3340
    .local v8, "inits":[Lgnu/expr/Expression;
    const/4 v9, 0x0

    .line 3341
    .local v9, "posDecl":Lgnu/expr/Declaration;
    const-string v10, "in"

    const/16 v11, 0x4c

    if-eqz p1, :cond_9

    .line 3343
    const-string v12, "at"

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    .line 3344
    .local v12, "sawAt":Z
    new-instance v13, Lgnu/expr/LambdaExp;

    if-eqz v12, :cond_4

    const/4 v14, 0x2

    goto :goto_2

    :cond_4
    const/4 v14, 0x1

    :goto_2
    invoke-direct {v13, v14}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3345
    .local v13, "lexp":Lgnu/expr/LambdaExp;
    if-eqz v12, :cond_6

    .line 3347
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3348
    iget v14, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v14, v2, :cond_5

    .line 3350
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v9

    .line 3351
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3353
    :cond_5
    if-nez v9, :cond_6

    .line 3354
    const-string v14, "missing Variable after \'at\'"

    invoke-virtual {v0, v14}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3356
    :cond_6
    move-object v14, v13

    .line 3357
    .local v14, "sc":Lgnu/expr/ScopeExp;
    invoke-virtual {v0, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3358
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_3

    .line 3361
    :cond_7
    iget v10, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v10, v11, :cond_8

    .line 3362
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3363
    :cond_8
    const-string v10, "missing \'in\' in \'for\' clause"

    invoke-virtual {v0, v10}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3365
    .end local v12    # "sawAt":Z
    .end local v13    # "lexp":Lgnu/expr/LambdaExp;
    :goto_3
    goto :goto_5

    .line 3368
    .end local v14    # "sc":Lgnu/expr/ScopeExp;
    :cond_9
    iget v12, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v12, v11, :cond_a

    .line 3369
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_4

    .line 3372
    :cond_a
    invoke-virtual {v0, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3373
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3374
    :cond_b
    const-string v10, "missing \':=\' in \'let\' clause"

    invoke-virtual {v0, v10}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3376
    :goto_4
    new-instance v10, Lgnu/expr/LetExp;

    invoke-direct {v10, v8}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 3377
    .local v10, "let":Lgnu/expr/LetExp;
    move-object v14, v10

    .line 3379
    .end local v10    # "let":Lgnu/expr/LetExp;
    .restart local v14    # "sc":Lgnu/expr/ScopeExp;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v10

    aput-object v10, v8, v6

    .line 3380
    if-eqz v4, :cond_c

    if-nez p1, :cond_c

    .line 3381
    aget-object v10, v8, v6

    invoke-static {v10, v4}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v10

    aput-object v10, v8, v6

    .line 3382
    :cond_c
    invoke-virtual {v0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3383
    iget-object v10, v0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v10, v14}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3384
    invoke-virtual {v14, v3}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3385
    if-eqz v4, :cond_d

    .line 3386
    invoke-virtual {v3, v4}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 3387
    :cond_d
    const-wide/32 v10, 0x40000

    const/4 v12, 0x0

    if-eqz p1, :cond_e

    .line 3389
    invoke-virtual {v3, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3390
    invoke-virtual {v3, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3392
    :cond_e
    if-eqz v9, :cond_f

    .line 3394
    invoke-virtual {v14, v9}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3395
    sget-object v13, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v9, v13}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 3396
    invoke-virtual {v9, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3397
    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3400
    :cond_f
    iget v10, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v11, 0x2c

    if-ne v10, v11, :cond_11

    .line 3402
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3403
    iget v10, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v10, v2, :cond_10

    .line 3404
    const-string v2, "missing $NAME after \',\'"

    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 3405
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v2

    move/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .local v2, "body":Lgnu/expr/Expression;
    goto/16 :goto_a

    .line 3407
    .end local v2    # "body":Lgnu/expr/Expression;
    :cond_11
    const-string v10, "for"

    invoke-virtual {v0, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 3409
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3410
    iget v10, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v10, v2, :cond_12

    .line 3411
    const-string v2, "missing $NAME after \'for\'"

    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 3412
    :cond_12
    invoke-virtual {v0, v7}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v2

    move/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .restart local v2    # "body":Lgnu/expr/Expression;
    goto/16 :goto_a

    .line 3414
    .end local v2    # "body":Lgnu/expr/Expression;
    :cond_13
    const-string v11, "let"

    invoke-virtual {v0, v11}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 3416
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3417
    iget v10, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v10, v2, :cond_14

    .line 3418
    const-string v2, "missing $NAME after \'let\'"

    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 3419
    :cond_14
    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->parseFLWRInner(Z)Lgnu/expr/Expression;

    move-result-object v2

    move/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .restart local v2    # "body":Lgnu/expr/Expression;
    goto/16 :goto_a

    .line 3424
    .end local v2    # "body":Lgnu/expr/Expression;
    :cond_15
    const/16 v2, 0x77

    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v2

    .line 3425
    .local v2, "save":C
    iget v12, v0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v13, 0xc4

    if-ne v12, v13, :cond_16

    .line 3427
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3428
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v12

    .local v12, "cond":Lgnu/expr/Expression;
    goto :goto_6

    .line 3430
    .end local v12    # "cond":Lgnu/expr/Expression;
    :cond_16
    const-string v12, "where"

    invoke-virtual {v0, v12}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 3432
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v12

    .restart local v12    # "cond":Lgnu/expr/Expression;
    goto :goto_6

    .line 3435
    .end local v12    # "cond":Lgnu/expr/Expression;
    :cond_17
    const/4 v12, 0x0

    .line 3436
    .restart local v12    # "cond":Lgnu/expr/Expression;
    :goto_6
    invoke-virtual {v0, v2}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3437
    const-string v13, "stable"

    invoke-virtual {v0, v13}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v13

    .line 3438
    .local v13, "sawStable":Z
    if-eqz v13, :cond_18

    .line 3439
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3440
    :cond_18
    const-string v15, "return"

    invoke-virtual {v0, v15}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v15

    .line 3441
    .local v15, "sawReturn":Z
    const-string v6, "order"

    invoke-virtual {v0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    .line 3442
    .local v6, "sawOrder":Z
    if-nez v15, :cond_19

    if-nez v6, :cond_19

    invoke-virtual {v0, v11}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_19

    invoke-virtual {v0, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_19

    .line 3443
    const-string v5, "missing \'return\' clause"

    invoke-virtual {v0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    .line 3444
    :cond_19
    if-nez v6, :cond_1a

    .line 3445
    const-string v10, "unexpected eof-of-file after \'return\'"

    invoke-virtual {v0, v10}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3446
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v10

    add-int/2addr v10, v7

    .line 3447
    .local v10, "bodyLine":I
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v11

    add-int/2addr v11, v7

    .line 3448
    .local v11, "bodyColumn":I
    if-eqz v15, :cond_1b

    .line 3449
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3450
    :cond_1b
    if-eqz v6, :cond_1d

    .line 3452
    iget v5, v0, Lgnu/xquery/lang/XQParser;->flworDeclsCount:I

    iget v7, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    sub-int/2addr v5, v7

    .line 3453
    .local v5, "ndecls":I
    new-array v7, v5, [Lgnu/expr/Expression;

    .line 3454
    .local v7, "args":[Lgnu/expr/Expression;
    const/16 v16, 0x0

    move/from16 v17, v1

    move/from16 v1, v16

    .local v1, "i":I
    .local v17, "saveNesting":C
    :goto_7
    if-ge v1, v5, :cond_1c

    .line 3455
    move/from16 v16, v2

    .end local v2    # "save":C
    .local v16, "save":C
    new-instance v2, Lgnu/expr/ReferenceExp;

    move-object/from16 v18, v3

    .end local v3    # "decl":Lgnu/expr/Declaration;
    .local v18, "decl":Lgnu/expr/Declaration;
    iget-object v3, v0, Lgnu/xquery/lang/XQParser;->flworDecls:[Lgnu/expr/Declaration;

    move-object/from16 v19, v4

    .end local v4    # "type":Lgnu/expr/Expression;
    .local v19, "type":Lgnu/expr/Expression;
    iget v4, v0, Lgnu/xquery/lang/XQParser;->flworDeclsFirst:I

    add-int/2addr v4, v1

    aget-object v3, v3, v4

    invoke-direct {v2, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v2, v7, v1

    .line 3454
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_7

    .end local v16    # "save":C
    .end local v18    # "decl":Lgnu/expr/Declaration;
    .end local v19    # "type":Lgnu/expr/Expression;
    .restart local v2    # "save":C
    .restart local v3    # "decl":Lgnu/expr/Declaration;
    .restart local v4    # "type":Lgnu/expr/Expression;
    :cond_1c
    move/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 3456
    .end local v1    # "i":I
    .end local v2    # "save":C
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .end local v4    # "type":Lgnu/expr/Expression;
    .restart local v16    # "save":C
    .restart local v18    # "decl":Lgnu/expr/Declaration;
    .restart local v19    # "type":Lgnu/expr/Expression;
    new-instance v1, Lgnu/expr/ApplyExp;

    new-instance v2, Lgnu/expr/PrimProcedure;

    const-string v3, "gnu.xquery.util.OrderedMap"

    const-string v4, "makeTuple$V"

    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "ndecls":I
    .local v20, "ndecls":I
    invoke-direct {v2, v3, v4, v5}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v1, v2, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 3459
    .end local v7    # "args":[Lgnu/expr/Expression;
    .end local v20    # "ndecls":I
    .local v1, "body":Lgnu/expr/Expression;
    goto :goto_8

    .line 3461
    .end local v16    # "save":C
    .end local v17    # "saveNesting":C
    .end local v18    # "decl":Lgnu/expr/Declaration;
    .end local v19    # "type":Lgnu/expr/Expression;
    .local v1, "saveNesting":C
    .restart local v2    # "save":C
    .restart local v3    # "decl":Lgnu/expr/Declaration;
    .restart local v4    # "type":Lgnu/expr/Expression;
    :cond_1d
    move/from16 v17, v1

    move/from16 v16, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .end local v1    # "saveNesting":C
    .end local v2    # "save":C
    .end local v3    # "decl":Lgnu/expr/Declaration;
    .end local v4    # "type":Lgnu/expr/Expression;
    .restart local v16    # "save":C
    .restart local v17    # "saveNesting":C
    .restart local v18    # "decl":Lgnu/expr/Declaration;
    .restart local v19    # "type":Lgnu/expr/Expression;
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v1

    .line 3462
    .local v1, "body":Lgnu/expr/Expression;
    :goto_8
    if-eqz v12, :cond_1e

    .line 3463
    new-instance v2, Lgnu/expr/IfExp;

    invoke-static {v12}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    sget-object v4, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v2, v3, v1, v4}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object v1, v2

    goto :goto_9

    .line 3462
    :cond_1e
    move-object v2, v1

    .line 3464
    .end local v1    # "body":Lgnu/expr/Expression;
    .local v2, "body":Lgnu/expr/Expression;
    :goto_9
    invoke-virtual {v0, v2, v10, v11}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3466
    .end local v6    # "sawOrder":Z
    .end local v10    # "bodyLine":I
    .end local v11    # "bodyColumn":I
    .end local v12    # "cond":Lgnu/expr/Expression;
    .end local v13    # "sawStable":Z
    .end local v15    # "sawReturn":Z
    .end local v16    # "save":C
    :goto_a
    iget-object v1, v0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1, v14}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3467
    if-eqz p1, :cond_20

    .line 3469
    move-object v1, v14

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 3470
    .local v1, "lexp":Lgnu/expr/LambdaExp;
    iput-object v2, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3471
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/expr/Expression;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    aget-object v4, v8, v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 3472
    .local v3, "args":[Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    iget v6, v1, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v6, v5, :cond_1f

    const-string v5, "valuesMap"

    goto :goto_b

    :cond_1f
    const-string v5, "valuesMapWithPos"

    :goto_b
    const-string v6, "gnu.kawa.functions.ValuesMap"

    invoke-static {v6, v5}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v4

    .line 3478
    .end local v1    # "lexp":Lgnu/expr/LambdaExp;
    .end local v3    # "args":[Lgnu/expr/Expression;
    :cond_20
    move-object v1, v14

    check-cast v1, Lgnu/expr/LetExp;

    invoke-virtual {v1, v2}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    .line 3479
    return-object v14
.end method

.method public parseFunctionDefinition(II)Lgnu/expr/Expression;
    .locals 12
    .param p1, "declLine"    # I
    .param p2, "declColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3544
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    .line 3545
    const-string v0, "missing function name"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3546
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3547
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v1, v2, v3, v4}, Lgnu/text/SourceMessages;->setLine(Ljava/lang/String;II)V

    .line 3548
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->namespaceResolve(Ljava/lang/String;Z)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 3549
    .local v2, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 3550
    .local v3, "uri":Ljava/lang/String;
    const-string v4, "http://www.w3.org/XML/1998/namespace"

    const/16 v5, 0x65

    if-eq v3, v4, :cond_5

    const-string v4, "http://www.w3.org/2001/XMLSchema"

    if-eq v3, v4, :cond_5

    const-string v4, "http://www.w3.org/2001/XMLSchema-instance"

    if-eq v3, v4, :cond_5

    const-string v4, "http://www.w3.org/2005/xpath-functions"

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 3559
    :cond_1
    const-string v4, ""

    if-ne v3, v4, :cond_3

    .line 3561
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/16 v5, 0x77

    :goto_0
    const-string v4, "cannot declare function in empty namespace"

    const-string v6, "XQST0060"

    invoke-virtual {p0, v5, v4, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3565
    :cond_3
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->libraryModuleNamespace:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    const-string v4, "http://www.w3.org/2005/xquery-local-functions"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3568
    :cond_4
    const-string v4, "function not in namespace of library module"

    const-string v6, "XQST0048"

    invoke-virtual {p0, v5, v4, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3555
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot declare function in standard namespace \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x27

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "XQST0045"

    invoke-virtual {p0, v5, v4, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 3570
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3571
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x28

    if-eq v4, v5, :cond_7

    .line 3572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing parameter list:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 3573
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3574
    new-instance v4, Lgnu/expr/LambdaExp;

    invoke-direct {v4}, Lgnu/expr/LambdaExp;-><init>()V

    .line 3575
    .local v4, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {p0, v4, p1, p2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3576
    invoke-virtual {v4, v0}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 3577
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v5}, Lgnu/expr/Compilation;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v5

    invoke-virtual {v5, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 3578
    .local v5, "decl":Lgnu/expr/Declaration;
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6}, Lgnu/expr/Compilation;->isStatic()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3579
    const-wide/16 v6, 0x800

    invoke-virtual {v5, v6, v7}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3580
    :cond_8
    const/16 v6, 0x800

    invoke-virtual {v4, v6}, Lgnu/expr/LambdaExp;->setFlag(I)V

    .line 3581
    invoke-virtual {v5, v1}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 3582
    invoke-virtual {v5, v1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 3583
    invoke-virtual {p0, v5, p1, p2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Declaration;II)V

    .line 3584
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6, v4}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3585
    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v7, 0x29

    if-eq v6, v7, :cond_10

    .line 3590
    :goto_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v6

    .line 3591
    .local v6, "param":Lgnu/expr/Declaration;
    if-nez v6, :cond_9

    .line 3592
    const-string v8, "missing parameter name"

    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 3595
    :cond_9
    invoke-virtual {v4, v6}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3596
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3597
    iget v8, v4, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v8, v1

    iput v8, v4, Lgnu/expr/LambdaExp;->min_args:I

    .line 3598
    iget v8, v4, Lgnu/expr/LambdaExp;->max_args:I

    add-int/2addr v8, v1

    iput v8, v4, Lgnu/expr/LambdaExp;->max_args:I

    .line 3599
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v8

    invoke-virtual {v6, v8}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 3601
    :goto_4
    iget v8, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v8, v7, :cond_a

    .line 3602
    goto :goto_7

    .line 3603
    :cond_a
    iget v8, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_f

    .line 3605
    const-string v8, "missing \',\' in parameter list"

    invoke-virtual {p0, v8}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v8

    .line 3608
    .local v8, "err":Lgnu/expr/Expression;
    :cond_b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3609
    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ltz v10, :cond_e

    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v11, 0x3b

    if-eq v10, v11, :cond_e

    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v10, v11, :cond_c

    goto :goto_5

    .line 3611
    :cond_c
    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v10, v7, :cond_d

    .line 3612
    goto :goto_7

    .line 3613
    :cond_d
    iget v10, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v10, v9, :cond_b

    .line 3614
    nop

    .line 3616
    .end local v8    # "err":Lgnu/expr/Expression;
    goto :goto_6

    .line 3610
    .restart local v8    # "err":Lgnu/expr/Expression;
    :cond_e
    :goto_5
    return-object v8

    .line 3618
    .end local v8    # "err":Lgnu/expr/Expression;
    :cond_f
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3619
    .end local v6    # "param":Lgnu/expr/Declaration;
    :goto_6
    goto :goto_3

    .line 3621
    :cond_10
    :goto_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3622
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v6

    .line 3623
    .local v6, "retType":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v7

    iput-object v7, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3624
    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v7, v4}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3625
    if-eqz v6, :cond_11

    .line 3626
    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->interpreter:Lgnu/xquery/lang/XQuery;

    invoke-virtual {v4, v6, v7}, Lgnu/expr/LambdaExp;->setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V

    .line 3627
    :cond_11
    new-instance v7, Lgnu/expr/SetExp;

    invoke-direct {v7, v5, v4}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 3628
    .local v7, "sexp":Lgnu/expr/SetExp;
    invoke-virtual {v7, v1}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 3629
    invoke-virtual {v5, v4}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3630
    return-object v7
.end method

.method public parseIfExpr()Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3135
    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v0

    .line 3136
    .local v0, "saveReadState1":C
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3137
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    .line 3138
    .local v1, "saveReadState2":C
    const/16 v2, 0x29

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v2

    .line 3139
    .local v2, "cond":Lgnu/expr/Expression;
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3140
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 3141
    const-string v3, "missing \')\' - unexpected end-of-file"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 3142
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3143
    const-string v3, "then"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3144
    const-string v3, "missing \'then\'"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_0

    .line 3146
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3147
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v3

    .line 3148
    .local v3, "thenPart":Lgnu/expr/Expression;
    const-string v4, "else"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3149
    const-string v4, "missing \'else\'"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1

    .line 3151
    :cond_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3152
    :goto_1
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3153
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v4

    .line 3154
    .local v4, "elsePart":Lgnu/expr/Expression;
    new-instance v5, Lgnu/expr/IfExp;

    invoke-static {v2}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v6

    invoke-direct {v5, v6, v3, v4}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v5
.end method

.method parseIntersectExceptExpr()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1781
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parsePathExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 1784
    .local v0, "exp":Lgnu/expr/Expression;
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v1

    .line 1785
    .local v1, "op":I
    const/16 v2, 0x1a4

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1a5

    if-eq v1, v2, :cond_0

    .line 1786
    nop

    .line 1791
    .end local v1    # "op":I
    return-object v0

    .line 1787
    .restart local v1    # "op":I
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1788
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parsePathExpr()Lgnu/expr/Expression;

    move-result-object v2

    .line 1789
    .local v2, "exp2":Lgnu/expr/Expression;
    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1790
    .end local v1    # "op":I
    .end local v2    # "exp2":Lgnu/expr/Expression;
    goto :goto_0
.end method

.method public parseItemType()Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1586
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    .line 1587
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybeKindTest()Lgnu/expr/Expression;

    move-result-object v0

    .line 1589
    .local v0, "etype":Lgnu/expr/Expression;
    if-eqz v0, :cond_1

    .line 1591
    iget v1, p0, Lgnu/xquery/lang/XQParser;->parseContext:I

    const/16 v2, 0x43

    if-ne v1, v2, :cond_0

    .line 1593
    sget-object v1, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    .local v1, "type":Lgnu/bytecode/Type;
    goto :goto_0

    .line 1595
    .end local v1    # "type":Lgnu/bytecode/Type;
    :cond_0
    return-object v0

    .line 1597
    :cond_1
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0xed

    if-ne v1, v2, :cond_2

    .line 1599
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1600
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v1

    .line 1613
    .restart local v1    # "type":Lgnu/bytecode/Type;
    :goto_0
    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    return-object v2

    .line 1602
    .end local v1    # "type":Lgnu/bytecode/Type;
    :cond_2
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x41

    if-eq v1, v2, :cond_4

    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x51

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 1612
    :cond_3
    const/4 v1, 0x0

    return-object v1

    .line 1604
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v3, 0x0

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1605
    .local v1, "tname":Ljava/lang/String;
    new-instance v2, Lgnu/expr/ReferenceExp;

    invoke-direct {v2, v1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 1606
    .local v2, "rexp":Lgnu/expr/ReferenceExp;
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    .line 1607
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {p0, v2, v3, v4}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 1608
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1609
    return-object v2
.end method

.method public parseMaybeKindTest()Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1536
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v2

    .local v0, "piTarget":Ljava/lang/String;
    move-object v1, v2

    .line 1578
    .local v1, "type":Lgnu/bytecode/Type;
    const/4 v2, 0x0

    return-object v2

    .line 1540
    .end local v0    # "piTarget":Ljava/lang/String;
    .end local v1    # "type":Lgnu/bytecode/Type;
    :pswitch_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0xec

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseNamedNodeType(Z)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1536
    :pswitch_1
    move-object v0, v2

    .line 1553
    .local v0, "type":Lgnu/bytecode/Type;
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1554
    sget-object v0, Lgnu/kawa/xml/NodeType;->documentNodeTest:Lgnu/kawa/xml/NodeType;

    .line 1555
    goto :goto_1

    .line 1536
    .end local v0    # "type":Lgnu/bytecode/Type;
    :pswitch_2
    move-object v0, v2

    .line 1563
    .restart local v0    # "type":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1564
    const/4 v2, 0x0

    .line 1565
    .local v2, "piTarget":Ljava/lang/String;
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x41

    if-eq v3, v4, :cond_1

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    .line 1567
    :cond_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v3

    .line 1568
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1570
    :cond_2
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x29

    if-ne v1, v3, :cond_3

    .line 1571
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    .line 1573
    :cond_3
    const-string v1, "expected \')\'"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 1574
    :goto_0
    invoke-static {v2}, Lgnu/kawa/xml/ProcessingInstructionType;->getInstance(Ljava/lang/String;)Lgnu/kawa/xml/ProcessingInstructionType;

    move-result-object v0

    .line 1575
    goto :goto_1

    .line 1536
    .end local v0    # "type":Lgnu/bytecode/Type;
    .end local v2    # "piTarget":Ljava/lang/String;
    :pswitch_3
    move-object v0, v2

    .line 1548
    .restart local v0    # "type":Lgnu/bytecode/Type;
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1549
    sget-object v0, Lgnu/kawa/xml/NodeType;->commentNodeTest:Lgnu/kawa/xml/NodeType;

    .line 1550
    goto :goto_1

    .line 1543
    .end local v0    # "type":Lgnu/bytecode/Type;
    :pswitch_4
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1544
    sget-object v0, Lgnu/kawa/xml/NodeType;->textNodeTest:Lgnu/kawa/xml/NodeType;

    .line 1545
    .restart local v0    # "type":Lgnu/bytecode/Type;
    goto :goto_1

    .line 1536
    .end local v0    # "type":Lgnu/bytecode/Type;
    :pswitch_5
    move-object v0, v2

    .line 1558
    .restart local v0    # "type":Lgnu/bytecode/Type;
    invoke-direct {p0}, Lgnu/xquery/lang/XQParser;->parseSimpleKindType()V

    .line 1559
    sget-object v0, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    .line 1560
    nop

    .line 1580
    :goto_1
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0xe6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseMaybePrimaryExpr()Lgnu/expr/Expression;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2867
    move-object/from16 v1, p0

    iget v0, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 2868
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 2869
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v3

    .line 2874
    const/16 v4, 0x2c

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x29

    const/16 v8, 0xa

    const/16 v9, 0x41

    const/16 v10, 0x51

    const/16 v11, 0x7b

    const/16 v13, 0x7d

    const/4 v14, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 3117
    return-object v5

    .line 2937
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v3

    .line 2938
    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3

    .line 2940
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2942
    iget v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v3, v9, :cond_1

    iget v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v3, v10, :cond_1

    iget v3, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v4, 0x43

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 2946
    :cond_0
    const-string v3, "saw end tag \'</\' not in an element constructor"

    goto :goto_1

    .line 2944
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saw end tag \'</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v7, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, v5, v14, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">\' not in an element constructor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2947
    :goto_1
    iput v0, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 2948
    iput v2, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 2949
    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 2950
    :goto_2
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x195

    if-eq v2, v3, :cond_2

    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v6, :cond_2

    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v8, :cond_2

    .line 2951
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_2

    .line 2952
    :cond_2
    return-object v0

    .line 2956
    :cond_3
    invoke-virtual {v1, v3, v14}, Lgnu/xquery/lang/XQParser;->parseXMLConstructor(IZ)Lgnu/expr/Expression;

    move-result-object v3

    .line 2957
    invoke-virtual {v1, v3, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2959
    goto/16 :goto_16

    .line 3028
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3029
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 3032
    const/16 v6, 0xfe

    const/16 v7, 0x100

    const/16 v8, 0xff

    const/16 v15, 0xfb

    if-eq v3, v15, :cond_b

    const/16 v12, 0xfc

    if-ne v3, v12, :cond_4

    goto :goto_4

    .line 3052
    :cond_4
    if-ne v3, v7, :cond_5

    .line 3053
    const-string v9, "gnu.kawa.xml.DocumentConstructor"

    const-string v10, "documentConstructor"

    invoke-static {v9, v10}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto/16 :goto_a

    .line 3055
    :cond_5
    if-ne v3, v6, :cond_6

    .line 3056
    const-string v9, "gnu.kawa.xml.CommentConstructor"

    const-string v10, "commentConstructor"

    invoke-static {v9, v10}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto/16 :goto_a

    .line 3058
    :cond_6
    if-ne v3, v8, :cond_a

    .line 3061
    iget v12, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v12, v9, :cond_7

    .line 3062
    new-instance v9, Lgnu/expr/QuoteExp;

    new-instance v10, Ljava/lang/String;

    iget-object v12, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v7, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v10, v12, v14, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    .line 3064
    :cond_7
    iget v7, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v7, v11, :cond_8

    .line 3066
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v9

    goto :goto_3

    .line 3070
    :cond_8
    const-string v7, "expected NCName or \'{\' after \'processing-instruction\'"

    invoke-virtual {v1, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 3071
    iget v7, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v7, v10, :cond_9

    .line 3072
    return-object v9

    .line 3074
    :cond_9
    :goto_3
    invoke-virtual {v5, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3075
    const-string v7, "gnu.kawa.xml.MakeProcInst"

    const-string v9, "makeProcInst"

    invoke-static {v7, v9}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    .line 3077
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3078
    goto :goto_a

    .line 3080
    :cond_a
    const-string v7, "gnu.kawa.xml.MakeText"

    const-string v9, "makeText"

    invoke-static {v7, v9}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v9

    goto :goto_a

    .line 3035
    :cond_b
    :goto_4
    iget v7, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v7, v9, :cond_e

    iget v7, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v7, v10, :cond_c

    goto :goto_5

    .line 3037
    :cond_c
    iget v7, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v7, v11, :cond_d

    .line 3038
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    move-result-object v7

    goto :goto_7

    .line 3040
    :cond_d
    const-string v0, "missing element/attribute name"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3036
    :cond_e
    :goto_5
    if-eq v3, v15, :cond_f

    const/4 v7, 0x1

    goto :goto_6

    :cond_f
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v1, v7}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v7

    .line 3041
    :goto_7
    if-ne v3, v15, :cond_10

    const/4 v9, 0x1

    goto :goto_8

    :cond_10
    const/4 v9, 0x0

    :goto_8
    invoke-static {v7, v9}, Lgnu/xquery/lang/XQParser;->castQName(Lgnu/expr/Expression;Z)Lgnu/expr/ApplyExp;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3042
    if-ne v3, v15, :cond_11

    .line 3044
    new-instance v7, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v7}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 3045
    iget v9, v1, Lgnu/xquery/lang/XQParser;->copyNamespacesMode:I

    iput v9, v7, Lgnu/kawa/xml/MakeElement;->copyNamespacesMode:I

    .line 3046
    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-direct {v9, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 3047
    goto :goto_9

    .line 3049
    :cond_11
    sget-object v7, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    move-object v9, v7

    .line 3050
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3051
    nop

    .line 3082
    :goto_a
    invoke-virtual {v1, v11}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v7

    .line 3083
    const-string v10, "unexpected end-of-file after \'{\'"

    invoke-virtual {v1, v10}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3084
    iget v10, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v10, v11, :cond_12

    .line 3085
    const-string v0, "missing \'{\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3086
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3087
    const/16 v10, 0xfd

    if-eq v3, v10, :cond_14

    if-eq v3, v6, :cond_14

    if-ne v3, v8, :cond_13

    goto :goto_c

    .line 3090
    :cond_13
    iget v6, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v6, v13, :cond_16

    .line 3092
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3093
    :goto_b
    iget v6, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v6, v4, :cond_16

    .line 3095
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3096
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_b

    .line 3089
    :cond_14
    :goto_c
    if-ne v3, v8, :cond_15

    const/4 v12, 0x1

    goto :goto_d

    :cond_15
    const/4 v12, 0x0

    :goto_d
    invoke-virtual {v1, v13, v12}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3099
    :cond_16
    invoke-virtual {v1, v7}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3100
    iget v4, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v4, v13, :cond_17

    .line 3101
    const-string v0, "missing \'}\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3102
    :cond_17
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Lgnu/expr/Expression;

    .line 3103
    invoke-virtual {v5, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 3104
    new-instance v5, Lgnu/expr/ApplyExp;

    invoke-direct {v5, v9, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3105
    invoke-virtual {v1, v5, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3106
    const/16 v0, 0x100

    if-eq v3, v0, :cond_19

    if-ne v3, v15, :cond_18

    goto :goto_e

    :cond_18
    move-object v3, v5

    goto/16 :goto_16

    .line 3107
    :cond_19
    :goto_e
    invoke-virtual {v1, v5}, Lgnu/xquery/lang/XQParser;->wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    goto/16 :goto_16

    .line 3112
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3113
    invoke-virtual {v1, v13, v14}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v3

    .line 3114
    goto/16 :goto_16

    .line 2881
    :sswitch_3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 2884
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2886
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v10, :cond_1a

    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v9, :cond_1a

    .line 2887
    const-string v2, "missing pragma name"

    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    goto :goto_10

    .line 2889
    :cond_1a
    new-instance v2, Ljava/lang/String;

    iget-object v3, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v14, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    .line 2890
    :goto_10
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2891
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2893
    const/4 v3, -0x1

    .line 2894
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v3, v5

    .line 2895
    if-ltz v4, :cond_1c

    int-to-char v5, v4

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 2896
    :cond_1c
    move v5, v3

    :goto_11
    const/16 v3, 0x23

    if-ne v4, v3, :cond_21

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v3

    if-eq v3, v7, :cond_1d

    goto :goto_12

    .line 2906
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    .line 2907
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2908
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2909
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0xc5

    if-eq v2, v3, :cond_20

    .line 2910
    nop

    .line 2912
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v11, :cond_1f

    .line 2914
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2915
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v2, v13, :cond_1e

    .line 2917
    invoke-virtual {v1, v11}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v2

    .line 2918
    invoke-virtual {v1, v13, v14}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2919
    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2920
    iget v2, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v6, :cond_1e

    .line 2921
    const-string v2, "missing \'}\' - unexpected end-of-file"

    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2923
    :cond_1e
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v2

    new-array v2, v2, [Lgnu/expr/Expression;

    .line 2924
    invoke-virtual {v0, v2}, Ljava/util/Stack;->copyInto([Ljava/lang/Object;)V

    .line 2925
    new-instance v3, Lgnu/expr/ApplyExp;

    new-instance v0, Lgnu/expr/ReferenceExp;

    sget-object v4, Lgnu/xquery/lang/XQResolveNames;->handleExtensionDecl:Lgnu/expr/Declaration;

    invoke-direct {v0, v4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v3, v0, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    goto/16 :goto_16

    .line 2928
    :cond_1f
    const-string v0, "missing \'{\' after pragma"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    .line 2929
    goto/16 :goto_16

    .line 2911
    :cond_20
    goto/16 :goto_f

    .line 2898
    :cond_21
    :goto_12
    if-gez v4, :cond_22

    .line 2899
    const-string v3, "pragma ended by end-of-file"

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2900
    :cond_22
    if-nez v5, :cond_23

    .line 2901
    const-string v3, "missing space between pragma and extension content"

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2902
    :cond_23
    nop

    .line 2903
    int-to-char v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2904
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    const/4 v5, 0x1

    goto :goto_11

    .line 2932
    :sswitch_4
    const-string v0, "saw unexpected \'{\' - assume you meant \'(\'"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    .line 2933
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseEnclosedExpr()Lgnu/expr/Expression;

    .line 2934
    goto/16 :goto_16

    .line 2995
    :sswitch_5
    new-instance v3, Ljava/lang/String;

    iget-object v6, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v9, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v3, v6, v14, v9}, Ljava/lang/String;-><init>([CII)V

    .line 2996
    const/16 v6, 0x28

    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v6

    .line 2997
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2998
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9, v8}, Ljava/util/Vector;-><init>(I)V

    .line 2999
    iget v8, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v8, v7, :cond_26

    .line 3003
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v8

    .line 3004
    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 3005
    iget v8, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v8, v7, :cond_24

    .line 3006
    goto :goto_14

    .line 3007
    :cond_24
    iget v8, v1, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v8, v4, :cond_25

    .line 3008
    const-string v0, "missing \')\' after function call"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 3009
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3010
    goto :goto_13

    .line 3012
    :cond_26
    :goto_14
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Lgnu/expr/Expression;

    .line 3014
    invoke-virtual {v9, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 3015
    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v3, v5}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 3016
    const/4 v3, 0x1

    invoke-virtual {v7, v3}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    .line 3017
    new-instance v3, Lgnu/expr/ApplyExp;

    invoke-direct {v3, v7, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 3018
    invoke-virtual {v1, v3, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 3019
    invoke-virtual {v1, v6}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3020
    goto/16 :goto_16

    .line 2972
    :sswitch_6
    new-instance v2, Ljava/lang/String;

    iget-object v0, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v0, v14, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2976
    const/16 v0, 0x31

    if-ne v3, v0, :cond_27

    .line 2977
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_15

    .line 2979
    :cond_27
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 2980
    :goto_15
    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2985
    goto :goto_16

    .line 2982
    :catchall_0
    move-exception v0

    .line 2984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid decimal literal: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    .line 2986
    goto :goto_16

    .line 2966
    :sswitch_7
    new-instance v3, Lgnu/expr/QuoteExp;

    iget-object v0, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v2, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-static {v0, v14, v2, v8, v14}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v0

    invoke-direct {v3, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 2968
    goto :goto_16

    .line 2877
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseParenExpr()Lgnu/expr/Expression;

    move-result-object v3

    .line 2878
    goto :goto_16

    .line 2988
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->parseVariable()Ljava/lang/Object;

    move-result-object v0

    .line 2989
    if-nez v0, :cond_28

    .line 2990
    const-string v0, "missing Variable"

    invoke-virtual {v1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 2991
    :cond_28
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    .line 2992
    iget v0, v1, Lgnu/xquery/lang/XQParser;->curLine:I

    iget v2, v1, Lgnu/xquery/lang/XQParser;->curColumn:I

    invoke-virtual {v1, v3, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2993
    goto :goto_16

    .line 2962
    :sswitch_a
    new-instance v3, Lgnu/expr/QuoteExp;

    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, v1, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v2, v14, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 2963
    nop

    .line 3128
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3129
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_a
        0x24 -> :sswitch_9
        0x28 -> :sswitch_8
        0x30 -> :sswitch_7
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x46 -> :sswitch_5
        0x7b -> :sswitch_4
        0xc5 -> :sswitch_3
        0xf9 -> :sswitch_2
        0xfa -> :sswitch_2
        0xfb -> :sswitch_1
        0xfc -> :sswitch_1
        0xfd -> :sswitch_1
        0xfe -> :sswitch_1
        0xff -> :sswitch_1
        0x100 -> :sswitch_1
        0x194 -> :sswitch_0
    .end sparse-switch
.end method

.method parseNameTest(Z)Lgnu/expr/Expression;
    .locals 10
    .param p1, "attribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1828
    const/4 v0, 0x0

    .local v0, "local":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1829
    .local v1, "prefix":Ljava/lang/String;
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x51

    const/16 v4, 0x3a

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v3, :cond_1

    .line 1831
    iget v2, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 1832
    .local v2, "colon":I
    :goto_0
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    add-int/lit8 v2, v2, -0x1

    aget-char v3, v3, v2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 1833
    :cond_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    invoke-direct {v3, v4, v6, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v3

    .line 1834
    add-int/2addr v2, v5

    .line 1835
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v7, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v7, v2

    invoke-direct {v3, v4, v2, v7}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v3

    .line 1837
    .end local v2    # "colon":I
    goto/16 :goto_2

    .line 1838
    :cond_1
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x19f

    const/16 v7, 0x2a

    const/16 v8, 0x41

    if-ne v2, v3, :cond_7

    .line 1840
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 1841
    .local v2, "next":I
    const-string v0, ""

    .line 1842
    if-eq v2, v4, :cond_2

    .line 1843
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->unread(I)V

    goto :goto_1

    .line 1846
    :cond_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 1847
    if-gez v2, :cond_3

    .line 1848
    const-string v3, "unexpected end-of-file after \'*:\'"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 1849
    :cond_3
    int-to-char v3, v2

    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1851
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1852
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1853
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v3, v8, :cond_4

    .line 1854
    const-string v3, "invalid name test"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_1

    .line 1856
    :cond_4
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v6, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1859
    :cond_5
    if-eq v2, v7, :cond_6

    .line 1860
    const-string v3, "missing local-name after \'*:\'"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 1862
    :cond_6
    :goto_1
    new-instance v3, Lgnu/mapping/Symbol;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    invoke-static {v3}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v3

    return-object v3

    .line 1864
    .end local v2    # "next":I
    :cond_7
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v2, v8, :cond_9

    .line 1866
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v2

    .line 1867
    if-eqz p1, :cond_8

    .line 1868
    new-instance v2, Lgnu/expr/QuoteExp;

    sget-object v3, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v2

    .line 1869
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 1871
    :cond_9
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x43

    if-ne v2, v3, :cond_b

    .line 1873
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v6, v4}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v2

    .line 1874
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v2

    .line 1875
    .restart local v2    # "next":I
    if-eq v2, v7, :cond_a

    .line 1876
    const-string v3, "invalid characters after \'NCName:\'"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 1877
    :cond_a
    const-string v0, ""

    .line 1879
    .end local v2    # "next":I
    :cond_b
    :goto_2
    if-eqz v1, :cond_c

    .line 1880
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 1881
    :cond_c
    const/4 v2, 0x3

    new-array v3, v2, [Lgnu/expr/Expression;

    .line 1882
    .local v3, "args":[Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/expr/ReferenceExp;

    sget-object v8, Lgnu/xquery/lang/XQResolveNames;->resolvePrefixDecl:Lgnu/expr/Declaration;

    invoke-direct {v7, v8}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    new-array v8, v5, [Lgnu/expr/Expression;

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-direct {v4, v7, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    aput-object v4, v3, v6

    .line 1884
    new-instance v4, Lgnu/expr/QuoteExp;

    if-nez v0, :cond_d

    const-string v6, ""

    goto :goto_3

    :cond_d
    move-object v6, v0

    :goto_3
    invoke-direct {v4, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v4, v3, v5

    .line 1885
    new-instance v4, Lgnu/expr/QuoteExp;

    invoke-direct {v4, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 1886
    new-instance v4, Lgnu/expr/ApplyExp;

    sget-object v5, Lgnu/expr/Compilation;->typeSymbol:Lgnu/bytecode/ClassType;

    const-string v6, "make"

    invoke-virtual {v5, v6, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    move-object v2, v4

    .line 1889
    .local v2, "make":Lgnu/expr/ApplyExp;
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1890
    return-object v2
.end method

.method public parseNamedNodeType(Z)Lgnu/expr/Expression;
    .locals 7
    .param p1, "attribute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, "tname":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1396
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    .line 1398
    sget-object v1, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    .line 1399
    .local v1, "qname":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_4

    .line 1403
    .end local v1    # "qname":Lgnu/expr/Expression;
    :cond_0
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x41

    const/16 v4, 0x51

    if-eq v1, v4, :cond_3

    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 1407
    :cond_1
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x19f

    if-eq v1, v5, :cond_2

    .line 1408
    const-string v1, "expected QName or *"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 1409
    :cond_2
    sget-object v1, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    invoke-static {v1}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v1

    .restart local v1    # "qname":Lgnu/expr/Expression;
    goto :goto_1

    .line 1404
    .end local v1    # "qname":Lgnu/expr/Expression;
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v1

    .line 1412
    .restart local v1    # "qname":Lgnu/expr/Expression;
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1413
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_6

    .line 1415
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1416
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v5, v4, :cond_5

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v4, v3, :cond_4

    goto :goto_2

    .line 1421
    :cond_4
    const-string v3, "expected QName"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    goto :goto_3

    .line 1418
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v0

    .line 1423
    :cond_6
    :goto_3
    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v3, v2, :cond_7

    .line 1424
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_4

    .line 1426
    :cond_7
    const-string v2, "expected \')\' after element"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 1428
    :goto_4
    invoke-static {p1, v1, v0}, Lgnu/xquery/lang/XQParser;->makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2
.end method

.method parseNodeTest(I)Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1896
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    .line 1897
    const/4 v0, 0x1

    new-array v1, v0, [Lgnu/expr/Expression;

    .line 1899
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybeKindTest()Lgnu/expr/Expression;

    move-result-object v2

    .line 1901
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1903
    aput-object v2, v1, v3

    goto :goto_3

    .line 1905
    :cond_0
    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x41

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x51

    if-eq v4, v5, :cond_3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x43

    if-eq v4, v5, :cond_3

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v5, 0x19f

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 1912
    :cond_1
    if-ltz p1, :cond_2

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported axis \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "::\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 1915
    :cond_2
    return-object v6

    .line 1908
    :cond_3
    :goto_0
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-ne p1, v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->parseNameTest(Z)Lgnu/expr/Expression;

    move-result-object v4

    invoke-static {v5, v4, v6}, Lgnu/xquery/lang/XQParser;->makeNamedNodeType(ZLgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1917
    :goto_3
    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v4, v4, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v5, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v4, v5, v3}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v4

    .line 1919
    if-nez v4, :cond_6

    .line 1920
    const-string v4, "node test when context item is undefined"

    const-string v5, "XPDY0002"

    invoke-virtual {p0, v4, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    goto :goto_4

    .line 1922
    :cond_6
    new-instance v5, Lgnu/expr/ReferenceExp;

    sget-object v6, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-direct {v5, v6, v4}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    move-object v4, v5

    .line 1923
    :goto_4
    if-nez v2, :cond_7

    .line 1924
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1927
    :cond_7
    const/4 v2, 0x3

    const/4 v5, 0x4

    if-eq p1, v2, :cond_a

    const/4 v2, -0x1

    if-ne p1, v2, :cond_8

    goto :goto_6

    .line 1929
    :cond_8
    if-ne p1, v5, :cond_9

    .line 1930
    sget-object p1, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    goto :goto_7

    .line 1934
    :cond_9
    packed-switch p1, :pswitch_data_0

    .line 1946
    :pswitch_0
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1

    .line 1937
    :pswitch_1
    const-string p1, "Self"

    goto :goto_5

    .line 1944
    :pswitch_2
    const-string p1, "PrecedingSibling"

    goto :goto_5

    .line 1943
    :pswitch_3
    const-string p1, "Preceding"

    goto :goto_5

    .line 1938
    :pswitch_4
    const-string p1, "Parent"

    goto :goto_5

    .line 1942
    :pswitch_5
    const-string p1, "FollowingSibling"

    goto :goto_5

    .line 1941
    :pswitch_6
    const-string p1, "Following"

    goto :goto_5

    .line 1936
    :pswitch_7
    const-string p1, "DescendantOrSelf"

    goto :goto_5

    .line 1945
    :pswitch_8
    const-string p1, "Attribute"

    goto :goto_5

    .line 1940
    :pswitch_9
    const-string p1, "AncestorOrSelf"

    goto :goto_5

    .line 1939
    :pswitch_a
    const-string p1, "Ancestor"

    .line 1948
    :goto_5
    new-instance v2, Lgnu/expr/PrimProcedure;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gnu.kawa.xml."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "Axis"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v6, "make"

    invoke-direct {v2, p1, v6, v0}, Lgnu/expr/PrimProcedure;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object p1

    goto :goto_7

    .line 1928
    :cond_a
    :goto_6
    sget-object p1, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    .line 1953
    :goto_7
    new-instance v2, Lgnu/expr/ApplyExp;

    invoke-direct {v2, p1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 1954
    invoke-virtual {v2, v5}, Lgnu/expr/ApplyExp;->setFlag(I)V

    .line 1955
    new-instance p1, Lgnu/expr/ApplyExp;

    new-array v0, v0, [Lgnu/expr/Expression;

    aput-object v4, v0, v3

    invoke-direct {p1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public parseOptionalTypeDeclaration()Lgnu/expr/Expression;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1463
    const-string v0, "as"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1464
    const/4 v0, 0x0

    return-object v0

    .line 1465
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1466
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method parseParenExpr()Lgnu/expr/Expression;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2740
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2741
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v0

    .line 2742
    .local v0, "saveReadState":C
    const/16 v1, 0x29

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v1

    .line 2743
    .local v1, "exp":Lgnu/expr/Expression;
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2744
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 2745
    const-string v2, "missing \')\' - unexpected end-of-file"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2746
    :cond_0
    return-object v1
.end method

.method parsePathExpr()Lgnu/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1798
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1818
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseStepExpr()Lgnu/expr/Expression;

    move-result-object v0

    .local v0, "step1":Lgnu/expr/Expression;
    goto :goto_2

    .line 1800
    .end local v0    # "step1":Lgnu/expr/Expression;
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v1, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 1802
    .local v0, "dotDecl":Lgnu/expr/Declaration;
    if-nez v0, :cond_2

    .line 1803
    const-string v1, "context item is undefined"

    const-string v3, "XPDY0002"

    invoke-virtual {p0, v1, v3}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    .local v1, "dot":Lgnu/expr/Expression;
    goto :goto_1

    .line 1805
    .end local v1    # "dot":Lgnu/expr/Expression;
    :cond_2
    new-instance v1, Lgnu/expr/ReferenceExp;

    sget-object v3, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-direct {v1, v3, v0}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 1806
    .restart local v1    # "dot":Lgnu/expr/Expression;
    :goto_1
    new-instance v3, Lgnu/expr/ApplyExp;

    const-string v4, "gnu.xquery.util.NodeUtils"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    const-string v5, "rootDocument"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    new-array v5, v6, [Lgnu/expr/Expression;

    aput-object v1, v5, v2

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 1809
    .local v3, "step1":Lgnu/expr/Expression;
    iget v4, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v2

    .line 1810
    .local v2, "next":I
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 1811
    if-ltz v2, :cond_5

    const/16 v4, 0x29

    if-eq v2, v4, :cond_5

    const/16 v4, 0x7d

    if-ne v2, v4, :cond_4

    goto :goto_3

    .line 1816
    .end local v0    # "dotDecl":Lgnu/expr/Declaration;
    .end local v1    # "dot":Lgnu/expr/Expression;
    .end local v2    # "next":I
    :cond_4
    move-object v0, v3

    .line 1819
    .end local v3    # "step1":Lgnu/expr/Expression;
    .local v0, "step1":Lgnu/expr/Expression;
    :goto_2
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parseRelativePathExpr(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 1813
    .local v0, "dotDecl":Lgnu/expr/Declaration;
    .restart local v1    # "dot":Lgnu/expr/Expression;
    .restart local v2    # "next":I
    .restart local v3    # "step1":Lgnu/expr/Expression;
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1814
    return-object v3
.end method

.method parsePrimaryExpr()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2183
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseMaybePrimaryExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 2184
    .local v0, "exp":Lgnu/expr/Expression;
    if-nez v0, :cond_1

    .line 2186
    const-string v1, "missing expression"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 2187
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2188
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2189
    :cond_0
    return-object v0

    .line 2191
    :cond_1
    return-object v0
.end method

.method public parseQuantifiedExpr(Z)Lgnu/expr/Expression;
    .locals 12
    .param p1, "isEvery"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3488
    if-eqz p1, :cond_0

    const/16 v0, 0x65

    goto :goto_0

    :cond_0
    const/16 v0, 0x73

    :goto_0
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v0

    .line 3489
    .local v0, "saveNesting":C
    const/16 v1, 0x24

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 3490
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v2

    .line 3491
    .local v2, "decl":Lgnu/expr/Declaration;
    if-nez v2, :cond_1

    .line 3492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing Variable token:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 3493
    :cond_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3495
    new-instance v3, Lgnu/expr/LambdaExp;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 3496
    .local v3, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v3, v2}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 3497
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 3498
    const-wide/32 v5, 0x40000

    invoke-virtual {v2, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 3499
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseOptionalTypeDeclaration()Lgnu/expr/Expression;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 3501
    const-string v5, "in"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3502
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_1

    .line 3505
    :cond_2
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v6, 0x4c

    if-ne v5, v6, :cond_3

    .line 3506
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3507
    :cond_3
    const-string v5, "missing \'in\' in QuantifiedExpr"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3509
    :goto_1
    new-array v5, v4, [Lgnu/expr/Expression;

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 3510
    .local v5, "inits":[Lgnu/expr/Expression;
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 3511
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6, v3}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 3513
    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v8, 0x2c

    const-string v9, "some"

    const-string v10, "every"

    if-ne v6, v8, :cond_5

    .line 3515
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3516
    iget v6, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-eq v6, v1, :cond_4

    .line 3517
    const-string v1, "missing $NAME after \',\'"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 3518
    :cond_4
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->parseQuantifiedExpr(Z)Lgnu/expr/Expression;

    move-result-object v1

    .local v1, "body":Lgnu/expr/Expression;
    goto :goto_2

    .line 3522
    .end local v1    # "body":Lgnu/expr/Expression;
    :cond_5
    const-string v1, "satisfies"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v1

    .line 3523
    .local v1, "sawSatisfies":Z
    if-nez v1, :cond_6

    invoke-virtual {p0, v10}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 3524
    const-string v4, "missing \'satisfies\' clause"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v4

    return-object v4

    .line 3525
    :cond_6
    const-string v6, "unexpected eof-of-file after \'satisfies\'"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->peekNonSpace(Ljava/lang/String;)I

    .line 3526
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v6

    add-int/2addr v6, v4

    .line 3527
    .local v6, "bodyLine":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v8

    add-int/2addr v8, v4

    .line 3528
    .local v8, "bodyColumn":I
    if-eqz v1, :cond_7

    .line 3529
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 3530
    :cond_7
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExprSingle()Lgnu/expr/Expression;

    move-result-object v11

    .line 3531
    .local v11, "body":Lgnu/expr/Expression;
    invoke-virtual {p0, v11, v6, v8}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    move-object v1, v11

    .line 3533
    .end local v6    # "bodyLine":I
    .end local v8    # "bodyColumn":I
    .end local v11    # "body":Lgnu/expr/Expression;
    .local v1, "body":Lgnu/expr/Expression;
    :goto_2
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6, v3}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 3534
    iput-object v1, v3, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 3535
    const/4 v6, 0x2

    new-array v6, v6, [Lgnu/expr/Expression;

    aput-object v3, v6, v7

    aget-object v7, v5, v7

    aput-object v7, v6, v4

    move-object v4, v6

    .line 3536
    .local v4, "args":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/ApplyExp;

    if-eqz p1, :cond_8

    move-object v9, v10

    :cond_8
    const-string v7, "gnu.xquery.util.ValuesEvery"

    invoke-static {v7, v9}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v6
.end method

.method parseRelativePathExpr(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 11
    .param p1, "exp"    # Lgnu/expr/Expression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1967
    const/4 v0, 0x0

    .line 1969
    .local v0, "beforeSlashSlash":Lgnu/expr/Expression;
    :goto_0
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x44

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_1

    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 2049
    :cond_0
    return-object p1

    .line 1971
    :cond_1
    :goto_1
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 1973
    .local v1, "descendants":Z
    :goto_2
    new-instance v2, Lgnu/expr/LambdaExp;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 1974
    .local v2, "lexp":Lgnu/expr/LambdaExp;
    sget-object v6, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v2, v6}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 1975
    .local v6, "dotDecl":Lgnu/expr/Declaration;
    const-wide/32 v7, 0x40000

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 1976
    sget-object v7, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 1977
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 1978
    sget-object v7, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v8, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v7, v8}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 1979
    sget-object v7, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v8, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v2, v7, v8}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 1980
    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v7, v2}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 1981
    if-eqz v1, :cond_3

    .line 1983
    iput v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1984
    new-instance v3, Lgnu/expr/ReferenceExp;

    sget-object v7, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-direct {v3, v7, v6}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 1985
    .local v3, "dot":Lgnu/expr/Expression;
    new-array v7, v4, [Lgnu/expr/Expression;

    aput-object v3, v7, v5

    .line 1986
    .local v7, "args":[Lgnu/expr/Expression;
    sget-object v8, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    .line 1987
    .local v8, "op":Lgnu/kawa/xml/TreeScanner;
    new-instance v9, Lgnu/expr/ApplyExp;

    invoke-direct {v9, v8, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iput-object v9, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1988
    move-object v0, p1

    .line 1989
    .end local v3    # "dot":Lgnu/expr/Expression;
    .end local v7    # "args":[Lgnu/expr/Expression;
    .end local v8    # "op":Lgnu/kawa/xml/TreeScanner;
    goto :goto_3

    .line 1992
    :cond_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1993
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseStepExpr()Lgnu/expr/Expression;

    move-result-object v3

    .line 1998
    .local v3, "exp2":Lgnu/expr/Expression;
    if-eqz v0, :cond_4

    instance-of v7, v3, Lgnu/expr/ApplyExp;

    if-eqz v7, :cond_4

    move-object v7, v3

    check-cast v7, Lgnu/expr/ApplyExp;

    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v7

    move-object v8, v7

    .local v8, "func":Lgnu/expr/Expression;
    instance-of v7, v7, Lgnu/expr/ApplyExp;

    if-eqz v7, :cond_4

    move-object v7, v8

    check-cast v7, Lgnu/expr/ApplyExp;

    move-object v9, v7

    .local v9, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v7}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v7

    sget-object v10, Lgnu/xquery/lang/XQParser;->makeChildAxisStep:Lgnu/expr/QuoteExp;

    if-ne v7, v10, :cond_4

    .line 2003
    sget-object v7, Lgnu/xquery/lang/XQParser;->makeDescendantAxisStep:Lgnu/expr/QuoteExp;

    invoke-virtual {v9, v7}, Lgnu/expr/ApplyExp;->setFunction(Lgnu/expr/Expression;)V

    .line 2004
    move-object p1, v0

    .line 2007
    .end local v8    # "func":Lgnu/expr/Expression;
    .end local v9    # "aexp":Lgnu/expr/ApplyExp;
    :cond_4
    iput-object v3, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2008
    const/4 v0, 0x0

    .line 2010
    .end local v3    # "exp2":Lgnu/expr/Expression;
    :goto_3
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v3, v2}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2046
    const/4 v3, 0x2

    new-array v3, v3, [Lgnu/expr/Expression;

    aput-object p1, v3, v5

    aput-object v2, v3, v4

    .line 2047
    .local v3, "args":[Lgnu/expr/Expression;
    new-instance v4, Lgnu/expr/ApplyExp;

    sget-object v5, Lgnu/xquery/util/RelativeStep;->relativeStep:Lgnu/xquery/util/RelativeStep;

    invoke-direct {v4, v5, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object p1, v4

    .line 2048
    .end local v1    # "descendants":Z
    .end local v2    # "lexp":Lgnu/expr/LambdaExp;
    .end local v3    # "args":[Lgnu/expr/Expression;
    .end local v6    # "dotDecl":Lgnu/expr/Declaration;
    goto/16 :goto_0
.end method

.method parseSeparator()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3706
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v0}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 3707
    .local v0, "startLine":I
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v1

    .line 3708
    .local v2, "startColumn":I
    iget v3, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v1

    .line 3709
    .local v1, "next":I
    const/16 v3, 0x3b

    if-ne v1, v3, :cond_1

    .line 3710
    return-void

    .line 3711
    :cond_1
    sget-boolean v3, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-eqz v3, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    .line 3713
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 3714
    iput v2, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 3715
    const/16 v3, 0x77

    const-string v4, "missing \';\' after declaration"

    invoke-virtual {p0, v3, v4}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 3717
    :cond_2
    if-ltz v1, :cond_3

    .line 3718
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 3719
    :cond_3
    return-void
.end method

.method parseStepExpr()Lgnu/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2056
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v1, -0x1

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_5

    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x33

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 2075
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    .line 2077
    .local v0, "axis":I
    if-ltz v0, :cond_1

    const/16 v2, 0xd

    if-ge v0, v2, :cond_1

    .line 2079
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2080
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v1

    .local v1, "unqualifiedStep":Lgnu/expr/Expression;
    goto :goto_0

    .line 2082
    .end local v1    # "unqualifiedStep":Lgnu/expr/Expression;
    :cond_1
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    .line 2084
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2085
    const/4 v0, 0x2

    .line 2086
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v1

    .restart local v1    # "unqualifiedStep":Lgnu/expr/Expression;
    goto :goto_0

    .line 2088
    .end local v1    # "unqualifiedStep":Lgnu/expr/Expression;
    :cond_2
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0xec

    if-ne v2, v3, :cond_3

    .line 2090
    const/4 v0, 0x2

    .line 2091
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v1

    .restart local v1    # "unqualifiedStep":Lgnu/expr/Expression;
    goto :goto_0

    .line 2095
    .end local v1    # "unqualifiedStep":Lgnu/expr/Expression;
    :cond_3
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->parseNodeTest(I)Lgnu/expr/Expression;

    move-result-object v1

    .line 2096
    .restart local v1    # "unqualifiedStep":Lgnu/expr/Expression;
    if-eqz v1, :cond_4

    .line 2098
    const/4 v0, 0x3

    goto :goto_0

    .line 2102
    :cond_4
    const/4 v0, -0x1

    .line 2103
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parsePrimaryExpr()Lgnu/expr/Expression;

    move-result-object v1

    .line 2106
    :goto_0
    invoke-virtual {p0, v1, v0}, Lgnu/xquery/lang/XQParser;->parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 2058
    .end local v0    # "axis":I
    .end local v1    # "unqualifiedStep":Lgnu/expr/Expression;
    :cond_5
    :goto_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v3, 0xc

    const/16 v4, 0x9

    if-ne v0, v2, :cond_6

    const/16 v0, 0xc

    goto :goto_2

    :cond_6
    const/16 v0, 0x9

    .line 2059
    .restart local v0    # "axis":I
    :goto_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2060
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->lexical:Lgnu/expr/NameLookup;

    sget-object v5, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v2

    .line 2062
    .local v2, "dotDecl":Lgnu/expr/Declaration;
    if-nez v2, :cond_7

    .line 2063
    const-string v5, "context item is undefined"

    const-string v7, "XPDY0002"

    invoke-virtual {p0, v5, v7}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    .local v5, "exp":Lgnu/expr/Expression;
    goto :goto_3

    .line 2065
    .end local v5    # "exp":Lgnu/expr/Expression;
    :cond_7
    new-instance v5, Lgnu/expr/ReferenceExp;

    sget-object v7, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-direct {v5, v7, v2}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;Lgnu/expr/Declaration;)V

    .line 2066
    .restart local v5    # "exp":Lgnu/expr/Expression;
    :goto_3
    if-ne v0, v4, :cond_8

    .line 2068
    const/4 v4, 0x1

    new-array v4, v4, [Lgnu/expr/Expression;

    aput-object v5, v4, v6

    .line 2069
    .local v4, "args":[Lgnu/expr/Expression;
    new-instance v6, Lgnu/expr/ApplyExp;

    sget-object v7, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-static {v7}, Lgnu/kawa/xml/ParentAxis;->make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/ParentAxis;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v5, v6

    .line 2073
    .end local v4    # "args":[Lgnu/expr/Expression;
    :cond_8
    if-ne v0, v3, :cond_9

    goto :goto_4

    :cond_9
    move v1, v0

    :goto_4
    invoke-virtual {p0, v5, v1}, Lgnu/xquery/lang/XQParser;->parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1
.end method

.method parseStepQualifiers(Lgnu/expr/Expression;I)Lgnu/expr/Expression;
    .locals 12
    .param p1, "exp"    # Lgnu/expr/Expression;
    .param p2, "axis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2114
    nop

    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_5

    .line 2116
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2117
    .local v0, "startLine":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v2

    add-int/2addr v2, v1

    .line 2118
    .local v2, "startColumn":I
    iget v3, p0, Lgnu/xquery/lang/XQParser;->seenPosition:I

    .line 2119
    .local v3, "saveSeenPosition":I
    iget v4, p0, Lgnu/xquery/lang/XQParser;->seenLast:I

    .line 2120
    .local v4, "saveSawLast":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2121
    new-instance v5, Lgnu/expr/LambdaExp;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2122
    .local v5, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {p0, v5, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2123
    sget-object v6, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v5, v6}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 2124
    .local v6, "dot":Lgnu/expr/Declaration;
    if-ltz p2, :cond_0

    .line 2125
    sget-object v7, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_1

    .line 2127
    :cond_0
    invoke-static {}, Lgnu/kawa/reflect/SingletonType;->getInstance()Lgnu/kawa/reflect/SingletonType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 2128
    :goto_1
    sget-object v7, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v5, v7, v8}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 2129
    sget-object v7, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v8, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v5, v7, v8}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 2130
    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v7, v5}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2131
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 2132
    const/16 v7, 0x5d

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lgnu/xquery/lang/XQParser;->parseExprSequence(IZ)Lgnu/expr/Expression;

    move-result-object v7

    .line 2133
    .local v7, "cond":Lgnu/expr/Expression;
    iget v9, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 2134
    const-string v9, "missing \']\' - unexpected end-of-file"

    invoke-virtual {p0, v9}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 2137
    :cond_1
    if-gez p2, :cond_2

    .line 2139
    const/16 v9, 0x50

    .line 2140
    .local v9, "kind":C
    sget-object v10, Lgnu/xquery/util/ValuesFilter;->exprFilter:Lgnu/xquery/util/ValuesFilter;

    .local v10, "valuesFilter":Lgnu/mapping/Procedure;
    goto :goto_3

    .line 2142
    .end local v9    # "kind":C
    .end local v10    # "valuesFilter":Lgnu/mapping/Procedure;
    :cond_2
    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_4

    const/16 v9, 0x9

    if-eq p2, v9, :cond_4

    const/16 v9, 0xa

    if-eq p2, v9, :cond_4

    const/16 v9, 0xb

    if-ne p2, v9, :cond_3

    goto :goto_2

    .line 2151
    :cond_3
    const/16 v9, 0x46

    .line 2152
    .restart local v9    # "kind":C
    sget-object v10, Lgnu/xquery/util/ValuesFilter;->forwardFilter:Lgnu/xquery/util/ValuesFilter;

    .restart local v10    # "valuesFilter":Lgnu/mapping/Procedure;
    goto :goto_3

    .line 2146
    .end local v9    # "kind":C
    .end local v10    # "valuesFilter":Lgnu/mapping/Procedure;
    :cond_4
    :goto_2
    const/16 v9, 0x52

    .line 2147
    .restart local v9    # "kind":C
    sget-object v10, Lgnu/xquery/util/ValuesFilter;->reverseFilter:Lgnu/xquery/util/ValuesFilter;

    .line 2158
    .restart local v10    # "valuesFilter":Lgnu/mapping/Procedure;
    :goto_3
    invoke-virtual {p0, v7, v0, v2}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Expression;II)V

    .line 2159
    iget-object v11, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v11, v5}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2160
    iput-object v7, v5, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2161
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2162
    const/4 v11, 0x2

    new-array v11, v11, [Lgnu/expr/Expression;

    aput-object p1, v11, v8

    aput-object v5, v11, v1

    move-object v1, v11

    .line 2163
    .local v1, "args":[Lgnu/expr/Expression;
    new-instance v8, Lgnu/expr/ApplyExp;

    invoke-direct {v8, v10, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object p1, v8

    .line 2164
    .end local v0    # "startLine":I
    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v2    # "startColumn":I
    .end local v3    # "saveSeenPosition":I
    .end local v4    # "saveSawLast":I
    .end local v5    # "lexp":Lgnu/expr/LambdaExp;
    .end local v6    # "dot":Lgnu/expr/Declaration;
    .end local v7    # "cond":Lgnu/expr/Expression;
    .end local v9    # "kind":C
    .end local v10    # "valuesFilter":Lgnu/mapping/Procedure;
    goto/16 :goto_0

    .line 2171
    :cond_5
    return-object p1
.end method

.method parseTypeSwitch()Lgnu/expr/Expression;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2779
    const/16 v0, 0x74

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v1

    .line 2780
    .local v1, "save":C
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseParenExpr()Lgnu/expr/Expression;

    move-result-object v2

    .line 2781
    .local v2, "selector":Lgnu/expr/Expression;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2782
    const/4 v3, 0x0

    .line 2784
    .local v3, "varName":Ljava/lang/Object;
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 2785
    .local v4, "vec":Ljava/util/Vector;
    invoke-virtual {v4, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2786
    :goto_0
    const-string v5, "case"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "missing Variable after \'$\'"

    const-string v7, "return"

    const/16 v8, 0x65

    const-string v9, "(arg)"

    const/4 v10, 0x1

    const/16 v11, 0x24

    if-eqz v5, :cond_4

    .line 2788
    const/16 v5, 0x63

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    .line 2789
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2790
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v5, v11, :cond_2

    .line 2792
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v5

    .line 2793
    .local v5, "decl":Lgnu/expr/Declaration;
    if-nez v5, :cond_0

    .line 2794
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 2795
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2796
    const-string v6, "as"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2797
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_1

    .line 2799
    :cond_1
    const-string v6, "missing \'as\'"

    invoke-virtual {p0, v8, v6}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    goto :goto_1

    .line 2802
    .end local v5    # "decl":Lgnu/expr/Declaration;
    :cond_2
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v9}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 2803
    .restart local v5    # "decl":Lgnu/expr/Declaration;
    :goto_1
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseDataType()Lgnu/expr/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgnu/expr/Declaration;->setTypeExp(Lgnu/expr/Expression;)V

    .line 2804
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2805
    new-instance v6, Lgnu/expr/LambdaExp;

    invoke-direct {v6, v10}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2806
    .local v6, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {v6, v5}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 2807
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2808
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_2

    .line 2810
    :cond_3
    const-string v7, "missing \'return\' after \'case\'"

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2811
    :goto_2
    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v7, v6}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2812
    const/16 v7, 0x72

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    .line 2813
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v7

    .line 2814
    .local v7, "caseExpr":Lgnu/expr/Expression;
    iput-object v7, v6, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2815
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2816
    iget-object v8, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v8, v6}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2817
    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2818
    .end local v6    # "lexp":Lgnu/expr/LambdaExp;
    .end local v7    # "caseExpr":Lgnu/expr/Expression;
    goto/16 :goto_0

    .line 2820
    .end local v5    # "decl":Lgnu/expr/Declaration;
    :cond_4
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2822
    new-instance v0, Lgnu/expr/LambdaExp;

    invoke-direct {v0, v10}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 2823
    .local v0, "lexp":Lgnu/expr/LambdaExp;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2825
    iget v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v5, v11, :cond_6

    .line 2827
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariableDeclaration()Lgnu/expr/Declaration;

    move-result-object v5

    .line 2828
    .restart local v5    # "decl":Lgnu/expr/Declaration;
    if-nez v5, :cond_5

    .line 2829
    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    return-object v6

    .line 2830
    :cond_5
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_3

    .line 2833
    .end local v5    # "decl":Lgnu/expr/Declaration;
    :cond_6
    new-instance v5, Lgnu/expr/Declaration;

    invoke-direct {v5, v9}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 2834
    .restart local v5    # "decl":Lgnu/expr/Declaration;
    :goto_3
    invoke-virtual {v0, v5}, Lgnu/expr/LambdaExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 2836
    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2837
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_4

    .line 2839
    :cond_7
    const-string v6, "missing \'return\' after \'default\'"

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 2840
    :goto_4
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 2841
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseExpr()Lgnu/expr/Expression;

    move-result-object v6

    .line 2842
    .local v6, "defaultExpr":Lgnu/expr/Expression;
    iput-object v6, v0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 2843
    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v7, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 2844
    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2845
    .end local v0    # "lexp":Lgnu/expr/LambdaExp;
    .end local v6    # "defaultExpr":Lgnu/expr/Expression;
    goto :goto_6

    .line 2848
    .end local v5    # "decl":Lgnu/expr/Declaration;
    :cond_8
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    const/16 v8, 0x77

    :goto_5
    const-string v0, "no \'default\' clause in \'typeswitch\'"

    const-string v5, "XPST0003"

    invoke-virtual {p0, v8, v0, v5}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 2852
    :goto_6
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 2853
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 2854
    .local v0, "args":[Lgnu/expr/Expression;
    invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 2855
    new-instance v5, Lgnu/expr/ApplyExp;

    const-string v6, "gnu.kawa.reflect.TypeSwitch"

    const-string v7, "typeSwitch"

    invoke-static {v6, v7}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v5
.end method

.method parseURILiteral()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1623
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1624
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 1625
    const-string v0, "expected a URILiteral"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->declError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1626
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1627
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1632
    return-object v0
.end method

.method parseUnaryExpr()Lgnu/expr/Expression;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1746
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x19e

    const/16 v2, 0x19d

    if-eq v0, v1, :cond_1

    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1758
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseUnionExpr()Lgnu/expr/Expression;

    move-result-object v0

    .local v0, "exp":Lgnu/expr/Expression;
    goto :goto_3

    .line 1748
    .end local v0    # "exp":Lgnu/expr/Expression;
    :cond_1
    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1749
    .local v0, "op":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1750
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseUnaryExpr()Lgnu/expr/Expression;

    move-result-object v1

    .line 1751
    .local v1, "exp":Lgnu/expr/Expression;
    if-ne v0, v2, :cond_2

    const-string v3, "plus"

    goto :goto_1

    :cond_2
    const-string v3, "minus"

    :goto_1
    if-ne v0, v2, :cond_3

    const-string v2, "+"

    goto :goto_2

    :cond_3
    const-string v2, "-"

    :goto_2
    const-string v4, "gnu.xquery.util.ArithOp"

    invoke-static {v4, v3, v2}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v2

    .line 1755
    .local v2, "func":Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    const/4 v4, 0x1

    new-array v4, v4, [Lgnu/expr/Expression;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-direct {v3, v2, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v3

    .line 1756
    .end local v1    # "exp":Lgnu/expr/Expression;
    .end local v2    # "func":Lgnu/expr/Expression;
    .local v0, "exp":Lgnu/expr/Expression;
    nop

    .line 1759
    :goto_3
    return-object v0
.end method

.method parseUnionExpr()Lgnu/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 1765
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseIntersectExceptExpr()Lgnu/expr/Expression;

    move-result-object v0

    .line 1768
    .local v0, "exp":Lgnu/expr/Expression;
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperator()I

    move-result v1

    .line 1769
    .local v1, "op":I
    const/16 v2, 0x1a3

    if-eq v1, v2, :cond_0

    .line 1770
    nop

    .line 1775
    .end local v1    # "op":I
    return-object v0

    .line 1771
    .restart local v1    # "op":I
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1772
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseIntersectExceptExpr()Lgnu/expr/Expression;

    move-result-object v2

    .line 1773
    .local v2, "exp2":Lgnu/expr/Expression;
    invoke-virtual {p0, v1, v0, v2}, Lgnu/xquery/lang/XQParser;->makeBinary(ILgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    .line 1774
    .end local v1    # "op":I
    .end local v2    # "exp2":Lgnu/expr/Expression;
    goto :goto_0
.end method

.method public parseVariable()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3178
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    .line 3179
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    .line 3181
    :cond_0
    const-string v0, "missing \'$\' before variable name"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 3182
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 3185
    .local v0, "str":Ljava/lang/String;
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x51

    if-ne v1, v2, :cond_1

    .line 3186
    return-object v0

    .line 3187
    :cond_1
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x41

    if-ne v1, v2, :cond_2

    .line 3188
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    return-object v1

    .line 3190
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public parseVariableDeclaration()Lgnu/expr/Declaration;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3196
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseVariable()Ljava/lang/Object;

    move-result-object v0

    .line 3197
    .local v0, "name":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 3198
    const/4 v1, 0x0

    return-object v1

    .line 3199
    :cond_0
    new-instance v1, Lgnu/expr/Declaration;

    invoke-direct {v1, v0}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 3200
    .local v1, "decl":Lgnu/expr/Declaration;
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lgnu/xquery/lang/XQParser;->maybeSetLine(Lgnu/expr/Declaration;II)V

    .line 3202
    return-object v1
.end method

.method parseXMLConstructor(IZ)Lgnu/expr/Expression;
    .locals 10
    .param p1, "next"    # I
    .param p2, "inElementContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 2459
    const/16 v0, 0x21

    const/16 v1, 0x41

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_7

    .line 2461
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result p1

    .line 2462
    const/16 v0, 0x2d

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v4

    if-ne v4, v0, :cond_4

    .line 2464
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skip()V

    .line 2465
    const-string v1, "-->"

    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2466
    const/4 v1, 0x0

    .line 2467
    .local v1, "bad":Z
    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 2468
    .local v4, "i":I
    const/4 v5, 0x1

    .line 2469
    .local v5, "sawHyphen":Z
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    .line 2471
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v6, v6, v4

    if-ne v6, v0, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 2472
    .local v6, "curHyphen":Z
    :goto_1
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 2474
    const/4 v1, 0x1

    .line 2475
    goto :goto_2

    .line 2477
    :cond_1
    move v5, v6

    .line 2478
    .end local v6    # "curHyphen":Z
    goto :goto_0

    .line 2479
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 2480
    const-string v0, "consecutive or final hyphen in XML comment"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .local v0, "exp":Lgnu/expr/Expression;
    goto :goto_3

    .line 2483
    .end local v0    # "exp":Lgnu/expr/Expression;
    :cond_3
    new-array v0, v2, [Lgnu/expr/Expression;

    new-instance v2, Lgnu/expr/QuoteExp;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v8, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v6, v7, v3, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v2, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 2485
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v2, Lgnu/expr/ApplyExp;

    const-string v3, "gnu.kawa.xml.CommentConstructor"

    const-string v6, "commentConstructor"

    invoke-static {v3, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v2

    .line 2489
    .end local v1    # "bad":Z
    .end local v4    # "i":I
    .end local v5    # "sawHyphen":Z
    .local v0, "exp":Lgnu/expr/Expression;
    :goto_3
    goto/16 :goto_7

    .line 2490
    .end local v0    # "exp":Lgnu/expr/Expression;
    :cond_4
    const/16 v0, 0x5b

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    const/16 v5, 0x43

    if-ne v4, v5, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    const/16 v5, 0x44

    if-ne v4, v5, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    if-ne v4, v1, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    const/16 v5, 0x54

    if-ne v4, v5, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    if-ne v4, v1, :cond_6

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 2494
    if-nez p2, :cond_5

    .line 2495
    const/16 v0, 0x65

    const-string v1, "CDATA section must be in element content"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 2496
    :cond_5
    const-string v0, "]]>"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2497
    new-array v0, v2, [Lgnu/expr/Expression;

    new-instance v1, Lgnu/expr/QuoteExp;

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v4, v3, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 2499
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/xquery/lang/XQParser;->makeCDATA:Lgnu/expr/Expression;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v0, v1

    .line 2500
    .local v0, "exp":Lgnu/expr/Expression;
    goto/16 :goto_7

    .line 2502
    .end local v0    # "exp":Lgnu/expr/Expression;
    :cond_6
    const-string v0, "\'<!\' must be followed by \'--\' or \'[CDATA[\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .restart local v0    # "exp":Lgnu/expr/Expression;
    goto/16 :goto_7

    .line 2504
    .end local v0    # "exp":Lgnu/expr/Expression;
    :cond_7
    const/16 v0, 0x3f

    if-ne p1, v0, :cond_d

    .line 2506
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v0

    .line 2507
    .end local p1    # "next":I
    .local v0, "next":I
    if-ltz v0, :cond_8

    int-to-char p1, v0

    invoke-static {p1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    move-result p1

    if-eq p1, v1, :cond_9

    .line 2509
    :cond_8
    const-string p1, "missing target after \'<?\'"

    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2510
    :cond_9
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {p1, v1, v3, v4}, Ljava/lang/String;-><init>([CII)V

    move-object v1, p1

    .line 2511
    .local v1, "target":Ljava/lang/String;
    const/4 p1, 0x0

    .line 2514
    .local p1, "nspaces":I
    :goto_4
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    .line 2515
    .local v4, "ch":I
    if-gez v4, :cond_a

    .line 2516
    goto :goto_5

    .line 2517
    :cond_a
    int-to-char v5, v4

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2519
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 2520
    nop

    .line 2524
    .end local v4    # "ch":I
    :goto_5
    const-string v4, "?>"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->getDelimited(Ljava/lang/String;)V

    .line 2525
    if-nez p1, :cond_b

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-lez v4, :cond_b

    .line 2526
    const-string v4, "target must be followed by space or \'?>\'"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 2527
    :cond_b
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v6, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v4, v5, v3, v6}, Ljava/lang/String;-><init>([CII)V

    .line 2528
    .local v4, "content":Ljava/lang/String;
    const/4 v5, 0x2

    new-array v5, v5, [Lgnu/expr/Expression;

    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v3

    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v4}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v3, v5, v2

    move-object v2, v5

    .line 2529
    .local v2, "args":[Lgnu/expr/Expression;
    new-instance v3, Lgnu/expr/ApplyExp;

    const-string v5, "gnu.kawa.xml.MakeProcInst"

    const-string v6, "makeProcInst"

    invoke-static {v5, v6}, Lgnu/xquery/lang/XQParser;->makeFunctionExp(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object p1, v3

    .line 2532
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "args":[Lgnu/expr/Expression;
    .end local v4    # "content":Ljava/lang/String;
    .local p1, "exp":Lgnu/expr/Expression;
    move v9, v0

    move-object v0, p1

    move p1, v9

    goto :goto_7

    .line 2522
    .restart local v1    # "target":Ljava/lang/String;
    .local v4, "ch":I
    .local p1, "nspaces":I
    :cond_c
    nop

    .end local v4    # "ch":I
    add-int/lit8 p1, p1, 0x1

    .line 2523
    goto :goto_4

    .line 2533
    .end local v0    # "next":I
    .end local v1    # "target":Ljava/lang/String;
    .local p1, "next":I
    :cond_d
    if-ltz p1, :cond_10

    int-to-char v0, p1

    invoke-static {v0}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6

    .line 2537
    :cond_e
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 2538
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 2539
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v0

    .line 2540
    .local v0, "saveReadState":C
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->parseElementConstructor()Lgnu/expr/Expression;

    move-result-object v1

    .line 2541
    .local v1, "exp":Lgnu/expr/Expression;
    if-nez p2, :cond_f

    .line 2542
    invoke-virtual {p0, v1}, Lgnu/xquery/lang/XQParser;->wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    .line 2543
    :cond_f
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    move-object v0, v1

    goto :goto_7

    .line 2534
    .end local v0    # "saveReadState":C
    .end local v1    # "exp":Lgnu/expr/Expression;
    :cond_10
    :goto_6
    const-string v0, "expected QName after \'<\'"

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 2545
    .local v0, "exp":Lgnu/expr/Expression;
    :goto_7
    return-object v0
.end method

.method final peekNonSpace(Ljava/lang/String;)I
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipSpace()I

    move-result v0

    .line 313
    .local v0, "ch":I
    if-gez v0, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 316
    return v0
.end method

.method peekOperand()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 947
    nop

    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 948
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    .line 949
    :cond_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x41

    const/16 v2, 0x3a

    if-eq v0, v1, :cond_4

    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x51

    if-ne v0, v1, :cond_1

    goto :goto_2

    .line 1185
    :cond_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x43

    if-ne v0, v1, :cond_3

    .line 1187
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 1188
    .local v0, "next":I
    if-ne v0, v2, :cond_2

    .line 1189
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getAxis()I

    move-result v1

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    .line 1191
    :cond_2
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 1193
    .end local v0    # "next":I
    :cond_3
    :goto_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    .line 951
    :cond_4
    :goto_2
    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v0

    .line 952
    .restart local v0    # "next":I
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v3, v3, v1

    const-string v4, "element"

    const/16 v5, 0x24

    const/16 v6, 0x7b

    const/16 v7, 0x28

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 1067
    :pswitch_1
    if-ne v0, v6, :cond_15

    const-string v3, "validate"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1068
    const/16 v1, 0xf8

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1063
    :pswitch_2
    if-ne v0, v6, :cond_15

    const-string v3, "unordered"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1064
    const/16 v1, 0xfa

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1049
    :pswitch_3
    const-string v3, "text"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1051
    if-ne v0, v7, :cond_6

    .line 1052
    const/16 v1, 0xe7

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1053
    :cond_6
    if-ne v0, v6, :cond_7

    .line 1055
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1056
    const/16 v1, 0xfd

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1059
    :cond_7
    if-ne v0, v7, :cond_15

    const-string v3, "typeswitch"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1060
    const/16 v1, 0xf2

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1041
    :pswitch_4
    if-ne v0, v5, :cond_8

    const-string v3, "some"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1042
    const/16 v1, 0xf5

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1043
    :cond_8
    if-ne v0, v7, :cond_9

    const-string v3, "schema-attribute"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1044
    const/16 v1, 0xef

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1045
    :cond_9
    if-ne v0, v7, :cond_15

    const-string v3, "schema-element"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1046
    const/16 v1, 0xf0

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1028
    :pswitch_5
    const-string v3, "processing-instruction"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1030
    if-ne v0, v7, :cond_a

    .line 1031
    const/16 v1, 0xe9

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1032
    :cond_a
    if-eq v0, v6, :cond_b

    int-to-char v3, v0

    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1034
    :cond_b
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1035
    const/16 v1, 0xff

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1024
    :pswitch_6
    if-ne v0, v6, :cond_15

    const-string v3, "ordered"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1025
    const/16 v1, 0xf9

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1020
    :pswitch_7
    if-ne v0, v7, :cond_15

    const-string v3, "node"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1021
    const/16 v1, 0xe6

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1016
    :pswitch_8
    if-ne v0, v5, :cond_15

    const-string v3, "let"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1017
    const/16 v1, 0xf4

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1010
    :pswitch_9
    if-ne v0, v7, :cond_c

    const-string v3, "if"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1011
    const/16 v1, 0xf1

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1012
    :cond_c
    if-ne v0, v7, :cond_15

    const-string v3, "item"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1013
    const/16 v1, 0xed

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1006
    :pswitch_a
    if-ne v0, v5, :cond_15

    const-string v3, "for"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1007
    const/16 v1, 0xf3

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 989
    :pswitch_b
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 991
    if-ne v0, v7, :cond_d

    .line 992
    const/16 v1, 0xeb

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 993
    :cond_d
    if-eq v0, v6, :cond_e

    int-to-char v3, v0

    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 995
    :cond_e
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 996
    const/16 v1, 0xfb

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1000
    :cond_f
    if-ne v0, v7, :cond_10

    const-string v3, "empty-sequence"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1001
    const/16 v1, 0xee

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1002
    :cond_10
    if-ne v0, v5, :cond_15

    const-string v3, "every"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1003
    const/16 v1, 0xf6

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 980
    :pswitch_c
    if-ne v0, v6, :cond_11

    const-string v3, "document"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 982
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 983
    const/16 v1, 0x100

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 985
    :cond_11
    if-ne v0, v7, :cond_15

    const-string v3, "document-node"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 986
    const/16 v1, 0xea

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 968
    :pswitch_d
    const-string v3, "comment"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 970
    if-ne v0, v7, :cond_12

    .line 971
    const/16 v1, 0xe8

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 972
    :cond_12
    if-ne v0, v6, :cond_15

    .line 974
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 975
    const/16 v1, 0xfe

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 955
    :pswitch_e
    const-string v3, "attribute"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 957
    if-ne v0, v7, :cond_13

    .line 958
    const/16 v1, 0xec

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 959
    :cond_13
    if-eq v0, v6, :cond_14

    int-to-char v3, v0

    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 961
    :cond_14
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 962
    const/16 v1, 0xfc

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1071
    :cond_15
    :goto_4
    if-ne v0, v7, :cond_16

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v3

    if-eq v3, v2, :cond_16

    .line 1073
    const/16 v1, 0x46

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1075
    :cond_16
    if-ne v0, v2, :cond_17

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peek()I

    move-result v3

    if-ne v3, v2, :cond_17

    .line 1076
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getAxis()I

    move-result v1

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v1

    .line 1077
    :cond_17
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v1, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v2

    .line 1078
    .local v1, "name":Ljava/lang/String;
    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 1079
    const/16 v2, 0x4f

    const/16 v3, 0x53

    const-string v5, "import"

    const-string v6, "define"

    const/16 v7, 0x45

    const-string v8, "default"

    const-string v9, "declare"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    .line 1167
    :sswitch_0
    const-string v2, "mlspace"

    invoke-direct {p0, v9, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1169
    const-string v2, "replace \'define xmlspace\' by \'declare boundary-space\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1170
    iput v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v3

    .line 1156
    :sswitch_1
    const-string v2, "ariable"

    invoke-direct {p0, v9, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x56

    if-eqz v3, :cond_18

    .line 1157
    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v4

    .line 1158
    :cond_18
    invoke-direct {p0, v6, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1160
    const-string v2, "replace \'define variable\' by \'declare variable\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1161
    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v4

    .line 1163
    :cond_19
    const-string v2, "xquery"

    const-string v3, "ersion"

    invoke-direct {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1164
    const/16 v2, 0x59

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1152
    :sswitch_2
    const-string v2, "chema"

    invoke-direct {p0, v5, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1153
    const/16 v2, 0x54

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1146
    :sswitch_3
    const-string v2, "rdering"

    invoke-direct {p0, v9, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1147
    const/16 v2, 0x55

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1148
    :cond_1a
    const-string v2, "ption"

    invoke-direct {p0, v9, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1149
    const/16 v2, 0x6f

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1135
    :sswitch_4
    const-string v2, "amespace"

    invoke-direct {p0, v9, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1136
    const/16 v2, 0x4e

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1137
    :cond_1b
    invoke-direct {p0, v8, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1139
    const-string v2, "replace \'default namespace\' by \'declare default element namespace\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1140
    iput v7, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v7

    .line 1142
    :cond_1c
    const-string v3, "module"

    invoke-direct {p0, v3, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1143
    const/16 v2, 0x4d

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1131
    :sswitch_5
    const-string v2, "odule"

    invoke-direct {p0, v5, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1132
    const/16 v2, 0x49

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1117
    :sswitch_6
    const-string v3, "unction"

    invoke-direct {p0, v9, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x50

    if-eqz v4, :cond_1d

    .line 1118
    iput v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v5

    .line 1119
    :cond_1d
    invoke-direct {p0, v6, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1121
    const-string v2, "replace \'define function\' by \'declare function\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1122
    iput v5, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v5

    .line 1124
    :cond_1e
    invoke-direct {p0, v8, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1126
    const-string v3, "replace \'default function\' by \'declare default function namespace\'"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1127
    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1094
    :sswitch_7
    const-string v3, "efault"

    invoke-direct {p0, v9, v3}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1096
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1097
    const-string v3, "function"

    invoke-virtual {p0, v3}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1098
    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1099
    :cond_1f
    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1100
    iput v7, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v7

    .line 1101
    :cond_20
    const-string v2, "collation"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1102
    const/16 v2, 0x47

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1103
    :cond_21
    const-string v2, "order"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1104
    const/16 v2, 0x48

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1105
    :cond_22
    const-string v2, "unrecognized/unimplemented \'declare default\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->error(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipToSemicolon()V

    .line 1107
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->peekOperand()I

    move-result v2

    return v2

    .line 1110
    :cond_23
    :sswitch_8
    const-string v2, "lement"

    invoke-direct {p0, v8, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1112
    const-string v2, "replace \'default element\' by \'declare default element namespace\'"

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 1113
    iput v7, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v7

    .line 1088
    :sswitch_9
    const-string v2, "onstruction"

    invoke-direct {p0, v9, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1089
    const/16 v2, 0x4b

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1090
    :cond_24
    const-string v2, "opy-namespaces"

    invoke-direct {p0, v9, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1091
    const/16 v2, 0x4c

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1082
    :sswitch_a
    const-string v2, "ase-uri"

    invoke-direct {p0, v9, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1083
    const/16 v2, 0x42

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    .line 1084
    :cond_25
    const-string v2, "oundary-space"

    invoke-direct {p0, v9, v2}, Lgnu/xquery/lang/XQParser;->lookingAt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1085
    iput v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v3

    .line 1174
    :cond_26
    :goto_5
    if-ltz v0, :cond_27

    .line 1176
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->unread()V

    .line 1177
    int-to-char v2, v0

    invoke-static {v2}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1179
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    .line 1180
    const/16 v2, 0x57

    iput v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 1183
    :cond_27
    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_a
        0x63 -> :sswitch_9
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_6
        0x6d -> :sswitch_5
        0x6e -> :sswitch_4
        0x6f -> :sswitch_3
        0x73 -> :sswitch_2
        0x76 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method peekOperator()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 789
    nop

    :goto_0
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 791
    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-nez v0, :cond_0

    .line 792
    return v1

    .line 793
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getRawToken()I

    goto :goto_0

    .line 795
    :cond_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v1, 0x41

    if-ne v0, v1, :cond_12

    .line 797
    iget v0, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    .line 799
    .local v0, "len":I
    const/16 v1, 0x6c

    const/16 v2, 0x69

    const/16 v3, 0x1a6

    const/16 v4, 0x6e

    const/4 v5, 0x0

    const-string v6, "as"

    const/16 v7, 0x6f

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    move v1, v9

    .local v1, "c1":C
    move v2, v9

    .local v2, "c3":C
    move v4, v9

    .line 877
    .local v4, "c2":C
    const-string v5, "instanceof"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 879
    const-string v5, "use \'instanceof of\' (two words) instead of \'instanceof\'"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 880
    iput v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 799
    .end local v1    # "c1":C
    .end local v2    # "c3":C
    .end local v4    # "c2":C
    :pswitch_2
    move v1, v9

    .restart local v1    # "c1":C
    move v2, v9

    .restart local v2    # "c3":C
    move v3, v9

    .line 873
    .local v3, "c2":C
    const-string v4, "intersect"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 874
    const/16 v4, 0x1a4

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 799
    .end local v1    # "c1":C
    .end local v2    # "c3":C
    .end local v3    # "c2":C
    :pswitch_3
    move v1, v9

    .restart local v1    # "c1":C
    move v2, v9

    .restart local v2    # "c3":C
    move v4, v9

    .line 867
    .restart local v4    # "c2":C
    const-string v5, "instance"

    const-string v7, "of"

    invoke-virtual {p0, v5, v7, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 868
    iput v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 869
    :cond_2
    const-string v3, "castable"

    invoke-virtual {p0, v3, v6, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 870
    const/16 v3, 0x1a8

    iput v3, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 799
    .end local v1    # "c1":C
    .end local v2    # "c3":C
    .end local v4    # "c2":C
    :pswitch_4
    move v1, v9

    .restart local v1    # "c1":C
    move v2, v9

    .restart local v2    # "c3":C
    move v3, v9

    .line 863
    .restart local v3    # "c2":C
    const-string v4, "except"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 864
    const/16 v4, 0x1a5

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 799
    .end local v1    # "c1":C
    .end local v2    # "c3":C
    .end local v3    # "c2":C
    :pswitch_5
    move v1, v9

    .restart local v1    # "c1":C
    move v2, v9

    .restart local v2    # "c3":C
    move v3, v9

    .line 853
    .restart local v3    # "c2":C
    const-string v4, "where"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 854
    const/16 v4, 0xc4

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 855
    :cond_3
    const-string v4, "isnot"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 856
    const/16 v4, 0x199

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 857
    :cond_4
    const-string v4, "union"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 858
    const/16 v4, 0x1a3

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 859
    :cond_5
    const-string v4, "treat"

    invoke-virtual {p0, v4, v6, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 860
    const/16 v4, 0x1a7

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 799
    .end local v1    # "c1":C
    .end local v2    # "c3":C
    .end local v3    # "c2":C
    :pswitch_6
    move v1, v9

    .restart local v1    # "c1":C
    move v2, v9

    .restart local v2    # "c3":C
    move v3, v9

    .line 847
    .restart local v3    # "c2":C
    const-string v4, "idiv"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 848
    const/16 v4, 0x1a1

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 849
    :cond_6
    const-string v4, "cast"

    invoke-virtual {p0, v4, v6, v8}, Lgnu/xquery/lang/XQParser;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 850
    const/16 v4, 0x1a9

    iput v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 799
    .end local v1    # "c1":C
    .end local v2    # "c3":C
    .end local v3    # "c2":C
    :pswitch_7
    move v3, v9

    .local v3, "c1":C
    move v6, v9

    .line 827
    .local v6, "c2":C
    iget-object v9, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v3, v9, v5

    .line 828
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v5, v5, v8

    .line 829
    .end local v6    # "c2":C
    .local v5, "c2":C
    iget-object v6, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    const/4 v8, 0x2

    aget-char v6, v6, v8

    .line 830
    .local v6, "c3":C
    const/16 v8, 0x61

    const/16 v9, 0x64

    if-ne v3, v8, :cond_7

    .line 832
    if-ne v5, v4, :cond_12

    if-ne v6, v9, :cond_12

    .line 833
    const/16 v1, 0x191

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 835
    :cond_7
    const/16 v4, 0x6d

    if-ne v3, v4, :cond_9

    .line 836
    const/16 v2, 0x75

    if-ne v5, v2, :cond_8

    if-ne v6, v1, :cond_8

    .line 837
    const/16 v1, 0x19f

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 838
    :cond_8
    if-ne v5, v7, :cond_12

    if-ne v6, v9, :cond_12

    .line 839
    const/16 v1, 0x1a2

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 841
    :cond_9
    if-ne v3, v9, :cond_12

    .line 842
    if-ne v5, v2, :cond_12

    const/16 v1, 0x76

    if-ne v6, v1, :cond_12

    .line 843
    const/16 v1, 0x1a0

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto/16 :goto_1

    .line 802
    .end local v3    # "c1":C
    .end local v5    # "c2":C
    .end local v6    # "c3":C
    :pswitch_8
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v3, v3, v5

    .line 803
    .restart local v3    # "c1":C
    iget-object v5, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v5, v5, v8

    .line 804
    .restart local v5    # "c2":C
    if-ne v3, v7, :cond_a

    const/16 v6, 0x72

    if-ne v5, v6, :cond_a

    .line 805
    const/16 v1, 0x190

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    .line 806
    :cond_a
    const/16 v6, 0x74

    if-ne v3, v6, :cond_b

    if-ne v5, v7, :cond_b

    .line 807
    const/16 v1, 0x19c

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    .line 808
    :cond_b
    if-ne v3, v2, :cond_c

    const/16 v2, 0x73

    if-ne v5, v2, :cond_c

    .line 809
    const/16 v1, 0x198

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    .line 810
    :cond_c
    const/16 v2, 0x65

    if-ne v3, v2, :cond_d

    const/16 v7, 0x71

    if-ne v5, v7, :cond_d

    .line 811
    const/16 v1, 0x1aa

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    .line 812
    :cond_d
    if-ne v3, v4, :cond_e

    if-ne v5, v2, :cond_e

    .line 813
    const/16 v1, 0x1ab

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    .line 814
    :cond_e
    const/16 v4, 0x67

    if-ne v3, v4, :cond_10

    .line 816
    if-ne v5, v2, :cond_f

    const/16 v1, 0x1af

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    .line 817
    :cond_f
    if-ne v5, v6, :cond_12

    const/16 v1, 0x1ae

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    .line 819
    :cond_10
    if-ne v3, v1, :cond_12

    .line 821
    if-ne v5, v2, :cond_11

    const/16 v1, 0x1ad

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    goto :goto_1

    .line 822
    :cond_11
    if-ne v5, v6, :cond_12

    const/16 v1, 0x1ac

    iput v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 887
    .end local v0    # "len":I
    .end local v3    # "c1":C
    .end local v5    # "c2":C
    :cond_12
    :goto_1
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method pushNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .line 1213
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    const/4 p2, 0x0

    .line 1215
    :cond_0
    new-instance v0, Lgnu/xml/NamespaceBinding;

    iget-object v1, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    invoke-direct {v0, p1, p2, v1}, Lgnu/xml/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;Lgnu/xml/NamespaceBinding;)V

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->prologNamespaces:Lgnu/xml/NamespaceBinding;

    .line 1216
    return-void
.end method

.method public readObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 3636
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    iget v0, p0, Lgnu/xquery/lang/XQParser;->saveToken:I

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 479
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->saveValue:Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 480
    invoke-super {p0}, Lgnu/text/Lexer;->reset()V

    .line 481
    return-void
.end method

.method public resolveAgainstBaseUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 143
    invoke-static {p1}, Lgnu/text/Path;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    return-object p1

    .line 145
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "base":Ljava/lang/String;
    invoke-static {v0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    .line 147
    .local v1, "basePath":Lgnu/text/Path;
    invoke-virtual {v1, p1}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public setInteractive(Z)V
    .locals 1
    .param p1, "v"    # Z

    .line 1231
    iget-boolean v0, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eq v0, p1, :cond_1

    .line 1232
    iget v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 1233
    :cond_1
    iput-boolean p1, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    .line 1234
    return-void
.end method

.method public setStaticBaseUri(Ljava/lang/String;)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 87
    :try_start_0
    invoke-static {p1}, Lgnu/text/URIPath;->valueOf(Ljava/lang/String;)Lgnu/text/URIPath;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/lang/XQParser;->fixupStaticBaseUri(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    iput-object v0, p0, Lgnu/xquery/lang/XQParser;->baseURI:Lgnu/text/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 91
    .local v0, "ex":Ljava/lang/Throwable;
    instance-of v1, v0, Lgnu/mapping/WrappedException;

    if-eqz v1, :cond_0

    .line 92
    move-object v1, v0

    check-cast v1, Lgnu/mapping/WrappedException;

    invoke-virtual {v1}, Lgnu/mapping/WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {p0, v2, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 95
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method final skipComment()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 266
    iget v0, p0, Lgnu/xquery/lang/XQParser;->commentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/xquery/lang/XQParser;->commentCount:I

    .line 267
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 268
    .local v0, "startLine":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 269
    .local v1, "startColumn":I
    iget-object v2, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 271
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 272
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 273
    const/16 v2, 0x65

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->errorIfComment:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 275
    :cond_0
    const/4 v2, 0x0

    .line 276
    .local v2, "prev":I
    const/4 v3, 0x0

    .line 277
    .local v3, "commentNesting":I
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->pushNesting(C)C

    move-result v5

    .line 280
    .local v5, "saveReadState":C
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v6

    .line 281
    .local v6, "ch":I
    if-ne v6, v4, :cond_1

    .line 283
    const/16 v7, 0x28

    if-ne v2, v7, :cond_4

    .line 285
    add-int/lit8 v3, v3, 0x1

    .line 286
    const/4 v6, 0x0

    goto :goto_1

    .line 289
    :cond_1
    const/16 v7, 0x29

    if-ne v6, v7, :cond_3

    if-ne v2, v4, :cond_3

    .line 291
    if-nez v3, :cond_2

    .line 293
    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->popNesting(C)V

    .line 294
    return-void

    .line 296
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 298
    :cond_3
    if-gez v6, :cond_4

    .line 300
    iput v0, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 301
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 302
    const-string v7, "non-terminated comment starting here"

    invoke-virtual {p0, v7}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    .line 304
    :cond_4
    :goto_1
    move v2, v6

    .line 305
    .end local v6    # "ch":I
    goto :goto_0
.end method

.method final skipOldComment()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "seenDashes":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getLineNumber()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 243
    .local v1, "startLine":I
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getColumnNumber()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    .line 244
    .local v2, "startColumn":I
    const-string v4, "use (: :) instead of old-style comment {-- --}"

    invoke-virtual {p0, v4}, Lgnu/xquery/lang/XQParser;->warnOldVersion(Ljava/lang/String;)V

    .line 247
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v4

    .line 248
    .local v4, "ch":I
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_0
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_1

    if-lt v0, v3, :cond_1

    .line 251
    return-void

    .line 252
    :cond_1
    if-gez v4, :cond_2

    .line 254
    iput v1, p0, Lgnu/xquery/lang/XQParser;->curLine:I

    .line 255
    iput v2, p0, Lgnu/xquery/lang/XQParser;->curColumn:I

    .line 256
    const-string v5, "non-terminated comment starting here"

    invoke-virtual {p0, v5}, Lgnu/xquery/lang/XQParser;->eofError(Ljava/lang/String;)V

    goto :goto_1

    .line 259
    :cond_2
    const/4 v0, 0x0

    .line 260
    .end local v4    # "ch":I
    :goto_1
    goto :goto_0
.end method

.method final skipSpace()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->skipSpace(Z)I

    move-result v0

    return v0
.end method

.method final skipSpace(Z)I
    .locals 3
    .param p1, "verticalToo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 196
    nop

    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 197
    .local v0, "ch":I
    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    .line 199
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->checkNext(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    return v1

    .line 201
    :cond_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipComment()V

    goto :goto_3

    .line 203
    :cond_1
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_4

    .line 205
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 206
    const/16 v2, 0x2d

    if-eq v0, v2, :cond_2

    .line 208
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 209
    return v1

    .line 211
    :cond_2
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 212
    if-eq v0, v2, :cond_3

    .line 214
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 215
    invoke-virtual {p0, v2}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 216
    return v1

    .line 218
    :cond_3
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->skipOldComment()V

    goto :goto_3

    .line 220
    :cond_4
    if-eqz p1, :cond_6

    if-ltz v0, :cond_5

    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    :goto_1
    goto :goto_2

    :cond_6
    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    goto :goto_1

    .line 223
    :goto_2
    return v0

    .line 224
    .end local v0    # "ch":I
    :cond_7
    :goto_3
    goto :goto_0
.end method

.method final skipToSemicolon()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    nop

    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 233
    .local v0, "next":I
    if-ltz v0, :cond_1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 234
    goto :goto_1

    .line 235
    .end local v0    # "next":I
    :cond_0
    goto :goto_0

    .line 236
    :cond_1
    :goto_1
    return-void
.end method

.method public syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4405
    const-string v0, "XPST0003"

    invoke-virtual {p0, p1, v0}, Lgnu/xquery/lang/XQParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public syntaxError(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 4379
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1, p2}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 4380
    iget-boolean v0, p0, Lgnu/xquery/lang/XQParser;->interactive:Z

    if-eqz v0, :cond_2

    .line 4382
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    .line 4383
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/xquery/lang/XQParser;->curValue:Ljava/lang/Object;

    .line 4384
    iput v0, p0, Lgnu/xquery/lang/XQParser;->nesting:I

    .line 4385
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getPort()Lgnu/text/LineBufferedReader;

    move-result-object v0

    check-cast v0, Lgnu/mapping/InPort;

    const/16 v1, 0xa

    iput-char v1, v0, Lgnu/mapping/InPort;->readState:C

    .line 4388
    :goto_0
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->read()I

    move-result v0

    .line 4389
    .local v0, "ch":I
    if-ltz v0, :cond_1

    .line 4391
    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 4396
    .end local v0    # "ch":I
    goto :goto_0

    .line 4393
    .restart local v0    # "ch":I
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/xquery/lang/XQParser;->unread(I)V

    .line 4394
    goto :goto_1

    .line 4390
    :cond_1
    nop

    .line 4397
    .end local v0    # "ch":I
    :goto_1
    new-instance v0, Lgnu/text/SyntaxException;

    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v0

    .line 4399
    :cond_2
    new-instance v0, Lgnu/expr/ErrorExp;

    invoke-direct {v0, p1}, Lgnu/expr/ErrorExp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method tokenString()Ljava/lang/String;
    .locals 6

    .line 4311
    iget v0, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    move-object v0, v2

    .line 4333
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    sub-int/2addr v1, v2

    const/16 v3, 0xd

    if-ge v1, v3, :cond_2

    .line 4335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lgnu/xquery/lang/XQParser;->axisNames:[Ljava/lang/String;

    iget v4, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    sub-int/2addr v4, v2

    aget-object v2, v3, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::-axis("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4311
    .end local v0    # "sbuf":Ljava/lang/StringBuffer;
    :sswitch_0
    move-object v0, v2

    .line 4326
    .restart local v0    # "sbuf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v5, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v3, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + \'(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4311
    .end local v0    # "sbuf":Ljava/lang/StringBuffer;
    :sswitch_1
    move-object v0, v2

    .line 4329
    .restart local v0    # "sbuf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    iget v4, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 4314
    .end local v0    # "sbuf":Ljava/lang/StringBuffer;
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4315
    .restart local v0    # "sbuf":Ljava/lang/StringBuffer;
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4316
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lgnu/xquery/lang/XQParser;->tokenBufferLength:I

    if-ge v2, v3, :cond_1

    .line 4318
    iget-object v3, p0, Lgnu/xquery/lang/XQParser;->tokenBuffer:[C

    aget-char v3, v3, v2

    .line 4319
    .local v3, "ch":C
    if-ne v3, v1, :cond_0

    .line 4320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4321
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4316
    .end local v3    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4323
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4324
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4311
    .end local v0    # "sbuf":Ljava/lang/StringBuffer;
    :sswitch_3
    move-object v0, v2

    .line 4331
    .restart local v0    # "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "<EOF>"

    return-object v1

    .line 4336
    :cond_2
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_3

    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_3

    .line 4337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4338
    :cond_3
    iget v1, p0, Lgnu/xquery/lang/XQParser;->curToken:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x22 -> :sswitch_2
        0x41 -> :sswitch_1
        0x46 -> :sswitch_0
        0x51 -> :sswitch_1
    .end sparse-switch
.end method

.method warnOldVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 4425
    sget-boolean v0, Lgnu/xquery/lang/XQParser;->warnOldVersion:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4426
    :cond_0
    iget-object v0, p0, Lgnu/xquery/lang/XQParser;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->isPedantic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x65

    goto :goto_0

    :cond_1
    const/16 v0, 0x77

    :goto_0
    invoke-virtual {p0, v0, p1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;)V

    .line 4427
    :cond_2
    return-void
.end method

.method wrapWithBaseUri(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 6
    .param p1, "exp"    # Lgnu/expr/Expression;

    .line 2724
    invoke-virtual {p0}, Lgnu/xquery/lang/XQParser;->getStaticBaseUri()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2725
    return-object p1

    .line 2726
    :cond_0
    new-instance v0, Lgnu/expr/ApplyExp;

    sget-object v1, Lgnu/kawa/xml/MakeWithBaseUri;->makeWithBaseUri:Lgnu/kawa/xml/MakeWithBaseUri;

    const/4 v2, 0x2

    new-array v2, v2, [Lgnu/expr/Expression;

    new-instance v3, Lgnu/expr/ApplyExp;

    new-instance v4, Lgnu/expr/ReferenceExp;

    sget-object v5, Lgnu/xquery/lang/XQResolveNames;->staticBaseUriDecl:Lgnu/expr/Declaration;

    invoke-direct {v4, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v5, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v3, v4, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    invoke-virtual {v0, p1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method
