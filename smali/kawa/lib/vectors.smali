.class public Lkawa/lib/vectors;
.super Lgnu/expr/ModuleBody;
.source "vectors.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nvectors.scm\nScheme\n*S Scheme\n*F\n+ 1 vectors.scm\n/u2/home/jis/ai2-kawa/kawa/lib/vectors.scm\n*L\n1#1,34:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/vectors;

.field static final Lit0:Lgnu/expr/Keyword;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field public static final list$Mn$Grvector:Lgnu/expr/ModuleMethod;

.field public static final make$Mnvector:Lgnu/expr/ModuleMethod;

.field public static final vector$Mn$Grlist:Lgnu/expr/ModuleMethod;

.field public static final vector$Mnfill$Ex:Lgnu/expr/ModuleMethod;

.field public static final vector$Mnlength:Lgnu/expr/ModuleMethod;

.field public static final vector$Mnref:Lgnu/expr/GenericProc;

.field static final vector$Mnref$Fn1:Lgnu/expr/ModuleMethod;

.field public static final vector$Mnset$Ex:Lgnu/expr/ModuleMethod;

.field public static final vector$Qu:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "vector-fill!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/vectors;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "list->vector"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/vectors;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "vector->list"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/vectors;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "vector-ref"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/vectors;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "vector-set!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/vectors;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "vector-length"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/vectors;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-vector"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/vectors;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "vector?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/vectors;->Lit1:Lgnu/mapping/SimpleSymbol;

    const-string v0, "setter"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/lib/vectors;->Lit0:Lgnu/expr/Keyword;

    new-instance v0, Lkawa/lib/vectors;

    invoke-direct {v0}, Lkawa/lib/vectors;-><init>()V

    sput-object v0, Lkawa/lib/vectors;->$instance:Lkawa/lib/vectors;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/vectors;->$instance:Lkawa/lib/vectors;

    sget-object v2, Lkawa/lib/vectors;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/vectors;->vector$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/vectors;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x2001

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/vectors;->make$Mnvector:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lkawa/lib/vectors;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/vectors;->vector$Mnlength:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/vectors;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x3003

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/vectors;->vector$Mnset$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/vectors;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x6

    const/16 v5, 0x2002

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/vectors;->vector$Mnref$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lkawa/lib/vectors;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/vectors;->vector$Mn$Grlist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lkawa/lib/vectors;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/vectors;->list$Mn$Grvector:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/vectors;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/vectors;->vector$Mnfill$Ex:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/vectors;->$instance:Lkawa/lib/vectors;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isVector(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 3
    nop

    .line 4
    instance-of v0, p0, Lgnu/lists/FVector;

    return v0
.end method

.method public static list$To$Vector(Lgnu/lists/LList;)Lgnu/lists/FVector;
    .locals 1
    .param p0, "x"    # Lgnu/lists/LList;

    .line 30
    nop

    .line 31
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, p0}, Lgnu/lists/FVector;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static makeVector(I)Lgnu/lists/FVector;
    .locals 1

    sget-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    invoke-static {p0, v0}, Lkawa/lib/vectors;->makeVector(ILjava/lang/Object;)Lgnu/lists/FVector;

    move-result-object p0

    return-object p0
.end method

.method public static makeVector(ILjava/lang/Object;)Lgnu/lists/FVector;
    .locals 1
    .param p0, "k"    # I
    .param p1, "fill"    # Ljava/lang/Object;

    .line 6
    nop

    .line 7
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, p0, p1}, Lgnu/lists/FVector;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vector$To$List(Lgnu/lists/FVector;)Lgnu/lists/LList;
    .locals 4
    .param p0, "vec"    # Lgnu/lists/FVector;

    .line 22
    nop

    .line 23
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 24
    invoke-static {p0}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v1

    .line 25
    .local v0, "result":Lgnu/lists/LList;
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_0

    .line 26
    nop

    .line 28
    .end local v0    # "result":Lgnu/lists/LList;
    .end local v1    # "i":I
    return-object v0

    .restart local v0    # "result":Lgnu/lists/LList;
    .restart local v1    # "i":I
    :cond_0
    sget-object v2, Lkawa/lib/vectors;->vector$Mnref:Lgnu/expr/GenericProc;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method public static vectorFill$Ex(Lgnu/lists/FVector;Ljava/lang/Object;)V
    .locals 0
    .param p0, "vec"    # Lgnu/lists/FVector;
    .param p1, "fill"    # Ljava/lang/Object;

    .line 33
    nop

    .line 34
    invoke-virtual {p0, p1}, Lgnu/lists/FVector;->setAll(Ljava/lang/Object;)V

    return-void
.end method

.method public static vectorLength(Lgnu/lists/FVector;)I
    .locals 1
    .param p0, "x"    # Lgnu/lists/FVector;

    .line 9
    nop

    .line 10
    invoke-virtual {p0}, Lgnu/lists/FVector;->size()I

    move-result v0

    return v0
.end method

.method public static vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;
    .locals 1
    .param p0, "vector"    # Lgnu/lists/FVector;
    .param p1, "k"    # I

    .line 18
    nop

    .line 19
    invoke-virtual {p0, p1}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static vectorSet$Ex(Lgnu/lists/FVector;ILjava/lang/Object;)V
    .locals 0
    .param p0, "vector"    # Lgnu/lists/FVector;
    .param p1, "k"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 12
    nop

    .line 13
    invoke-virtual {p0, p1, p2}, Lgnu/lists/FVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 30
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    :try_start_0
    check-cast p2, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/vectors;->list$To$Vector(Lgnu/lists/LList;)Lgnu/lists/FVector;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "list->vector"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 22
    :pswitch_2
    :try_start_1
    check-cast p2, Lgnu/lists/FVector;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lkawa/lib/vectors;->vector$To$List(Lgnu/lists/FVector;)Lgnu/lists/LList;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "vector->list"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 9
    :pswitch_3
    :try_start_2
    check-cast p2, Lgnu/lists/FVector;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "vector-length"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 6
    :pswitch_4
    :try_start_3
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p1}, Lkawa/lib/vectors;->makeVector(I)Lgnu/lists/FVector;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-vector"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 3
    :pswitch_5
    invoke-static {p2}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "vector-ref"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 33
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Lgnu/lists/FVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3}, Lkawa/lib/vectors;->vectorFill$Ex(Lgnu/lists/FVector;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "vector-fill!"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 18
    :sswitch_1
    :try_start_1
    check-cast p2, Lgnu/lists/FVector;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {p2, p1}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 6
    :sswitch_2
    :try_start_3
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p1, p3}, Lkawa/lib/vectors;->makeVector(ILjava/lang/Object;)Lgnu/lists/FVector;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "make-vector"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "vector-set!"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 12
    :try_start_0
    check-cast p2, Lgnu/lists/FVector;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p1, p4}, Lkawa/lib/vectors;->vectorSet$Ex(Lgnu/lists/FVector;ILjava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, 0x1

    invoke-direct {p3, p1, v0, p4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 30
    :pswitch_1
    instance-of v0, p2, Lgnu/lists/LList;

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_0
    return v1

    .line 22
    :pswitch_2
    instance-of v0, p2, Lgnu/lists/FVector;

    if-eqz v0, :cond_1

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1
    return v1

    .line 9
    :pswitch_3
    instance-of v0, p2, Lgnu/lists/FVector;

    if-eqz v0, :cond_2

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2
    return v1

    .line 6
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 3
    :pswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 33
    :sswitch_0
    instance-of v0, p2, Lgnu/lists/FVector;

    if-eqz v0, :cond_0

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_0
    return v1

    .line 18
    :sswitch_1
    instance-of v0, p2, Lgnu/lists/FVector;

    if-eqz v0, :cond_1

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1
    return v1

    .line 6
    :sswitch_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x6 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 12
    instance-of v0, p2, Lgnu/lists/FVector;

    if-eqz v0, :cond_0

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, -0xbffff

    return p1

    :cond_1
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 5
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 3
    nop

    .line 6
    nop

    .line 9
    nop

    .line 12
    nop

    .line 15
    new-instance v1, Lgnu/expr/GenericProc;

    const-string v2, "vector-ref"

    invoke-direct {v1, v2}, Lgnu/expr/GenericProc;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkawa/lib/vectors;->vector$Mnref:Lgnu/expr/GenericProc;

    sget-object v1, Lkawa/lib/vectors;->vector$Mnref:Lgnu/expr/GenericProc;

    .line 18
    const/4 v2, 0x0

    .line 20
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lkawa/lib/vectors;->Lit0:Lgnu/expr/Keyword;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lkawa/lib/vectors;->vector$Mnset$Ex:Lgnu/expr/ModuleMethod;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lkawa/lib/vectors;->vector$Mnref$Fn1:Lgnu/expr/ModuleMethod;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 22
    nop

    .line 30
    nop

    .line 33
    return-void
.end method
