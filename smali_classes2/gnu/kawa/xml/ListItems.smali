.class public Lgnu/kawa/xml/ListItems;
.super Lgnu/mapping/MethodProc;
.source "ListItems.java"


# static fields
.field public static listItems:Lgnu/kawa/xml/ListItems;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lgnu/kawa/xml/ListItems;

    invoke-direct {v0}, Lgnu/kawa/xml/ListItems;-><init>()V

    sput-object v0, Lgnu/kawa/xml/ListItems;->listItems:Lgnu/kawa/xml/ListItems;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 6
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 20
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 21
    .local v0, "out":Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 22
    .local v1, "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 25
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    .line 26
    .local v2, "list":Ljava/util/List;
    instance-of v3, v1, Lgnu/lists/AbstractSequence;

    if-eqz v3, :cond_0

    .line 28
    move-object v3, v1

    check-cast v3, Lgnu/lists/AbstractSequence;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5, v0}, Lgnu/lists/AbstractSequence;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 29
    return-void

    .line 31
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 32
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 35
    .local v4, "val":Ljava/lang/Object;
    invoke-static {v4, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 36
    .end local v4    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method
