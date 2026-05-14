.class public Lgnu/lists/LList;
.super Lgnu/lists/ExtSequence;
.source "LList.java"

# interfaces
.implements Lgnu/lists/Sequence;
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final Empty:Lgnu/lists/LList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lgnu/lists/LList;

    invoke-direct {v0}, Lgnu/lists/LList;-><init>()V

    sput-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lgnu/lists/ExtSequence;-><init>()V

    return-void
.end method

.method public static chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 2
    .param p0, "old"    # Lgnu/lists/Pair;
    .param p1, "arg1"    # Ljava/lang/Object;

    .line 361
    new-instance v0, Lgnu/lists/Pair;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v0, p1, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 362
    .local v0, "p1":Lgnu/lists/Pair;
    iput-object v0, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 363
    return-object v0
.end method

.method public static chain4(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 4
    .param p0, "old"    # Lgnu/lists/Pair;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;

    .line 370
    new-instance v0, Lgnu/lists/Pair;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v0, p4, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    .local v0, "p4":Lgnu/lists/Pair;
    new-instance v1, Lgnu/lists/Pair;

    new-instance v2, Lgnu/lists/Pair;

    new-instance v3, Lgnu/lists/Pair;

    invoke-direct {v3, p3, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, p2, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 372
    return-object v0
.end method

.method public static checkNonList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "rest"    # Ljava/lang/Object;

    .line 460
    instance-of v0, p0, Lgnu/lists/LList;

    if-eqz v0, :cond_0

    const-string v0, "#<not a pair>"

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static consX([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "args"    # [Ljava/lang/Object;

    .line 406
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 407
    .local v0, "first":Ljava/lang/Object;
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 408
    .local v1, "n":I
    if-gtz v1, :cond_0

    .line 409
    return-object v0

    .line 410
    :cond_0
    new-instance v2, Lgnu/lists/Pair;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    .local v2, "result":Lgnu/lists/Pair;
    move-object v4, v2

    .line 412
    .local v4, "prev":Lgnu/lists/Pair;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 414
    new-instance v6, Lgnu/lists/Pair;

    aget-object v7, p0, v5

    invoke-direct {v6, v7, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    .local v6, "next":Lgnu/lists/Pair;
    iput-object v6, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 416
    move-object v4, v6

    .line 412
    .end local v6    # "next":Lgnu/lists/Pair;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 418
    .end local v5    # "i":I
    :cond_1
    aget-object v3, p0, v1

    iput-object v3, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 419
    return-object v2
.end method

.method public static final length(Ljava/lang/Object;)I
    .locals 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "count":I
    :goto_0
    instance-of v1, p0, Lgnu/lists/Pair;

    if-eqz v1, :cond_0

    .line 214
    add-int/lit8 v0, v0, 0x1

    .line 213
    move-object v1, p0

    check-cast v1, Lgnu/lists/Pair;

    iget-object p0, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_0
    return v0
.end method

.method public static list1(Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 2
    .param p0, "arg1"    # Ljava/lang/Object;

    .line 338
    new-instance v0, Lgnu/lists/Pair;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v0, p0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 3
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 343
    new-instance v0, Lgnu/lists/Pair;

    new-instance v1, Lgnu/lists/Pair;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v1, p1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 4
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;

    .line 348
    new-instance v0, Lgnu/lists/Pair;

    new-instance v1, Lgnu/lists/Pair;

    new-instance v2, Lgnu/lists/Pair;

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v2, p2, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 5
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "arg3"    # Ljava/lang/Object;
    .param p3, "arg4"    # Ljava/lang/Object;

    .line 353
    new-instance v0, Lgnu/lists/Pair;

    new-instance v1, Lgnu/lists/Pair;

    new-instance v2, Lgnu/lists/Pair;

    new-instance v3, Lgnu/lists/Pair;

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v3, p3, v4}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v2, p2, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, p1, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static listLength(Ljava/lang/Object;Z)I
    .locals 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "allowOtherSequence"    # Z

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "n":I
    move-object v1, p0

    .line 42
    .local v1, "slow":Ljava/lang/Object;
    move-object v2, p0

    .line 45
    .local v2, "fast":Ljava/lang/Object;
    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_0

    .line 46
    return v0

    .line 47
    :cond_0
    instance-of v3, v2, Lgnu/lists/Pair;

    const/4 v4, -0x2

    if-nez v3, :cond_3

    .line 49
    instance-of v3, v2, Lgnu/lists/Sequence;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 51
    move-object v3, v2

    check-cast v3, Lgnu/lists/Sequence;

    invoke-interface {v3}, Lgnu/lists/Sequence;->size()I

    move-result v3

    .line 52
    .local v3, "j":I
    if-ltz v3, :cond_1

    add-int v4, v0, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    return v4

    .line 54
    .end local v3    # "j":I
    :cond_2
    return v4

    .line 56
    :cond_3
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    .line 57
    .local v3, "fast_pair":Lgnu/lists/Pair;
    iget-object v5, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v5, v6, :cond_4

    .line 58
    add-int/lit8 v4, v0, 0x1

    return v4

    .line 59
    :cond_4
    if-ne v2, v1, :cond_5

    if-lez v0, :cond_5

    .line 60
    const/4 v4, -0x1

    return v4

    .line 61
    :cond_5
    iget-object v5, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    instance-of v5, v5, Lgnu/lists/Pair;

    if-nez v5, :cond_6

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    iget-object v2, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 65
    goto :goto_0

    .line 67
    :cond_6
    instance-of v5, v1, Lgnu/lists/Pair;

    if-nez v5, :cond_7

    .line 68
    return v4

    .line 69
    :cond_7
    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    iget-object v1, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 70
    iget-object v4, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    check-cast v4, Lgnu/lists/Pair;

    iget-object v2, v4, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 71
    nop

    .end local v3    # "fast_pair":Lgnu/lists/Pair;
    add-int/lit8 v0, v0, 0x2

    .line 72
    goto :goto_0
.end method

.method public static listTail(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p0, "list"    # Ljava/lang/Object;
    .param p1, "count"    # I

    .line 392
    nop

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 394
    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 396
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    .line 397
    .local v0, "pair":Lgnu/lists/Pair;
    iget-object p0, v0, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 398
    .end local v0    # "pair":Lgnu/lists/Pair;
    goto :goto_0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "List is too short."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_1
    return-object p0
.end method

.method public static makeList(Ljava/util/List;)Lgnu/lists/LList;
    .locals 6
    .param p0, "vals"    # Ljava/util/List;

    .line 221
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "e":Ljava/util/Iterator;
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 223
    .local v1, "result":Lgnu/lists/LList;
    const/4 v2, 0x0

    .line 224
    .local v2, "last":Lgnu/lists/Pair;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    new-instance v3, Lgnu/lists/Pair;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v3, v4, v5}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .local v3, "pair":Lgnu/lists/Pair;
    if-nez v2, :cond_0

    .line 228
    move-object v1, v3

    goto :goto_1

    .line 230
    :cond_0
    iput-object v3, v2, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 231
    :goto_1
    move-object v2, v3

    .line 232
    .end local v3    # "pair":Lgnu/lists/Pair;
    goto :goto_0

    .line 233
    :cond_1
    return-object v1
.end method

.method public static makeList([Ljava/lang/Object;I)Lgnu/lists/LList;
    .locals 4
    .param p0, "vals"    # [Ljava/lang/Object;
    .param p1, "offset"    # I

    .line 274
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 275
    .local v0, "result":Lgnu/lists/LList;
    array-length v1, p0

    sub-int/2addr v1, p1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 276
    new-instance v2, Lgnu/lists/Pair;

    add-int v3, p1, v1

    aget-object v3, p0, v3

    invoke-direct {v2, v3, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    .line 277
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static makeList([Ljava/lang/Object;II)Lgnu/lists/LList;
    .locals 4
    .param p0, "vals"    # [Ljava/lang/Object;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 257
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 258
    .local v0, "result":Lgnu/lists/LList;
    move v1, p2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 259
    new-instance v2, Lgnu/lists/Pair;

    add-int v3, p1, v1

    aget-object v3, p0, v3

    invoke-direct {v2, v3, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;
    .locals 2
    .param p0, "list"    # Ljava/lang/Object;

    .line 379
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 380
    .local v0, "prev":Lgnu/lists/LList;
    :goto_0
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p0, v1, :cond_0

    .line 382
    move-object v1, p0

    check-cast v1, Lgnu/lists/Pair;

    .line 383
    .local v1, "pair":Lgnu/lists/Pair;
    iget-object p0, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 384
    iput-object v0, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 385
    move-object v0, v1

    .line 386
    .end local v1    # "pair":Lgnu/lists/Pair;
    goto :goto_0

    .line 387
    :cond_0
    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 84
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public consume(Lgnu/lists/Consumer;)V
    .locals 3
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 299
    move-object v0, p0

    .line 300
    .local v0, "list":Ljava/lang/Object;
    const-string v1, "list"

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 301
    :goto_0
    instance-of v1, v0, Lgnu/lists/Pair;

    const/16 v2, 0x20

    if-eqz v1, :cond_1

    .line 303
    if-eq v0, p0, :cond_0

    .line 304
    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->write(I)V

    .line 305
    :cond_0
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    .line 306
    .local v1, "pair":Lgnu/lists/Pair;
    iget-object v2, v1, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 307
    iget-object v0, v1, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 308
    .end local v1    # "pair":Lgnu/lists/Pair;
    goto :goto_0

    .line 309
    :cond_1
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_2

    .line 311
    invoke-interface {p1, v2}, Lgnu/lists/Consumer;->write(I)V

    .line 312
    const-string v1, ". "

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 313
    invoke-static {v0}, Lgnu/lists/LList;->checkNonList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 315
    :cond_2
    invoke-interface {p1}, Lgnu/lists/Consumer;->endElement()V

    .line 316
    return-void
.end method

.method public createPos(IZ)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "isAfter"    # Z

    .line 107
    new-instance v0, Lgnu/lists/LListPosition;

    invoke-direct {v0, p0, p1, p2}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LList;IZ)V

    .line 108
    .local v0, "pos":Lgnu/lists/ExtPosition;
    sget-object v1, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    invoke-virtual {v1, v0}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v1

    return v1
.end method

.method public createRelativePos(IIZ)I
    .locals 6
    .param p1, "pos"    # I
    .param p2, "delta"    # I
    .param p3, "isAfter"    # Z

    .line 113
    invoke-virtual {p0, p1}, Lgnu/lists/LList;->isAfterPos(I)Z

    move-result v0

    .line 114
    .local v0, "old_after":Z
    if-ltz p2, :cond_9

    if-nez p1, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    if-nez p2, :cond_2

    .line 118
    if-ne p3, v0, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Lgnu/lists/LList;->copyPos(I)I

    move-result v1

    return v1

    .line 120
    :cond_1
    if-eqz p3, :cond_2

    if-nez v0, :cond_2

    .line 121
    invoke-super {p0, p1, p2, p3}, Lgnu/lists/ExtSequence;->createRelativePos(IIZ)I

    move-result v1

    return v1

    .line 123
    :cond_2
    if-ltz p1, :cond_8

    .line 125
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v1

    check-cast v1, Lgnu/lists/LListPosition;

    .line 126
    .local v1, "old":Lgnu/lists/LListPosition;
    iget-object v2, v1, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 127
    invoke-super {p0, p1, p2, p3}, Lgnu/lists/ExtSequence;->createRelativePos(IIZ)I

    move-result v2

    return v2

    .line 128
    :cond_3
    new-instance v2, Lgnu/lists/LListPosition;

    invoke-direct {v2, v1}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LListPosition;)V

    .line 129
    .local v2, "it":Lgnu/lists/LListPosition;
    iget-object v3, v2, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 130
    .local v3, "it_xpos":Ljava/lang/Object;
    iget v4, v2, Lgnu/lists/LListPosition;->ipos:I

    .line 131
    .local v4, "it_ipos":I
    if-eqz p3, :cond_4

    if-nez v0, :cond_4

    .line 133
    add-int/lit8 p2, p2, -0x1

    .line 134
    add-int/lit8 v4, v4, 0x3

    .line 136
    :cond_4
    if-nez p3, :cond_5

    if-eqz v0, :cond_5

    .line 138
    add-int/lit8 p2, p2, 0x1

    .line 139
    add-int/lit8 v4, v4, -0x3

    .line 143
    :cond_5
    :goto_0
    instance-of v5, v3, Lgnu/lists/Pair;

    if-eqz v5, :cond_7

    .line 145
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_6

    .line 146
    nop

    .line 151
    iput v4, v2, Lgnu/lists/LListPosition;->ipos:I

    .line 152
    iput-object v3, v2, Lgnu/lists/LListPosition;->xpos:Ljava/lang/Object;

    .line 153
    sget-object v5, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    invoke-virtual {v5, v2}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v5

    return v5

    .line 147
    :cond_6
    move-object v5, v3

    check-cast v5, Lgnu/lists/Pair;

    .line 148
    .local v5, "p":Lgnu/lists/Pair;
    add-int/lit8 v4, v4, 0x2

    .line 149
    iget-object v3, v5, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 150
    .end local v5    # "p":Lgnu/lists/Pair;
    goto :goto_0

    .line 144
    :cond_7
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 124
    .end local v1    # "old":Lgnu/lists/LListPosition;
    .end local v2    # "it":Lgnu/lists/LListPosition;
    .end local v3    # "it_xpos":Ljava/lang/Object;
    .end local v4    # "it_ipos":I
    :cond_8
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 115
    :cond_9
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lgnu/lists/ExtSequence;->createRelativePos(IIZ)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 78
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 202
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getIterator(I)Lgnu/lists/SeqPosition;
    .locals 2
    .param p1, "index"    # I

    .line 102
    new-instance v0, Lgnu/lists/LListPosition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lgnu/lists/LListPosition;-><init>(Lgnu/lists/LList;IZ)V

    return-object v0
.end method

.method public getPosNext(I)Ljava/lang/Object;
    .locals 1
    .param p1, "ipos"    # I

    .line 168
    sget-object v0, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPosPrevious(I)Ljava/lang/Object;
    .locals 1
    .param p1, "ipos"    # I

    .line 173
    sget-object v0, Lgnu/lists/LList;->eofValue:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext(I)Z
    .locals 1
    .param p1, "ipos"    # I

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public nextPos(I)I
    .locals 1
    .param p1, "ipos"    # I

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 321
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 333
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v0
.end method

.method protected setPosNext(ILjava/lang/Object;)V
    .locals 1
    .param p1, "ipos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 178
    if-gtz p1, :cond_1

    .line 180
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 182
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    iput-object p2, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 185
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {v0, p2}, Lgnu/lists/SeqPosition;->setNext(Ljava/lang/Object;)V

    .line 186
    :goto_0
    return-void
.end method

.method protected setPosPrevious(ILjava/lang/Object;)V
    .locals 1
    .param p1, "ipos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 190
    if-gtz p1, :cond_1

    .line 192
    if-eqz p1, :cond_0

    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_0

    .line 194
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->lastPair()Lgnu/lists/Pair;

    move-result-object v0

    iput-object p2, v0, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 197
    :cond_1
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {v0, p2}, Lgnu/lists/SeqPosition;->setPrevious(Ljava/lang/Object;)V

    .line 198
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 424
    move-object v0, p0

    .line 425
    .local v0, "rest":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 426
    .local v1, "i":I
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 427
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 430
    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v3, :cond_0

    .line 431
    goto :goto_1

    .line 432
    :cond_0
    if-lez v1, :cond_1

    .line 433
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 434
    :cond_1
    const/16 v3, 0xa

    if-lt v1, v3, :cond_2

    .line 436
    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    goto :goto_1

    .line 439
    :cond_2
    instance-of v3, v0, Lgnu/lists/Pair;

    if-eqz v3, :cond_3

    .line 441
    move-object v3, v0

    check-cast v3, Lgnu/lists/Pair;

    .line 442
    .local v3, "pair":Lgnu/lists/Pair;
    iget-object v4, v3, Lgnu/lists/Pair;->car:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 443
    iget-object v0, v3, Lgnu/lists/Pair;->cdr:Ljava/lang/Object;

    .line 444
    .end local v3    # "pair":Lgnu/lists/Pair;
    nop

    .line 451
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_3
    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    invoke-static {v0}, Lgnu/lists/LList;->checkNonList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 449
    nop

    .line 453
    :goto_1
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 454
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    return-void
.end method
