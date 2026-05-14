.class public Lcom/google/youngandroid/runtime$frame8;
.super Lgnu/expr/ModuleBody;
.source "runtime3808032275111475787.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->appinventorNumber$To$String(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame8"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nruntime3808032275111475787.scm\nScheme\n*S Scheme\n*F\n+ 1 runtime3808032275111475787.scm\n/tmp/runtime3808032275111475787.scm\n*L\n1859#1,9:1859\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn14:Lgnu/expr/ModuleMethod;

.field final lambda$Fn15:Lgnu/expr/ModuleMethod;

.field n:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/tmp/runtime3808032275111475787.scm:1859"

    const-string v4, "source-location"

    invoke-virtual {v0, v4, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame8;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/tmp/runtime3808032275111475787.scm:1867"

    invoke-virtual {v0, v4, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame8;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 1867
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame8;->lambda15(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 1859
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame8;->lambda14(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method lambda14(Ljava/lang/Object;)V
    .locals 1
    .param p1, "port"    # Ljava/lang/Object;

    .line 1859
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame8;->n:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method lambda15(Ljava/lang/Object;)V
    .locals 4
    .param p1, "port"    # Ljava/lang/Object;

    .line 1867
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame8;->n:Ljava/lang/Object;

    :try_start_0
    check-cast v0, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lkawa/lib/numbers;->exact(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .end local p0    # "this":Lcom/google/youngandroid/runtime$frame8;
    .end local p1    # "port":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "exact"

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1859
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 1867
    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 1859
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
