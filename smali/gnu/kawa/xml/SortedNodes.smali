.class public Lgnu/kawa/xml/SortedNodes;
.super Lgnu/kawa/xml/Nodes;
.source "SortedNodes.java"


# instance fields
.field nesting:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lgnu/kawa/xml/Nodes;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lgnu/kawa/xml/SortedNodes;->nesting:I

    return-void
.end method


# virtual methods
.method compareIndex(ILgnu/lists/AbstractSequence;I)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "seq2"    # Lgnu/lists/AbstractSequence;
    .param p3, "ipos2"    # I

    .line 20
    iget-object v0, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    aget-char v0, v0, p1

    .line 21
    .local v0, "datum":I
    const v1, 0xf10f

    if-ne v0, v1, :cond_0

    .line 23
    iget-object v1, p0, Lgnu/kawa/xml/SortedNodes;->objects:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/SortedNodes;->getIntN(I)I

    move-result v2

    aget-object v1, v1, v2

    check-cast v1, Lgnu/lists/AbstractSequence;

    .line 24
    .local v1, "seq":Lgnu/lists/AbstractSequence;
    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p0, v2}, Lgnu/kawa/xml/SortedNodes;->getIntN(I)I

    move-result v2

    invoke-static {v1, v2, p2, p3}, Lgnu/lists/AbstractSequence;->compare(Lgnu/lists/AbstractSequence;ILgnu/lists/AbstractSequence;I)I

    move-result v2

    return v2

    .line 22
    .end local v1    # "seq":Lgnu/lists/AbstractSequence;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "invalid kind of value to compare"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method find(IILgnu/lists/AbstractSequence;I)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "seq"    # Lgnu/lists/AbstractSequence;
    .param p4, "ipos"    # I

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "lo":I
    move v1, p2

    .line 42
    .local v1, "hi":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 44
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 45
    .local v2, "mid":I
    mul-int/lit8 v3, v2, 0x5

    add-int/2addr v3, p1

    invoke-virtual {p0, v3, p3, p4}, Lgnu/kawa/xml/SortedNodes;->compareIndex(ILgnu/lists/AbstractSequence;I)I

    move-result v3

    .line 46
    .local v3, "cmp":I
    if-nez v3, :cond_0

    .line 47
    const/4 v4, -0x1

    return v4

    .line 48
    :cond_0
    if-lez v3, :cond_1

    .line 49
    move v1, v2

    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v0, v2, 0x1

    .line 52
    .end local v2    # "mid":I
    .end local v3    # "cmp":I
    :goto_1
    goto :goto_0

    .line 53
    :cond_2
    mul-int/lit8 v2, v0, 0x5

    add-int/2addr v2, p1

    return v2
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .locals 9
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 58
    iget v0, p0, Lgnu/kawa/xml/SortedNodes;->count:I

    if-lez v0, :cond_5

    .line 60
    iget v0, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    add-int/lit8 v0, v0, -0x5

    .line 61
    .local v0, "lastIndex":I
    invoke-virtual {p0, v0, p1, p2}, Lgnu/kawa/xml/SortedNodes;->compareIndex(ILgnu/lists/AbstractSequence;I)I

    move-result v1

    .line 62
    .local v1, "cmp":I
    if-gez v1, :cond_2

    .line 65
    iget v2, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    .line 66
    .local v2, "i":I
    iget-object v3, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    array-length v3, v3

    .line 69
    .local v3, "end":I
    sub-int v4, v3, v2

    div-int/lit8 v4, v4, 0x5

    invoke-virtual {p0, v2, v4, p1, p2}, Lgnu/kawa/xml/SortedNodes;->find(IILgnu/lists/AbstractSequence;I)I

    move-result v2

    .line 70
    if-gez v2, :cond_0

    .line 71
    return-void

    .line 72
    :cond_0
    iget v4, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    sub-int v4, v2, v4

    .line 73
    .local v4, "delta":I
    if-lez v4, :cond_1

    .line 75
    iget-object v5, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget v6, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    iget-object v7, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget v8, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iput v2, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    .line 77
    iget v5, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    add-int/2addr v5, v4

    iput v5, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    .line 79
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "delta":I
    :cond_1
    goto :goto_0

    .line 80
    :cond_2
    if-nez v1, :cond_3

    .line 81
    return-void

    .line 84
    :cond_3
    div-int/lit8 v2, v0, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2, p1, p2}, Lgnu/kawa/xml/SortedNodes;->find(IILgnu/lists/AbstractSequence;I)I

    move-result v2

    .line 85
    .restart local v2    # "i":I
    if-gez v2, :cond_4

    .line 86
    return-void

    .line 87
    :cond_4
    iget v3, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    sub-int/2addr v3, v2

    .line 88
    .local v3, "delta":I
    if-lez v3, :cond_5

    .line 90
    iget-object v4, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget-object v5, p0, Lgnu/kawa/xml/SortedNodes;->data:[C

    iget v6, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    sub-int/2addr v6, v3

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput v2, p0, Lgnu/kawa/xml/SortedNodes;->gapStart:I

    .line 92
    iget v4, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    sub-int/2addr v4, v3

    iput v4, p0, Lgnu/kawa/xml/SortedNodes;->gapEnd:I

    .line 96
    .end local v0    # "lastIndex":I
    .end local v1    # "cmp":I
    .end local v2    # "i":I
    .end local v3    # "delta":I
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Lgnu/kawa/xml/Nodes;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 97
    return-void
.end method
