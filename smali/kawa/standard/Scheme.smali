.class public Lkawa/standard/Scheme;
.super Lgnu/kawa/lispexpr/LispLanguage;
.source "Scheme.java"


# static fields
.field public static final apply:Lgnu/kawa/functions/Apply;

.field static final applyFieldDecl:Lgnu/expr/Declaration;

.field public static final applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

.field public static booleanType:Lgnu/kawa/lispexpr/LangPrimType;

.field public static final displayFormat:Lgnu/lists/AbstractFormat;

.field public static final forEach:Lgnu/kawa/functions/Map;

.field public static final instance:Lkawa/standard/Scheme;

.field public static final instanceOf:Lgnu/kawa/reflect/InstanceOf;

.field public static final isEq:Lgnu/kawa/functions/IsEq;

.field public static final isEqual:Lgnu/kawa/functions/IsEqual;

.field public static final isEqv:Lgnu/kawa/functions/IsEqv;

.field public static final isEven:Lgnu/kawa/functions/NumberPredicate;

.field public static final isOdd:Lgnu/kawa/functions/NumberPredicate;

.field protected static final kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

.field public static final map:Lgnu/kawa/functions/Map;

.field public static final not:Lgnu/kawa/functions/Not;

.field public static final nullEnvironment:Lgnu/mapping/Environment;

.field public static final numEqu:Lgnu/kawa/functions/NumberCompare;

.field public static final numGEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numGrt:Lgnu/kawa/functions/NumberCompare;

.field public static final numLEq:Lgnu/kawa/functions/NumberCompare;

.field public static final numLss:Lgnu/kawa/functions/NumberCompare;

.field public static final r4Environment:Lgnu/mapping/Environment;

.field public static final r5Environment:Lgnu/mapping/Environment;

.field static typeToStringMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lgnu/bytecode/Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static types:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final unitNamespace:Lgnu/mapping/Namespace;

.field public static final writeFormat:Lgnu/lists/AbstractFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 54
    const-string v0, "null-environment"

    invoke-static {v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    .line 55
    const-string v0, "r4rs-environment"

    sget-object v1, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    invoke-static {v0, v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    .line 56
    const-string v0, "r5rs-environment"

    sget-object v1, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    invoke-static {v0, v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    .line 57
    const-string v0, "kawa-environment"

    sget-object v1, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    invoke-static {v0, v1}, Lgnu/mapping/Environment;->make(Ljava/lang/String;Lgnu/mapping/Environment;)Lgnu/mapping/InheritingEnvironment;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    .line 59
    new-instance v0, Lkawa/standard/Scheme;

    sget-object v1, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    invoke-direct {v0, v1}, Lkawa/standard/Scheme;-><init>(Lgnu/mapping/Environment;)V

    sput-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    .line 60
    new-instance v0, Lgnu/kawa/reflect/InstanceOf;

    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, "instance?"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    .line 61
    new-instance v0, Lgnu/kawa/functions/Not;

    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, "not"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/Not;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/Scheme;->not:Lgnu/kawa/functions/Not;

    .line 62
    new-instance v0, Lgnu/kawa/functions/ApplyToArgs;

    const-string v1, "apply-to-args"

    sget-object v2, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/ApplyToArgs;-><init>(Ljava/lang/String;Lgnu/expr/Language;)V

    sput-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 63
    const-string v0, "kawa.standard.Scheme"

    const-string v1, "applyToArgs"

    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    .line 66
    new-instance v0, Lgnu/kawa/functions/Apply;

    const-string v1, "apply"

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/Apply;-><init>(Ljava/lang/String;Lgnu/kawa/functions/ApplyToArgs;)V

    sput-object v0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 67
    new-instance v0, Lgnu/kawa/functions/IsEq;

    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, "eq?"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/IsEq;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    .line 68
    new-instance v0, Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, "eqv?"

    sget-object v3, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/functions/IsEqv;-><init>(Lgnu/expr/Language;Ljava/lang/String;Lgnu/kawa/functions/IsEq;)V

    sput-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 69
    new-instance v0, Lgnu/kawa/functions/IsEqual;

    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, "equal?"

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/IsEqual;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    sput-object v0, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    .line 70
    new-instance v0, Lgnu/kawa/functions/Map;

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    sget-object v3, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v1, v2, v3}, Lgnu/kawa/functions/Map;-><init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V

    sput-object v0, Lkawa/standard/Scheme;->map:Lgnu/kawa/functions/Map;

    .line 71
    new-instance v0, Lgnu/kawa/functions/Map;

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    sget-object v3, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v2, v3}, Lgnu/kawa/functions/Map;-><init>(ZLgnu/kawa/functions/ApplyToArgs;Lgnu/expr/Declaration;Lgnu/kawa/functions/IsEq;)V

    sput-object v0, Lkawa/standard/Scheme;->forEach:Lgnu/kawa/functions/Map;

    .line 72
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v1, "="

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 74
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v1, ">"

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 76
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v1, ">="

    const/16 v2, 0x18

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 78
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v1, "<"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 80
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v1, "<="

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/NumberCompare;->make(Lgnu/expr/Language;Ljava/lang/String;I)Lgnu/kawa/functions/NumberCompare;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 82
    new-instance v0, Lgnu/kawa/functions/NumberPredicate;

    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, "odd?"

    invoke-direct {v0, v1, v2, v4}, Lgnu/kawa/functions/NumberPredicate;-><init>(Lgnu/expr/Language;Ljava/lang/String;I)V

    sput-object v0, Lkawa/standard/Scheme;->isOdd:Lgnu/kawa/functions/NumberPredicate;

    .line 83
    new-instance v0, Lgnu/kawa/functions/NumberPredicate;

    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    const-string v2, "even?"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lgnu/kawa/functions/NumberPredicate;-><init>(Lgnu/expr/Language;Ljava/lang/String;I)V

    sput-object v0, Lkawa/standard/Scheme;->isEven:Lgnu/kawa/functions/NumberPredicate;

    .line 85
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    invoke-direct {v0}, Lkawa/standard/Scheme;->initScheme()V

    .line 87
    sget v0, Lgnu/kawa/servlet/HttpRequestContext;->importServletDefinitions:I

    .line 88
    .local v0, "withServlets":I
    if-lez v0, :cond_1

    .line 92
    :try_start_0
    sget-object v1, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    if-le v0, v4, :cond_0

    const-string v2, "gnu.kawa.servlet.servlets"

    goto :goto_0

    :cond_0
    const-string v2, "gnu.kawa.servlet.HTTP"

    :goto_0
    invoke-virtual {v1, v2}, Lkawa/standard/Scheme;->loadClass(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    goto :goto_1

    .line 95
    :catchall_0
    move-exception v1

    .line 934
    .end local v0    # "withServlets":I
    :cond_1
    :goto_1
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    const/16 v1, 0x53

    invoke-direct {v0, v4, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v0, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    .line 935
    new-instance v0, Lgnu/kawa/functions/DisplayFormat;

    invoke-direct {v0, v5, v1}, Lgnu/kawa/functions/DisplayFormat;-><init>(ZC)V

    sput-object v0, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    .line 1134
    const-string v0, "http://kawa.gnu.org/unit"

    const-string v1, "unit"

    invoke-static {v0, v1}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 844
    invoke-direct {p0}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    .line 845
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 846
    invoke-virtual {p0}, Lkawa/standard/Scheme;->getNewEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    iput-object v0, p0, Lkawa/standard/Scheme;->userEnv:Lgnu/mapping/Environment;

    .line 847
    return-void
.end method

.method protected constructor <init>(Lgnu/mapping/Environment;)V
    .locals 0
    .param p1, "env"    # Lgnu/mapping/Environment;

    .line 850
    invoke-direct {p0}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    .line 851
    iput-object p1, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 852
    return-void
.end method

.method public static builtin()Lgnu/mapping/Environment;
    .locals 1

    .line 108
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    return-object v0
.end method

.method public static eval(Lgnu/mapping/InPort;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 6
    .param p0, "port"    # Lgnu/mapping/InPort;
    .param p1, "env"    # Lgnu/mapping/Environment;

    .line 874
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 877
    .local v0, "messages":Lgnu/text/SourceMessages;
    :try_start_0
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v1

    check-cast v1, Lgnu/kawa/lispexpr/LispReader;

    .line 879
    .local v1, "lexer":Lgnu/kawa/lispexpr/LispReader;
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v2

    .line 880
    .local v2, "body":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v3

    if-nez v3, :cond_0

    .line 882
    invoke-static {v2, p1, v0}, Lkawa/lang/Eval;->evalBody(Ljava/lang/Object;Lgnu/mapping/Environment;Lgnu/text/SourceMessages;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 881
    :cond_0
    new-instance v3, Lgnu/text/SyntaxException;

    invoke-direct {v3, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    .end local v0    # "messages":Lgnu/text/SourceMessages;
    .end local p0    # "port":Lgnu/mapping/InPort;
    .end local p1    # "env":Lgnu/mapping/Environment;
    throw v3
    :try_end_0
    .catch Lgnu/text/SyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 904
    .end local v1    # "lexer":Lgnu/kawa/lispexpr/LispReader;
    .end local v2    # "body":Ljava/lang/Object;
    .restart local v0    # "messages":Lgnu/text/SourceMessages;
    .restart local p0    # "port":Lgnu/mapping/InPort;
    .restart local p1    # "env":Lgnu/mapping/Environment;
    :catchall_0
    move-exception v1

    .line 906
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Lgnu/mapping/WrappedException;

    invoke-direct {v2, v1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 900
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 902
    .local v1, "ex":Ljava/lang/Error;
    throw v1

    .line 896
    .end local v1    # "ex":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 898
    .local v1, "ex":Ljava/lang/RuntimeException;
    throw v1

    .line 891
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 893
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eval: I/O exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 884
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 888
    .local v1, "e":Lgnu/text/SyntaxException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eval: errors while compiling:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 2
    .param p0, "sexpr"    # Ljava/lang/Object;
    .param p1, "env"    # Lgnu/mapping/Environment;

    .line 918
    :try_start_0
    invoke-static {p0, p1}, Lkawa/lang/Eval;->eval(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 928
    :catchall_0
    move-exception v0

    .line 930
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Lgnu/mapping/WrappedException;

    invoke-direct {v1, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 924
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 926
    .local v0, "ex":Ljava/lang/Error;
    throw v0

    .line 920
    .end local v0    # "ex":Ljava/lang/Error;
    :catch_1
    move-exception v0

    .line 922
    .local v0, "ex":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public static eval(Ljava/lang/String;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "env"    # Lgnu/mapping/Environment;

    .line 865
    new-instance v0, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v0, p0}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lkawa/standard/Scheme;->eval(Lgnu/mapping/InPort;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static exp2Type(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 1131
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkawa/standard/Scheme;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lkawa/standard/Scheme;
    .locals 1

    .line 103
    sget-object v0, Lkawa/standard/Scheme;->instance:Lkawa/standard/Scheme;

    return-object v0
.end method

.method public static getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;

    .line 1024
    invoke-static {}, Lkawa/standard/Scheme;->getTypeMap()Ljava/util/HashMap;

    .line 1025
    sget-object v0, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    .line 1026
    .local v0, "type":Lgnu/bytecode/Type;
    if-nez v0, :cond_2

    const-string v1, "elisp:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "clisp:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1029
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1030
    .local v1, "colon":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v2

    .line 1031
    .local v2, "clas":Ljava/lang/Class;
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1032
    .local v3, "lang":Ljava/lang/String;
    invoke-static {v3}, Lgnu/expr/Language;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v4

    .line 1033
    .local v4, "interp":Lgnu/expr/Language;
    if-eqz v4, :cond_1

    .line 1037
    invoke-virtual {v4, v2}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 1038
    if-eqz v0, :cond_2

    .line 1039
    sget-object v5, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1034
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' - unknown language \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x27

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1041
    .end local v1    # "colon":I
    .end local v2    # "clas":Ljava/lang/Class;
    .end local v3    # "lang":Ljava/lang/String;
    .end local v4    # "interp":Lgnu/expr/Language;
    :cond_2
    :goto_0
    return-object v0
.end method

.method static declared-synchronized getTypeMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation

    const-class v0, Lkawa/standard/Scheme;

    monitor-enter v0

    .line 957
    :try_start_0
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 959
    new-instance v1, Lgnu/kawa/lispexpr/LangPrimType;

    sget-object v2, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lgnu/kawa/lispexpr/LangPrimType;-><init>(Lgnu/bytecode/PrimType;Lgnu/expr/Language;)V

    sput-object v1, Lkawa/standard/Scheme;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    .line 961
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    .line 962
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "void"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->voidType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "int"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "char"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->charType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "boolean"

    sget-object v3, Lkawa/standard/Scheme;->booleanType:Lgnu/kawa/lispexpr/LangPrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "byte"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "short"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "long"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "float"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "double"

    sget-object v3, Lgnu/kawa/lispexpr/LangPrimType;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "never-returns"

    sget-object v3, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "Object"

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "String"

    sget-object v3, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "object"

    sget-object v3, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "number"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "quantity"

    const-string v3, "gnu.math.Quantity"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "complex"

    const-string v3, "gnu.math.Complex"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "real"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "rational"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "integer"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "symbol"

    const-string v3, "gnu.mapping.Symbol"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "namespace"

    const-string v3, "gnu.mapping.Namespace"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "keyword"

    const-string v3, "gnu.expr.Keyword"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "pair"

    const-string v3, "gnu.lists.Pair"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "pair-with-position"

    const-string v3, "gnu.lists.PairWithPosition"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "constant-string"

    const-string v3, "java.lang.String"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "abstract-string"

    const-string v3, "gnu.lists.CharSeq"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "character"

    const-string v3, "gnu.text.Char"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "vector"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "string"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->stringType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "list"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "function"

    const-string v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "procedure"

    const-string v3, "gnu.mapping.Procedure"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "input-port"

    const-string v3, "gnu.mapping.InPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "output-port"

    const-string v3, "gnu.mapping.OutPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "string-output-port"

    const-string v3, "gnu.mapping.CharArrayOutPort"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "record"

    const-string v3, "kawa.lang.Record"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "type"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "class-type"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "class"

    sget-object v3, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s8vector"

    const-string v3, "gnu.lists.S8Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u8vector"

    const-string v3, "gnu.lists.U8Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s16vector"

    const-string v3, "gnu.lists.S16Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u16vector"

    const-string v3, "gnu.lists.U16Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s32vector"

    const-string v3, "gnu.lists.S32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u32vector"

    const-string v3, "gnu.lists.U32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "s64vector"

    const-string v3, "gnu.lists.S64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "u64vector"

    const-string v3, "gnu.lists.U64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "f32vector"

    const-string v3, "gnu.lists.F32Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "f64vector"

    const-string v3, "gnu.lists.F64Vector"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "document"

    const-string v3, "gnu.kawa.xml.KDocument"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    const-string v2, "readtable"

    const-string v3, "gnu.kawa.lispexpr.ReadTable"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 956
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTypeValue(Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 949
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkawa/standard/Scheme;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method private initScheme()V
    .locals 11

    .line 113
    sget-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 115
    iget-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    sget-object v1, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    sget-object v3, Lkawa/standard/Scheme;->getNamedPartLocation:Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 117
    const-string v0, "kawa.standard.SchemeCompilation"

    const-string v1, "lambda"

    const-string v2, "lambda"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "kawa.lang.Quote"

    const-string v1, "plainQuote"

    const-string v2, "quote"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "kawa.standard.define"

    const-string v1, "defineRaw"

    const-string v2, "%define"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "define"

    const-string v1, "kawa.lib.prim_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "if"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "kawa.standard.set_b"

    const-string v2, "set"

    const-string v3, "set!"

    invoke-virtual {p0, v3, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "cond"

    const-string v2, "kawa.lib.std_syntax"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "case"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "and"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "or"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "kawa.standard.let"

    const-string v3, "let"

    const-string v4, "%let"

    invoke-virtual {p0, v4, v0, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "let"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "let*"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "letrec"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "kawa.standard.begin"

    const-string v3, "begin"

    const-string v4, "begin"

    invoke-virtual {p0, v4, v0, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "do"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "delay"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "%make-promise"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "kawa.lang.Quote"

    const-string v3, "quasiQuote"

    const-string v4, "quasiquote"

    invoke-virtual {p0, v4, v0, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "define-syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "kawa.standard.let_syntax"

    const-string v3, "let_syntax"

    const-string v4, "let-syntax"

    invoke-virtual {p0, v4, v0, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v0, "kawa.standard.let_syntax"

    const-string v3, "letrec_syntax"

    const-string v4, "letrec-syntax"

    invoke-virtual {p0, v4, v0, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "kawa.standard.syntax_rules"

    const-string v3, "syntax_rules"

    const-string v4, "syntax-rules"

    invoke-virtual {p0, v4, v0, v3}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 154
    sget-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 157
    const-string v0, "not"

    const-string v3, "kawa.standard.Scheme"

    invoke-virtual {p0, v0, v3}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "boolean?"

    const-string v4, "kawa.lib.misc"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "eq?"

    const-string v5, "isEq"

    invoke-virtual {p0, v0, v3, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "eqv?"

    const-string v5, "isEqv"

    invoke-virtual {p0, v0, v3, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "equal?"

    const-string v5, "isEqual"

    invoke-virtual {p0, v0, v3, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "pair?"

    const-string v5, "kawa.lib.lists"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "cons"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "car"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "cdr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "set-car!"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "set-cdr!"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "caar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v0, "cadr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "cdar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "cddr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "caaar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "caadr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "cadar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "caddr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "cdaar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "cdadr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "cddar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v0, "cdddr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "caaaar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "caaadr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "caadar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "caaddr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "cadaar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "cadadr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "caddar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "cadddr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "cdaaar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "cdaadr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "cdadar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "cdaddr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "cddaar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "cddadr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "cdddar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "cddddr"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v0, "null?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v0, "list?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "length"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "kawa.standard.append"

    const-string v6, "append"

    const-string v7, "append"

    invoke-virtual {p0, v7, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v0, "reverse"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v0, "reverse!"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v0, "list-tail"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "list-ref"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "memq"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v0, "memv"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "member"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "assq"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "assv"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "assoc"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v0, "symbol?"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "symbol->string"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "string->symbol"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "symbol=?"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "symbol-local-name"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v0, "symbol-namespace"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v0, "symbol-namespace-uri"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "symbol-prefix"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v0, "namespace-uri"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "namespace-prefix"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "number?"

    const-string v5, "kawa.lib.numbers"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "quantity?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "complex?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "real?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v0, "rational?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "integer?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v0, "exact?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "inexact?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "="

    const-string v6, "numEqu"

    invoke-virtual {p0, v0, v3, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "<"

    const-string v6, "numLss"

    invoke-virtual {p0, v0, v3, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, ">"

    const-string v6, "numGrt"

    invoke-virtual {p0, v0, v3, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "<="

    const-string v6, "numLEq"

    invoke-virtual {p0, v0, v3, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, ">="

    const-string v6, "numGEq"

    invoke-virtual {p0, v0, v3, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "zero?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v0, "positive?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "negative?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v0, "odd?"

    const-string v6, "isOdd"

    invoke-virtual {p0, v0, v3, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "even?"

    const-string v6, "isEven"

    invoke-virtual {p0, v0, v3, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "max"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "min"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "gnu.kawa.functions.AddOp"

    const-string v6, "$Pl"

    const-string v7, "+"

    invoke-virtual {p0, v7, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "gnu.kawa.functions.AddOp"

    const-string v6, "$Mn"

    const-string v7, "-"

    invoke-virtual {p0, v7, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "gnu.kawa.functions.MultiplyOp"

    const-string v6, "$St"

    const-string v7, "*"

    invoke-virtual {p0, v7, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "$Sl"

    const-string v6, "/"

    const-string v7, "gnu.kawa.functions.DivideOp"

    invoke-virtual {p0, v6, v7, v0}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "abs"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "quotient"

    const-string v6, "quotient"

    invoke-virtual {p0, v0, v7, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v0, "remainder"

    const-string v6, "remainder"

    invoke-virtual {p0, v0, v7, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "modulo"

    const-string v6, "modulo"

    invoke-virtual {p0, v0, v7, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v0, "div"

    const-string v6, "div"

    invoke-virtual {p0, v0, v7, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v0, "mod"

    const-string v6, "mod"

    invoke-virtual {p0, v0, v7, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "div0"

    const-string v6, "div0"

    invoke-virtual {p0, v0, v7, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "mod0"

    const-string v6, "mod0"

    invoke-virtual {p0, v0, v7, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "div-and-mod"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "div0-and-mod0"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "gcd"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "lcm"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "numerator"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v0, "denominator"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, "floor"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "ceiling"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "truncate"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "round"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "rationalize"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "exp"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "log"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "sin"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "cos"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "tan"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "asin"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "acos"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "atan"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "sqrt"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "expt"

    const-string v6, "kawa.standard.expt"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "make-rectangular"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "make-polar"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "real-part"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "imag-part"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "magnitude"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v0, "angle"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v0, "inexact"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "exact"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v0, "exact->inexact"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v0, "inexact->exact"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "number->string"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v0, "string->number"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "char?"

    const-string v6, "kawa.lib.characters"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v0, "char=?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v0, "char<?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v0, "char>?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v0, "char<=?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v0, "char>=?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "char-ci=?"

    const-string v7, "kawa.lib.rnrs.unicode"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v0, "char-ci<?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v0, "char-ci>?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v0, "char-ci<=?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "char-ci>=?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "char-alphabetic?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "char-numeric?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "char-whitespace?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "char-upper-case?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v0, "char-lower-case?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v0, "char-title-case?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "char->integer"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "integer->char"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v0, "char-upcase"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "char-downcase"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "char-titlecase"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "char-foldcase"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "char-general-category"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "string?"

    const-string v6, "kawa.lib.strings"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v0, "make-string"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v0, "string-length"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v0, "string-ref"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "string-set!"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "string=?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v0, "string<?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v0, "string>?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v0, "string<=?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v0, "string>=?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "string-ci=?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "string-ci<?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "string-ci>?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v0, "string-ci<=?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "string-ci>=?"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "string-normalize-nfd"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v0, "string-normalize-nfkd"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v0, "string-normalize-nfc"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v0, "string-normalize-nfkc"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v0, "substring"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v0, "string-append"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v0, "string-append/shared"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v0, "string->list"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "list->string"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v0, "string-copy"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v0, "string-fill!"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v0, "vector?"

    const-string v8, "kawa.lib.vectors"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "make-vector"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "vector-length"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "vector-ref"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v0, "vector-set!"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v0, "list->vector"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "vector->list"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v0, "vector-fill!"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "kawa.standard.vector_append"

    const-string v8, "vectorAppend"

    const-string v9, "vector-append"

    invoke-virtual {p0, v9, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "gnu.kawa.functions.AppendValues"

    const-string v8, "appendValues"

    const-string v9, "values-append"

    invoke-virtual {p0, v9, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v0, "procedure?"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v0, "apply"

    const-string v8, "apply"

    invoke-virtual {p0, v0, v3, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v0, "map"

    const-string v8, "map"

    invoke-virtual {p0, v0, v3, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v0, "for-each"

    const-string v8, "forEach"

    invoke-virtual {p0, v0, v3, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "gnu.kawa.functions.CallCC"

    const-string v8, "callcc"

    const-string v9, "call-with-current-continuation"

    invoke-virtual {p0, v9, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v0, "kawa.standard.callcc"

    const-string v8, "callcc"

    const-string v9, "call/cc"

    invoke-virtual {p0, v9, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v0, "force"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v0, "call-with-input-file"

    const-string v8, "kawa.lib.ports"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "call-with-output-file"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "input-port?"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "output-port?"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "current-input-port"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v0, "current-output-port"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "with-input-from-file"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "with-output-to-file"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v0, "open-input-file"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v0, "open-output-file"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "close-input-port"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v0, "close-output-port"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "read"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "read-line"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v0, "kawa.standard.readchar"

    const-string v9, "readChar"

    const-string v10, "read-char"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "kawa.standard.readchar"

    const-string v9, "peekChar"

    const-string v10, "peek-char"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v0, "eof-object?"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v0, "char-ready?"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v0, "write"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v0, "display"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v0, "gnu.xquery.lang.XQuery"

    const-string v9, "writeFormat"

    const-string v10, "print-as-xml"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v0, "write-char"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v0, "newline"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "kawa.standard.load"

    const-string v9, "load"

    const-string v10, "load"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v0, "kawa.standard.load"

    const-string v9, "loadRelative"

    const-string v10, "load-relative"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v0, "transcript-off"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v0, "transcript-on"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v0, "call-with-input-string"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "open-input-string"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "open-output-string"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v0, "get-output-string"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v0, "call-with-output-string"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v0, "force-output"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v0, "port-line"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v0, "set-port-line!"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, "port-column"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v0, "current-error-port"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v0, "input-port-line-number"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "set-input-port-line-number!"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v0, "input-port-column-number"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "input-port-read-state"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "default-prompter"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v0, "input-port-prompter"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v0, "set-input-port-prompter!"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v0, "base-uri"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v0, "kawa.standard.syntax_error"

    const-string v8, "syntax_error"

    const-string v9, "%syntax-error"

    invoke-virtual {p0, v9, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v0, "syntax-error"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 431
    sget-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 433
    const-string v0, "values"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "kawa.standard.call_with_values"

    const-string v8, "callWithValues"

    const-string v9, "call-with-values"

    invoke-virtual {p0, v9, v0, v8}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "let-values"

    const-string v8, "kawa.lib.syntax"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v0, "let*-values"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v0, "case-lambda"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v0, "receive"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "eval"

    const-string v9, "kawa.lang.Eval"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v0, "kawa.standard.SchemeCompilation"

    const-string v9, "repl"

    const-string v10, "repl"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v0, "scheme-report-environment"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v0, "null-environment"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "interaction-environment"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v0, "dynamic-wind"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    invoke-virtual {v0}, Lgnu/mapping/Environment;->setLocked()V

    .line 448
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    iput-object v0, p0, Lkawa/standard/Scheme;->environ:Lgnu/mapping/Environment;

    .line 450
    const-string v0, "define-private"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v0, "define-constant"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "kawa.standard.define_autoload"

    const-string v9, "define_autoload"

    const-string v10, "define-autoload"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v0, "kawa.standard.define_autoload"

    const-string v9, "define_autoloads_from_file"

    const-string v10, "define-autoloads-from-file"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "exit"

    const-string v9, "kawa.lib.rnrs.programs"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v0, "command-line"

    const-string v9, "kawa.lib.rnrs.programs"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v0, "ashift"

    const-string v9, "bitwise-arithmetic-shift"

    const-string v10, "gnu.kawa.functions.BitwiseOp"

    invoke-virtual {p0, v9, v10, v0}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v0, "arithmetic-shift"

    const-string v9, "ashift"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v0, "ash"

    const-string v9, "ashift"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v0, "bitwise-arithmetic-shift-left"

    const-string v9, "ashiftl"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v0, "bitwise-arithmetic-shift-right"

    const-string v9, "ashiftr"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string v0, "bitwise-and"

    const-string v9, "and"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v0, "logand"

    const-string v9, "and"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v0, "bitwise-ior"

    const-string v9, "ior"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "logior"

    const-string v9, "ior"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v0, "bitwise-xor"

    const-string v9, "xor"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v0, "logxor"

    const-string v9, "xor"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v0, "bitwise-if"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v0, "bitwise-not"

    const-string v9, "not"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "lognot"

    const-string v9, "not"

    invoke-virtual {p0, v0, v10, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v0, "logop"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v0, "bitwise-bit-set?"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v0, "bitwise-bit-set?"

    invoke-static {v0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "logbit?"

    invoke-virtual {p0, v9, v5, v0}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "logtest"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v0, "bitwise-bit-count"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v0, "logcount"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string v0, "bitwise-copy-bit"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v0, "bitwise-copy-bit-field"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const-string v0, "bitwise-bit-field"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v0, "bitwise-bit-field"

    invoke-static {v0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "bit-extract"

    invoke-virtual {p0, v9, v5, v0}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v0, "bitwise-length"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v0, "integer-length"

    const-string v9, "bitwise$Mnlength"

    invoke-virtual {p0, v0, v5, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v0, "bitwise-first-bit-set"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v0, "bitwise-rotate-bit-field"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v0, "bitwise-reverse-bit-field"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v0, "string-upcase!"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "string-downcase!"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "string-capitalize!"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v0, "string-upcase"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v0, "string-downcase"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "string-titlecase"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v0, "string-foldcase"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v0, "string-capitalize"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v0, "virtual_method"

    const-string v6, "primitive-virtual-method"

    const-string v7, "kawa.standard.prim_method"

    invoke-virtual {p0, v6, v7, v0}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v0, "primitive-static-method"

    const-string v6, "static_method"

    invoke-virtual {p0, v0, v7, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v0, "primitive-interface-method"

    const-string v6, "interface_method"

    invoke-virtual {p0, v0, v7, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v0, "primitive-constructor"

    const-string v6, "kawa.lib.reflection"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v0, "primitive-op1"

    const-string v9, "op1"

    invoke-virtual {p0, v0, v7, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v0, "primitive-get-field"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "primitive-set-field"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v0, "primitive-get-static"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v0, "primitive-set-static"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, "primitive-array-new"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v0, "primitive-array-get"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v0, "primitive-array-set"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v0, "primitive-array-length"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v0, "subtype?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v0, "kawa.standard.prim_throw"

    const-string v7, "primitiveThrow"

    const-string v9, "primitive-throw"

    invoke-virtual {p0, v9, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v0, "try-finally"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "try-catch"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v0, "kawa.standard.throw_name"

    const-string v7, "throwName"

    const-string v9, "throw"

    invoke-virtual {p0, v9, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v0, "catch"

    const-string v7, "kawa.lib.system"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v0, "error"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v0, "gnu.kawa.functions.Convert"

    const-string v9, "as"

    const-string v10, "as"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v0, "instance?"

    const-string v9, "instanceOf"

    invoke-virtual {p0, v0, v3, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v0, "synchronized"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "kawa.standard.object"

    const-string v9, "objectSyntax"

    const-string v10, "object"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "kawa.standard.define_class"

    const-string v9, "define_class"

    const-string v10, "define-class"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "kawa.standard.define_class"

    const-string v9, "define_simple_class"

    const-string v10, "define-simple-class"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v0, "kawa.standard.thisRef"

    const-string v9, "thisSyntax"

    const-string v10, "this"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v0, "gnu.kawa.reflect.Invoke"

    const-string v9, "make"

    const-string v10, "make"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v0, "gnu.kawa.reflect.SlotGet"

    const-string v9, "slotRef"

    const-string v10, "slot-ref"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v0, "gnu.kawa.reflect.SlotSet"

    const-string v9, "set$Mnfield$Ex"

    const-string v10, "slot-set!"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "field"

    const-string v9, "gnu.kawa.reflect.SlotGet"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v0, "gnu.kawa.reflect.ClassMethods"

    const-string v9, "classMethods"

    const-string v10, "class-methods"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "gnu.kawa.reflect.SlotGet"

    const-string v9, "staticField"

    const-string v10, "static-field"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v0, "gnu.kawa.reflect.Invoke"

    const-string v9, "invoke"

    const-string v10, "invoke"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v0, "gnu.kawa.reflect.Invoke"

    const-string v9, "invokeStatic"

    const-string v10, "invoke-static"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v0, "gnu.kawa.reflect.Invoke"

    const-string v9, "invokeSpecial"

    const-string v10, "invoke-special"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v0, "define-macro"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v0, "kawa.standard.define_syntax"

    const-string v9, "define_macro"

    const-string v10, "%define-macro"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v0, "define-syntax-case"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "kawa.standard.syntax_case"

    const-string v9, "syntax_case"

    const-string v10, "syntax-case"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v0, "kawa.standard.define_syntax"

    const-string v9, "define_syntax"

    const-string v10, "%define-syntax"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v0, "kawa.standard.syntax"

    const-string v9, "syntax"

    const-string v10, "syntax"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v0, "kawa.standard.syntax"

    const-string v9, "quasiSyntax"

    const-string v10, "quasisyntax"

    invoke-virtual {p0, v10, v0, v9}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v0, "syntax-object->datum"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v0, "datum->syntax-object"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v0, "syntax->expression"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "syntax-body->expression"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "generate-temporaries"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v0, "with-syntax"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v0, "identifier?"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v0, "free-identifier=?"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v0, "syntax-source"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v0, "syntax-line"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v0, "syntax-column"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v0, "begin-for-syntax"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v0, "define-for-syntax"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "include"

    const-string v1, "kawa.lib.misc_syntax"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "include-relative"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v0, "file-exists?"

    const-string v9, "kawa.lib.files"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v0, "file-directory?"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v0, "file-readable?"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "file-writable?"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v0, "delete-file"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "system-tmpdir"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v0, "make-temporary-file"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "rename-file"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v0, "copy-file"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "create-directory"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "->pathname"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v0, "port-char-encoding"

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v10}, Lkawa/standard/Scheme;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    const-string v0, "symbol-read-case"

    const-string v10, "P"

    invoke-virtual {p0, v0, v10}, Lkawa/standard/Scheme;->define(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    const-string v0, "system"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string v0, "make-process"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "tokenize-string-to-string-array"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v0, "tokenize-string-using-shell"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v0, "command-parse"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v0, "process-command-line-assignments"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "record-accessor"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "record-modifier"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "record-predicate"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v0, "record-constructor"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v0, "make-record-type"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "record-type-descriptor"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v0, "record-type-name"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v0, "record-type-field-names"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v0, "record?"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v0, "define-record-type"

    const-string v6, "gnu.kawa.slib.DefineRecordType"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v0, "when"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v0, "unless"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v0, "kawa.standard.fluid_let"

    const-string v6, "fluid_let"

    const-string v10, "fluid-let"

    invoke-virtual {p0, v10, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v0, "kawa.standard.constant_fold"

    const-string v6, "constant_fold"

    const-string v10, "constant-fold"

    invoke-virtual {p0, v10, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v0, "make-parameter"

    const-string v6, "kawa.lib.parameters"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "parameterize"

    const-string v6, "kawa.lib.parameters"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "compile-file"

    invoke-virtual {p0, v0, v7}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v0, "environment-bound?"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "scheme-implementation-version"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "scheme-window"

    const-string v6, "kawa.lib.windows"

    invoke-virtual {p0, v0, v6}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v0, "define-procedure"

    invoke-virtual {p0, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "add-procedure-properties"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v0, "gnu.kawa.functions.MakeProcedure"

    const-string v2, "makeProcedure"

    const-string v6, "make-procedure"

    invoke-virtual {p0, v6, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v0, "procedure-property"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v0, "set-procedure-property!"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v0, "provide"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v0, "test-begin"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "quantity->number"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v0, "quantity->unit"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "make-quantity"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v0, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v2, "define_namespace"

    const-string v6, "define-namespace"

    invoke-virtual {p0, v6, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v0, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v2, "define_xml_namespace"

    const-string v6, "define-xml-namespace"

    invoke-virtual {p0, v6, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, "gnu.kawa.lispexpr.DefineNamespace"

    const-string v2, "define_private_namespace"

    const-string v6, "define-private-namespace"

    invoke-virtual {p0, v6, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v0, "kawa.standard.define_unit"

    const-string v2, "define_unit"

    const-string v6, "define-unit"

    invoke-virtual {p0, v6, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v0, "kawa.standard.define_unit"

    const-string v2, "define_base_unit"

    const-string v6, "define-base-unit"

    invoke-virtual {p0, v6, v0, v2}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v0, "duration"

    invoke-virtual {p0, v0, v5}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "gentemp"

    invoke-virtual {p0, v0, v4}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v0, "defmacro"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v0, "gnu.kawa.functions.Setter"

    const-string v2, "setter"

    const-string v4, "setter"

    invoke-virtual {p0, v4, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v0, "resource-url"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v0, "module-uri"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v0, "future"

    const-string v1, "kawa.lib.thread"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "sleep"

    const-string v1, "kawa.lib.thread"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v0, "runnable"

    const-string v1, "kawa.lib.thread"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v0, "trace"

    const-string v1, "kawa.lib.trace"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "untrace"

    const-string v1, "kawa.lib.trace"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "disassemble"

    const-string v1, "kawa.lib.trace"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v0, "format"

    const-string v1, "gnu.kawa.functions.Format"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v0, "gnu.kawa.functions.ParseFormat"

    const-string v1, "parseFormat"

    const-string v2, "parse-format"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "gnu.kawa.xml.MakeElement"

    const-string v1, "makeElement"

    const-string v2, "make-element"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "gnu.kawa.xml.MakeAttribute"

    const-string v1, "makeAttribute"

    const-string v2, "make-attribute"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "gnu.kawa.functions.ValuesMap"

    const-string v1, "valuesMap"

    const-string v2, "map-values"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v0, "gnu.kawa.xml.Children"

    const-string v1, "children"

    const-string v2, "children"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v0, "attributes"

    const-string v1, "gnu.kawa.xml.Attributes"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v0, "gnu.kawa.xml.MakeUnescapedData"

    const-string v1, "unescapedData"

    const-string v2, "unescaped-data"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v0, "keyword?"

    const-string v1, "kawa.lib.keywords"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "keyword->string"

    const-string v1, "kawa.lib.keywords"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v0, "string->keyword"

    const-string v1, "kawa.lib.keywords"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v0, "kawa.standard.location"

    const-string v1, "location"

    const-string v2, "location"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v0, "kawa.standard.define_alias"

    const-string v1, "define_alias"

    const-string v2, "define-alias"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v0, "kawa.standard.define_variable"

    const-string v1, "define_variable"

    const-string v2, "define-variable"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v0, "kawa.standard.define_member_alias"

    const-string v1, "define_member_alias"

    const-string v2, "define-member-alias"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v0, "define-enum"

    const-string v1, "gnu.kawa.slib.enums"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "import"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v0, "kawa.standard.require"

    const-string v1, "require"

    const-string v2, "require"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v0, "kawa.standard.module_name"

    const-string v1, "module_name"

    const-string v2, "module-name"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "kawa.standard.module_extends"

    const-string v1, "module_extends"

    const-string v2, "module-extends"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v0, "kawa.standard.module_implements"

    const-string v1, "module_implements"

    const-string v2, "module-implements"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "kawa.standard.module_static"

    const-string v1, "module_static"

    const-string v2, "module-static"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v0, "kawa.standard.export"

    const-string v1, "module_export"

    const-string v2, "module-export"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v0, "kawa.standard.export"

    const-string v1, "export"

    const-string v2, "export"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v0, "kawa.standard.module_compile_options"

    const-string v1, "module_compile_options"

    const-string v2, "module-compile-options"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v0, "kawa.standard.with_compile_options"

    const-string v1, "with_compile_options"

    const-string v2, "with-compile-options"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v0, "array?"

    const-string v1, "kawa.lib.arrays"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v0, "array-rank"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v0, "make-array"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "array"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v0, "array-start"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v0, "array-end"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v0, "shape"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v0, "gnu.kawa.functions.ArrayRef"

    const-string v2, "arrayRef"

    const-string v4, "array-ref"

    invoke-virtual {p0, v4, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "gnu.kawa.functions.ArraySet"

    const-string v2, "arraySet"

    const-string v4, "array-set!"

    invoke-virtual {p0, v4, v0, v2}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v0, "share-array"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v0, "s8vector?"

    const-string v1, "kawa.lib.uniform"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v0, "make-s8vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v0, "s8vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v0, "s8vector-length"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v0, "s8vector-ref"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v0, "s8vector-set!"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v0, "s8vector->list"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v0, "list->s8vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "u8vector?"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v0, "make-u8vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v0, "u8vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v0, "u8vector-length"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    const-string v0, "u8vector-ref"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "u8vector-set!"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v0, "u8vector->list"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v0, "list->u8vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v0, "s16vector?"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "make-s16vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v0, "s16vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v0, "s16vector-length"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v0, "s16vector-ref"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "s16vector-set!"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v0, "s16vector->list"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v0, "list->s16vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v0, "u16vector?"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v0, "make-u16vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v0, "u16vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v0, "u16vector-length"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v0, "u16vector-ref"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "u16vector-set!"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "u16vector->list"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v0, "list->u16vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v0, "s32vector?"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "make-s32vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v0, "s32vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "s32vector-length"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v0, "s32vector-ref"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v0, "s32vector-set!"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v0, "s32vector->list"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v0, "list->s32vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v0, "u32vector?"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v0, "make-u32vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v0, "u32vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v0, "u32vector-length"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v0, "u32vector-ref"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v0, "u32vector-set!"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v0, "u32vector->list"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v0, "list->u32vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v0, "s64vector?"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v0, "make-s64vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v0, "s64vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v0, "s64vector-length"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string v0, "s64vector-ref"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v0, "s64vector-set!"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v0, "s64vector->list"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v0, "list->s64vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v0, "u64vector?"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v0, "make-u64vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const-string v0, "u64vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v0, "u64vector-length"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v0, "u64vector-ref"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v0, "u64vector-set!"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v0, "u64vector->list"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "list->u64vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v0, "f32vector?"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v0, "make-f32vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v0, "f32vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v0, "f32vector-length"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v0, "f32vector-ref"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v0, "f32vector-set!"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v0, "f32vector->list"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v0, "list->f32vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const-string v0, "f64vector?"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v0, "make-f64vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v0, "f64vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v0, "f64vector-length"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v0, "f64vector-ref"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v0, "f64vector-set!"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v0, "f64vector->list"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v0, "list->f64vector"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v0, "cut"

    const-string v1, "gnu.kawa.slib.cut"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v0, "cute"

    const-string v1, "gnu.kawa.slib.cut"

    invoke-virtual {p0, v0, v1}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v0, "cond-expand"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v0, "%cond-expand"

    invoke-virtual {p0, v0, v8}, Lkawa/standard/Scheme;->defSntxStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v0, "gnu.kawa.functions.DisplayFormat"

    const-string v1, "outBase"

    const-string v2, "*print-base*"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v0, "gnu.kawa.functions.DisplayFormat"

    const-string v1, "outRadix"

    const-string v2, "*print-radix*"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v0, "gnu.text.PrettyWriter"

    const-string v1, "lineLengthLoc"

    const-string v2, "*print-right-margin*"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "gnu.text.PrettyWriter"

    const-string v1, "miserWidthLoc"

    const-string v2, "*print-miser-width*"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v0, "gnu.kawa.xml.XmlNamespace"

    const-string v1, "HTML"

    const-string v2, "html"

    invoke-virtual {p0, v2, v0, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v0, "unit"

    const-string v1, "unitNamespace"

    invoke-virtual {p0, v0, v3, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v0, "pathType"

    const-string v1, "path"

    const-string v2, "gnu.kawa.lispexpr.LangObjType"

    invoke-virtual {p0, v1, v2, v0}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v0, "filepath"

    const-string v1, "filepathType"

    invoke-virtual {p0, v0, v2, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v0, "URI"

    const-string v1, "URIType"

    invoke-virtual {p0, v0, v2, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v0, "resolve-uri"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v0, "vector"

    const-string v1, "vectorType"

    invoke-virtual {p0, v0, v2, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v0, "string"

    const-string v1, "stringType"

    invoke-virtual {p0, v0, v2, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v0, "list"

    const-string v1, "listType"

    invoke-virtual {p0, v0, v2, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v0, "regex"

    const-string v1, "regexType"

    invoke-virtual {p0, v0, v2, v1}, Lkawa/standard/Scheme;->defAliasStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v0, "path?"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v0, "filepath?"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v0, "URI?"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v0, "absolute-path?"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v0, "path-scheme"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v0, "path-authority"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v0, "path-user-info"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v0, "path-host"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v0, "path-port"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v0, "path-file"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v0, "path-parent"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v0, "path-directory"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v0, "path-last"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v0, "path-extension"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v0, "path-fragment"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v0, "path-query"

    invoke-virtual {p0, v0, v9}, Lkawa/standard/Scheme;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    sget-object v0, Lkawa/standard/Scheme;->kawaEnvironment:Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v0}, Lgnu/mapping/SimpleEnvironment;->setLocked()V

    .line 841
    return-void
.end method

.method public static registerEnvironment()V
    .locals 1

    .line 1448
    invoke-static {}, Lkawa/standard/Scheme;->getInstance()Lkawa/standard/Scheme;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 1449
    return-void
.end method

.method public static string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1105
    const-string v0, "[]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 1108
    .local v0, "t":Lgnu/bytecode/Type;
    if-eqz v0, :cond_1

    .line 1109
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    goto :goto_0

    .line 1112
    .end local v0    # "t":Lgnu/bytecode/Type;
    :cond_0
    invoke-static {p0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 1113
    .restart local v0    # "t":Lgnu/bytecode/Type;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1114
    return-object v0

    .line 1115
    :cond_2
    invoke-static {p0}, Lgnu/expr/Language;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 1116
    if-eqz v0, :cond_3

    .line 1117
    sget-object v1, Lkawa/standard/Scheme;->types:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    :cond_3
    return-object v0
.end method


# virtual methods
.method public asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1
    .param p1, "ident"    # Ljava/lang/String;

    .line 1424
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public checkDefaultBinding(Lgnu/mapping/Symbol;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 28
    .param p1, "symbol"    # Lgnu/mapping/Symbol;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 1146
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v2

    .line 1147
    .local v2, "namespace":Lgnu/mapping/Namespace;
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    .line 1148
    .local v3, "local":Ljava/lang/String;
    instance-of v0, v2, Lgnu/kawa/xml/XmlNamespace;

    if-eqz v0, :cond_0

    .line 1149
    move-object v0, v2

    check-cast v0, Lgnu/kawa/xml/XmlNamespace;

    invoke-virtual {v0, v3}, Lgnu/kawa/xml/XmlNamespace;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v0

    return-object v0

    .line 1150
    :cond_0
    invoke-virtual {v2}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v4}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 1152
    invoke-static {v3}, Lgnu/math/Unit;->lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;

    move-result-object v0

    .line 1153
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 1154
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v4

    return-object v4

    .line 1156
    .end local v0    # "val":Ljava/lang/Object;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1158
    .local v4, "len":I
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 1159
    return-object v5

    .line 1160
    :cond_2
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-le v4, v8, :cond_9

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3f

    if-ne v9, v10, :cond_9

    .line 1162
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    .line 1163
    .local v9, "llen":I
    if-le v9, v8, :cond_8

    .line 1165
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 1166
    .local v10, "tlocal":Ljava/lang/String;
    invoke-virtual {v2, v10}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    .line 1167
    .local v11, "tsymbol":Lgnu/mapping/Symbol;
    invoke-virtual {v1, v11, v7}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v12

    .line 1168
    .local v12, "texp":Lgnu/expr/Expression;
    instance-of v13, v12, Lgnu/expr/ReferenceExp;

    if-eqz v13, :cond_5

    .line 1170
    move-object v13, v12

    check-cast v13, Lgnu/expr/ReferenceExp;

    invoke-virtual {v13}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v13

    .line 1171
    .local v13, "decl":Lgnu/expr/Declaration;
    if-eqz v13, :cond_3

    const-wide/32 v14, 0x10000

    invoke-virtual {v13, v14, v15}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1172
    :cond_3
    const/4 v12, 0x0

    .line 1173
    .end local v13    # "decl":Lgnu/expr/Declaration;
    :cond_4
    goto :goto_0

    .line 1174
    :cond_5
    instance-of v13, v12, Lgnu/expr/QuoteExp;

    if-nez v13, :cond_6

    .line 1175
    const/4 v12, 0x0

    .line 1176
    :cond_6
    :goto_0
    if-eqz v12, :cond_7

    .line 1178
    new-instance v13, Lgnu/expr/LambdaExp;

    invoke-direct {v13, v8}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 1179
    .local v13, "lexp":Lgnu/expr/LambdaExp;
    move-object/from16 v14, p1

    invoke-virtual {v13, v14}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 1180
    move-object v15, v5

    check-cast v15, Ljava/lang/Object;

    invoke-virtual {v13, v5}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 1181
    .local v5, "param":Lgnu/expr/Declaration;
    new-instance v15, Lgnu/expr/ApplyExp;

    sget-object v8, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    new-array v6, v6, [Lgnu/expr/Expression;

    move-object/from16 v17, v3

    .end local v3    # "local":Ljava/lang/String;
    .local v17, "local":Ljava/lang/String;
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v12, v6, v3

    invoke-direct {v15, v8, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iput-object v15, v13, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1184
    return-object v13

    .line 1176
    .end local v5    # "param":Lgnu/expr/Declaration;
    .end local v13    # "lexp":Lgnu/expr/LambdaExp;
    .end local v17    # "local":Ljava/lang/String;
    .restart local v3    # "local":Ljava/lang/String;
    :cond_7
    move-object/from16 v14, p1

    move-object/from16 v17, v3

    .end local v3    # "local":Ljava/lang/String;
    .restart local v17    # "local":Ljava/lang/String;
    goto :goto_1

    .line 1163
    .end local v10    # "tlocal":Ljava/lang/String;
    .end local v11    # "tsymbol":Lgnu/mapping/Symbol;
    .end local v12    # "texp":Lgnu/expr/Expression;
    .end local v17    # "local":Ljava/lang/String;
    .restart local v3    # "local":Ljava/lang/String;
    :cond_8
    move-object/from16 v14, p1

    move-object/from16 v17, v3

    .end local v3    # "local":Ljava/lang/String;
    .restart local v17    # "local":Ljava/lang/String;
    goto :goto_1

    .line 1160
    .end local v9    # "llen":I
    .end local v17    # "local":Ljava/lang/String;
    .restart local v3    # "local":Ljava/lang/String;
    :cond_9
    move-object/from16 v14, p1

    move-object/from16 v17, v3

    .line 1188
    .end local v3    # "local":Ljava/lang/String;
    .restart local v17    # "local":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1191
    .local v3, "ch0":C
    const/16 v8, 0x2e

    const/16 v9, 0x2b

    const/16 v10, 0x2d

    const/16 v11, 0xa

    if-eq v3, v10, :cond_a

    if-eq v3, v9, :cond_a

    invoke-static {v3, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    if-ltz v12, :cond_32

    .line 1198
    :cond_a
    const/4 v12, 0x0

    .line 1199
    .local v12, "state":I
    const/4 v13, 0x0

    .line 1200
    .local v13, "i":I
    :goto_2
    if-ge v13, v4, :cond_18

    .line 1202
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 1203
    .local v15, "ch":C
    invoke-static {v15, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    const/4 v5, 0x4

    const/4 v7, 0x3

    if-ltz v18, :cond_d

    .line 1204
    if-ge v12, v7, :cond_b

    const/4 v5, 0x2

    goto :goto_3

    :cond_b
    const/4 v7, 0x5

    if-ge v12, v7, :cond_c

    goto :goto_3

    :cond_c
    const/4 v5, 0x5

    :goto_3
    move v12, v5

    .end local v12    # "state":I
    .local v5, "state":I
    goto :goto_5

    .line 1205
    .end local v5    # "state":I
    .restart local v12    # "state":I
    :cond_d
    if-eq v15, v9, :cond_e

    if-ne v15, v10, :cond_f

    :cond_e
    if-nez v12, :cond_f

    .line 1206
    const/4 v5, 0x1

    move v12, v5

    .end local v12    # "state":I
    .restart local v5    # "state":I
    goto :goto_5

    .line 1207
    .end local v5    # "state":I
    .restart local v12    # "state":I
    :cond_f
    if-ne v15, v8, :cond_10

    if-ge v12, v7, :cond_10

    .line 1208
    const/4 v5, 0x3

    move v12, v5

    .end local v12    # "state":I
    .restart local v5    # "state":I
    goto :goto_5

    .line 1209
    .end local v5    # "state":I
    .restart local v12    # "state":I
    :cond_10
    const/16 v7, 0x65

    if-eq v15, v7, :cond_12

    const/16 v7, 0x45

    if-ne v15, v7, :cond_11

    goto :goto_4

    :cond_11
    const/4 v5, 0x1

    goto :goto_6

    :cond_12
    :goto_4
    if-eq v12, v6, :cond_13

    if-ne v12, v5, :cond_11

    :cond_13
    add-int/lit8 v5, v13, 0x1

    if-ge v5, v4, :cond_17

    .line 1212
    add-int/lit8 v5, v13, 0x1

    .line 1213
    .local v5, "j":I
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1214
    .local v7, "next":C
    if-eq v7, v10, :cond_14

    if-ne v7, v9, :cond_15

    :cond_14
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v4, :cond_15

    .line 1215
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1216
    :cond_15
    invoke-static {v7, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    if-gez v18, :cond_16

    .line 1217
    const/4 v5, 0x1

    goto :goto_6

    .line 1218
    :cond_16
    const/4 v12, 0x5

    .line 1219
    add-int/lit8 v13, v5, 0x1

    .line 1200
    .end local v5    # "j":I
    .end local v7    # "next":C
    .end local v15    # "ch":C
    :goto_5
    const/4 v5, 0x1

    add-int/2addr v13, v5

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_2

    .line 1209
    .restart local v15    # "ch":C
    :cond_17
    const/4 v5, 0x1

    goto :goto_6

    .line 1200
    .end local v15    # "ch":C
    :cond_18
    const/4 v5, 0x1

    .line 1225
    :goto_6
    if-ge v13, v4, :cond_31

    if-le v12, v5, :cond_31

    .line 1227
    new-instance v5, Lgnu/math/DFloNum;

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Lgnu/math/DFloNum;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v5, "num":Lgnu/math/DFloNum;
    const/4 v7, 0x0

    .line 1229
    .local v7, "div":Z
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 1230
    .local v15, "vec":Ljava/util/Vector;
    :goto_7
    if-ge v13, v4, :cond_2c

    .line 1232
    add-int/lit8 v8, v13, 0x1

    .end local v13    # "i":I
    .local v8, "i":I
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1233
    .local v13, "ch":C
    const/16 v6, 0x2a

    if-ne v13, v6, :cond_1a

    .line 1235
    if-ne v8, v4, :cond_19

    goto/16 :goto_12

    .line 1236
    :cond_19
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "i":I
    .local v6, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v8, v6

    move v6, v7

    goto :goto_8

    .line 1238
    .end local v6    # "i":I
    .restart local v8    # "i":I
    :cond_1a
    const/16 v6, 0x2f

    if-ne v13, v6, :cond_1c

    .line 1240
    if-eq v8, v4, :cond_32

    if-eqz v7, :cond_1b

    goto/16 :goto_12

    .line 1241
    :cond_1b
    const/4 v6, 0x1

    .line 1242
    .end local v7    # "div":Z
    .local v6, "div":Z
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "i":I
    .local v7, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v8, v7

    goto :goto_8

    .line 1238
    .end local v6    # "div":Z
    .local v7, "div":Z
    .restart local v8    # "i":I
    :cond_1c
    move v6, v7

    .line 1244
    .end local v7    # "div":Z
    .restart local v6    # "div":Z
    :goto_8
    add-int/lit8 v7, v8, -0x1

    .line 1248
    .local v7, "unitStart":I
    :goto_9
    invoke-static {v13}, Ljava/lang/Character;->isLetter(C)Z

    move-result v20

    if-nez v20, :cond_1d

    .line 1250
    add-int/lit8 v11, v8, -0x1

    .line 1251
    .local v11, "unitEnd":I
    if-ne v11, v7, :cond_1e

    .line 1252
    goto/16 :goto_12

    .line 1255
    .end local v11    # "unitEnd":I
    :cond_1d
    if-ne v8, v4, :cond_2b

    .line 1257
    move v11, v8

    .line 1258
    .restart local v11    # "unitEnd":I
    const/16 v13, 0x31

    .line 1259
    nop

    .line 1263
    :cond_1e
    invoke-virtual {v0, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1264
    const/4 v10, 0x0

    .line 1265
    .local v10, "expRequired":Z
    const/16 v9, 0x5e

    if-ne v13, v9, :cond_20

    .line 1267
    const/4 v10, 0x1

    .line 1268
    if-ne v8, v4, :cond_1f

    goto/16 :goto_12

    .line 1269
    :cond_1f
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v8, v9

    .line 1271
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_20
    move v9, v6

    .line 1272
    .local v9, "neg":Z
    move/from16 v23, v6

    const/16 v6, 0x2b

    .end local v6    # "div":Z
    .local v23, "div":Z
    if-ne v13, v6, :cond_22

    .line 1274
    const/4 v10, 0x1

    .line 1275
    if-ne v8, v4, :cond_21

    goto/16 :goto_12

    .line 1276
    :cond_21
    add-int/lit8 v22, v8, 0x1

    .end local v8    # "i":I
    .local v22, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move/from16 v8, v22

    const/16 v6, 0x2d

    goto :goto_b

    .line 1278
    .end local v22    # "i":I
    .restart local v8    # "i":I
    :cond_22
    const/16 v6, 0x2d

    if-ne v13, v6, :cond_25

    .line 1280
    const/4 v10, 0x1

    .line 1281
    if-ne v8, v4, :cond_23

    goto/16 :goto_12

    .line 1282
    :cond_23
    add-int/lit8 v21, v8, 0x1

    .end local v8    # "i":I
    .local v21, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1283
    if-nez v9, :cond_24

    const/4 v8, 0x1

    goto :goto_a

    :cond_24
    const/4 v8, 0x0

    :goto_a
    move v9, v8

    move/from16 v8, v21

    .line 1285
    .end local v21    # "i":I
    .restart local v8    # "i":I
    :cond_25
    :goto_b
    const/16 v21, 0x0

    .line 1286
    .local v21, "nexp":I
    const/16 v24, 0x0

    .line 1289
    .local v24, "exp":I
    :goto_c
    const/16 v6, 0xa

    invoke-static {v13, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v20

    .line 1290
    .local v20, "dig":I
    if-gtz v20, :cond_26

    .line 1292
    add-int/lit8 v8, v8, -0x1

    .line 1293
    goto :goto_d

    .line 1295
    :cond_26
    mul-int/lit8 v25, v24, 0xa

    add-int v24, v25, v20

    .line 1296
    add-int/lit8 v21, v21, 0x1

    .line 1297
    if-ne v8, v4, :cond_2a

    .line 1298
    nop

    .line 1301
    .end local v20    # "dig":I
    :goto_d
    if-nez v21, :cond_28

    .line 1303
    const/16 v24, 0x1

    .line 1304
    if-eqz v10, :cond_27

    .line 1305
    goto/16 :goto_12

    .line 1304
    :cond_27
    move/from16 v6, v24

    goto :goto_e

    .line 1301
    :cond_28
    move/from16 v6, v24

    .line 1307
    .end local v24    # "exp":I
    .local v6, "exp":I
    :goto_e
    if-eqz v9, :cond_29

    .line 1308
    neg-int v6, v6

    .line 1309
    :cond_29
    move/from16 v26, v7

    .end local v7    # "unitStart":I
    .local v26, "unitStart":I
    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1310
    .end local v6    # "exp":I
    .end local v9    # "neg":Z
    .end local v10    # "expRequired":Z
    .end local v11    # "unitEnd":I
    .end local v13    # "ch":C
    .end local v21    # "nexp":I
    .end local v26    # "unitStart":I
    move v13, v8

    move/from16 v7, v23

    const/4 v6, 0x2

    const/16 v8, 0x2e

    const/16 v9, 0x2b

    const/16 v10, 0x2d

    const/16 v11, 0xa

    goto/16 :goto_7

    .line 1299
    .restart local v7    # "unitStart":I
    .restart local v9    # "neg":Z
    .restart local v10    # "expRequired":Z
    .restart local v11    # "unitEnd":I
    .restart local v13    # "ch":C
    .restart local v20    # "dig":I
    .restart local v21    # "nexp":I
    .restart local v24    # "exp":I
    :cond_2a
    move/from16 v26, v7

    .end local v7    # "unitStart":I
    .restart local v26    # "unitStart":I
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "i":I
    .local v6, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1300
    .end local v20    # "dig":I
    move v8, v6

    const/16 v6, 0x2d

    goto :goto_c

    .line 1261
    .end local v9    # "neg":Z
    .end local v10    # "expRequired":Z
    .end local v11    # "unitEnd":I
    .end local v21    # "nexp":I
    .end local v23    # "div":Z
    .end local v24    # "exp":I
    .end local v26    # "unitStart":I
    .local v6, "div":Z
    .restart local v7    # "unitStart":I
    .restart local v8    # "i":I
    :cond_2b
    move/from16 v23, v6

    move/from16 v26, v7

    .end local v6    # "div":Z
    .end local v7    # "unitStart":I
    .restart local v23    # "div":Z
    .restart local v26    # "unitStart":I
    add-int/lit8 v6, v8, 0x1

    .end local v8    # "i":I
    .local v6, "i":I
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move v8, v6

    move/from16 v6, v23

    const/16 v9, 0x2b

    const/16 v10, 0x2d

    const/16 v11, 0xa

    goto/16 :goto_9

    .line 1311
    .end local v6    # "i":I
    .end local v23    # "div":Z
    .end local v26    # "unitStart":I
    .local v7, "div":Z
    .local v13, "i":I
    :cond_2c
    if-ne v13, v4, :cond_30

    .line 1313
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v6

    const/4 v8, 0x1

    shr-int/2addr v6, v8

    .line 1314
    .local v6, "nunits":I
    new-array v8, v6, [Lgnu/expr/Expression;

    .line 1315
    .local v8, "units":[Lgnu/expr/Expression;
    const/4 v9, 0x0

    .end local v13    # "i":I
    .local v9, "i":I
    :goto_f
    if-ge v9, v6, :cond_2e

    .line 1317
    mul-int/lit8 v10, v9, 0x2

    invoke-virtual {v15, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1318
    .local v10, "uname":Ljava/lang/String;
    sget-object v11, Lkawa/standard/Scheme;->unitNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    .line 1319
    .local v11, "usym":Lgnu/mapping/Symbol;
    invoke-virtual {v1, v11}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v13

    .line 1320
    .local v13, "uref":Lgnu/expr/Expression;
    mul-int/lit8 v18, v9, 0x2

    move/from16 v20, v7

    const/16 v16, 0x1

    .end local v7    # "div":Z
    .local v20, "div":Z
    add-int/lit8 v7, v18, 0x1

    invoke-virtual {v15, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/math/IntNum;

    .line 1321
    .local v7, "uexp":Lgnu/math/IntNum;
    invoke-virtual {v7}, Lgnu/math/IntNum;->longValue()J

    move-result-wide v18

    const-wide/16 v21, 0x1

    cmp-long v23, v18, v21

    if-eqz v23, :cond_2d

    .line 1322
    move-object/from16 v18, v10

    .end local v10    # "uname":Ljava/lang/String;
    .local v18, "uname":Ljava/lang/String;
    new-instance v10, Lgnu/expr/ApplyExp;

    move-object/from16 v19, v11

    .end local v11    # "usym":Lgnu/mapping/Symbol;
    .local v19, "usym":Lgnu/mapping/Symbol;
    sget-object v11, Lkawa/standard/expt;->expt:Lkawa/standard/expt;

    move/from16 v21, v12

    const/4 v12, 0x2

    .end local v12    # "state":I
    .local v21, "state":I
    new-array v14, v12, [Lgnu/expr/Expression;

    const/4 v12, 0x0

    aput-object v13, v14, v12

    invoke-static {v7}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v12

    const/16 v16, 0x1

    aput-object v12, v14, v16

    invoke-direct {v10, v11, v14}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v13, v10

    goto :goto_10

    .line 1321
    .end local v18    # "uname":Ljava/lang/String;
    .end local v19    # "usym":Lgnu/mapping/Symbol;
    .end local v21    # "state":I
    .restart local v10    # "uname":Ljava/lang/String;
    .restart local v11    # "usym":Lgnu/mapping/Symbol;
    .restart local v12    # "state":I
    :cond_2d
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move/from16 v21, v12

    .line 1324
    .end local v10    # "uname":Ljava/lang/String;
    .end local v11    # "usym":Lgnu/mapping/Symbol;
    .end local v12    # "state":I
    .restart local v18    # "uname":Ljava/lang/String;
    .restart local v19    # "usym":Lgnu/mapping/Symbol;
    .restart local v21    # "state":I
    :goto_10
    aput-object v13, v8, v9

    .line 1315
    .end local v7    # "uexp":Lgnu/math/IntNum;
    .end local v13    # "uref":Lgnu/expr/Expression;
    .end local v18    # "uname":Ljava/lang/String;
    .end local v19    # "usym":Lgnu/mapping/Symbol;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v14, p1

    move/from16 v7, v20

    move/from16 v12, v21

    goto :goto_f

    .line 1327
    .end local v20    # "div":Z
    .end local v21    # "state":I
    .local v7, "div":Z
    .restart local v12    # "state":I
    :cond_2e
    move/from16 v20, v7

    move/from16 v21, v12

    .end local v7    # "div":Z
    .end local v12    # "state":I
    .restart local v20    # "div":Z
    .restart local v21    # "state":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2f

    .line 1328
    const/4 v7, 0x0

    aget-object v10, v8, v7

    .local v10, "unit":Lgnu/expr/Expression;
    goto :goto_11

    .line 1330
    .end local v10    # "unit":Lgnu/expr/Expression;
    :cond_2f
    new-instance v7, Lgnu/expr/ApplyExp;

    sget-object v10, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    invoke-direct {v7, v10, v8}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    move-object v10, v7

    .line 1331
    .restart local v10    # "unit":Lgnu/expr/Expression;
    :goto_11
    new-instance v7, Lgnu/expr/ApplyExp;

    sget-object v11, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    const/4 v12, 0x2

    new-array v12, v12, [Lgnu/expr/Expression;

    invoke-static {v5}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-direct {v7, v11, v12}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v7

    .line 1311
    .end local v6    # "nunits":I
    .end local v8    # "units":[Lgnu/expr/Expression;
    .end local v9    # "i":I
    .end local v10    # "unit":Lgnu/expr/Expression;
    .end local v20    # "div":Z
    .end local v21    # "state":I
    .restart local v7    # "div":Z
    .restart local v12    # "state":I
    .local v13, "i":I
    :cond_30
    move/from16 v20, v7

    move/from16 v21, v12

    .end local v7    # "div":Z
    .end local v12    # "state":I
    .restart local v20    # "div":Z
    .restart local v21    # "state":I
    goto :goto_12

    .line 1225
    .end local v5    # "num":Lgnu/math/DFloNum;
    .end local v15    # "vec":Ljava/util/Vector;
    .end local v20    # "div":Z
    .end local v21    # "state":I
    .restart local v12    # "state":I
    :cond_31
    move/from16 v21, v12

    .line 1339
    .end local v12    # "state":I
    .end local v13    # "i":I
    :cond_32
    :goto_12
    const/4 v5, 0x2

    if-le v4, v5, :cond_33

    const/16 v5, 0x3c

    if-ne v3, v5, :cond_33

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_33

    .line 1341
    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1342
    add-int/lit8 v4, v4, -0x2

    .line 1343
    const/4 v5, 0x1

    move/from16 v27, v4

    move-object v4, v0

    move/from16 v0, v27

    .local v5, "sawAngle":Z
    goto :goto_13

    .line 1346
    .end local v5    # "sawAngle":Z
    :cond_33
    const/4 v5, 0x0

    move/from16 v27, v4

    move-object v4, v0

    move/from16 v0, v27

    .line 1347
    .local v0, "len":I
    .local v4, "name":Ljava/lang/String;
    .restart local v5    # "sawAngle":Z
    :goto_13
    const/4 v6, 0x0

    move v7, v6

    move v6, v0

    .line 1348
    .end local v0    # "len":I
    .local v6, "len":I
    .local v7, "rank":I
    :goto_14
    const/4 v0, 0x2

    if-le v6, v0, :cond_34

    add-int/lit8 v8, v6, -0x2

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5b

    if-ne v8, v9, :cond_34

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_34

    .line 1350
    add-int/lit8 v6, v6, -0x2

    .line 1351
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 1354
    :cond_34
    move-object v0, v4

    .line 1355
    .local v0, "cname":Ljava/lang/String;
    if-eqz v7, :cond_35

    .line 1356
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_15

    .line 1355
    :cond_35
    move-object v8, v0

    .line 1360
    .end local v0    # "cname":Ljava/lang/String;
    .local v8, "cname":Ljava/lang/String;
    :goto_15
    :try_start_0
    invoke-static {v8}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 1361
    .local v0, "type":Lgnu/bytecode/Type;
    if-lez v7, :cond_37

    if-eqz v5, :cond_36

    if-nez v0, :cond_37

    .line 1363
    :cond_36
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v9

    .line 1364
    .local v9, "tsymbol":Lgnu/mapping/Symbol;
    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v10

    .line 1365
    .local v10, "texp":Lgnu/expr/Expression;
    invoke-static {v10, v1}, Lgnu/expr/InlineCalls;->inlineCalls(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v11

    move-object v10, v11

    .line 1366
    nop

    instance-of v11, v10, Lgnu/expr/ErrorExp;

    if-nez v11, :cond_37

    .line 1367
    invoke-virtual/range {p2 .. p2}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v11

    invoke-virtual {v11, v10}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v11

    move-object v0, v11

    .line 1369
    .end local v9    # "tsymbol":Lgnu/mapping/Symbol;
    .end local v10    # "texp":Lgnu/expr/Expression;
    :cond_37
    if-eqz v0, :cond_39

    .line 1373
    :goto_16
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_38

    .line 1374
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v9

    move-object v0, v9

    goto :goto_16

    .line 1375
    :cond_38
    invoke-static {v0}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v9

    return-object v9

    .line 1379
    :cond_39
    invoke-static {v8}, Lgnu/bytecode/Type;->lookupType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v9

    move-object v0, v9

    .line 1380
    nop

    instance-of v9, v0, Lgnu/bytecode/PrimType;

    if-eqz v9, :cond_3a

    .line 1381
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v9

    .local v9, "clas":Ljava/lang/Class;
    goto :goto_17

    .line 1384
    .end local v9    # "clas":Ljava/lang/Class;
    :cond_3a
    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_3b

    .line 1385
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lkawa/lang/Translator;->classPrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 1387
    :cond_3b
    invoke-static {v8}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 1390
    .restart local v9    # "clas":Ljava/lang/Class;
    :goto_17
    if-eqz v9, :cond_3e

    .line 1392
    if-lez v7, :cond_3d

    .line 1394
    invoke-static {v9}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v10

    move-object v0, v10

    .line 1395
    :goto_18
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_3c

    .line 1396
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v10

    move-object v0, v10

    goto :goto_18

    .line 1397
    :cond_3c
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v10

    move-object v9, v10

    .line 1399
    :cond_3d
    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v10

    .line 1390
    .end local v0    # "type":Lgnu/bytecode/Type;
    .end local v9    # "clas":Ljava/lang/Class;
    :cond_3e
    goto :goto_19

    .line 1408
    :catchall_0
    move-exception v0

    goto :goto_1a

    .line 1402
    :catch_0
    move-exception v0

    .line 1404
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    invoke-static {v4}, Lgnu/bytecode/ArrayClassLoader;->getContextPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v9

    .line 1405
    .local v9, "pack":Ljava/lang/Package;
    if-eqz v9, :cond_3f

    .line 1406
    invoke-static {v9}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v10

    return-object v10

    .line 1410
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v9    # "pack":Ljava/lang/Package;
    :cond_3f
    :goto_19
    nop

    .line 1411
    :goto_1a
    const/4 v9, 0x0

    return-object v9
.end method

.method public createReadTable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 5

    .line 1429
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->createInitial()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    .line 1430
    .local v0, "tab":Lgnu/kawa/lispexpr/ReadTable;
    const/16 v1, 0x3a

    iput-char v1, v0, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    .line 1431
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    check-cast v1, Lgnu/kawa/lispexpr/ReaderDispatch;

    .line 1432
    .local v1, "dispatchTable":Lgnu/kawa/lispexpr/ReaderDispatch;
    new-instance v2, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v3, "syntax"

    invoke-virtual {p0, v3}, Lkawa/standard/Scheme;->asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x27

    invoke-virtual {v1, v3, v2}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1433
    new-instance v2, Lgnu/kawa/lispexpr/ReaderQuote;

    const-string v3, "quasisyntax"

    invoke-virtual {p0, v3}, Lkawa/standard/Scheme;->asSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/kawa/lispexpr/ReaderQuote;-><init>(Ljava/lang/Object;)V

    const/16 v3, 0x60

    invoke-virtual {v1, v3, v2}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1434
    const/16 v2, 0x2c

    invoke-static {}, Lgnu/kawa/lispexpr/ReaderDispatchMisc;->getInstance()Lgnu/kawa/lispexpr/ReaderDispatchMisc;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .line 1435
    const-string v2, "pathType"

    const-string v3, "path"

    const-string v4, "gnu.kawa.lispexpr.LangObjType"

    invoke-virtual {v0, v3, v4, v2}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    const-string v2, "filepath"

    const-string v3, "filepathType"

    invoke-virtual {v0, v2, v4, v3}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const-string v2, "URI"

    const-string v3, "URIType"

    invoke-virtual {v0, v2, v4, v3}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const-string v2, "gnu.mapping.Symbol"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "symbol"

    invoke-virtual {v0, v3, v2}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V

    .line 1439
    const-string v2, "gnu.mapping.Namespace"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    const-string v3, "namespace"

    invoke-virtual {v0, v3, v2}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/bytecode/Type;)V

    .line 1440
    const-string v2, "duration"

    const-string v3, "kawa.lib.numbers"

    invoke-virtual {v0, v2, v3, v2}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtorFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lgnu/kawa/lispexpr/ReadTable;->setFinalColonIsKeyword(Z)V

    .line 1442
    return-object v0
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 6
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 1083
    sget-object v0, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1085
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    .line 1086
    invoke-static {}, Lkawa/standard/Scheme;->getTypeMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1088
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1089
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/Type;

    .line 1090
    .local v3, "t":Lgnu/bytecode/Type;
    sget-object v4, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    invoke-virtual {v3}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 1092
    .local v4, "it":Lgnu/bytecode/Type;
    if-eq v4, v3, :cond_0

    .line 1093
    sget-object v5, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "t":Lgnu/bytecode/Type;
    .end local v4    # "it":Lgnu/bytecode/Type;
    :cond_0
    goto :goto_0

    .line 1096
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v0, Lkawa/standard/Scheme;->typeToStringMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1097
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1098
    return-object v0

    .line 1099
    :cond_2
    invoke-super {p0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->formatType(Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFormat(Z)Lgnu/lists/AbstractFormat;
    .locals 1
    .param p1, "readable"    # Z

    .line 938
    if-eqz p1, :cond_0

    sget-object v0, Lkawa/standard/Scheme;->writeFormat:Lgnu/lists/AbstractFormat;

    goto :goto_0

    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->displayFormat:Lgnu/lists/AbstractFormat;

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 856
    const-string v0, "Scheme"

    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 1
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 943
    const/4 v0, 0x3

    return v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 2
    .param p1, "clas"    # Ljava/lang/Class;

    .line 1046
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1048
    invoke-static {v0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    return-object v1

    .line 1049
    :cond_0
    const-string v1, "java.lang.String"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1050
    sget-object v1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    return-object v1

    .line 1051
    :cond_1
    const-string v1, "gnu.math.IntNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1052
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->integerType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1053
    :cond_2
    const-string v1, "gnu.math.DFloNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1054
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->dflonumType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1055
    :cond_3
    const-string v1, "gnu.math.RatNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1056
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->rationalType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1057
    :cond_4
    const-string v1, "gnu.math.RealNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1058
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->realType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1059
    :cond_5
    const-string v1, "gnu.math.Numeric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1060
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->numericType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1061
    :cond_6
    const-string v1, "gnu.lists.FVector"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1062
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->vectorType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1063
    :cond_7
    const-string v1, "gnu.lists.LList"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1064
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->listType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1065
    :cond_8
    const-string v1, "gnu.text.Path"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1066
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->pathType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1067
    :cond_9
    const-string v1, "gnu.text.URIPath"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1068
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->URIType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1069
    :cond_a
    const-string v1, "gnu.text.FilePath"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1070
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->filepathType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1071
    :cond_b
    const-string v1, "java.lang.Class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1072
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClass:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1073
    :cond_c
    const-string v1, "gnu.bytecode.Type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1074
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1075
    :cond_d
    const-string v1, "gnu.bytecode.ClassType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1076
    sget-object v1, Lgnu/kawa/lispexpr/LangObjType;->typeClassType:Lgnu/kawa/lispexpr/LangObjType;

    return-object v1

    .line 1077
    :cond_e
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    return-object v1
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 1123
    invoke-static {p1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public makeApply(Lgnu/expr/Expression;[Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4
    .param p1, "func"    # Lgnu/expr/Expression;
    .param p2, "args"    # [Lgnu/expr/Expression;

    .line 1416
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 1417
    .local v0, "exps":[Lgnu/expr/Expression;
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 1418
    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1419
    new-instance v1, Lgnu/expr/ApplyExp;

    new-instance v2, Lgnu/expr/ReferenceExp;

    sget-object v3, Lkawa/standard/Scheme;->applyFieldDecl:Lgnu/expr/Declaration;

    invoke-direct {v2, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-object v1
.end method
