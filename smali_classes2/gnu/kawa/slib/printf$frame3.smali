.class public Lgnu/kawa/slib/printf$frame3;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf$frame2;->lambda10(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame3"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n57#1,31:57\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn7:Lgnu/expr/ModuleMethod;

.field sgn:Ljava/lang/Object;

.field staticLink:Lgnu/kawa/slib/printf$frame2;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0x2002

    const/16 v3, 0x9

    invoke-direct {v0, p0, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:84"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame3;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/printf$frame3;->lambda11(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda11(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "i"    # Ljava/lang/Object;
    .param p2, "idigs"    # Ljava/lang/Object;

    .line 84
    const-string v0, "string-ref"

    new-instance v1, Lgnu/kawa/slib/printf$frame4;

    invoke-direct {v1}, Lgnu/kawa/slib/printf$frame4;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/printf$frame4;->staticLink:Lgnu/kawa/slib/printf$frame3;

    iput-object p2, v1, Lgnu/kawa/slib/printf$frame4;->idigs:Ljava/lang/Object;

    .line 85
    nop

    .line 86
    nop

    .line 87
    iget-object v1, v1, Lgnu/kawa/slib/printf$frame4;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    .line 57
    move-object v2, p1

    .line 58
    .local v1, "cont":Ljava/lang/Object;
    .local v2, "i":Ljava/lang/Object;
    sget-object v3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v4, p0, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v4, v4, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget v4, v4, Lgnu/kawa/slib/printf$frame;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    .local v3, "x":Z
    if-eqz v3, :cond_0

    sget-object v4, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame3;->staticLink:Lgnu/kawa/slib/printf$frame2;

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame2;->staticLink:Lgnu/kawa/slib/printf$frame;

    iget-object v5, v5, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_1
    check-cast v5, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v5, v0}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    invoke-static {v4, v0}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 59
    .end local v1    # "cont":Ljava/lang/Object;
    .end local v2    # "i":Ljava/lang/Object;
    .end local v3    # "x":Z
    .end local p0    # "this":Lgnu/kawa/slib/printf$frame3;
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "idigs":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    invoke-direct {p2, p1, v0, v1, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 58
    .restart local v1    # "cont":Ljava/lang/Object;
    .restart local v2    # "i":Ljava/lang/Object;
    .restart local v3    # "x":Z
    .restart local p1    # "i":Ljava/lang/Object;
    .restart local p2    # "idigs":Ljava/lang/Object;
    :cond_0
    if-eqz v3, :cond_1

    .line 60
    .end local v3    # "x":Z
    :goto_0
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 61
    :cond_1
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v1    # "cont":Ljava/lang/Object;
    .end local v2    # "i":Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 58
    .end local p1    # "i":Ljava/lang/Object;
    .end local p2    # "idigs":Ljava/lang/Object;
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "x"

    const/4 v1, -0x2

    invoke-direct {p2, p1, v0, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 84
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
