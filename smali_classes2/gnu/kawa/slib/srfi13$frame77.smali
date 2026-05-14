.class public Lgnu/kawa/slib/srfi13$frame77;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringIndex$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame77"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1153#1,17:1153\n*E\n"
.end annotation


# instance fields
.field criterion:Ljava/lang/Object;

.field final lambda$Fn177:Lgnu/expr/ModuleMethod;

.field final lambda$Fn178:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field str:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    const/16 v2, 0x98

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame77;->lambda$Fn177:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x99

    const/16 v2, 0x2002

    invoke-direct {v0, p0, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame77;->lambda$Fn178:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x98

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame77;->lambda177()Ljava/lang/Object;

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

    const/16 v1, 0x99

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame77;->lambda178(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda177()Ljava/lang/Object;
    .locals 3

    .line 1153
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnindex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame77;->str:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame77;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda178(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    .line 1154
    const-string v0, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    invoke-static {v1}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    const-string v3, "x"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "string-ref"

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    .line 1155
    move-object v0, p1

    .line 1156
    .local v0, "i":Ljava/lang/Object;
    :goto_0
    sget-object v1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v1, v0, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_0
    move-object v8, v1

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    .local v7, "x":Z
    move v7, v1

    if-eqz v7, :cond_1

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    :try_start_1
    check-cast v1, Lgnu/text/Char;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame77;->str:Ljava/lang/Object;

    :try_start_2
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    move-object v9, v0

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v8, v9}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v8

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-static {v1, v8}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    nop

    .line 1158
    goto :goto_2

    :cond_0
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1157
    .end local v0    # "i":Ljava/lang/Object;
    .end local v7    # "x":Z
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame77;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v5, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "char=?"

    invoke-direct {p2, p1, v0, v5, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1156
    .restart local v0    # "i":Ljava/lang/Object;
    .restart local v7    # "x":Z
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_1
    if-eqz v7, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v1

    .end local v0    # "i":Ljava/lang/Object;
    .end local v7    # "x":Z
    :goto_2
    goto/16 :goto_8

    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_3
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1159
    sget-object v8, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Qu:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v8}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v8
    :try_end_4
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_4} :catch_b

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_7

    .line 1160
    move-object v1, p1

    .line 1161
    .local v1, "i":Ljava/lang/Object;
    :goto_3
    sget-object v8, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v8, v1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_5
    move-object v9, v8

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_7

    .restart local v7    # "x":Z
    move v7, v8

    if-eqz v7, :cond_5

    sget-object v8, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1162
    sget-object v9, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_6
    invoke-virtual {v9}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v9
    :try_end_6
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_6 .. :try_end_6} :catch_6

    iget-object v10, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    iget-object v11, p0, Lgnu/kawa/slib/srfi13$frame77;->str:Ljava/lang/Object;

    :try_start_7
    check-cast v11, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_5

    :try_start_8
    move-object v12, v1

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_4

    invoke-static {v11, v12}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v11

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v9, :cond_4

    .line 1163
    move-object v0, v1

    goto :goto_4

    :cond_4
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v9, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v8, v1, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 1162
    .end local v1    # "i":Ljava/lang/Object;
    .end local v7    # "x":Z
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v5, v11}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1161
    :catch_6
    move-exception p1

    const/16 p2, 0x48a

    const/16 v1, 0x9

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1

    .restart local v1    # "i":Ljava/lang/Object;
    .restart local v7    # "x":Z
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_5
    if-eqz v7, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v1    # "i":Ljava/lang/Object;
    .end local v7    # "x":Z
    :goto_4
    goto/16 :goto_8

    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_7
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v2, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_7
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    invoke-static {v0}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1165
    move-object v0, p1

    .line 1166
    .restart local v0    # "i":Ljava/lang/Object;
    :goto_5
    sget-object v1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v1, v0, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_9
    move-object v8, v1

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_a

    .restart local v7    # "x":Z
    move v7, v1

    if-eqz v7, :cond_9

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 1167
    iget-object v8, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    iget-object v9, p0, Lgnu/kawa/slib/srfi13$frame77;->str:Ljava/lang/Object;

    :try_start_a
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_9

    :try_start_b
    move-object v10, v0

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_8

    invoke-static {v9, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v9

    invoke-static {v9}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_8

    .line 1168
    goto :goto_7

    :cond_8
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 1167
    .end local v0    # "i":Ljava/lang/Object;
    .end local v7    # "x":Z
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_8
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_9
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v6, v5, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1166
    .restart local v0    # "i":Ljava/lang/Object;
    .restart local v7    # "x":Z
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_9
    if-eqz v7, :cond_a

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    move-object v0, v1

    .end local v0    # "i":Ljava/lang/Object;
    .end local v7    # "x":Z
    :goto_7
    goto :goto_8

    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_a
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1169
    .restart local p1    # "start":Ljava/lang/Object;
    .restart local p2    # "end":Ljava/lang/Object;
    :cond_b
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame77;->criterion:Ljava/lang/Object;

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/srfi13;->string$Mnindex:Lgnu/expr/ModuleMethod;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput-object v0, v1, v5

    const-string v0, "Second param is neither char-set, char, or predicate procedure."

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8
    return-object v0

    .line 1157
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_b
    move-exception p1

    const/16 p2, 0x487

    const/4 v1, 0x5

    invoke-virtual {p1, v0, p2, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x98

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

    const/16 v1, 0x99

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
