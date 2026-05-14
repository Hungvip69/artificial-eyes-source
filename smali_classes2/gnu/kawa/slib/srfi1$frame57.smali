.class public Lgnu/kawa/slib/srfi1$frame57;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->$PcCars$PlCdrs(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame57"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n761#1,7:761\n*E\n"
.end annotation


# instance fields
.field abort:Lkawa/lang/Continuation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda76recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "lists"    # Ljava/lang/Object;

    new-instance v0, Lgnu/kawa/slib/srfi1$frame58;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame58;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame58;->staticLink:Lgnu/kawa/slib/srfi1$frame57;

    iput-object p1, v0, Lgnu/kawa/slib/srfi1$frame58;->lists:Ljava/lang/Object;

    .line 761
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame58;->lists:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame58;->lambda$Fn57:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame58;->lambda$Fn58:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 767
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method
