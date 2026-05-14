.class public Lgnu/kawa/xml/CommentConstructor;
.super Lgnu/mapping/MethodProc;
.source "CommentConstructor.java"


# static fields
.field public static final commentConstructor:Lgnu/kawa/xml/CommentConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lgnu/kawa/xml/CommentConstructor;

    invoke-direct {v0}, Lgnu/kawa/xml/CommentConstructor;-><init>()V

    sput-object v0, Lgnu/kawa/xml/CommentConstructor;->commentConstructor:Lgnu/kawa/xml/CommentConstructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 11
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 18
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 19
    .local v0, "saved":Lgnu/lists/Consumer;
    invoke-static {p1}, Lgnu/kawa/xml/NodeConstructor;->pushNodeContext(Lgnu/mapping/CallContext;)Lgnu/xml/XMLFilter;

    move-result-object v1

    .line 22
    .local v1, "out":Lgnu/lists/XConsumer;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    sget-object v3, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    .line 24
    .local v3, "endMarker":Ljava/lang/Object;
    const/4 v4, 0x1

    .line 25
    .local v4, "first":Z
    const/4 v5, 0x0

    .line 27
    .local v5, "i":I
    :goto_0
    invoke-virtual {p1, v3}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 28
    .local v6, "arg":Ljava/lang/Object;
    if-ne v6, v3, :cond_0

    .line 29
    nop

    .line 49
    .end local v5    # "i":I
    .end local v6    # "arg":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 50
    .local v5, "len":I
    new-array v6, v5, [C

    .line 51
    .local v6, "buf":[C
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v5, v6, v7}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 52
    invoke-interface {v1, v6, v7, v5}, Lgnu/lists/XConsumer;->writeComment([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    .end local v3    # "endMarker":Ljava/lang/Object;
    .end local v4    # "first":Z
    .end local v5    # "len":I
    .end local v6    # "buf":[C
    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    .line 57
    nop

    .line 58
    return-void

    .line 30
    .restart local v2    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v3    # "endMarker":Ljava/lang/Object;
    .restart local v4    # "first":Z
    .local v5, "i":I
    .local v6, "arg":Ljava/lang/Object;
    :cond_0
    :try_start_1
    instance-of v7, v6, Lgnu/mapping/Values;

    const/16 v8, 0x20

    if-eqz v7, :cond_3

    .line 32
    move-object v7, v6

    check-cast v7, Lgnu/mapping/Values;

    .line 33
    .local v7, "vals":Lgnu/mapping/Values;
    const/4 v9, 0x0

    .local v9, "it":I
    :goto_1
    invoke-virtual {v7, v9}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v10

    move v9, v10

    if-eqz v10, :cond_2

    .line 35
    if-nez v4, :cond_1

    .line 36
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    :cond_1
    const/4 v4, 0x0

    .line 38
    invoke-virtual {v7, v9}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 40
    .end local v7    # "vals":Lgnu/mapping/Values;
    .end local v9    # "it":I
    :cond_2
    goto :goto_2

    .line 43
    :cond_3
    if-nez v4, :cond_4

    .line 44
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    :cond_4
    const/4 v4, 0x0

    .line 46
    invoke-static {v6, v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    .end local v6    # "arg":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 56
    .end local v2    # "sbuf":Ljava/lang/StringBuffer;
    .end local v3    # "endMarker":Ljava/lang/Object;
    .end local v4    # "first":Z
    .end local v5    # "i":I
    :catchall_0
    move-exception v2

    invoke-static {v0, p1}, Lgnu/kawa/xml/NodeConstructor;->popNodeContext(Lgnu/lists/Consumer;Lgnu/mapping/CallContext;)V

    goto :goto_4

    :goto_3
    throw v2

    :goto_4
    goto :goto_3
.end method

.method public numArgs()I
    .locals 1

    .line 14
    const/16 v0, 0x1001

    return v0
.end method
