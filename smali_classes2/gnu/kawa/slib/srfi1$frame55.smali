.class public Lgnu/kawa/slib/srfi1$frame55;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->$PcCdrs(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame55"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n743#1,4:743\n*E\n"
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
.method public lambda74recur(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "lists"    # Ljava/lang/Object;

    .line 743
    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 745
    .local v0, "lis":Ljava/lang/Object;
    invoke-static {v0}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame55;->abort:Lkawa/lang/Continuation;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 746
    :cond_0
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/kawa/slib/srfi1$frame55;->lambda74recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .end local v0    # "lis":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    :cond_1
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_1
    return-object v1
.end method
