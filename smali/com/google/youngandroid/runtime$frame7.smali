.class public Lcom/google/youngandroid/runtime$frame7;
.super Lgnu/expr/ModuleBody;
.source "runtime3808032275111475787.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->coerceToMatrix(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame7"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nruntime3808032275111475787.scm\nScheme\n*S Scheme\n*F\n+ 1 runtime3808032275111475787.scm\n/tmp/runtime3808032275111475787.scm\n*L\n1803#1,3:1803\n*E\n"
.end annotation


# instance fields
.field arg:Ljava/lang/Object;

.field final lambda$Fn13:Lgnu/expr/ModuleMethod;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0x1001

    const/16 v3, 0xb

    invoke-direct {v0, p0, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/tmp/runtime3808032275111475787.scm:1803"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame7;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1803
    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame7;->lambda13(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda13(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "row"    # Ljava/lang/Object;

    .line 1803
    const-string v0, "length"

    .line 1804
    invoke-static {p1}, Lcom/google/youngandroid/runtime;->isYailList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .local v1, "x":Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 1805
    iget-object v3, p0, Lcom/google/youngandroid/runtime$frame7;->arg:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    :try_start_0
    check-cast v2, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v2}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v2

    :try_start_1
    move-object v4, p1

    check-cast v4, Lgnu/lists/LList;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v4}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v0

    if-ne v2, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    move-object v1, v0

    goto :goto_1

    .end local v1    # "x":Ljava/lang/Object;
    .end local p0    # "this":Lcom/google/youngandroid/runtime$frame7;
    .end local p1    # "row":Ljava/lang/Object;
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v1, v0, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_1
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 1804
    .restart local p1    # "row":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1803
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
