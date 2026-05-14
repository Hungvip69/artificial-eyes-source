.class public Lcom/google/appinventor/components/runtime/util/YailMatrix;
.super Ljava/lang/Object;
.source "YailMatrix.java"


# instance fields
.field private final data:[D

.field private final dims:[I


# direct methods
.method public constructor <init>(II[[D)V
    .locals 2
    .param p1, "rows"    # I
    .param p2, "cols"    # I
    .param p3, "matrixData"    # [[D

    .line 50
    filled-new-array {p1, p2}, [I

    move-result-object v0

    invoke-static {p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->flatten2D(II[[D)[D

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>([I[D)V

    .line 51
    return-void
.end method

.method public constructor <init>([ID)V
    .locals 5
    .param p1, "dims"    # [I
    .param p2, "fillValue"    # D

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    .line 23
    const/4 v0, 0x1

    .line 24
    .local v0, "totalSize":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 25
    .local v3, "d":I
    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 28
    mul-int v0, v0, v3

    .line 24
    .end local v3    # "d":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    .restart local v3    # "d":I
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid dimension size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Matrix Error"

    invoke-direct {v1, v2, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 30
    .end local v3    # "d":I
    :cond_1
    new-array v1, v0, [D

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    .line 31
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->fill([DD)V

    .line 32
    return-void
.end method

.method public constructor <init>([I[D)V
    .locals 6
    .param p1, "dims"    # [I
    .param p2, "dataValues"    # [D

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    .line 36
    const/4 v0, 0x1

    .line 37
    .local v0, "totalSize":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "Matrix Error"

    if-ge v2, v1, :cond_1

    aget v4, p1, v2

    .line 38
    .local v4, "d":I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 41
    mul-int v0, v0, v4

    .line 37
    .end local v4    # "d":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    .restart local v4    # "d":I
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid dimension size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v4    # "d":I
    :cond_1
    array-length v1, p2

    if-ne v1, v0, :cond_2

    .line 46
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    .line 47
    return-void

    .line 44
    :cond_2
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    array-length v2, p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data length invalid: expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static add(Lcom/google/appinventor/components/runtime/util/YailMatrix;Lcom/google/appinventor/components/runtime/util/YailMatrix;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 7
    .param p0, "a"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .param p1, "b"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 315
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 319
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    aget-wide v3, v2, v1

    iget-object v2, p1, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    aget-wide v5, v2, v1

    add-double/2addr v3, v5

    aput-wide v3, v0, v1

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    invoke-direct {v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>([I[D)V

    return-object v1

    .line 316
    .end local v0    # "result":[D
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "Dimensions must match for addition"

    const-string v2, "Matrix Error"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static varargs add([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 8
    .param p0, "args"    # [Ljava/lang/Object;

    .line 288
    array-length v0, p0

    const/4 v1, 0x1

    const-string v2, "Matrix Error"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v0, "flat":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    aget-object v1, p0, v3

    .line 291
    .local v1, "elt":Ljava/lang/Object;
    :goto_0
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v4, :cond_1

    .line 292
    instance-of v4, v1, Lgnu/lists/Pair;

    if-eqz v4, :cond_0

    .line 295
    move-object v4, v1

    check-cast v4, Lgnu/lists/Pair;

    .line 296
    .local v4, "p":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 298
    .end local v4    # "p":Lgnu/lists/Pair;
    goto :goto_0

    .line 293
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v4, "yail-matrix-add: expected list of matrices"

    invoke-direct {v3, v4, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 299
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 301
    .end local v0    # "flat":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "elt":Ljava/lang/Object;
    :cond_2
    aget-object v0, p0, v3

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 302
    .local v0, "sum":Lcom/google/appinventor/components/runtime/util/YailMatrix;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 303
    aget-object v3, p0, v1

    .line 304
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    if-eqz v4, :cond_3

    .line 309
    move-object v4, v3

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->add(Lcom/google/appinventor/components/runtime/util/YailMatrix;Lcom/google/appinventor/components/runtime/util/YailMatrix;)Lcom/google/appinventor/components/runtime/util/YailMatrix;

    move-result-object v0

    .line 302
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_3
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    add-int/lit8 v5, v1, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "yail-matrix-add argument "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a matrix: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 311
    .end local v1    # "i":I
    .end local v3    # "o":Ljava/lang/Object;
    :cond_4
    return-object v0
.end method

.method private arrayToLList([D)Lgnu/lists/LList;
    .locals 4
    .param p1, "array"    # [D

    .line 198
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 199
    .local v0, "newArray":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 200
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v1

    return-object v1
.end method

.method private buildString(I[I)Ljava/lang/String;
    .locals 4
    .param p1, "depth"    # I
    .param p2, "prefix"    # [I

    .line 517
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getFlatIndex([I)I

    move-result v1

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 520
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    aget v2, v2, p1

    if-gt v1, v2, :cond_2

    .line 523
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_1
    array-length v3, p2

    add-int/2addr v3, v2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 525
    .local v2, "next":[I
    array-length v3, p2

    aput v1, v2, v3

    .line 526
    add-int/lit8 v3, p1, 0x1

    invoke-direct {p0, v3, v2}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->buildString(I[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .end local v2    # "next":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v1    # "i":I
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static detectDims(Lorg/json/JSONArray;Ljava/util/List;)Z
    .locals 6
    .param p0, "arr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 464
    .local p1, "dims":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 466
    return v1

    .line 468
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 469
    .local v2, "first":Ljava/lang/Object;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_4

    .line 470
    move-object v1, v2

    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 471
    .local v1, "len":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 472
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 473
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eq v5, v1, :cond_1

    goto :goto_1

    .line 471
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 474
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_2
    :goto_1
    return v0

    .line 477
    .end local v3    # "i":I
    .end local v4    # "o":Ljava/lang/Object;
    :cond_3
    move-object v0, v2

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->detectDims(Lorg/json/JSONArray;Ljava/util/List;)Z

    move-result v0

    return v0

    .line 479
    .end local v1    # "len":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 480
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Number;

    if-nez v4, :cond_5

    .line 481
    return v0

    .line 479
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 484
    .end local v3    # "i":I
    :cond_6
    return v1
.end method

.method private static flatten(Lorg/json/JSONArray;Ljava/util/List;I[D[I)V
    .locals 5
    .param p0, "arr"    # Lorg/json/JSONArray;
    .param p2, "depth"    # I
    .param p3, "flat"    # [D
    .param p4, "writeIndex"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I[D[I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 489
    .local p1, "dims":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_1

    .line 490
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 491
    const/4 v1, 0x0

    aget v2, p4, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, p4, v1

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    aput-wide v3, p3, v2

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 494
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 495
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, p1, v2, p3, p4}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->flatten(Lorg/json/JSONArray;Ljava/util/List;I[D[I)V

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private static flatten2D(II[[D)[D
    .locals 8
    .param p0, "rows"    # I
    .param p1, "cols"    # I
    .param p2, "matrixData"    # [[D

    .line 54
    array-length v0, p2

    const-string v1, "Matrix Error"

    if-ne v0, p0, :cond_3

    .line 57
    mul-int v0, p0, p1

    new-array v0, v0, [D

    .line 58
    .local v0, "flat":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_2

    .line 59
    aget-object v3, p2, v2

    array-length v3, v3

    if-ne v3, p1, :cond_1

    .line 62
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p1, :cond_0

    .line 63
    mul-int v4, v2, p1

    add-int/2addr v4, v3

    aget-object v5, p2, v2

    aget-wide v6, v5, v3

    aput-wide v6, v0, v4

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 58
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    add-int/lit8 v4, v2, 0x1

    aget-object v5, p2, v2

    array-length v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Matrix dimensions mismatch: row "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " has "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " columns, expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 66
    .end local v2    # "i":I
    :cond_2
    return-object v0

    .line 55
    .end local v0    # "flat":[D
    :cond_3
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    array-length v2, p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Matrix dimensions mismatch: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static fromJsonArray(Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 7
    .param p0, "arr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v0, "dimsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->detectDims(Lorg/json/JSONArray;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailMatrix$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailMatrix$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    .line 456
    .local v1, "dims":[I
    const/4 v2, 0x1

    .line 457
    .local v2, "totalSize":I
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget v6, v1, v5

    .local v6, "d":I
    mul-int v2, v2, v6

    .end local v6    # "d":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 458
    :cond_0
    new-array v3, v2, [D

    .line 459
    .local v3, "flat":[D
    filled-new-array {v4}, [I

    move-result-object v5

    invoke-static {p0, v0, v4, v3, v5}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->flatten(Lorg/json/JSONArray;Ljava/util/List;I[D[I)V

    .line 460
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    invoke-direct {v4, v1, v3}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>([I[D)V

    return-object v4

    .line 453
    .end local v1    # "dims":[I
    .end local v2    # "totalSize":I
    .end local v3    # "flat":[D
    :cond_1
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Not a uniform numeric array"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private varargs getFlatIndex([I)I
    .locals 8
    .param p1, "indices"    # [I

    .line 70
    array-length v0, p1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "offset":I
    const/4 v1, 0x1

    .line 75
    .local v1, "multiplier":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 76
    aget v4, p1, v2

    .line 77
    .local v4, "idx":I
    if-lt v4, v3, :cond_0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    aget v5, v5, v2

    if-gt v4, v5, :cond_0

    .line 80
    add-int/lit8 v5, v4, -0x1

    mul-int v5, v5, v1

    add-int/2addr v0, v5

    .line 81
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    aget v5, v5, v2

    mul-int v1, v1, v5

    .line 75
    .end local v4    # "idx":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 78
    .restart local v4    # "idx":I
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    add-int/lit8 v5, v2, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index out of bounds for dimension "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Matrix Access Error"

    invoke-direct {v3, v5, v6}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 83
    .end local v2    # "i":I
    .end local v4    # "idx":I
    :cond_1
    return v0

    .line 71
    .end local v0    # "offset":I
    .end local v1    # "multiplier":I
    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v1, v1

    array-length v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " indices but got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Matrix Error"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static identityMatrix(I)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 6
    .param p0, "n"    # I

    .line 406
    filled-new-array {p0, p0}, [I

    move-result-object v0

    .line 407
    .local v0, "idDims":[I
    mul-int v1, p0, p0

    new-array v1, v1, [D

    .line 408
    .local v1, "diag":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 409
    mul-int v3, v2, p0

    add-int/2addr v3, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v1, v3

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    invoke-direct {v2, v0, v1}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>([I[D)V

    return-object v2
.end method

.method public static inverse(Lcom/google/appinventor/components/runtime/util/YailMatrix;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 20
    .param p0, "m"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v1, v1

    const-string v2, "Matrix Error"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ne v1, v5, :cond_b

    .line 224
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    aget v1, v1, v4

    .line 226
    .local v1, "n":I
    mul-int/lit8 v5, v1, 0x2

    new-array v7, v3, [I

    aput v5, v7, v6

    aput v1, v7, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 227
    .local v5, "aug":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const-wide/16 v8, 0x0

    if-ge v7, v1, :cond_3

    .line 228
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v1, :cond_0

    .line 229
    aget-object v11, v5, v7

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    mul-int v13, v7, v1

    add-int/2addr v13, v10

    aget-wide v13, v12, v13

    aput-wide v13, v11, v10

    .line 228
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 231
    .end local v10    # "j":I
    :cond_0
    move v10, v1

    .restart local v10    # "j":I
    :goto_2
    mul-int/lit8 v11, v1, 0x2

    if-ge v10, v11, :cond_2

    .line 232
    aget-object v11, v5, v7

    sub-int v12, v10, v1

    if-ne v7, v12, :cond_1

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_1
    move-wide v12, v8

    :goto_3
    aput-wide v12, v11, v10

    .line 231
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 227
    .end local v10    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 236
    .end local v7    # "i":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v1, :cond_9

    .line 237
    aget-object v10, v5, v7

    aget-wide v11, v10, v7

    .line 238
    .local v11, "diag":D
    cmpl-double v10, v11, v8

    if-eqz v10, :cond_8

    .line 241
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_5
    mul-int/lit8 v13, v1, 0x2

    if-ge v10, v13, :cond_4

    .line 242
    aget-object v13, v5, v7

    aget-wide v14, v13, v10

    div-double/2addr v14, v11

    aput-wide v14, v13, v10

    .line 241
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 244
    .end local v10    # "j":I
    :cond_4
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_6
    if-ge v10, v1, :cond_7

    .line 245
    if-ne v10, v7, :cond_5

    goto :goto_8

    .line 246
    :cond_5
    aget-object v13, v5, v10

    aget-wide v14, v13, v7

    .line 247
    .local v14, "factor":D
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_7
    mul-int/lit8 v8, v1, 0x2

    if-ge v13, v8, :cond_6

    .line 248
    aget-object v8, v5, v10

    aget-wide v16, v8, v13

    aget-object v9, v5, v7

    aget-wide v18, v9, v13

    mul-double v18, v18, v14

    sub-double v16, v16, v18

    aput-wide v16, v8, v13

    .line 247
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v8, 0x0

    goto :goto_7

    .line 244
    .end local v13    # "j":I
    .end local v14    # "factor":D
    :cond_6
    :goto_8
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v8, 0x0

    goto :goto_6

    .line 236
    .end local v10    # "k":I
    .end local v11    # "diag":D
    :cond_7
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v8, 0x0

    goto :goto_4

    .line 239
    .restart local v11    # "diag":D
    :cond_8
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v4, "Matrix is not invertible"

    invoke-direct {v3, v4, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 252
    .end local v7    # "i":I
    .end local v11    # "diag":D
    :cond_9
    new-array v2, v3, [I

    aput v1, v2, v6

    aput v1, v2, v4

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 253
    .local v2, "invData":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v1, :cond_a

    .line 254
    aget-object v6, v5, v3

    aget-object v7, v2, v3

    invoke-static {v6, v1, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 256
    .end local v3    # "i":I
    :cond_a
    new-instance v3, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    invoke-direct {v3, v1, v1, v2}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>(II[[D)V

    return-object v3

    .line 222
    .end local v1    # "n":I
    .end local v2    # "invData":[[D
    .end local v5    # "aug":[[D
    :cond_b
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Matrix must be square for inversion"

    invoke-direct {v1, v3, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_a
    throw v1

    :goto_b
    goto :goto_a
.end method

.method static synthetic lambda$fromJsonArray$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 455
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static varargs makeMatrix([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 12
    .param p0, "dataValues"    # [Ljava/lang/Object;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "argsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    aget-object v2, p0, v1

    .line 89
    .local v2, "elt":Ljava/lang/Object;
    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v3, :cond_1

    .line 90
    instance-of v3, v2, Lgnu/lists/Pair;

    if-eqz v3, :cond_0

    .line 93
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    .line 94
    .local v3, "pair":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 96
    .end local v3    # "pair":Lgnu/lists/Pair;
    goto :goto_0

    .line 91
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid matrix data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Matrix Error"

    invoke-direct {v1, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 99
    .local v3, "args":[Ljava/lang/Object;
    aget-object v4, v3, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 100
    .local v4, "rows":I
    const/4 v5, 0x1

    aget-object v6, v3, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 101
    .local v6, "cols":I
    const/4 v7, 0x2

    new-array v8, v7, [I

    aput v6, v8, v5

    aput v4, v8, v1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 102
    .local v1, "matrixData":[[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 103
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v6, :cond_2

    .line 104
    aget-object v9, v1, v5

    mul-int v10, v5, v6

    add-int/2addr v10, v7

    add-int/2addr v10, v8

    aget-object v10, v3, v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    aput-wide v10, v9, v8

    .line 103
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 102
    .end local v8    # "j":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 107
    .end local v5    # "i":I
    :cond_3
    new-instance v5, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    invoke-direct {v5, v4, v6, v1}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>(II[[D)V

    return-object v5
.end method

.method public static makeMultidimMatrix(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 9
    .param p0, "dimsObj"    # Ljava/lang/Object;
    .param p1, "initObj"    # Ljava/lang/Object;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v0, "rawDims":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v1, p0, Ljava/util/List;

    const-string v2, "Matrix Error"

    if-eqz v1, :cond_0

    .line 113
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 114
    :cond_0
    instance-of v1, p0, Lgnu/lists/LList;

    if-eqz v1, :cond_5

    .line 115
    move-object v1, p0

    .line 116
    .local v1, "elt":Ljava/lang/Object;
    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v3, :cond_1

    .line 117
    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    .line 118
    .local v3, "p":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 120
    .end local v3    # "p":Lgnu/lists/Pair;
    goto :goto_0

    .line 121
    .end local v1    # "elt":Ljava/lang/Object;
    :cond_1
    nop

    .line 124
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 125
    .local v1, "dims":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 126
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 127
    .local v4, "d":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_3

    .line 130
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v1, v3

    .line 131
    aget v5, v1, v3

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    .line 125
    .end local v4    # "d":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 132
    .restart local v4    # "d":Ljava/lang/Object;
    :cond_2
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    aget v6, v1, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid dimension size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 128
    :cond_3
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dimension not a number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 135
    .end local v3    # "i":I
    .end local v4    # "d":Ljava/lang/Object;
    :cond_4
    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 136
    .local v2, "initValue":D
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    invoke-direct {v4, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>([ID)V

    return-object v4

    .line 122
    .end local v1    # "dims":[I
    .end local v2    # "initValue":D
    :cond_5
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Invalid dims list"

    invoke-direct {v1, v3, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method public static matrixEqual(Lcom/google/appinventor/components/runtime/util/YailMatrix;Lcom/google/appinventor/components/runtime/util/YailMatrix;)Z
    .locals 2
    .param p0, "a"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .param p1, "b"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 434
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static matrixToAlist(Lcom/google/appinventor/components/runtime/util/YailMatrix;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .param p0, "m"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 415
    const/4 v0, 0x0

    new-array v1, v0, [I

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->toYailList(Lcom/google/appinventor/components/runtime/util/YailMatrix;I[I)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public static multiply(Lcom/google/appinventor/components/runtime/util/YailMatrix;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 22
    .param p0, "a"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .param p1, "other"    # Ljava/lang/Object;

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_0

    .line 356
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 357
    .local v2, "s":D
    invoke-static {v0, v2, v3}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->scalarMultiply(Lcom/google/appinventor/components/runtime/util/YailMatrix;D)Lcom/google/appinventor/components/runtime/util/YailMatrix;

    move-result-object v4

    return-object v4

    .line 358
    .end local v2    # "s":D
    :cond_0
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    const-string v3, "Matrix Error"

    if-eqz v2, :cond_6

    .line 359
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 360
    .local v2, "b":Lcom/google/appinventor/components/runtime/util/YailMatrix;
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-object v4, v2, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v4, v4

    if-ne v4, v5, :cond_5

    .line 363
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    .local v4, "aRows":I
    iget-object v7, v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    .line 364
    .local v7, "aCols":I
    iget-object v9, v2, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    aget v9, v9, v6

    .local v9, "bRows":I
    iget-object v10, v2, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    aget v10, v10, v8

    .line 365
    .local v10, "bCols":I
    if-ne v7, v9, :cond_4

    .line 368
    filled-new-array {v4, v10}, [I

    move-result-object v3

    .line 369
    .local v3, "outDims":[I
    mul-int v11, v4, v10

    new-array v11, v11, [D

    .line 370
    .local v11, "out":[D
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_0
    if-gt v12, v4, :cond_3

    .line 371
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_1
    if-gt v13, v10, :cond_2

    .line 372
    const-wide/16 v14, 0x0

    .line 373
    .local v14, "sum":D
    const/16 v16, 0x1

    move/from16 v8, v16

    .local v8, "k":I
    :goto_2
    if-gt v8, v7, :cond_1

    .line 374
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move/from16 v19, v4

    .end local v4    # "aRows":I
    .local v19, "aRows":I
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v17, v4, v6

    const/16 v16, 0x1

    aput-object v18, v4, v16

    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getCell([Ljava/lang/Object;)D

    move-result-wide v17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v4, v0, v6

    aput-object v20, v0, v16

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getCell([Ljava/lang/Object;)D

    move-result-wide v20

    mul-double v17, v17, v20

    add-double v14, v14, v17

    .line 373
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v19

    goto :goto_2

    .end local v19    # "aRows":I
    .restart local v4    # "aRows":I
    :cond_1
    move/from16 v19, v4

    const/16 v16, 0x1

    .line 376
    .end local v4    # "aRows":I
    .end local v8    # "k":I
    .restart local v19    # "aRows":I
    add-int/lit8 v0, v12, -0x1

    mul-int v0, v0, v10

    add-int/lit8 v4, v13, -0x1

    add-int/2addr v0, v4

    aput-wide v14, v11, v0

    .line 371
    .end local v14    # "sum":D
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v19

    goto :goto_1

    .end local v19    # "aRows":I
    .restart local v4    # "aRows":I
    :cond_2
    move/from16 v19, v4

    const/16 v16, 0x1

    .line 370
    .end local v4    # "aRows":I
    .end local v13    # "j":I
    .restart local v19    # "aRows":I
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    .line 379
    .end local v12    # "i":I
    .end local v19    # "aRows":I
    .restart local v4    # "aRows":I
    :cond_3
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    invoke-direct {v0, v3, v11}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>([I[D)V

    return-object v0

    .line 366
    .end local v3    # "outDims":[I
    .end local v11    # "out":[D
    :cond_4
    move/from16 v19, v4

    .end local v4    # "aRows":I
    .restart local v19    # "aRows":I
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inner dimensions must match for multiplication: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2260 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 361
    .end local v7    # "aCols":I
    .end local v9    # "bRows":I
    .end local v10    # "bCols":I
    .end local v19    # "aRows":I
    :cond_5
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v4, "Both operands must be 2-D matrices"

    invoke-direct {v0, v4, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 381
    .end local v2    # "b":Lcom/google/appinventor/components/runtime/util/YailMatrix;
    :cond_6
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot multiply matrix by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public static varargs multiply([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 5
    .param p0, "args"    # [Ljava/lang/Object;

    .line 337
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    aget-object v0, p0, v2

    instance-of v0, v0, Lgnu/lists/LList;

    if-eqz v0, :cond_1

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v0, "flat":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    aget-object v1, p0, v2

    .line 340
    .local v1, "elt":Ljava/lang/Object;
    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v3, :cond_0

    .line 341
    move-object v3, v1

    check-cast v3, Lgnu/lists/Pair;

    .line 342
    .local v3, "p":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 344
    .end local v3    # "p":Lgnu/lists/Pair;
    goto :goto_0

    .line 345
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 347
    .end local v0    # "flat":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1    # "elt":Ljava/lang/Object;
    :cond_1
    aget-object v0, p0, v2

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 348
    .local v0, "product":Lcom/google/appinventor/components/runtime/util/YailMatrix;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 349
    aget-object v2, p0, v1

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->multiply(Lcom/google/appinventor/components/runtime/util/YailMatrix;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailMatrix;

    move-result-object v0

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 351
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static power(Lcom/google/appinventor/components/runtime/util/YailMatrix;I)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 4
    .param p0, "m"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .param p1, "exp"    # I

    .line 394
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ne v0, v2, :cond_1

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    aget v0, v0, v1

    .line 398
    .local v0, "n":I
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->identityMatrix(I)Lcom/google/appinventor/components/runtime/util/YailMatrix;

    move-result-object v1

    .line 399
    .local v1, "result":Lcom/google/appinventor/components/runtime/util/YailMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 400
    invoke-static {v1, p0}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->multiply(Lcom/google/appinventor/components/runtime/util/YailMatrix;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailMatrix;

    move-result-object v1

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 402
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 395
    .end local v0    # "n":I
    .end local v1    # "result":Lcom/google/appinventor/components/runtime/util/YailMatrix;
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "power only valid on square 2D"

    const-string v2, "Matrix Error"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static rotateLeft(Lcom/google/appinventor/components/runtime/util/YailMatrix;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 13
    .param p0, "m"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 263
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    .local v0, "rows":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 264
    .local v3, "cols":I
    new-array v5, v1, [I

    aput v0, v5, v4

    aput v3, v5, v2

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 265
    .local v5, "result":[[D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-gt v6, v3, :cond_1

    .line 266
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    if-gt v7, v0, :cond_0

    .line 267
    add-int/lit8 v8, v6, -0x1

    aget-object v8, v5, v8

    add-int/lit8 v9, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sub-int v11, v3, v6

    add-int/2addr v11, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v10, v12, v2

    aput-object v11, v12, v4

    invoke-virtual {p0, v12}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getCell([Ljava/lang/Object;)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 266
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 265
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 270
    .end local v6    # "i":I
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    invoke-direct {v1, v3, v0, v5}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>(II[[D)V

    return-object v1

    .line 261
    .end local v0    # "rows":I
    .end local v3    # "cols":I
    .end local v5    # "result":[[D
    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "rotateLeft only valid for 2D matrices"

    const-string v2, "Matrix Error"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static rotateRight(Lcom/google/appinventor/components/runtime/util/YailMatrix;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 13
    .param p0, "m"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    .local v0, "rows":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 278
    .local v3, "cols":I
    new-array v5, v1, [I

    aput v0, v5, v4

    aput v3, v5, v2

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 279
    .local v5, "result":[[D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    if-gt v6, v3, :cond_1

    .line 280
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    if-gt v7, v0, :cond_0

    .line 281
    add-int/lit8 v8, v6, -0x1

    aget-object v8, v5, v8

    add-int/lit8 v9, v7, -0x1

    sub-int v10, v0, v7

    add-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v10, v12, v2

    aput-object v11, v12, v4

    invoke-virtual {p0, v12}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getCell([Ljava/lang/Object;)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 280
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 279
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 284
    .end local v6    # "i":I
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    invoke-direct {v1, v3, v0, v5}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>(II[[D)V

    return-object v1

    .line 275
    .end local v0    # "rows":I
    .end local v3    # "cols":I
    .end local v5    # "result":[[D
    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "rotateRight only valid for 2D matrices"

    const-string v2, "Matrix Error"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static scalarMultiply(Lcom/google/appinventor/components/runtime/util/YailMatrix;D)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 5
    .param p0, "m"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .param p1, "s"    # D

    .line 386
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 387
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 388
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    aget-wide v3, v2, v1

    mul-double v3, v3, p1

    aput-wide v3, v0, v1

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    invoke-direct {v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>([I[D)V

    return-object v1
.end method

.method public static subtract(Lcom/google/appinventor/components/runtime/util/YailMatrix;Lcom/google/appinventor/components/runtime/util/YailMatrix;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 7
    .param p0, "a"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .param p1, "b"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 330
    .local v0, "result":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    aget-wide v3, v2, v1

    iget-object v2, p1, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    aget-wide v5, v2, v1

    sub-double/2addr v3, v5

    aput-wide v3, v0, v1

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    invoke-direct {v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>([I[D)V

    return-object v1

    .line 327
    .end local v0    # "result":[D
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "Dimensions must match for subtraction"

    const-string v2, "Matrix Error"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static toYailList(Lcom/google/appinventor/components/runtime/util/YailMatrix;I[I)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7
    .param p0, "m"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .param p1, "depth"    # I
    .param p2, "prefix"    # [I

    .line 419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    aget v0, v0, p1

    .line 420
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 421
    .local v1, "bucket":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_1

    .line 422
    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    .line 423
    .local v3, "next":[I
    array-length v4, p2

    aput v2, v3, v4

    .line 424
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    .line 425
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getFlatIndex([I)I

    move-result v5

    aget-wide v5, v4, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 427
    :cond_0
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->toYailList(Lcom/google/appinventor/components/runtime/util/YailMatrix;I[I)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v3    # "next":[I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public static transpose(Lcom/google/appinventor/components/runtime/util/YailMatrix;)Lcom/google/appinventor/components/runtime/util/YailMatrix;
    .locals 13
    .param p0, "m"    # Lcom/google/appinventor/components/runtime/util/YailMatrix;

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    .local v0, "r":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 210
    .local v3, "c":I
    filled-new-array {v3, v0}, [I

    move-result-object v5

    .line 211
    .local v5, "newDims":[I
    mul-int v6, v0, v3

    new-array v6, v6, [D

    .line 212
    .local v6, "result":[D
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-gt v7, v0, :cond_1

    .line 213
    const/4 v8, 0x1

    .local v8, "j":I
    :goto_1
    if-gt v8, v3, :cond_0

    .line 214
    add-int/lit8 v9, v8, -0x1

    mul-int v9, v9, v0

    add-int/lit8 v10, v7, -0x1

    add-int/2addr v9, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v1, [Ljava/lang/Object;

    aput-object v10, v12, v2

    aput-object v11, v12, v4

    invoke-virtual {p0, v12}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getCell([Ljava/lang/Object;)D

    move-result-wide v10

    aput-wide v10, v6, v9

    .line 213
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 212
    .end local v8    # "j":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 217
    .end local v7    # "i":I
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailMatrix;

    invoke-direct {v1, v5, v6}, Lcom/google/appinventor/components/runtime/util/YailMatrix;-><init>([I[D)V

    return-object v1

    .line 207
    .end local v0    # "r":I
    .end local v3    # "c":I
    .end local v5    # "newDims":[I
    .end local v6    # "result":[D
    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "transpose only valid on 2D matrices"

    const-string v2, "Matrix Error"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public varargs getCell([Ljava/lang/Object;)D
    .locals 6
    .param p1, "rawIndices"    # [Ljava/lang/Object;

    .line 140
    array-length v0, p1

    new-array v0, v0, [I

    .line 141
    .local v0, "indices":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 142
    aget-object v2, p1, v1

    .line 143
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 146
    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v0, v1

    .line 141
    .end local v2    # "o":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .restart local v2    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index not a number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Matrix Access Error"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 148
    .end local v1    # "i":I
    .end local v2    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getFlatIndex([I)I

    move-result v2

    aget-wide v2, v1, v2

    return-wide v2
.end method

.method public getColumn(I)Lgnu/lists/LList;
    .locals 8
    .param p1, "col"    # I

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    .line 181
    .local v0, "rows":I
    new-array v3, v0, [D

    .line 182
    .local v3, "colArr":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 183
    add-int/lit8 v5, v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v5, v7, v2

    const/4 v5, 0x1

    aput-object v6, v7, v5

    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getCell([Ljava/lang/Object;)D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    .end local v4    # "i":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->arrayToLList([D)Lgnu/lists/LList;

    move-result-object v1

    return-object v1

    .line 178
    .end local v0    # "rows":I
    .end local v3    # "colArr":[D
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "getColumn only valid on 2D matrices"

    const-string v2, "Matrix Error"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getDimensions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, "dimList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 191
    .local v4, "d":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .end local v4    # "d":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-object v0
.end method

.method public getRow(I)Lgnu/lists/LList;
    .locals 9
    .param p1, "row"    # I

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    .line 169
    .local v0, "cols":I
    new-array v3, v0, [D

    .line 170
    .local v3, "rowArr":[D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v6, v7, v2

    invoke-virtual {p0, v7}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getCell([Ljava/lang/Object;)D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 170
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    .end local v4    # "j":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->arrayToLList([D)Lgnu/lists/LList;

    move-result-object v1

    return-object v1

    .line 166
    .end local v0    # "cols":I
    .end local v3    # "rowArr":[D
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "getRow only valid on 2D matrices"

    const-string v2, "Matrix Error"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public varargs setCell(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "valueObj"    # Ljava/lang/Object;
    .param p2, "rawIndices"    # [Ljava/lang/Object;

    .line 152
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 153
    .local v0, "value":D
    array-length v2, p2

    new-array v2, v2, [I

    .line 154
    .local v2, "indices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 155
    aget-object v4, p2, v3

    .line 156
    .local v4, "o":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_0

    .line 159
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    aput v5, v2, v3

    .line 154
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index not a number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Matrix Access Error"

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 161
    .end local v3    # "i":I
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->data:[D

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->getFlatIndex([I)I

    move-result v4

    aput-wide v0, v3, v4

    .line 162
    return-void
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 4

    .line 443
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->matrixToAlist(Lcom/google/appinventor/components/runtime/util/YailMatrix;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 444
    .local v0, "asList":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 445
    .end local v0    # "asList":Lcom/google/appinventor/components/runtime/util/YailList;
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Matrix failed to convert to JSON."

    const-string v3, "JSON Creation Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-gt v1, v2, :cond_1

    .line 509
    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    filled-new-array {v1}, [I

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v5, v4}, Lcom/google/appinventor/components/runtime/util/YailMatrix;->buildString(I[I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/YailMatrix;->dims:[I

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    .end local v1    # "i":I
    :cond_1
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
