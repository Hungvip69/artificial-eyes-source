.class public Lgnu/kawa/slib/srfi1$frame5;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->unzip5(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame5"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n652#1,3:652\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda11recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "lis"    # Ljava/lang/Object;

    new-instance v0, Lgnu/kawa/slib/srfi1$frame6;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame6;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    .line 652
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    invoke-static {v1}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    iget-object v2, v0, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    iget-object v3, v0, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    iget-object v4, v0, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v3, v5, v1

    const/4 v1, 0x3

    aput-object v4, v5, v1

    const/4 v1, 0x4

    aput-object v0, v5, v1

    invoke-static {v5}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 653
    :cond_0
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v2, v0, Lgnu/kawa/slib/srfi1$frame6;->lis:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgnu/kawa/slib/srfi1$frame6;->elt:Ljava/lang/Object;

    .line 654
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame6;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame6;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
