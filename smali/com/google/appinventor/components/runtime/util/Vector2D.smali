.class public Lcom/google/appinventor/components/runtime/util/Vector2D;
.super Ljava/lang/Object;
.source "Vector2D.java"


# instance fields
.field private x:D

.field private y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->x:D

    .line 25
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->y:D

    .line 26
    return-void
.end method

.method public static addition(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;
    .locals 7
    .param p0, "vector1"    # Lcom/google/appinventor/components/runtime/util/Vector2D;
    .param p1, "vector2"    # Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 103
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Vector2D;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getX()D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getY()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public static difference(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;
    .locals 7
    .param p0, "vector1"    # Lcom/google/appinventor/components/runtime/util/Vector2D;
    .param p1, "vector2"    # Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 92
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Vector2D;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getX()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getX()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getY()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getY()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public static dotProduct(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)D
    .locals 6
    .param p0, "vector1"    # Lcom/google/appinventor/components/runtime/util/Vector2D;
    .param p1, "vector2"    # Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 114
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getX()D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getY()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getY()D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getClosestVector(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/Vector2D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/Vector2D;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/Vector2D;"
        }
    .end annotation

    .line 133
    .local p1, "vectors":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/Vector2D;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 134
    .local v0, "closestVector":Lcom/google/appinventor/components/runtime/util/Vector2D;
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 136
    .local v1, "minDistance":D
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 137
    .local v4, "v":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-static {p0, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;->difference(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/Vector2D;->magnitudeSquared()D

    move-result-wide v5

    .line 138
    .local v5, "distance":D
    cmpg-double v7, v5, v1

    if-gez v7, :cond_0

    .line 139
    move-wide v1, v5

    .line 140
    move-object v0, v4

    .line 142
    .end local v4    # "v":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .end local v5    # "distance":D
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    return-object v0
.end method

.method public getNormalVector()Lcom/google/appinventor/components/runtime/util/Vector2D;
    .locals 5

    .line 81
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Vector2D;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->y:D

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->x:D

    neg-double v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public getX()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->y:D

    return-wide v0
.end method

.method public isGreater(Lcom/google/appinventor/components/runtime/util/Vector2D;)Z
    .locals 5
    .param p1, "that"    # Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 71
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->magnitudeSquared()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->magnitudeSquared()D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public magnitude()D
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->magnitudeSquared()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public magnitudeSquared()D
    .locals 6

    .line 61
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->x:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->x:D

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->y:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->y:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public rotate(D)V
    .locals 8
    .param p1, "angle"    # D

    .line 153
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->x:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->y:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    .line 154
    .local v0, "newX":D
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->x:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->y:D

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    .line 155
    .local v2, "newY":D
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->x:D

    .line 156
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/util/Vector2D;->y:D

    .line 157
    return-void
.end method

.method public unitVector()Lcom/google/appinventor/components/runtime/util/Vector2D;
    .locals 7

    .line 123
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Vector2D;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getX()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->magnitude()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getY()D

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->magnitude()D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;-><init>(DD)V

    return-object v0
.end method
