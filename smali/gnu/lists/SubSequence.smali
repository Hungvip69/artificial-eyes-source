.class public Lgnu/lists/SubSequence;
.super Lgnu/lists/AbstractSequence;
.source "SubSequence.java"

# interfaces
.implements Lgnu/lists/Sequence;


# instance fields
.field base:Lgnu/lists/AbstractSequence;

.field ipos0:I

.field ipos1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;)V
    .locals 0
    .param p1, "base"    # Lgnu/lists/AbstractSequence;

    .line 36
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 37
    iput-object p1, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    .line 38
    return-void
.end method

.method public constructor <init>(Lgnu/lists/AbstractSequence;II)V
    .locals 0
    .param p1, "base"    # Lgnu/lists/AbstractSequence;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I

    .line 29
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    .line 30
    iput-object p1, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    .line 31
    iput p2, p0, Lgnu/lists/SubSequence;->ipos0:I

    .line 32
    iput p3, p0, Lgnu/lists/SubSequence;->ipos1:I

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 123
    iget v0, p0, Lgnu/lists/SubSequence;->ipos0:I

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {p0, v0, v1}, Lgnu/lists/SubSequence;->removePosRange(II)V

    .line 124
    return-void
.end method

.method public compare(II)I
    .locals 1
    .param p1, "ipos1"    # I
    .param p2, "ipos2"    # I

    .line 89
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1, p2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    return v0
.end method

.method public createPos(IZ)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "isAfter"    # Z

    .line 64
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v0, v1, p1, p2}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    return v0
.end method

.method public createRelativePos(IIZ)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "offset"    # I
    .param p3, "isAfter"    # Z

    .line 69
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1, p2, p3}, Lgnu/lists/AbstractSequence;->createRelativePos(IIZ)I

    move-result v0

    return v0
.end method

.method public endPos()I
    .locals 1

    .line 107
    iget v0, p0, Lgnu/lists/SubSequence;->ipos1:I

    return v0
.end method

.method public finalize()V
    .locals 2

    .line 128
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 129
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 130
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 42
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lgnu/lists/SubSequence;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v0, v1}, Lgnu/lists/AbstractSequence;->nextIndex(I)I

    move-result v0

    .line 45
    .local v0, "start":I
    iget-object v1, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    add-int v2, v0, p1

    invoke-virtual {v1, v2}, Lgnu/lists/AbstractSequence;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 43
    .end local v0    # "start":I
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected getIndexDifference(II)I
    .locals 1
    .param p1, "ipos1"    # I
    .param p2, "ipos0"    # I

    .line 74
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1, p2}, Lgnu/lists/AbstractSequence;->getIndexDifference(II)I

    move-result v0

    return v0
.end method

.method public getNextKind(I)I
    .locals 2
    .param p1, "ipos"    # I

    .line 101
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {v0, p1, v1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    return v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 2
    .param p1, "ipos"    # I

    .line 94
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    invoke-virtual {v0, p1, v1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    if-ltz v0, :cond_0

    .line 95
    sget-object v0, Lgnu/lists/SubSequence;->eofValue:Ljava/lang/Object;

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 2
    .param p1, "ipos"    # I

    .line 111
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v0, p1, v1}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result v0

    if-gtz v0, :cond_0

    .line 112
    sget-object v0, Lgnu/lists/SubSequence;->eofValue:Ljava/lang/Object;

    return-object v0

    .line 113
    :cond_0
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected isAfterPos(I)Z
    .locals 1
    .param p1, "ipos"    # I

    .line 60
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->isAfterPos(I)Z

    move-result v0

    return v0
.end method

.method protected nextIndex(I)I
    .locals 1
    .param p1, "ipos"    # I

    .line 84
    iget v0, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {p0, p1, v0}, Lgnu/lists/SubSequence;->getIndexDifference(II)I

    move-result v0

    return v0
.end method

.method public releasePos(I)V
    .locals 1
    .param p1, "ipos"    # I

    .line 79
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-virtual {v0, p1}, Lgnu/lists/AbstractSequence;->releasePos(I)V

    .line 80
    return-void
.end method

.method public removePosRange(II)V
    .locals 3
    .param p1, "istart"    # I
    .param p2, "iend"    # I

    .line 55
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    iget v2, p0, Lgnu/lists/SubSequence;->ipos0:I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    iget v2, p0, Lgnu/lists/SubSequence;->ipos1:I

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    if-ne p2, v1, :cond_2

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    iget v1, p0, Lgnu/lists/SubSequence;->ipos0:I

    goto :goto_1

    :cond_3
    move v1, p2

    :goto_1
    invoke-virtual {v0, v2, v1}, Lgnu/lists/AbstractSequence;->removePosRange(II)V

    .line 57
    return-void
.end method

.method public size()I
    .locals 3

    .line 50
    iget-object v0, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    iget v1, p0, Lgnu/lists/SubSequence;->ipos1:I

    iget v2, p0, Lgnu/lists/SubSequence;->ipos0:I

    invoke-virtual {v0, v1, v2}, Lgnu/lists/AbstractSequence;->getIndexDifference(II)I

    move-result v0

    return v0
.end method

.method public startPos()I
    .locals 1

    .line 106
    iget v0, p0, Lgnu/lists/SubSequence;->ipos0:I

    return v0
.end method

.method protected subSequencePos(II)Lgnu/lists/Sequence;
    .locals 2
    .param p1, "ipos0"    # I
    .param p2, "ipos1"    # I

    .line 118
    new-instance v0, Lgnu/lists/SubSequence;

    iget-object v1, p0, Lgnu/lists/SubSequence;->base:Lgnu/lists/AbstractSequence;

    invoke-direct {v0, v1, p1, p2}, Lgnu/lists/SubSequence;-><init>(Lgnu/lists/AbstractSequence;II)V

    return-object v0
.end method
