.class public Lkawa/lib/srfi95$frame0;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi95.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi95.scm\n/u2/home/jis/ai2-kawa/kawa/lib/srfi95.scm\n*L\n126#1,19:126\n*E\n"
.end annotation


# instance fields
.field keyer:Ljava/lang/Object;

.field less$Qu:Ljava/lang/Object;

.field seq:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda2step(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "n"    # Ljava/lang/Object;

    .line 126
    const-string v0, "set-car!"

    .line 127
    sget-object v1, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    sget-object v2, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sget-object v0, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v1, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v3

    .line 128
    .local v0, "j":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v3

    .line 127
    .local v1, "a":Ljava/lang/Object;
    nop

    .line 129
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v2, p1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v3

    .line 127
    .local v2, "k":Ljava/lang/Object;
    nop

    .line 130
    invoke-virtual {p0, v2}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .local v3, "b":Ljava/lang/Object;
    move-object v3, v4

    .line 131
    iget-object v4, p0, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    iget-object v5, p0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    invoke-static {v1, v3, v4, v5}, Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "j":Ljava/lang/Object;
    .end local v1    # "a":Ljava/lang/Object;
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "b":Ljava/lang/Object;
    goto/16 :goto_1

    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 132
    sget-object v2, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, p1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "set-cdr!"

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2

    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v2, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 133
    sget-object v2, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v6, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 134
    iget-object v6, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    move-object v7, v3

    .local v7, "x":Ljava/lang/Object;
    move-object v8, v3

    .line 135
    .end local v7    # "x":Ljava/lang/Object;
    .local v1, "x":Ljava/lang/Object;
    .local v2, "y":Ljava/lang/Object;
    .local v6, "p":Ljava/lang/Object;
    sget-object v3, Lkawa/lib/lists;->cddr:Lgnu/expr/GenericProc;

    iget-object v7, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 136
    iget-object v7, p0, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v9, p0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    invoke-virtual {v8, v9, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v10, p0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    invoke-virtual {v9, v10, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v7, :cond_1

    .line 137
    :try_start_0
    move-object v3, v6

    check-cast v3, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v3, v2}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 138
    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_1
    check-cast v3, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v3, v1}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "x":Ljava/lang/Object;
    .end local v2    # "y":Ljava/lang/Object;
    .end local v6    # "p":Ljava/lang/Object;
    .end local p0    # "this":Lkawa/lib/srfi95$frame0;
    .end local p1    # "n":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v5, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 137
    :catch_1
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 139
    .restart local v1    # "x":Ljava/lang/Object;
    .restart local v2    # "y":Ljava/lang/Object;
    .restart local v6    # "p":Ljava/lang/Object;
    .restart local p1    # "n":Ljava/lang/Object;
    :cond_1
    :goto_0
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_2
    check-cast v0, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v3}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 140
    move-object v0, v6

    .end local v1    # "x":Ljava/lang/Object;
    .end local v2    # "y":Ljava/lang/Object;
    .end local v6    # "p":Ljava/lang/Object;
    goto :goto_1

    .line 139
    .end local p1    # "n":Ljava/lang/Object;
    :catch_2
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v4, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 140
    .restart local p1    # "n":Ljava/lang/Object;
    :cond_2
    sget-object v0, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 141
    sget-object v1, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    move-object v1, v3

    .line 142
    .local v0, "p":Ljava/lang/Object;
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v2, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 143
    :try_start_3
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v1, v2}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 144
    nop

    .end local v0    # "p":Ljava/lang/Object;
    goto :goto_1

    .line 143
    .end local p1    # "n":Ljava/lang/Object;
    :catch_3
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v4, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 144
    .restart local p1    # "n":Ljava/lang/Object;
    :cond_3
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_1
    return-object v0
.end method
