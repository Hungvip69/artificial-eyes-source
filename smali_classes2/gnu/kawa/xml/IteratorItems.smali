.class public Lgnu/kawa/xml/IteratorItems;
.super Lgnu/mapping/MethodProc;
.source "IteratorItems.java"


# static fields
.field public static iteratorItems:Lgnu/kawa/xml/IteratorItems;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lgnu/kawa/xml/IteratorItems;

    invoke-direct {v0}, Lgnu/kawa/xml/IteratorItems;-><init>()V

    sput-object v0, Lgnu/kawa/xml/IteratorItems;->iteratorItems:Lgnu/kawa/xml/IteratorItems;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 19
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 20
    .local v0, "out":Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 21
    .local v1, "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 24
    move-object v2, v1

    check-cast v2, Ljava/util/Iterator;

    .line 29
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 32
    .local v3, "val":Ljava/lang/Object;
    invoke-static {v3, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 33
    .end local v3    # "val":Ljava/lang/Object;
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
