.class public Lgnu/kawa/slib/srfi1$frame1;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->unzip3(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n633#1,3:633\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method

.method public static lambda5recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "lis"    # Ljava/lang/Object;

    new-instance v0, Lgnu/kawa/slib/srfi1$frame2;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame2;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame2;->lis:Ljava/lang/Object;

    .line 633
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame2;->lis:Ljava/lang/Object;

    invoke-static {v1}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame2;->lis:Ljava/lang/Object;

    iget-object v2, v0, Lgnu/kawa/slib/srfi1$frame2;->lis:Ljava/lang/Object;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame2;->lis:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    invoke-static {v3}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_0
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v2, v0, Lgnu/kawa/slib/srfi1$frame2;->lis:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgnu/kawa/slib/srfi1$frame2;->elt:Ljava/lang/Object;

    .line 635
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame2;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame2;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
