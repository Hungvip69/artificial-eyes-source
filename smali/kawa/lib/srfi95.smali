.class public Lkawa/lib/srfi95;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi95.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi95.scm\n/u2/home/jis/ai2-kawa/kawa/lib/srfi95.scm\n*L\n21#1,196:21\n*E\n"
.end annotation


# static fields
.field public static final $Pcsort$Mnlist:Lgnu/expr/ModuleMethod;

.field public static final $Pcsort$Mnvector:Lgnu/expr/ModuleMethod;

.field public static final $Pcvector$Mnsort$Ex:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lkawa/lib/srfi95;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/math/IntNum;

.field static final Lit3:Lgnu/math/IntNum;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field static final identity:Lgnu/expr/ModuleMethod;

.field public static final merge:Lgnu/expr/ModuleMethod;

.field public static final merge$Ex:Lgnu/expr/ModuleMethod;

.field public static final sort:Lgnu/expr/ModuleMethod;

.field public static final sort$Ex:Lgnu/expr/ModuleMethod;

.field public static final sorted$Qu:Lgnu/expr/ModuleMethod;


# direct methods
.method public static $PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "seq"    # Ljava/lang/Object;
    .param p1, "isLess"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 124
    new-instance v0, Lkawa/lib/srfi95$frame0;

    invoke-direct {v0}, Lkawa/lib/srfi95$frame0;-><init>()V

    iput-object p0, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    iput-object p1, v0, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    .line 125
    sget-object v1, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    .line 126
    nop

    .line 146
    nop

    .line 150
    iput-object v1, v0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    .line 125
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v1, :cond_0

    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    goto :goto_0

    :cond_0
    sget-object v1, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    :goto_0
    iput-object v1, v0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "length"

    const/4 v3, 0x1

    if-eq p2, v1, :cond_3

    .line 155
    iget-object v1, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 146
    nop

    .local v1, "lst":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 147
    :goto_1
    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    .local v4, "x":Z
    move v4, v5

    const-string v5, "set-car!"

    if-eqz v4, :cond_2

    .line 156
    .end local v1    # "lst":Ljava/lang/Object;
    .end local v4    # "x":Z
    iget-object v1, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    :try_start_0
    check-cast v1, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v1}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 157
    iget-object v1, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 150
    nop

    .line 151
    .restart local v1    # "lst":Ljava/lang/Object;
    :goto_2
    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    .restart local v4    # "x":Z
    move v4, v2

    if-eqz v4, :cond_1

    .line 158
    .end local v1    # "lst":Ljava/lang/Object;
    .end local v4    # "x":Z
    iget-object v0, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    goto :goto_3

    .line 152
    .restart local v1    # "lst":Ljava/lang/Object;
    .restart local v4    # "x":Z
    :cond_1
    :try_start_1
    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v6, Lkawa/lib/lists;->cdar:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 153
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 152
    .end local v1    # "lst":Ljava/lang/Object;
    .end local v4    # "x":Z
    .end local p0    # "seq":Ljava/lang/Object;
    .end local p1    # "isLess":Ljava/lang/Object;
    .end local p2    # "key":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v5, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 156
    :catch_1
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 148
    .restart local v1    # "lst":Ljava/lang/Object;
    .restart local v4    # "x":Z
    .restart local p0    # "seq":Ljava/lang/Object;
    .restart local p1    # "isLess":Ljava/lang/Object;
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_2
    :try_start_2
    move-object v6, v1

    check-cast v6, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, p2, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v6, v5}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 149
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 148
    .end local v1    # "lst":Ljava/lang/Object;
    .end local v4    # "x":Z
    .end local p0    # "seq":Ljava/lang/Object;
    .end local p1    # "isLess":Ljava/lang/Object;
    .end local p2    # "key":Ljava/lang/Object;
    :catch_2
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v5, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 160
    .restart local p0    # "seq":Ljava/lang/Object;
    .restart local p1    # "isLess":Ljava/lang/Object;
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_3
    iget-object v1, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    :try_start_3
    check-cast v1, Lgnu/lists/LList;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {v1}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    return-object v0

    .end local p0    # "seq":Ljava/lang/Object;
    .end local p1    # "isLess":Ljava/lang/Object;
    .end local p2    # "key":Ljava/lang/Object;
    :catch_3
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public static $PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static $PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p0, "seq"    # Lgnu/lists/Sequence;
    .param p1, "less$Qu"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 196
    nop

    .line 197
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 198
    .local v0, "dim":I
    invoke-static {v0}, Lkawa/lib/vectors;->makeVector(I)Lgnu/lists/FVector;

    move-result-object v1

    const/4 v2, 0x0

    .line 199
    .local v1, "newra":Lgnu/lists/FVector;
    invoke-static {p0}, Lkawa/lib/srfi95;->rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "sorted":Ljava/lang/Object;
    sget-object v3, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    .local v3, "i":Ljava/lang/Object;
    :goto_0
    invoke-static {v2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 203
    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lkawa/lib/vectors;->vectorSet$Ex(Lgnu/lists/FVector;ILjava/lang/Object;)V

    .line 200
    sget-object v4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v4, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 201
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v5, v3, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v4

    goto :goto_0

    .line 203
    .end local v0    # "dim":I
    .end local v1    # "newra":Lgnu/lists/FVector;
    .end local v2    # "sorted":Ljava/lang/Object;
    .end local v3    # "i":Ljava/lang/Object;
    .end local p0    # "seq":Lgnu/lists/Sequence;
    .end local p1    # "less$Qu":Ljava/lang/Object;
    .end local p2    # "key":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "vector-set!"

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 202
    .restart local p0    # "seq":Lgnu/lists/Sequence;
    .restart local p1    # "less$Qu":Ljava/lang/Object;
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static $PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "seq"    # Lgnu/lists/Sequence;
    .param p1, "less$Qu"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 189
    nop

    .line 190
    invoke-static {p0}, Lkawa/lib/srfi95;->rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "sorted":Ljava/lang/Object;
    sget-object v1, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    .local v1, "i":Ljava/lang/Object;
    :goto_0
    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 194
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lgnu/lists/Sequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 192
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v2

    goto :goto_0

    .line 193
    :cond_0
    nop

    .end local v0    # "sorted":Ljava/lang/Object;
    .end local v1    # "i":Ljava/lang/Object;
    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "sort"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%sort-vector"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%vector-sort!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "sort!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%sort-list"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "merge!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "merge"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "sorted?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "identity"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    const/4 v1, 0x2

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    const/4 v2, -0x1

    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lkawa/lib/srfi95;->Lit0:Lgnu/math/IntNum;

    new-instance v2, Lkawa/lib/srfi95;

    invoke-direct {v2}, Lkawa/lib/srfi95;-><init>()V

    sput-object v2, Lkawa/lib/srfi95;->$instance:Lkawa/lib/srfi95;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v3, Lkawa/lib/srfi95;->$instance:Lkawa/lib/srfi95;

    sget-object v4, Lkawa/lib/srfi95;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v5, 0x1001

    invoke-direct {v2, v3, v0, v4, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/srfi95;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3002

    invoke-direct {v0, v3, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->sorted$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/srfi95;->Lit6:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x4

    const/16 v5, 0x4003

    invoke-direct {v0, v3, v2, v1, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->merge:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x6

    sget-object v2, Lkawa/lib/srfi95;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->merge$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/srfi95;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x8

    const/16 v5, 0x3003

    invoke-direct {v0, v3, v2, v1, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->$Pcsort$Mnlist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9

    sget-object v2, Lkawa/lib/srfi95;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->sort$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb

    sget-object v2, Lkawa/lib/srfi95;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->$Pcvector$Mnsort$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    sget-object v2, Lkawa/lib/srfi95;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->$Pcsort$Mnvector:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    sget-object v2, Lkawa/lib/srfi95;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/srfi95;->sort:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/srfi95;->$instance:Lkawa/lib/srfi95;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static identity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x"    # Ljava/lang/Object;

    .line 34
    return-object p0
.end method

.method public static isSorted(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 44
    nop

    .line 45
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_4

    .line 46
    :cond_0
    instance-of v0, p0, Lgnu/lists/Sequence;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    .line 47
    :try_start_0
    check-cast p0, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 48
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 49
    if-gt v0, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v1, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 50
    :cond_3
    nop

    .line 49
    nop

    .line 50
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 51
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-interface {p0, v0}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    :goto_0
    :try_start_1
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v2}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v2, :cond_4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 53
    :cond_5
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    :try_start_2
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-interface {p0, v4}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v4, p1, v2, v0}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v4, :cond_6

    .line 55
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lkawa/lib/srfi95;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v0, v4, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v2

    goto :goto_0

    .line 54
    :cond_6
    move-object p0, v0

    :goto_1
    goto/16 :goto_4

    .line 53
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "gnu.lists.Sequence.get(int)"

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 52
    :catch_1
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "negative?"

    invoke-direct {p1, p0, p2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 47
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "arr"

    invoke-direct {p2, p1, v0, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 54
    :cond_7
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 56
    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    .line 58
    :cond_8
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    sget-object v4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 60
    :goto_2
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v4, :cond_9

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 61
    :cond_a
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 62
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v5, p1, v4, v0}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    if-eq v0, v5, :cond_b

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    :goto_3
    add-int/2addr v0, v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_c

    .line 63
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, v4

    goto :goto_2

    .line 62
    :cond_c
    if-eqz v0, :cond_d

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_d
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object p0

    :catch_3
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "x"

    invoke-direct {p1, p0, p2, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public static merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .param p2, "isLess"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .line 71
    new-instance v0, Lkawa/lib/srfi95$frame;

    invoke-direct {v0}, Lkawa/lib/srfi95$frame;-><init>()V

    iput-object p2, v0, Lkawa/lib/srfi95$frame;->less$Qu:Ljava/lang/Object;

    iput-object p3, v0, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    .line 72
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    move-object v0, p0

    goto :goto_0

    .line 75
    :cond_1
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 76
    invoke-virtual {v4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v0, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lkawa/lib/srfi95$frame;->lambda1loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .param p2, "less$Qu"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .line 121
    nop

    .line 122
    invoke-static {p0, p1, p2, p3}, Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;
    .locals 3
    .param p0, "seq"    # Lgnu/lists/Sequence;

    .line 162
    nop

    .line 163
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "idx":I
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 165
    .local v1, "lst":Ljava/lang/Object;
    :goto_0
    if-gez v0, :cond_0

    .line 166
    .end local v0    # "idx":I
    .end local v1    # "lst":Ljava/lang/Object;
    return-object v1

    .restart local v0    # "idx":I
    .restart local v1    # "lst":Ljava/lang/Object;
    :cond_0
    invoke-interface {p0, v0}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static sort(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "seq"    # Lgnu/lists/Sequence;
    .param p1, "less$Qu"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 212
    nop

    .line 213
    invoke-static {p0}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {p0, p1, p2}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0
.end method

.method static sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .param p2, "isLess"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .line 88
    new-instance v0, Lkawa/lib/srfi95$frame1;

    invoke-direct {v0}, Lkawa/lib/srfi95$frame1;-><init>()V

    iput-object p2, v0, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    iput-object p3, v0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    .line 89
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    goto/16 :goto_1

    :cond_0
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    goto/16 :goto_3

    .line 103
    :cond_1
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, v0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .local v3, "kcara":Ljava/lang/Object;
    .local v4, "kcarb":Ljava/lang/Object;
    move-object v6, v2

    .end local v4    # "kcarb":Ljava/lang/Object;
    .local v6, "kcarb":Ljava/lang/Object;
    move-object v7, v1

    .line 105
    .end local v3    # "kcara":Ljava/lang/Object;
    .local v7, "kcara":Ljava/lang/Object;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 106
    iget-object v2, v0, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    invoke-virtual {v1, v2, v6, v7}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    const-string v4, "set-cdr!"

    if-eq v1, v2, :cond_3

    .line 107
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p0}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    goto :goto_0

    .end local v6    # "kcarb":Ljava/lang/Object;
    .end local v7    # "kcara":Ljava/lang/Object;
    .end local p0    # "a":Ljava/lang/Object;
    .end local p1    # "b":Ljava/lang/Object;
    .end local p2    # "isLess":Ljava/lang/Object;
    .end local p3    # "key":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p0, v4, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 109
    .restart local v6    # "kcarb":Ljava/lang/Object;
    .restart local v7    # "kcara":Ljava/lang/Object;
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    .restart local p2    # "isLess":Ljava/lang/Object;
    .restart local p3    # "key":Ljava/lang/Object;
    :cond_2
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, v0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v3, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, p1

    move-object v2, p0

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_0
    nop

    .line 115
    .end local v6    # "kcarb":Ljava/lang/Object;
    .end local v7    # "kcara":Ljava/lang/Object;
    :goto_1
    move-object v0, p1

    goto :goto_4

    .line 112
    .restart local v6    # "kcarb":Ljava/lang/Object;
    .restart local v7    # "kcara":Ljava/lang/Object;
    :cond_3
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    :try_start_1
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v0, p1}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    goto :goto_2

    .end local v6    # "kcarb":Ljava/lang/Object;
    .end local v7    # "kcara":Ljava/lang/Object;
    .end local p0    # "a":Ljava/lang/Object;
    .end local p1    # "b":Ljava/lang/Object;
    .end local p2    # "isLess":Ljava/lang/Object;
    .end local p3    # "key":Ljava/lang/Object;
    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 114
    .restart local v6    # "kcarb":Ljava/lang/Object;
    .restart local v7    # "kcara":Ljava/lang/Object;
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    .restart local p2    # "isLess":Ljava/lang/Object;
    .restart local p3    # "key":Ljava/lang/Object;
    :cond_4
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :goto_2
    nop

    .end local v6    # "kcarb":Ljava/lang/Object;
    .end local v7    # "kcara":Ljava/lang/Object;
    :goto_3
    move-object v0, p0

    :goto_4
    return-object v0
.end method

.method public static sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "seq"    # Lgnu/lists/Sequence;
    .param p1, "less$Qu"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 175
    const-string v0, "set-car!"

    const-string v1, "set-cdr!"

    .line 176
    invoke-static {p0}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    invoke-static {p0, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 178
    .local v2, "ret":Ljava/lang/Object;
    if-eq v2, p0, :cond_1

    .line 179
    move-object v4, v2

    .local v4, "crt":Ljava/lang/Object;
    :goto_0
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 180
    invoke-virtual {v5, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_0

    .line 179
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 181
    :cond_0
    const/4 v5, 0x1

    :try_start_0
    move-object v6, v4

    check-cast v6, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    invoke-static {v6, v2}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 182
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v6, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v7, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .local v3, "scdr":Ljava/lang/Object;
    move-object v8, v4

    .local v8, "scar":Ljava/lang/Object;
    move-object v3, v7

    .line 183
    .end local v8    # "scar":Ljava/lang/Object;
    .local v6, "scar":Ljava/lang/Object;
    :try_start_1
    move-object v7, p0

    check-cast v7, Lgnu/lists/Pair;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    :try_start_2
    move-object v7, p0

    check-cast v7, Lgnu/lists/Pair;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 184
    :try_start_3
    move-object v7, v2

    check-cast v7, Lgnu/lists/Pair;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1

    invoke-static {v7, v6}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    :try_start_4
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    invoke-static {v0, v3}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .end local v3    # "scdr":Ljava/lang/Object;
    .end local v4    # "crt":Ljava/lang/Object;
    .end local v6    # "scar":Ljava/lang/Object;
    goto :goto_1

    .end local v2    # "ret":Ljava/lang/Object;
    .end local p0    # "seq":Lgnu/lists/Sequence;
    .end local p1    # "less$Qu":Ljava/lang/Object;
    .end local p2    # "key":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v1, v5, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v0, v5, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 183
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 181
    :catch_4
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v1, v5, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 185
    .restart local v2    # "ret":Ljava/lang/Object;
    .restart local p0    # "seq":Lgnu/lists/Sequence;
    .restart local p1    # "less$Qu":Ljava/lang/Object;
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_1
    :goto_1
    move-object v0, p0

    .end local v2    # "ret":Ljava/lang/Object;
    goto :goto_2

    .line 187
    :cond_2
    invoke-static {p0, p1, p2}, Lkawa/lib/srfi95;->$PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {p2}, Lkawa/lib/srfi95;->identity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 212
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "sort"

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 196
    :sswitch_1
    :try_start_1
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "%sort-vector"

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 175
    :sswitch_2
    :try_start_2
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "sort!"

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 44
    :sswitch_3
    invoke-static {p2, p3}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x9 -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 212
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    :try_start_0
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "sort"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 196
    :pswitch_2
    :try_start_1
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "%sort-vector"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 189
    :pswitch_3
    :try_start_2
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->$PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "%vector-sort!"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 175
    :pswitch_4
    :try_start_3
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "sort!"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 124
    :pswitch_5
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 121
    :pswitch_6
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_7
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :pswitch_8
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p2, p3, p4, p5}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_2
    invoke-static {p2, p3, p4, p5}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 34
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 212
    :sswitch_0
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 196
    :sswitch_1
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 175
    :sswitch_2
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 44
    :sswitch_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x9 -> :sswitch_2
        0xc -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_0

    .line 44
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 212
    :pswitch_1
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 196
    :pswitch_2
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 189
    :pswitch_3
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 175
    :pswitch_4
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_3

    return v1

    :cond_3
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 124
    :pswitch_5
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 121
    :pswitch_6
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 71
    :pswitch_7
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 44
    :pswitch_8
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_0

    .line 71
    :pswitch_0
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 121
    :pswitch_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 71
    :pswitch_2
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 21
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 34
    nop

    .line 44
    nop

    .line 71
    nop

    .line 88
    nop

    .line 121
    nop

    .line 124
    nop

    .line 162
    nop

    .line 175
    nop

    .line 189
    nop

    .line 196
    nop

    .line 212
    return-void
.end method
