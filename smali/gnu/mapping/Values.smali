.class public Lgnu/mapping/Values;
.super Lgnu/lists/TreeList;
.source "Values.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final empty:Lgnu/mapping/Values;

.field public static final noArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    .line 15
    new-instance v0, Lgnu/mapping/Values;

    sget-object v1, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Object;

    .line 25
    invoke-direct {p0}, Lgnu/lists/TreeList;-><init>()V

    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 27
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static countValues(Ljava/lang/Object;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .line 243
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static make()Lgnu/mapping/Values;
    .locals 1

    .line 48
    new-instance v0, Lgnu/mapping/Values;

    invoke-direct {v0}, Lgnu/mapping/Values;-><init>()V

    return-object v0
.end method

.method public static make(Lgnu/lists/TreeList;)Ljava/lang/Object;
    .locals 2
    .param p0, "list"    # Lgnu/lists/TreeList;

    .line 88
    iget-object v0, p0, Lgnu/lists/TreeList;->data:[C

    array-length v0, v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lgnu/mapping/Values;->make(Lgnu/lists/TreeList;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static make(Lgnu/lists/TreeList;II)Ljava/lang/Object;
    .locals 2
    .param p0, "list"    # Lgnu/lists/TreeList;
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .line 100
    if-eq p1, p2, :cond_3

    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    move v1, v0

    .local v1, "next":I
    if-gtz v0, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    if-eq v1, p2, :cond_2

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Lgnu/mapping/Values;

    invoke-direct {v0}, Lgnu/mapping/Values;-><init>()V

    .line 106
    .local v0, "vals":Lgnu/mapping/Values;
    invoke-virtual {p0, p1, p2, v0}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 107
    return-object v0

    .line 104
    .end local v0    # "vals":Lgnu/mapping/Values;
    :cond_2
    :goto_0
    shl-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 102
    .end local v1    # "next":I
    :cond_3
    :goto_1
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public static make(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .param p0, "seq"    # Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 69
    .local v1, "count":I
    :goto_0
    if-nez v1, :cond_1

    .line 70
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 71
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 72
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 73
    :cond_2
    new-instance v0, Lgnu/mapping/Values;

    invoke-direct {v0}, Lgnu/mapping/Values;-><init>()V

    .line 75
    .local v0, "vals":Lgnu/mapping/Values;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 76
    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 83
    :cond_3
    return-object v0
.end method

.method public static make([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "vals"    # [Ljava/lang/Object;

    .line 53
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0

    .line 55
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    .line 56
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Lgnu/mapping/Values;

    invoke-direct {v0, p0}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static nextIndex(Ljava/lang/Object;I)I
    .locals 1
    .param p0, "values"    # Ljava/lang/Object;
    .param p1, "curIndex"    # I

    .line 196
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 197
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0, p1}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v0

    return v0

    .line 199
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static nextValue(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .param p0, "values"    # Ljava/lang/Object;
    .param p1, "curIndex"    # I

    .line 209
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_1

    .line 211
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    .line 212
    .local v0, "v":Lgnu/mapping/Values;
    iget v1, v0, Lgnu/mapping/Values;->gapEnd:I

    if-lt p1, v1, :cond_0

    .line 213
    iget v1, v0, Lgnu/mapping/Values;->gapEnd:I

    iget v2, v0, Lgnu/mapping/Values;->gapStart:I

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    .line 214
    :cond_0
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    shl-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 217
    .end local v0    # "v":Lgnu/mapping/Values;
    :cond_1
    return-object p0
.end method

.method public static varargs values([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "vals"    # [Ljava/lang/Object;

    .line 43
    invoke-static {p0}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 222
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_0

    .line 224
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0, p1}, Lgnu/mapping/Values;->consume(Lgnu/lists/Consumer;)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-interface {p1, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 239
    :goto_0
    return-void
.end method


# virtual methods
.method public call_with(Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 1
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final canonicalize()Ljava/lang/Object;
    .locals 3

    .line 115
    iget v0, p0, Lgnu/mapping/Values;->gapEnd:I

    iget-object v1, p0, Lgnu/mapping/Values;->data:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 117
    iget v0, p0, Lgnu/mapping/Values;->gapStart:I

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    iget v2, p0, Lgnu/mapping/Values;->gapStart:I

    if-ne v1, v2, :cond_1

    .line 120
    invoke-virtual {p0, v0}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    return-object p0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .locals 7
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 133
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_0

    .line 135
    const-string v0, "#!void"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 136
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "vals":[Ljava/lang/Object;
    array-length v1, v0

    .line 140
    .local v1, "size":I
    const/4 v2, 0x1

    .line 141
    .local v2, "readable":Z
    if-eqz v2, :cond_1

    .line 142
    const-string v3, "#<values"

    invoke-interface {p1, v3}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 143
    :cond_1
    const/4 v3, 0x0

    .line 145
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0, v3}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v4

    .line 146
    .local v4, "next":I
    if-gez v4, :cond_3

    .line 147
    nop

    .line 158
    .end local v3    # "i":I
    .end local v4    # "next":I
    if-eqz v2, :cond_2

    .line 159
    const/16 v3, 0x3e

    invoke-interface {p1, v3}, Lgnu/lists/Consumer;->write(I)V

    .line 160
    :cond_2
    return-void

    .line 148
    .restart local v3    # "i":I
    .restart local v4    # "next":I
    :cond_3
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lgnu/lists/Consumer;->write(I)V

    .line 149
    iget v5, p0, Lgnu/mapping/Values;->gapEnd:I

    if-lt v3, v5, :cond_4

    .line 150
    iget v5, p0, Lgnu/mapping/Values;->gapEnd:I

    iget v6, p0, Lgnu/mapping/Values;->gapStart:I

    sub-int/2addr v5, v6

    sub-int/2addr v3, v5

    .line 151
    :cond_4
    shl-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    .line 152
    .local v5, "val":Ljava/lang/Object;
    instance-of v6, v5, Lgnu/text/Printable;

    if-eqz v6, :cond_5

    .line 153
    move-object v6, v5

    check-cast v6, Lgnu/text/Printable;

    invoke-interface {v6, p1}, Lgnu/text/Printable;->print(Lgnu/lists/Consumer;)V

    goto :goto_1

    .line 155
    :cond_5
    invoke-interface {p1, v5}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 156
    :goto_1
    move v3, v4

    .line 157
    .end local v4    # "next":I
    .end local v5    # "val":Ljava/lang/Object;
    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 178
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 179
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 180
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/mapping/Values;->writeObject(Ljava/lang/Object;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    invoke-virtual {p0}, Lgnu/mapping/Values;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, "vals":[Ljava/lang/Object;
    array-length v1, v0

    .line 170
    .local v1, "len":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 171
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 172
    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
