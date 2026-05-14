.class public Lkawa/lib/srfi95$frame1;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame1"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi95.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi95.scm\n/u2/home/jis/ai2-kawa/kawa/lib/srfi95.scm\n*L\n89#1,11:89\n*E\n"
.end annotation


# instance fields
.field key:Ljava/lang/Object;

.field less$Qu:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "a"    # Ljava/lang/Object;
    .param p3, "kcara"    # Ljava/lang/Object;
    .param p4, "b"    # Ljava/lang/Object;
    .param p5, "kcarb"    # Ljava/lang/Object;

    .line 89
    nop

    .line 90
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    invoke-virtual {v0, v1, p5, p3}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const-string v3, "set-cdr!"

    if-eq v0, v1, :cond_1

    .line 91
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v0, p4}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 92
    invoke-virtual {v0, p4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    :try_start_1
    move-object v0, p4

    check-cast v0, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0, p2}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .end local p0    # "this":Lkawa/lib/srfi95$frame1;
    .end local p1    # "r":Ljava/lang/Object;
    .end local p2    # "a":Ljava/lang/Object;
    .end local p3    # "kcara":Ljava/lang/Object;
    .end local p4    # "b":Ljava/lang/Object;
    .end local p5    # "kcarb":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v2, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 94
    .restart local p1    # "r":Ljava/lang/Object;
    .restart local p2    # "a":Ljava/lang/Object;
    .restart local p3    # "kcara":Ljava/lang/Object;
    .restart local p4    # "b":Ljava/lang/Object;
    .restart local p5    # "kcarb":Ljava/lang/Object;
    :cond_0
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    goto :goto_1

    .line 91
    .end local p1    # "r":Ljava/lang/Object;
    .end local p2    # "a":Ljava/lang/Object;
    .end local p3    # "kcara":Ljava/lang/Object;
    .end local p4    # "b":Ljava/lang/Object;
    .end local p5    # "kcarb":Ljava/lang/Object;
    :catch_1
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v3, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 96
    .restart local p1    # "r":Ljava/lang/Object;
    .restart local p2    # "a":Ljava/lang/Object;
    .restart local p3    # "kcara":Ljava/lang/Object;
    .restart local p4    # "b":Ljava/lang/Object;
    .restart local p5    # "kcarb":Ljava/lang/Object;
    :cond_1
    :try_start_2
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    invoke-static {v0, p2}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 97
    invoke-virtual {v0, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    :try_start_3
    move-object v0, p2

    check-cast v0, Lgnu/lists/Pair;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {v0, p4}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    .end local p1    # "r":Ljava/lang/Object;
    .end local p2    # "a":Ljava/lang/Object;
    .end local p3    # "kcara":Ljava/lang/Object;
    .end local p4    # "b":Ljava/lang/Object;
    .end local p5    # "kcarb":Ljava/lang/Object;
    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v3, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 99
    .restart local p1    # "r":Ljava/lang/Object;
    .restart local p2    # "a":Ljava/lang/Object;
    .restart local p3    # "kcara":Ljava/lang/Object;
    .restart local p4    # "b":Ljava/lang/Object;
    .restart local p5    # "kcarb":Ljava/lang/Object;
    :cond_2
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 96
    .end local p1    # "r":Ljava/lang/Object;
    .end local p2    # "a":Ljava/lang/Object;
    .end local p3    # "kcara":Ljava/lang/Object;
    .end local p4    # "b":Ljava/lang/Object;
    .end local p5    # "kcarb":Ljava/lang/Object;
    :catch_3
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v3, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3
.end method
