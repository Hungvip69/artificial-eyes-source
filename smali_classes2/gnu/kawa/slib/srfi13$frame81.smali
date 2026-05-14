.class public Lgnu/kawa/slib/srfi13$frame81;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringCount$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame81"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1238#1,21:1238\n*E\n"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn185:Lgnu/expr/ModuleMethod;

.field final lambda$Fn186:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0xa0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame81;->lambda$Fn185:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa1

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame81;->lambda$Fn186:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame81;->lambda185()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame81;->lambda186(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda185()Ljava/lang/Object;
    .locals 3

    .line 1238
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mncount:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame81;->s:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame81;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda186(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    .line 1239
    const-string v0, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "string-ref"

    if-eqz v1, :cond_2

    .line 1240
    sget-object v0, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    .local v0, "count":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "i":Ljava/lang/Object;
    :goto_0
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 1244
    invoke-virtual {v5, v1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_1

    .line 1240
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v5, v1, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1241
    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    :try_start_0
    check-cast v6, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame81;->s:Ljava/lang/Object;

    :try_start_1
    check-cast v7, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v8, v1

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v7, v8}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v7

    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v7

    invoke-static {v6, v7}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1242
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v0, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 1241
    :cond_0
    move-object v6, v0

    :goto_1
    move-object v0, v6

    move-object v1, v5

    goto :goto_0

    .end local v0    # "count":Ljava/lang/Object;
    .end local v1    # "i":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame81;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "char=?"

    invoke-direct {p2, p1, v0, v3, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1240
    .restart local v0    # "count":Ljava/lang/Object;
    .restart local v1    # "i":Ljava/lang/Object;
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_1
    nop

    .line 1244
    nop

    .end local v0    # "count":Ljava/lang/Object;
    .end local v1    # "i":Ljava/lang/Object;
    goto/16 :goto_6

    :cond_2
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1246
    sget-object v5, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_3
    invoke-virtual {v5}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_3 .. :try_end_3} :catch_8

    iget-object v6, p0, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v5, :cond_5

    .line 1247
    sget-object v1, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    .local v1, "count":Ljava/lang/Object;
    move-object v5, p1

    .local v5, "i":Ljava/lang/Object;
    :goto_2
    sget-object v6, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 1251
    invoke-virtual {v6, v5, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_4

    .line 1247
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v5, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1248
    sget-object v7, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v8, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v8}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v8
    :try_end_4
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_4} :catch_5

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    iget-object v10, p0, Lgnu/kawa/slib/srfi13$frame81;->s:Ljava/lang/Object;

    :try_start_5
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    move-object v11, v5

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_3

    invoke-static {v10, v11}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v10

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_3

    .line 1249
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v7, v1, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_3

    .line 1248
    :cond_3
    move-object v7, v1

    :goto_3
    move-object v1, v7

    move-object v5, v6

    goto :goto_2

    .end local v1    # "count":Ljava/lang/Object;
    .end local v5    # "i":Ljava/lang/Object;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1241
    :catch_5
    move-exception p1

    const/16 p2, 0x4e0

    const/16 v1, 0x10

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1

    .line 1247
    .restart local v1    # "count":Ljava/lang/Object;
    .restart local v5    # "i":Ljava/lang/Object;
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_4
    nop

    .line 1251
    move-object v0, v1

    .end local v1    # "count":Ljava/lang/Object;
    .end local v5    # "i":Ljava/lang/Object;
    goto :goto_6

    :cond_5
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    invoke-static {v0}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1254
    sget-object v0, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    .restart local v0    # "count":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "i":Ljava/lang/Object;
    :goto_4
    sget-object v5, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 1256
    invoke-virtual {v5, v1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_7

    .line 1254
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v5, v1, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1255
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v7, p0, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame81;->s:Ljava/lang/Object;

    :try_start_7
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    move-object v9, v1

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_6

    invoke-static {v8, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v8

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_6

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v0, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    :cond_6
    move-object v6, v0

    :goto_5
    move-object v0, v6

    move-object v1, v5

    goto :goto_4

    .end local v0    # "count":Ljava/lang/Object;
    .end local v1    # "i":Ljava/lang/Object;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_7
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1254
    .restart local v0    # "count":Ljava/lang/Object;
    .restart local v1    # "i":Ljava/lang/Object;
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_7
    nop

    .line 1256
    nop

    .end local v0    # "count":Ljava/lang/Object;
    .end local v1    # "i":Ljava/lang/Object;
    goto :goto_6

    .line 1258
    :cond_8
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame81;->criterion:Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/srfi13;->string$Mncount:Lgnu/expr/ModuleMethod;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    aput-object v0, v1, v3

    const-string v0, "CRITERION param is neither char-set or char."

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    return-object v0

    .line 1241
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_8
    move-exception p1

    const/16 p2, 0x4de

    const/4 v1, 0x5

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa1

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
