.class public Lcom/google/youngandroid/runtime$frame9;
.super Lgnu/expr/ModuleBody;
.source "runtime3808032275111475787.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->textDeobfuscate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame9"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nruntime3808032275111475787.scm\nScheme\n*S Scheme\n*F\n+ 1 runtime3808032275111475787.scm\n/tmp/runtime3808032275111475787.scm\n*L\n955#1,2539:955\n*E\n"
.end annotation


# instance fields
.field final cont$Fn17:Lgnu/expr/ModuleMethod;

.field lc:Ljava/lang/Object;

.field text:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lcom/google/youngandroid/runtime;->Lit56:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x1001

    const/16 v3, 0xe

    invoke-direct {v0, p0, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame9;->cont$Fn17:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame9;->lambda20cont(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lambda20cont(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "$Styail$Mnbreak$St"    # Ljava/lang/Object;

    .line 3493
    const-string v0, "string-length"

    :goto_0
    iget-object v1, p0, Lcom/google/youngandroid/runtime$frame9;->lc:Ljava/lang/Object;

    const/4 v2, 0x1

    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v3, p0, Lcom/google/youngandroid/runtime$frame9;->text:Ljava/lang/Object;

    :try_start_1
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/youngandroid/runtime$frame9;->lc:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/youngandroid/runtime$frame9;->lc:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v3, v4, v2

    invoke-static {v4}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/youngandroid/runtime$frame9;->lc:Ljava/lang/Object;

    .line 955
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 3493
    .end local p0    # "this":Lcom/google/youngandroid/runtime$frame9;
    .end local p1    # "$Styail$Mnbreak$St":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw v3

    :goto_2
    goto :goto_1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
