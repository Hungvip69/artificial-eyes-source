.class public Lgnu/kawa/xml/IntersectNodes;
.super Lgnu/mapping/Procedure2;
.source "IntersectNodes.java"


# static fields
.field public static final exceptNodes:Lgnu/kawa/xml/IntersectNodes;

.field public static final intersectNodes:Lgnu/kawa/xml/IntersectNodes;


# instance fields
.field isExcept:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lgnu/kawa/xml/IntersectNodes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/xml/IntersectNodes;-><init>(Z)V

    sput-object v0, Lgnu/kawa/xml/IntersectNodes;->intersectNodes:Lgnu/kawa/xml/IntersectNodes;

    .line 19
    new-instance v0, Lgnu/kawa/xml/IntersectNodes;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgnu/kawa/xml/IntersectNodes;-><init>(Z)V

    sput-object v0, Lgnu/kawa/xml/IntersectNodes;->exceptNodes:Lgnu/kawa/xml/IntersectNodes;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isExcept"    # Z

    .line 22
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    iput-boolean p1, p0, Lgnu/kawa/xml/IntersectNodes;->isExcept:Z

    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "vals1"    # Ljava/lang/Object;
    .param p2, "vals2"    # Ljava/lang/Object;

    .line 26
    new-instance v0, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v0}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 27
    .local v0, "nodes1":Lgnu/kawa/xml/SortedNodes;
    new-instance v1, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v1}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 28
    .local v1, "nodes2":Lgnu/kawa/xml/SortedNodes;
    new-instance v2, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v2}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 30
    .local v2, "result":Lgnu/kawa/xml/SortedNodes;
    invoke-static {p1, v0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 31
    invoke-static {p2, v1}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 32
    const/4 v3, 0x0

    .line 34
    .local v3, "i2":I
    const/4 v4, 0x0

    .line 35
    .local v4, "seq2":Lgnu/lists/AbstractSequence;
    const/4 v5, 0x0

    .line 39
    .local v5, "ipos2":I
    const/4 v6, 0x0

    .line 41
    .local v6, "cmp":I
    const/4 v7, 0x0

    .line 43
    .local v7, "i1":I
    :goto_0
    invoke-virtual {v0, v7}, Lgnu/kawa/xml/SortedNodes;->getSeq(I)Lgnu/lists/AbstractSequence;

    move-result-object v8

    .line 44
    .local v8, "seq1":Lgnu/lists/AbstractSequence;
    if-nez v8, :cond_0

    .line 45
    nop

    .line 77
    .end local v7    # "i1":I
    .end local v8    # "seq1":Lgnu/lists/AbstractSequence;
    return-object v2

    .line 46
    .restart local v7    # "i1":I
    .restart local v8    # "seq1":Lgnu/lists/AbstractSequence;
    :cond_0
    invoke-virtual {v0, v7}, Lgnu/kawa/xml/SortedNodes;->getPos(I)I

    move-result v9

    .line 53
    .local v9, "ipos1":I
    const/4 v10, -0x1

    if-ne v6, v10, :cond_1

    .line 54
    invoke-static {v8, v9, v4, v5}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v6

    goto :goto_1

    .line 55
    :cond_1
    if-nez v6, :cond_2

    .line 56
    const/4 v6, 0x1

    .line 58
    :cond_2
    :goto_1
    if-lez v6, :cond_4

    .line 60
    invoke-virtual {v1, v3}, Lgnu/kawa/xml/SortedNodes;->getSeq(I)Lgnu/lists/AbstractSequence;

    move-result-object v4

    .line 61
    if-nez v4, :cond_3

    .line 63
    const/4 v6, -0x2

    .line 64
    goto :goto_2

    .line 68
    :cond_3
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i2":I
    .local v10, "i2":I
    invoke-virtual {v1, v3}, Lgnu/kawa/xml/SortedNodes;->getPos(I)I

    move-result v5

    .line 69
    invoke-static {v8, v9, v4, v5}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v6

    move v3, v10

    goto :goto_1

    .line 73
    .end local v10    # "i2":I
    .restart local v3    # "i2":I
    :cond_4
    :goto_2
    if-nez v6, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    iget-boolean v11, p0, Lgnu/kawa/xml/IntersectNodes;->isExcept:Z

    if-eq v10, v11, :cond_6

    .line 74
    invoke-virtual {v2, v8, v9}, Lgnu/kawa/xml/SortedNodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 41
    .end local v8    # "seq1":Lgnu/lists/AbstractSequence;
    .end local v9    # "ipos1":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
