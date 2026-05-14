.class public Lgnu/kawa/slib/srfi13$frame95;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringXcopy$Ex$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame95"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1779#1,32:1779\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn217:Lgnu/expr/ModuleMethod;

.field final lambda$Fn218:Lgnu/expr/ModuleMethod;

.field final lambda$Fn219:Lgnu/expr/ModuleMethod;

.field final lambda$Fn221:Lgnu/expr/ModuleMethod;

.field maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;

.field sfrom:Ljava/lang/Object;

.field target:Ljava/lang/Object;

.field tstart:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xbe

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn218:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xbf

    const/16 v4, 0x2002

    invoke-direct {v0, p0, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn219:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn217:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc1

    const/16 v3, 0x3003

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1781"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn221:Lgnu/expr/ModuleMethod;

    return-void
.end method

.method static lambda216(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "val"    # Ljava/lang/Object;

    .line 1779
    invoke-static {p0}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .local v0, "x":Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "x":Z
    :cond_0
    return v0
.end method

.method static lambda220(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "val"    # Ljava/lang/Object;

    .line 1785
    invoke-static {p0}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .local v0, "x":Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    .end local v0    # "x":Z
    :cond_0
    return v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame95;->lambda217()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame95;->lambda218()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame95;->lambda219(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_0

    .line 1781
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/srfi13$frame95;->lambda221(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda217()Ljava/lang/Object;
    .locals 6

    .line 1782
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

    invoke-static {v0}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn218:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame95;->lambda$Fn219:Lgnu/expr/ModuleMethod;

    invoke-static {v0, v1}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1788
    :cond_0
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    const/4 v1, 0x1

    :try_start_0
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v2, 0x0

    .line 1789
    .local v0, "slen":I
    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-static {v4}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "slen":I
    :goto_0
    return-object v0

    .line 1788
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame95;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "string-length"

    invoke-direct {v3, v2, v4, v1, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method lambda218()Ljava/lang/Object;
    .locals 4

    .line 1783
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame95;->maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda219(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    .line 1784
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame95;->maybe$Mnsto$Plstart$Plend:Lgnu/lists/LList;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1785
    .local v0, "sto":Ljava/lang/Object;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$check$Mnarg:Lgnu/mapping/Location;

    :try_start_0
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Lgnu/kawa/slib/srfi13;->lambda$Fn220:Lgnu/expr/ModuleMethod;

    .line 1786
    sget-object v4, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    invoke-virtual {v1, v2, v3, v0, v4}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1787
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sto":Ljava/lang/Object;
    return-object v0

    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame95;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_0
    move-exception p1

    const/16 p2, 0x6f9

    const/4 v0, 0x6

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {p1, v1, p2, v0}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1
.end method

.method lambda221(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .param p1, "sto"    # Ljava/lang/Object;
    .param p2, "start"    # Ljava/lang/Object;
    .param p3, "end"    # Ljava/lang/Object;

    .line 1781
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v2, "string-ref"

    const-string v3, "floor"

    const-string v4, "zero?"

    const-string v5, "%string-copy!"

    .line 1791
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v7, v1, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    invoke-virtual {v6, v0, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    .local v8, "tocopy":Ljava/lang/Object;
    move-object v11, v6

    .line 1792
    .end local v8    # "tocopy":Ljava/lang/Object;
    .local v11, "tocopy":Ljava/lang/Object;
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object v8, v1, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    invoke-virtual {v6, v8, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v7

    .local v8, "tend":Ljava/lang/Object;
    move-object v12, v6

    .line 1791
    .end local v8    # "tend":Ljava/lang/Object;
    .local v12, "tend":Ljava/lang/Object;
    nop

    .line 1793
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v6, v10, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v7, "slen":Ljava/lang/Object;
    move-object v13, v6

    .line 1794
    .end local v7    # "slen":Ljava/lang/Object;
    .local v13, "slen":Ljava/lang/Object;
    sget-object v6, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    iget-object v7, v1, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    iget-object v8, v1, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    invoke-static {v6, v7, v8, v12}, Lgnu/kawa/slib/srfi13;->checkSubstringSpec(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    const/4 v6, 0x1

    :try_start_0
    move-object v7, v11

    check-cast v7, Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_a

    invoke-static {v7}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v7

    const/4 v8, 0x0

    .local v8, "x":Z
    move v14, v7

    .end local v8    # "x":Z
    .local v14, "x":Z
    if-eqz v14, :cond_1

    if-eqz v14, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_1
    :try_start_1
    move-object v7, v13

    check-cast v7, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_9

    invoke-static {v7}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v4

    const/4 v15, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_2

    .line 1796
    iget-object v2, v1, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    iget-object v3, v1, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    iget-object v4, v1, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    iget-object v5, v1, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v16, Lgnu/kawa/slib/srfi13;->string$Mnxcopy$Ex:Lgnu/expr/ModuleMethod;

    aput-object v16, v8, v15

    aput-object v2, v8, v6

    aput-object v3, v8, v7

    const/4 v2, 0x3

    aput-object v4, v8, v2

    const/4 v2, 0x4

    aput-object v5, v8, v2

    const/4 v2, 0x5

    aput-object v0, v8, v2

    const/4 v2, 0x6

    aput-object v9, v8, v2

    const/4 v2, 0x7

    aput-object v10, v8, v2

    const-string v2, "Cannot replicate empty (sub)string"

    invoke-static {v2, v8}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    :cond_2
    sget-object v4, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 1800
    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v4, v8, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v8, :cond_3

    .line 1801
    iget-object v3, v1, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    iget-object v4, v1, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    :try_start_2
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object v5, v9

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v4, v2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    iget-object v4, v1, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v15

    aput-object v12, v5, v6

    invoke-static {v3, v2, v5}, Lgnu/kawa/slib/srfi13;->stringFill$Ex$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .end local v11    # "tocopy":Ljava/lang/Object;
    .end local v12    # "tend":Ljava/lang/Object;
    .end local v13    # "slen":Ljava/lang/Object;
    .end local v14    # "x":Z
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame95;
    .end local p1    # "sto":Ljava/lang/Object;
    .end local p2    # "start":Ljava/lang/Object;
    .end local p3    # "end":Ljava/lang/Object;
    :catch_0
    move-exception v0

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v0, v2, v7, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_1
    move-exception v0

    move-object v3, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v3, v2, v6, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .restart local v11    # "tocopy":Ljava/lang/Object;
    .restart local v12    # "tend":Ljava/lang/Object;
    .restart local v13    # "slen":Ljava/lang/Object;
    .restart local v14    # "x":Z
    .restart local p1    # "sto":Ljava/lang/Object;
    .restart local p2    # "start":Ljava/lang/Object;
    .restart local p3    # "end":Ljava/lang/Object;
    :cond_3
    sget-object v2, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    .line 1804
    iget-object v4, v1, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    invoke-virtual {v2, v4, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_4
    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_8

    invoke-static {v2}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v16

    sget-object v2, Lgnu/kawa/functions/DivideOp;->$Sl:Lgnu/kawa/functions/DivideOp;

    invoke-virtual {v2, v0, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_5
    invoke-static {v2}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_7

    invoke-static {v2}, Lkawa/lib/numbers;->floor(Lgnu/math/RealNum;)Lgnu/math/RealNum;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v4, v16, v2

    if-nez v4, :cond_4

    .line 1805
    iget-object v2, v1, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    :try_start_6
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    iget-object v3, v1, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    :try_start_7
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v3
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_5

    iget-object v4, v1, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    :try_start_8
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_4

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 1806
    sget-object v7, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    iget-object v8, v1, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    invoke-virtual {v7, v8, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_9
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_3

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 1807
    sget-object v8, Lgnu/kawa/functions/DivideOp;->modulo:Lgnu/kawa/functions/DivideOp;

    invoke-virtual {v8, v0, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_a
    move-object v8, v7

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v5
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_2

    invoke-static {v2, v3, v4, v6, v5}, Lgnu/kawa/slib/srfi13;->$PcStringCopy$Ex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .end local v11    # "tocopy":Ljava/lang/Object;
    .end local v12    # "tend":Ljava/lang/Object;
    .end local v13    # "slen":Ljava/lang/Object;
    .end local v14    # "x":Z
    .end local p1    # "sto":Ljava/lang/Object;
    .end local p2    # "start":Ljava/lang/Object;
    .end local p3    # "end":Ljava/lang/Object;
    :catch_2
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v5, v3, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 1806
    :catch_3
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v5, v3, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 1805
    :catch_4
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v5, v7, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_5
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v5, v6, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_6
    move-exception v0

    move-object v3, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v3, v5, v15, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 1810
    .restart local v11    # "tocopy":Ljava/lang/Object;
    .restart local v12    # "tend":Ljava/lang/Object;
    .restart local v13    # "slen":Ljava/lang/Object;
    .restart local v14    # "x":Z
    .restart local p1    # "sto":Ljava/lang/Object;
    .restart local p2    # "start":Ljava/lang/Object;
    .restart local p3    # "end":Ljava/lang/Object;
    :cond_4
    iget-object v2, v1, Lgnu/kawa/slib/srfi13$frame95;->target:Ljava/lang/Object;

    iget-object v3, v1, Lgnu/kawa/slib/srfi13$frame95;->tstart:Ljava/lang/Object;

    iget-object v4, v1, Lgnu/kawa/slib/srfi13$frame95;->s:Ljava/lang/Object;

    iget-object v5, v1, Lgnu/kawa/slib/srfi13$frame95;->sfrom:Ljava/lang/Object;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lgnu/kawa/slib/srfi13;->$PcMultispanRepcopy$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v11    # "tocopy":Ljava/lang/Object;
    .end local v12    # "tend":Ljava/lang/Object;
    .end local v13    # "slen":Ljava/lang/Object;
    .end local v14    # "x":Z
    :goto_0
    return-object v2

    .line 1804
    .end local p1    # "sto":Ljava/lang/Object;
    .end local p2    # "start":Ljava/lang/Object;
    .end local p3    # "end":Ljava/lang/Object;
    :catch_7
    move-exception v0

    move-object v4, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v4, v3, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_8
    move-exception v0

    move-object v4, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v4, v3, v6, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 1796
    :catch_9
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v4, v6, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 1795
    :catch_a
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v4, v6, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xbf

    if-ne v0, v1, :cond_0

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_0

    .line 1781
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
