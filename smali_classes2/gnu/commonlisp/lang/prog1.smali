.class public Lgnu/commonlisp/lang/prog1;
.super Lkawa/lang/Syntax;
.source "prog1.java"


# static fields
.field public static final prog1:Lgnu/commonlisp/lang/prog1;

.field public static final prog2:Lgnu/commonlisp/lang/prog1;


# instance fields
.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lgnu/commonlisp/lang/prog1;

    const-string v1, "prog1"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/commonlisp/lang/prog1;->prog1:Lgnu/commonlisp/lang/prog1;

    .line 12
    new-instance v0, Lgnu/commonlisp/lang/prog1;

    const-string v1, "prog2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lgnu/commonlisp/lang/prog1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/commonlisp/lang/prog1;->prog2:Lgnu/commonlisp/lang/prog1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 15
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 16
    iput p2, p0, Lgnu/commonlisp/lang/prog1;->index:I

    .line 17
    invoke-virtual {p0, p1}, Lgnu/commonlisp/lang/prog1;->setName(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 22
    invoke-static {p1}, Lgnu/lists/LList;->length(Ljava/lang/Object;)I

    move-result v0

    .line 23
    .local v0, "nexps":I
    iget v1, p0, Lgnu/commonlisp/lang/prog1;->index:I

    if-ge v0, v1, :cond_0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "too few expressions in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/commonlisp/lang/prog1;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 25
    :cond_0
    iget v1, p0, Lgnu/commonlisp/lang/prog1;->index:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 27
    move-object v1, p1

    check-cast v1, Lgnu/lists/Pair;

    .line 28
    .local v1, "pair":Lgnu/lists/Pair;
    new-instance v2, Lgnu/expr/BeginExp;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    sget-object v4, Lgnu/commonlisp/lang/prog1;->prog1:Lgnu/commonlisp/lang/prog1;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Lgnu/commonlisp/lang/prog1;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v2

    .line 33
    .end local v1    # "pair":Lgnu/lists/Pair;
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Lgnu/expr/Expression;

    .line 34
    .local v1, "inits":[Lgnu/expr/Expression;
    new-instance v2, Lgnu/expr/LetExp;

    invoke-direct {v2, v1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    .line 35
    .local v2, "let":Lgnu/expr/LetExp;
    new-array v3, v0, [Lgnu/expr/Expression;

    .line 36
    .local v3, "body":[Lgnu/expr/Expression;
    move-object v4, p1

    check-cast v4, Lgnu/lists/Pair;

    .line 37
    .local v4, "pair":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    .line 38
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 39
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_2

    .line 41
    move-object v4, p1

    check-cast v4, Lgnu/lists/Pair;

    .line 42
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v3, v5

    .line 43
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 39
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 45
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Ljava/lang/Object;

    invoke-virtual {v2, v5}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v5

    .line 46
    .local v5, "decl":Lgnu/expr/Declaration;
    add-int/lit8 v6, v0, -0x1

    new-instance v7, Lgnu/expr/ReferenceExp;

    invoke-direct {v7, v5}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v7, v3, v6

    .line 47
    invoke-static {v3}, Lgnu/expr/BeginExp;->canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v6

    iput-object v6, v2, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 48
    invoke-virtual {p2}, Lkawa/lang/Translator;->mustCompileHere()V

    .line 49
    return-object v2
.end method
