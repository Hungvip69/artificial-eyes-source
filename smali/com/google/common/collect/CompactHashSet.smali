.class Lcom/google/common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LOAD_FACTOR:F = 1.0f

.field private static final DEFAULT_SIZE:I = 0x3

.field private static final HASH_MASK:J = -0x100000000L

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final NEXT_MASK:J = 0xffffffffL

.field static final UNSET:I = -0x1


# instance fields
.field transient elements:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient entries:[J
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient loadFactor:F

.field transient modCount:I

.field private transient size:I

.field private transient table:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient threshold:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 168
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 169
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 170
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedSize"    # I

    .line 177
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 178
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashSet;)[J
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;

    .line 67
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    return-object v0
.end method

.method static synthetic access$100(J)I
    .locals 1
    .param p0, "x0"    # J

    .line 67
    invoke-static {p0, p1}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/CompactHashSet;Ljava/lang/Object;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 83
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 84
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactHashSet;->addAll(Ljava/util/Collection;)Z

    .line 85
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 96
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 97
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 98
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-object v0
.end method

.method private static getHash(J)I
    .locals 2
    .param p0, "entry"    # J

    .line 206
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    return v1
.end method

.method private static getNext(J)I
    .locals 1
    .param p0, "entry"    # J

    .line 211
    long-to-int v0, p0

    return v0
.end method

.method private hashTableMask()I
    .locals 1

    .line 220
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static newEntries(I)[J
    .locals 3
    .param p0, "size"    # I

    .line 200
    new-array v0, p0, [J

    .line 201
    .local v0, "array":[J
    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 202
    return-object v0
.end method

.method private static newTable(I)[I
    .locals 2
    .param p0, "size"    # I

    .line 194
    new-array v0, p0, [I

    .line 195
    .local v0, "array":[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 196
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 541
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 542
    const/4 v0, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/CompactHashSet;->init(IF)V

    .line 543
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 544
    .local v0, "elementCount":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 545
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 546
    .local v2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lcom/google/common/collect/CompactHashSet;->add(Ljava/lang/Object;)Z

    .line 547
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 548
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/Object;I)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .line 345
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v0

    and-int/2addr v0, p2

    .line 346
    .local v0, "tableIndex":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v1, v1, v0

    .line 347
    .local v1, "next":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 348
    return v2

    .line 350
    :cond_0
    const/4 v4, -0x1

    .line 352
    .local v4, "last":I
    :cond_1
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v5

    if-ne v5, p2, :cond_3

    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 353
    if-ne v4, v3, :cond_2

    .line 355
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v5, v3, v1

    invoke-static {v5, v6}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v3

    aput v3, v2, v0

    goto :goto_0

    .line 358
    :cond_2
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v5, v3, v4

    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v7, v3, v1

    invoke-static {v7, v8}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v3

    invoke-static {v5, v6, v3}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v5

    aput-wide v5, v2, v4

    .line 361
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->moveEntry(I)V

    .line 362
    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 363
    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 364
    return v3

    .line 366
    :cond_3
    move v4, v1

    .line 367
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v6, v5, v1

    invoke-static {v6, v7}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v1

    .line 368
    if-ne v1, v3, :cond_1

    .line 369
    return v2
.end method

.method private resizeMeMaybe(I)V
    .locals 3
    .param p1, "newSize"    # I

    .line 271
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v0, v0

    .line 272
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_1

    .line 273
    ushr-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 274
    .local v1, "newCapacity":I
    if-gez v1, :cond_0

    .line 275
    const v1, 0x7fffffff

    .line 277
    :cond_0
    if-eq v1, v0, :cond_1

    .line 278
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 281
    .end local v1    # "newCapacity":I
    :cond_1
    return-void
.end method

.method private resizeTable(I)V
    .locals 20
    .param p1, "newCapacity"    # I

    .line 299
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 300
    .local v1, "oldTable":[I
    array-length v2, v1

    .line 301
    .local v2, "oldCapacity":I
    const/high16 v3, 0x40000000    # 2.0f

    if-lt v2, v3, :cond_0

    .line 302
    const v3, 0x7fffffff

    iput v3, v0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    .line 303
    return-void

    .line 305
    :cond_0
    move/from16 v3, p1

    int-to-float v4, v3

    iget v5, v0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    .line 306
    .local v4, "newThreshold":I
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object v5

    .line 307
    .local v5, "newTable":[I
    iget-object v6, v0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 309
    .local v6, "entries":[J
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    .line 310
    .local v7, "mask":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v9, v0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v8, v9, :cond_1

    .line 311
    aget-wide v9, v6, v8

    .line 312
    .local v9, "oldEntry":J
    invoke-static {v9, v10}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v11

    .line 313
    .local v11, "hash":I
    and-int v12, v11, v7

    .line 314
    .local v12, "tableIndex":I
    aget v13, v5, v12

    .line 315
    .local v13, "next":I
    aput v8, v5, v12

    .line 316
    int-to-long v14, v11

    const/16 v16, 0x20

    shl-long v14, v14, v16

    const-wide v16, 0xffffffffL

    move-object/from16 v18, v1

    move/from16 v19, v2

    .end local v1    # "oldTable":[I
    .end local v2    # "oldCapacity":I
    .local v18, "oldTable":[I
    .local v19, "oldCapacity":I
    int-to-long v1, v13

    and-long v1, v1, v16

    or-long/2addr v1, v14

    aput-wide v1, v6, v8

    .line 310
    .end local v9    # "oldEntry":J
    .end local v11    # "hash":I
    .end local v12    # "tableIndex":I
    .end local v13    # "next":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v18

    move/from16 v2, v19

    goto :goto_0

    .line 319
    .end local v8    # "i":I
    .end local v18    # "oldTable":[I
    .end local v19    # "oldCapacity":I
    .restart local v1    # "oldTable":[I
    .restart local v2    # "oldCapacity":I
    :cond_1
    iput v4, v0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    .line 320
    iput-object v5, v0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 321
    return-void
.end method

.method private static swapNext(JI)J
    .locals 6
    .param p0, "entry"    # J
    .param p2, "newNext"    # I

    .line 216
    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const-wide v2, 0xffffffffL

    int-to-long v4, p2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 533
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 534
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 535
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 536
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 227
    .local v0, "entries":[J
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 228
    .local v1, "elements":[Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v2

    .line 229
    .local v2, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v3

    and-int/2addr v3, v2

    .line 230
    .local v3, "tableIndex":I
    iget v4, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 231
    .local v4, "newEntryIndex":I
    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v5, v5, v3

    .line 232
    .local v5, "next":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 233
    iget-object v6, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aput v4, v6, v3

    goto :goto_0

    .line 238
    :cond_0
    move v7, v5

    .line 239
    .local v7, "last":I
    aget-wide v8, v0, v5

    .line 240
    .local v8, "entry":J
    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v10

    if-ne v10, v2, :cond_1

    aget-object v10, v1, v5

    invoke-static {p1, v10}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 241
    const/4 v6, 0x0

    return v6

    .line 243
    :cond_1
    invoke-static {v8, v9}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v5

    .line 244
    if-ne v5, v6, :cond_0

    .line 245
    invoke-static {v8, v9, v4}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v10

    aput-wide v10, v0, v7

    .line 247
    .end local v7    # "last":I
    .end local v8    # "entry":J
    :goto_0
    const v6, 0x7fffffff

    if-eq v4, v6, :cond_3

    .line 250
    add-int/lit8 v6, v4, 0x1

    .line 251
    .local v6, "newSize":I
    invoke-direct {p0, v6}, Lcom/google/common/collect/CompactHashSet;->resizeMeMaybe(I)V

    .line 252
    invoke-virtual {p0, v4, p1, v2}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;I)V

    .line 253
    iput v6, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 254
    iget v7, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    if-lt v4, v7, :cond_2

    .line 255
    iget-object v7, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v7}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    .line 257
    :cond_2
    iget v7, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 258
    return v8

    .line 248
    .end local v6    # "newSize":I
    :cond_3
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v6

    :goto_2
    goto :goto_1
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 425
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public clear()V
    .locals 4

    .line 520
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    .line 521
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 523
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 524
    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 525
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 325
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 326
    .local v0, "hash":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v2

    and-int/2addr v2, v0

    aget v1, v1, v2

    .line 327
    .local v1, "next":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v3, v2, v1

    .line 329
    .local v3, "entry":J
    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const/4 v2, 0x1

    return v2

    .line 332
    :cond_0
    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v1

    .line 333
    .end local v3    # "entry":J
    goto :goto_0

    .line 334
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method firstEntryIndex()I
    .locals 1

    .line 412
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .line 416
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method init(IF)V
    .locals 4
    .param p1, "expectedSize"    # I
    .param p2, "loadFactor"    # F

    .line 183
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Initial capacity must be non-negative"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 184
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v2, "Illegal load factor"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 185
    float-to-double v2, p2

    invoke-static {p1, v2, v3}, Lcom/google/common/collect/Hashing;->closedTableSize(ID)I

    move-result v0

    .line 186
    .local v0, "buckets":I
    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->newTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    .line 187
    iput p2, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    .line 188
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Lcom/google/common/collect/CompactHashSet;->newEntries(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 190
    int-to-float v2, v0

    mul-float v2, v2, p2

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashSet;->threshold:I

    .line 191
    return-void
.end method

.method insertEntry(ILjava/lang/Object;I)V
    .locals 5
    .param p1, "entryIndex"    # I
    .param p3, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;I)V"
        }
    .end annotation

    .line 265
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    int-to-long v1, p3

    const/16 v3, 0x20

    shl-long/2addr v1, v3

    const-wide v3, 0xffffffffL

    or-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 266
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 267
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 478
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet$1;-><init>(Lcom/google/common/collect/CompactHashSet;)V

    return-object v0
.end method

.method moveEntry(I)V
    .locals 11
    .param p1, "dstIndex"    # I

    .line 376
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 377
    .local v0, "srcIndex":I
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_1

    .line 379
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v5, v5, v0

    aput-object v5, v4, p1

    .line 380
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object v3, v4, v0

    .line 383
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v4, v3, v0

    .line 384
    .local v4, "lastEntry":J
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aput-wide v4, v3, p1

    .line 385
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aput-wide v1, v3, v0

    .line 389
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashSet;->getHash(J)I

    move-result v1

    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v2

    and-int v6, v1, v2

    .line 390
    .local v6, "tableIndex":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aget v1, v1, v6

    .line 391
    .local v1, "lastNext":I
    if-ne v1, v0, :cond_0

    .line 393
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    aput p1, v2, v6

    goto :goto_0

    .line 399
    :cond_0
    move v2, v1

    .line 400
    .local v2, "previous":I
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aget-wide v7, v3, v1

    move-wide v9, v7

    .local v9, "entry":J
    invoke-static {v7, v8}, Lcom/google/common/collect/CompactHashSet;->getNext(J)I

    move-result v1

    .line 401
    if-ne v1, v0, :cond_0

    .line 403
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    invoke-static {v9, v10, p1}, Lcom/google/common/collect/CompactHashSet;->swapNext(JI)J

    move-result-wide v7

    aput-wide v7, v3, v2

    .line 405
    .end local v1    # "lastNext":I
    .end local v2    # "previous":I
    .end local v4    # "lastEntry":J
    .end local v6    # "tableIndex":I
    .end local v9    # "entry":J
    :goto_0
    goto :goto_1

    .line 406
    :cond_1
    iget-object v4, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object v3, v4, p1

    .line 407
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    aput-wide v1, v3, p1

    .line 409
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 340
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method resizeEntries(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .line 288
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 290
    .local v0, "entries":[J
    array-length v1, v0

    .line 291
    .local v1, "oldSize":I
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    .line 292
    if-le p1, v1, :cond_0

    .line 293
    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 295
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    .line 296
    return-void
.end method

.method public size()I
    .locals 1

    .line 473
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 483
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .locals 7

    .line 497
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 498
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 499
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 505
    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 506
    .local v1, "minimumTableSize":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_1

    .line 507
    int-to-double v2, v0

    int-to-double v4, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 508
    .local v2, "load":D
    iget v4, p0, Lcom/google/common/collect/CompactHashSet;->loadFactor:F

    float-to-double v4, v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 509
    shl-int/lit8 v1, v1, 0x1

    .line 513
    .end local v2    # "load":D
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 514
    invoke-direct {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeTable(I)V

    .line 516
    :cond_2
    return-void
.end method
