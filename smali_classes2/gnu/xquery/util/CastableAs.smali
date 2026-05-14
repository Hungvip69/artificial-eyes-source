.class public Lgnu/xquery/util/CastableAs;
.super Lgnu/kawa/reflect/InstanceOf;
.source "CastableAs.java"


# static fields
.field public static castableAs:Lgnu/xquery/util/CastableAs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lgnu/xquery/util/CastableAs;

    invoke-direct {v0}, Lgnu/xquery/util/CastableAs;-><init>()V

    sput-object v0, Lgnu/xquery/util/CastableAs;->castableAs:Lgnu/xquery/util/CastableAs;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 15
    invoke-static {}, Lgnu/xquery/lang/XQuery;->getInstance()Lgnu/xquery/lang/XQuery;

    move-result-object v0

    const-string v1, "castable as"

    invoke-direct {p0, v0, v1}, Lgnu/kawa/reflect/InstanceOf;-><init>(Lgnu/expr/Language;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateApplyCastableAs"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/CastableAs;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lgnu/xquery/util/CastableAs;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p2}, Lgnu/expr/Language;->asType(Ljava/lang/Object;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 24
    .local v0, "type":Lgnu/bytecode/Type;
    instance-of v1, v0, Lgnu/kawa/xml/XDataType;

    if-eqz v1, :cond_0

    .line 25
    move-object v1, v0

    check-cast v1, Lgnu/kawa/xml/XDataType;

    invoke-virtual {v1, p1}, Lgnu/kawa/xml/XDataType;->castable(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "result":Z
    goto :goto_0

    .line 27
    .end local v1    # "result":Z
    :cond_0
    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    .line 28
    .restart local v1    # "result":Z
    :goto_0
    iget-object v2, p0, Lgnu/xquery/util/CastableAs;->language:Lgnu/expr/Language;

    invoke-virtual {v2, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 34
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 35
    return-void
.end method
