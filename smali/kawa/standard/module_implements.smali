.class public Lkawa/standard/module_implements;
.super Lkawa/lang/Syntax;
.source "module_implements.java"


# static fields
.field public static final module_implements:Lkawa/standard/module_implements;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lkawa/standard/module_implements;

    invoke-direct {v0}, Lkawa/standard/module_implements;-><init>()V

    sput-object v0, Lkawa/standard/module_implements;->module_implements:Lkawa/standard/module_implements;

    .line 11
    sget-object v0, Lkawa/standard/module_implements;->module_implements:Lkawa/standard/module_implements;

    const-string v1, "module-implements"

    invoke-virtual {v0, v1}, Lkawa/standard/module_implements;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public scanForm(Lgnu/lists/Pair;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)V
    .locals 6
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "defs"    # Lgnu/expr/ScopeExp;
    .param p3, "tr"    # Lkawa/lang/Translator;

    .line 15
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 16
    .local v0, "args":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v1

    .line 17
    .local v1, "len":I
    if-gez v1, :cond_0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "improper argument list for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lkawa/standard/module_implements;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    .line 20
    return-void

    .line 22
    :cond_0
    new-array v2, v1, [Lgnu/bytecode/ClassType;

    .line 23
    .local v2, "interfaces":[Lgnu/bytecode/ClassType;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 25
    move-object v4, v0

    check-cast v4, Lgnu/lists/Pair;

    .line 26
    .local v4, "pair":Lgnu/lists/Pair;
    invoke-virtual {p3, v4}, Lkawa/lang/Translator;->exp2Type(Lgnu/lists/Pair;)Lgnu/bytecode/Type;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/ClassType;

    aput-object v5, v2, v3

    .line 27
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 23
    .end local v4    # "pair":Lgnu/lists/Pair;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p3}, Lkawa/lang/Translator;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v3

    .line 30
    .local v3, "module":Lgnu/expr/ModuleExp;
    invoke-virtual {v3, v2}, Lgnu/expr/ModuleExp;->setInterfaces([Lgnu/bytecode/ClassType;)V

    .line 31
    const/high16 v4, 0x20000

    invoke-virtual {v3, v4}, Lgnu/expr/ModuleExp;->setFlag(I)V

    .line 32
    return-void
.end method
