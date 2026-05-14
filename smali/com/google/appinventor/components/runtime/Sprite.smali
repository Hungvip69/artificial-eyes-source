.class public abstract Lcom/google/appinventor/components/runtime/Sprite;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "Sprite.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:Z = true

.field private static final DEFAULT_HEADING:I = 0x0

.field private static final DEFAULT_INTERVAL:I = 0x64

.field protected static final DEFAULT_ORIGIN:Ljava/lang/String; = "(0.0, 0.0)"

.field protected static final DEFAULT_ORIGIN_AT_CENTER:Z = false

.field private static final DEFAULT_SPEED:F = 0.0f

.field protected static final DEFAULT_U:D = 0.0

.field protected static final DEFAULT_V:D = 0.0

.field private static final DEFAULT_VISIBLE:Z = true

.field private static final DEFAULT_Z:D = 1.0

.field private static final DIRECTION_NONE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "Sprite"


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field protected final canvas:Lcom/google/appinventor/components/runtime/Canvas;

.field protected form:Lcom/google/appinventor/components/runtime/Form;

.field protected heading:D

.field protected headingCos:D

.field protected headingRadians:D

.field protected headingSin:D

.field protected initialized:Z

.field protected interval:I

.field protected originAtCenter:Z

.field private final registeredCollisions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field protected speed:F

.field private final timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field protected u:D

.field protected userHeading:D

.field protected v:D

.field protected visible:Z

.field protected xLeft:D

.field protected xOrigin:D

.field protected yOrigin:D

.field protected yTop:D

.field protected zLayer:D


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V

    .line 166
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 123
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 124
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    .line 127
    instance-of v2, p1, Lcom/google/appinventor/components/runtime/Canvas;

    if-eqz v2, :cond_0

    .line 130
    move-object v2, p1

    check-cast v2, Lcom/google/appinventor/components/runtime/Canvas;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    .line 131
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/Canvas;->addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 134
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    .line 137
    new-instance v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/16 v3, 0x64

    invoke-direct {v2, p0, v1, v3, p2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 139
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 142
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    .line 143
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 144
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled(Z)V

    .line 145
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Interval(I)V

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->Speed(F)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible(Z)V

    .line 148
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z(D)V

    .line 149
    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->U(D)V

    .line 150
    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->V(D)V

    .line 152
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 153
    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sprite constructor called with container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static coerceToDouble(Ljava/lang/Object;)D
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 773
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 774
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 777
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1
.end method

.method public static colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 2
    .param p0, "sprite1"    # Lcom/google/appinventor/components/runtime/Sprite;
    .param p1, "sprite2"    # Lcom/google/appinventor/components/runtime/Sprite;

    .line 1035
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/Ball;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/appinventor/components/runtime/Ball;

    if-eqz v0, :cond_0

    .line 1036
    move-object v0, p0

    check-cast v0, Lcom/google/appinventor/components/runtime/Ball;

    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/Ball;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->collidingBalls(Lcom/google/appinventor/components/runtime/Ball;Lcom/google/appinventor/components/runtime/Ball;)Z

    move-result v0

    return v0

    .line 1037
    :cond_0
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/google/appinventor/components/runtime/ImageSprite;

    if-eqz v0, :cond_1

    .line 1038
    move-object v0, p0

    check-cast v0, Lcom/google/appinventor/components/runtime/ImageSprite;

    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/ImageSprite;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->collidingImageSprites(Lcom/google/appinventor/components/runtime/ImageSprite;Lcom/google/appinventor/components/runtime/ImageSprite;)Z

    move-result v0

    return v0

    .line 1040
    :cond_1
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/Ball;

    if-eqz v0, :cond_2

    .line 1041
    move-object v0, p0

    check-cast v0, Lcom/google/appinventor/components/runtime/Ball;

    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/ImageSprite;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->collidingBallAndImageSprite(Lcom/google/appinventor/components/runtime/Ball;Lcom/google/appinventor/components/runtime/ImageSprite;)Z

    move-result v0

    return v0

    .line 1043
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/Ball;

    move-object v1, p0

    check-cast v1, Lcom/google/appinventor/components/runtime/ImageSprite;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->collidingBallAndImageSprite(Lcom/google/appinventor/components/runtime/Ball;Lcom/google/appinventor/components/runtime/ImageSprite;)Z

    move-result v0

    return v0
.end method

.method private static collidingBallAndImageSprite(Lcom/google/appinventor/components/runtime/Ball;Lcom/google/appinventor/components/runtime/ImageSprite;)Z
    .locals 18
    .param p0, "ball"    # Lcom/google/appinventor/components/runtime/Ball;
    .param p1, "imageSprite"    # Lcom/google/appinventor/components/runtime/ImageSprite;

    .line 1089
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/ImageSprite;->getNormalAxes()Ljava/util/List;

    move-result-object v2

    .line 1091
    .local v2, "axes":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/Vector2D;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/ImageSprite;->getExtremityVectors()Ljava/util/List;

    move-result-object v3

    .line 1093
    .local v3, "imageCorners":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/Vector2D;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Ball;->getCenterVector()Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v4

    .line 1095
    .local v4, "ballCenter":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getClosestVector(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v5

    .line 1096
    .local v5, "closestCorner":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;->difference(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v6

    .line 1097
    .local v6, "ballCenterToClosestCorner":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 1100
    .local v8, "a":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-virtual {v1, v8}, Lcom/google/appinventor/components/runtime/ImageSprite;->getMinProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v9

    .line 1101
    .local v9, "minA":D
    invoke-virtual {v1, v8}, Lcom/google/appinventor/components/runtime/ImageSprite;->getMaxProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v11

    .line 1102
    .local v11, "maxA":D
    invoke-virtual {v0, v8}, Lcom/google/appinventor/components/runtime/Ball;->getMinProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v13

    .line 1103
    .local v13, "minB":D
    invoke-virtual {v0, v8}, Lcom/google/appinventor/components/runtime/Ball;->getMaxProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v15

    .line 1104
    .local v15, "maxB":D
    cmpg-double v17, v11, v13

    if-ltz v17, :cond_1

    cmpg-double v17, v15, v9

    if-gez v17, :cond_0

    goto :goto_1

    .line 1107
    .end local v8    # "a":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .end local v9    # "minA":D
    .end local v11    # "maxA":D
    .end local v13    # "minB":D
    .end local v15    # "maxB":D
    :cond_0
    goto :goto_0

    .line 1105
    .restart local v8    # "a":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .restart local v9    # "minA":D
    .restart local v11    # "maxA":D
    .restart local v13    # "minB":D
    .restart local v15    # "maxB":D
    :cond_1
    :goto_1
    const/4 v7, 0x0

    return v7

    .line 1109
    .end local v8    # "a":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .end local v9    # "minA":D
    .end local v11    # "maxA":D
    .end local v13    # "minB":D
    .end local v15    # "maxB":D
    :cond_2
    const/4 v7, 0x1

    return v7
.end method

.method private static collidingBalls(Lcom/google/appinventor/components/runtime/Ball;Lcom/google/appinventor/components/runtime/Ball;)Z
    .locals 18
    .param p0, "ball1"    # Lcom/google/appinventor/components/runtime/Ball;
    .param p1, "ball2"    # Lcom/google/appinventor/components/runtime/Ball;

    .line 1051
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Ball;->Width()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 1052
    .local v2, "xCenter1":D
    iget-wide v4, v0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Ball;->Height()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    .line 1054
    .local v4, "yCenter1":D
    iget-wide v8, v1, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/Ball;->Width()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v6

    add-double/2addr v8, v10

    .line 1055
    .local v8, "xCenter2":D
    iget-wide v10, v1, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/Ball;->Height()I

    move-result v12

    int-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v6

    add-double/2addr v10, v12

    .line 1057
    .local v10, "yCenter2":D
    sub-double v12, v2, v8

    sub-double v14, v2, v8

    mul-double v12, v12, v14

    sub-double v14, v4, v10

    sub-double v16, v4, v10

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 1059
    .local v12, "centerToCenterDistanceSquared":D
    nop

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Ball;->Radius()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/Ball;->Radius()I

    move-result v15

    add-int/2addr v14, v15

    int-to-double v14, v14

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpg-double v14, v12, v6

    if-gtz v14, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1059
    :goto_0
    return v6
.end method

.method private static collidingImageSprites(Lcom/google/appinventor/components/runtime/ImageSprite;Lcom/google/appinventor/components/runtime/ImageSprite;)Z
    .locals 12
    .param p0, "sprite1"    # Lcom/google/appinventor/components/runtime/ImageSprite;
    .param p1, "sprite2"    # Lcom/google/appinventor/components/runtime/ImageSprite;

    .line 1069
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->getNormalAxes()Ljava/util/List;

    move-result-object v0

    .line 1070
    .local v0, "axes":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/Vector2D;>;"
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ImageSprite;->getNormalAxes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1072
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 1073
    .local v2, "a":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ImageSprite;->getMinProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v3

    .line 1074
    .local v3, "minA":D
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ImageSprite;->getMaxProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v5

    .line 1075
    .local v5, "maxA":D
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/ImageSprite;->getMinProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v7

    .line 1076
    .local v7, "minB":D
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/ImageSprite;->getMaxProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v9

    .line 1077
    .local v9, "maxB":D
    cmpg-double v11, v5, v7

    if-ltz v11, :cond_1

    cmpg-double v11, v9, v3

    if-gez v11, :cond_0

    goto :goto_1

    .line 1080
    .end local v2    # "a":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .end local v3    # "minA":D
    .end local v5    # "maxA":D
    .end local v7    # "minB":D
    .end local v9    # "maxB":D
    :cond_0
    goto :goto_0

    .line 1078
    .restart local v2    # "a":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .restart local v3    # "minA":D
    .restart local v5    # "maxA":D
    .restart local v7    # "minB":D
    .restart local v9    # "maxB":D
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 1082
    .end local v2    # "a":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .end local v3    # "minA":D
    .end local v5    # "maxA":D
    .end local v7    # "minB":D
    .end local v9    # "maxB":D
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private final overEastEdge(I)Z
    .locals 5
    .param p1, "canvasWidth"    # I

    .line 1003
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final overNorthEdge()Z
    .locals 5

    .line 1007
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final overSouthEdge(I)Z
    .locals 5
    .param p1, "canvasHeight"    # I

    .line 1011
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final overWestEdge()Z
    .locals 5

    .line 999
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateX(D)V
    .locals 2
    .param p1, "x"    # D

    .line 344
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    .line 345
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->xOriginToLeft(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 346
    return-void
.end method

.method private updateY(D)V
    .locals 2
    .param p1, "y"    # D

    .line 369
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->yOriginToTop(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 371
    return-void
.end method


# virtual methods
.method public Bounce(I)V
    .locals 1
    .param p1, "edge"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Direction;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Makes the %type% bounce, as if off a wall. For normal bouncing, the edge argument should be the one returned by EdgeReached."
    .end annotation

    .line 658
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/Direction;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    .line 659
    .local v0, "dir":Lcom/google/appinventor/components/common/Direction;
    if-nez v0, :cond_0

    .line 660
    return-void

    .line 662
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->BounceAbstract(Lcom/google/appinventor/components/common/Direction;)V

    .line 663
    return-void
.end method

.method public BounceAbstract(Lcom/google/appinventor/components/common/Direction;)V
    .locals 13
    .param p1, "edge"    # Lcom/google/appinventor/components/common/Direction;

    .line 681
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 684
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v2

    .line 685
    .local v0, "normalizedAngle":D
    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    .line 686
    add-double/2addr v0, v2

    .line 691
    :cond_0
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    const-wide v7, 0x4070e00000000000L    # 270.0

    const-wide v9, 0x4056800000000000L    # 90.0

    const-wide v11, 0x4066800000000000L    # 180.0

    if-ne p1, v6, :cond_1

    cmpg-double v6, v0, v9

    if-ltz v6, :cond_2

    cmpl-double v6, v0, v7

    if-gtz v6, :cond_2

    :cond_1
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_3

    cmpl-double v6, v0, v9

    if-lez v6, :cond_3

    cmpg-double v6, v0, v7

    if-gez v6, :cond_3

    .line 695
    :cond_2
    sub-double/2addr v11, v0

    invoke-virtual {p0, v11, v12}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0

    .line 696
    :cond_3
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_4

    cmpl-double v6, v0, v4

    if-lez v6, :cond_4

    cmpg-double v6, v0, v11

    if-ltz v6, :cond_5

    :cond_4
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_6

    cmpl-double v6, v0, v11

    if-lez v6, :cond_6

    .line 699
    :cond_5
    sub-double/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    goto :goto_0

    .line 700
    :cond_6
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_7

    cmpl-double v2, v0, v4

    if-lez v2, :cond_7

    cmpg-double v2, v0, v9

    if-ltz v2, :cond_a

    :cond_7
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_8

    cmpl-double v2, v0, v9

    if-lez v2, :cond_8

    cmpg-double v2, v0, v11

    if-ltz v2, :cond_a

    :cond_8
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_9

    cmpl-double v2, v0, v11

    if-lez v2, :cond_9

    cmpg-double v2, v0, v7

    if-ltz v2, :cond_a

    :cond_9
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_b

    cmpl-double v2, v0, v7

    if-lez v2, :cond_b

    .line 707
    :cond_a
    add-double/2addr v11, v0

    invoke-virtual {p0, v11, v12}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 709
    :cond_b
    :goto_0
    return-void
.end method

.method public CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 2
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 483
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "CollidedWith"

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    :cond_0
    return-void
.end method

.method public CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 1
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Indicates whether a collision has been registered between this %type% and the passed sprite (Ball or ImageSprite)."
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Dragged(FFFFFF)V
    .locals 8
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "prevX"    # F
    .param p4, "prevY"    # F
    .param p5, "currentX"    # F
    .param p6, "currentY"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a %type% is dragged. On all calls, the starting coordinates are where the screen was first touched, and the \"current\" coordinates describe the endpoint of the current line segment. On the first call within a given drag, the \"previous\" coordinates are the same as the starting coordinates; subsequently, they are the \"current\" coordinates from the prior call. Note that the %type% won\'t actually move anywhere in response to the Dragged event unless MoveTo is explicitly called. For smooth movement, each of its coordinates should be set to the sum of its initial value and the difference between its current and previous values."
    .end annotation

    .line 518
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    const-string v0, "Dragged"

    invoke-virtual {p0, p0, v0, v6}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    return-void
.end method

.method public EdgeReached(I)V
    .locals 1
    .param p1, "edge"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Direction;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the %type% reaches an edge of the screen. If Bounce is then called with that edge, the %type% will appear to bounce off of the edge it reached. Edge here is represented as an integer that indicates one of eight directions north (1), northeast (2), east (3), southeast (4), south (-1), southwest (-2), west (-3), and northwest (-4)."
    .end annotation

    .line 536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/Direction;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    .line 537
    .local v0, "dir":Lcom/google/appinventor/components/common/Direction;
    if-nez v0, :cond_0

    .line 538
    return-void

    .line 540
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V

    .line 541
    return-void
.end method

.method public EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V
    .locals 3
    .param p1, "edge"    # Lcom/google/appinventor/components/common/Direction;

    .line 549
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "EdgeReached"

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 203
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Controls whether the %type% moves and can be interacted with through collisions, dragging, touching, and flinging."
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public Flung(FFFFFF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "speed"    # F
    .param p4, "heading"    # F
    .param p5, "xvel"    # F
    .param p6, "yvel"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a fling gesture (quick swipe) is made on an enabled %type%. This provides the x and y coordinates of the start of the fling (relative to the upper left of the canvas), the speed (pixels per millisecond), the heading (-180 to 180 degrees), and the x and y velocity components of the fling\'s vector."
    .end annotation

    .line 607
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    const-string v0, "Flung"

    invoke-virtual {p0, p0, v0, v6}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    return-void
.end method

.method public Heading()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the %type%\'s heading in degrees above the positive x-axis.  Zero degrees is toward the right of the screen; 90 degrees is toward the top of the screen."
    .end annotation

    .line 216
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    return-wide v0
.end method

.method public Heading(D)V
    .locals 2
    .param p1, "userHeading"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 232
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    .line 234
    neg-double v0, p1

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    .line 235
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    .line 236
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    .line 237
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    .line 239
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 240
    return-void
.end method

.method public Initialize()V
    .locals 1

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 171
    return-void
.end method

.method public Interval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The interval in milliseconds at which the %type%\'s position is updated.  For example, if the interval is 50 and the speed is 10, then every 50 milliseconds the sprite will move 10 pixels in the heading direction."
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public Interval(I)V
    .locals 1
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    .line 269
    return-void
.end method

.method public MoveIntoBounds()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the %type% back in bounds if part of it extends out of bounds, having no effect otherwise. If the %type% is too wide to fit on the canvas, this aligns the left side of the %type% with the left side of the canvas. If the %type% is too tall to fit on the canvas, this aligns the top side of the %type% with the top side of the canvas."
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->moveIntoBounds(II)V

    .line 744
    return-void
.end method

.method public MoveTo(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 754
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->updateX(D)V

    .line 755
    invoke-direct {p0, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->updateY(D)V

    .line 756
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 757
    return-void
.end method

.method public MoveToPoint(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the origin of %type% to the position of the cooordinates given  by the list formatted as [x-coordinate, y-coordinate]."
    .end annotation

    .line 769
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Sprite;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Sprite;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    .line 770
    return-void
.end method

.method public NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 2
    .param p1, "other"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a pair of sprites (Balls and ImageSprites) are no longer colliding."
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 568
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "NoLongerCollidingWith"

    invoke-virtual {p0, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    return-void
.end method

.method protected OriginAtCenter(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 411
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    .line 412
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    .line 413
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->v:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->u:D

    goto :goto_0

    .line 415
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->v:D

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->u:D

    .line 417
    :goto_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->xOriginToLeft(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 418
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->yOriginToTop(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 419
    return-void
.end method

.method public PointInDirection(DD)V
    .locals 4
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the heading of the %type% toward the point with the coordinates (x, y)."
    .end annotation

    .line 808
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    sub-double v0, p3, v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    sub-double v2, p1, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 809
    return-void
.end method

.method public PointTowards(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6
    .param p1, "target"    # Lcom/google/appinventor/components/runtime/Sprite;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turns the %type% to point towards a designated target sprite (Ball or ImageSprite). The new heading will be parallel to the line joining the origins of the two sprites."
    .end annotation

    .line 795
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 796
    return-void
.end method

.method public Speed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The speed at which the %type% moves. The %type% moves this many pixels every interval if enabled."
    .end annotation

    .line 299
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    return v0
.end method

.method public Speed(F)V
    .locals 0
    .param p1, "speed"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of pixels that the %type% should move every interval, if enabled."
    .end annotation

    .line 285
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    .line 286
    return-void
.end method

.method public TouchDown(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user begins touching an enabled %type% (placing their finger on a %type% and leaving it there). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    .line 639
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "TouchDown"

    invoke-virtual {p0, p0, v0, v2}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    return-void
.end method

.method public TouchUp(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user stops touching an enabled %type% (lifting their finger after a TouchDown event). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    .line 623
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "TouchUp"

    invoke-virtual {p0, p0, v0, v2}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    return-void
.end method

.method public Touched(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user touches an enabled %type% and then immediately lifts their finger. The provided x and y coordinates are relative to the upper left of the canvas."
    .end annotation

    .line 583
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "Touched"

    invoke-virtual {p0, p0, v0, v2}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    return-void
.end method

.method protected U()D
    .locals 2

    .line 432
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->u:D

    return-wide v0
.end method

.method protected U(D)V
    .locals 2
    .param p1, "u"    # D

    .line 426
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->u:D

    .line 427
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->xOriginToLeft(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 428
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 429
    return-void
.end method

.method protected V()D
    .locals 2

    .line 442
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->v:D

    return-wide v0
.end method

.method protected V(D)V
    .locals 2
    .param p1, "v"    # D

    .line 436
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->v:D

    .line 437
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->yOriginToTop(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 438
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 439
    return-void
.end method

.method public Visible(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 324
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 325
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 326
    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the %type% is visible."
    .end annotation

    .line 310
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    return v0
.end method

.method protected X()D
    .locals 2

    .line 329
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    return-wide v0
.end method

.method public X(D)V
    .locals 0
    .param p1, "x"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->updateX(D)V

    .line 354
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 355
    return-void
.end method

.method protected Y()D
    .locals 2

    .line 382
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    return-wide v0
.end method

.method public Y(D)V
    .locals 0
    .param p1, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->updateY(D)V

    .line 378
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 379
    return-void
.end method

.method public Z()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "How the %type% should be layered relative to other Balls and ImageSprites, with higher-numbered layers in front of lower-numbered layers."
    .end annotation

    .line 405
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    return-wide v0
.end method

.method public Z(D)V
    .locals 1
    .param p1, "layer"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 397
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    .line 398
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->changeSpriteLayer(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 399
    return-void
.end method

.method public alarm()V
    .locals 2

    .line 1161
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1162
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->updateCoordinates()V

    .line 1163
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 1165
    :cond_0
    return-void
.end method

.method public containsPoint(DD)Z
    .locals 4
    .param p1, "qx"    # D
    .param p3, "qy"    # D

    .line 1147
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v2, p3, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 1148
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    cmpg-double v2, p3, v0

    if-gez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1147
    :goto_0
    return v0
.end method

.method public getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;
    .locals 14
    .param p1, "border"    # I

    .line 1023
    new-instance v9, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v1, v0, v2

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    int-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    iget-wide v5, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 1024
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    int-to-double v7, v0

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v7

    int-to-double v10, p1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v10

    iget-wide v10, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v0

    int-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    sub-double/2addr v10, v7

    int-to-double v7, p1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v10

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 1023
    return-object v9
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdge()I
    .locals 2

    .line 844
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    .line 845
    .local v0, "edge":Lcom/google/appinventor/components/common/Direction;
    if-nez v0, :cond_0

    .line 846
    const/4 v1, 0x0

    return v1

    .line 848
    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method protected hitEdge(II)I
    .locals 2
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .line 859
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    .line 860
    .local v0, "edge":Lcom/google/appinventor/components/common/Direction;
    if-nez v0, :cond_0

    .line 861
    const/4 v1, 0x0

    return v1

    .line 863
    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method protected hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    .line 875
    const/4 v0, 0x0

    return-object v0

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;
    .locals 5
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .line 889
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overWestEdge()Z

    move-result v0

    .line 890
    .local v0, "west":Z
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overNorthEdge()Z

    move-result v1

    .line 891
    .local v1, "north":Z
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->overEastEdge(I)Z

    move-result v2

    .line 892
    .local v2, "east":Z
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->overSouthEdge(I)Z

    move-result v3

    .line 894
    .local v3, "south":Z
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 895
    const/4 v4, 0x0

    return-object v4

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 900
    if-eqz v0, :cond_3

    .line 901
    if-eqz v1, :cond_1

    .line 902
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 903
    :cond_1
    if-eqz v3, :cond_2

    .line 904
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 906
    :cond_2
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 909
    :cond_3
    if-eqz v2, :cond_6

    .line 910
    if-eqz v1, :cond_4

    .line 911
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 912
    :cond_4
    if-eqz v3, :cond_5

    .line 913
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 915
    :cond_5
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 918
    :cond_6
    if-eqz v1, :cond_7

    .line 919
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    return-object v4

    .line 921
    :cond_7
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    return-object v4
.end method

.method public intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 11
    .param p1, "rect"    # Lcom/google/appinventor/components/runtime/util/BoundingBox;

    .line 1120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v1

    .line 1121
    .local v1, "rect1":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1122
    return v0

    .line 1128
    :cond_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v2

    .local v2, "x":D
    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gez v6, :cond_3

    .line 1129
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v4

    .local v4, "y":D
    :goto_1
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v4, v6

    if-gez v10, :cond_2

    .line 1130
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1131
    const/4 v0, 0x1

    return v0

    .line 1129
    :cond_1
    add-double/2addr v4, v8

    goto :goto_1

    .line 1128
    .end local v4    # "y":D
    :cond_2
    add-double/2addr v2, v8

    goto :goto_0

    .line 1135
    .end local v2    # "x":D
    :cond_3
    return v0
.end method

.method protected final moveIntoBounds(II)V
    .locals 6
    .param p1, "canvasWidth"    # I
    .param p2, "canvasHeight"    # I

    .line 932
    const/4 v0, 0x0

    .line 938
    .local v0, "moved":Z
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v1

    const-wide/16 v2, 0x0

    if-le v1, p1, :cond_0

    .line 942
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_2

    .line 943
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 944
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToOrigin(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    .line 945
    const/4 v0, 0x1

    goto :goto_0

    .line 947
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overWestEdge()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 949
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToOrigin(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    .line 950
    const/4 v0, 0x1

    goto :goto_0

    .line 951
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->overEastEdge(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v1

    sub-int v1, p1, v1

    int-to-double v4, v1

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 953
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->xLeftToOrigin(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    .line 954
    const/4 v0, 0x1

    .line 959
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v1

    if-le v1, p2, :cond_3

    .line 963
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_5

    .line 964
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 965
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToOrigin(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    .line 966
    const/4 v0, 0x1

    goto :goto_1

    .line 968
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->overNorthEdge()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 969
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 970
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToOrigin(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    .line 971
    const/4 v0, 0x1

    goto :goto_1

    .line 972
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->overSouthEdge(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 973
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v1

    sub-int v1, p2, v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 974
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/Sprite;->yTopToOrigin(D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    .line 975
    const/4 v0, 0x1

    .line 979
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 980
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    .line 982
    :cond_6
    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 1186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 1187
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 1179
    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method protected varargs postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;
    .param p2, "eventName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sprite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Sprite$1;-><init>(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 467
    return-void
.end method

.method protected registerChange()V
    .locals 2

    .line 824
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-nez v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 827
    return-void

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    .line 830
    .local v0, "edge":Lcom/google/appinventor/components/common/Direction;
    if-eqz v0, :cond_1

    .line 831
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V

    .line 833
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Canvas;->registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 834
    return-void
.end method

.method protected updateCoordinates()V
    .locals 6

    .line 989
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    .line 990
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xOrigin:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->xOriginToLeft(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 991
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    .line 992
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yOrigin:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->yOriginToTop(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 993
    return-void
.end method

.method protected xLeftToOrigin(D)D
    .locals 4
    .param p1, "xLeft"    # D

    .line 334
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->u:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    add-double/2addr v0, p1

    return-wide v0
.end method

.method protected xOriginToLeft(D)D
    .locals 4
    .param p1, "xOrigin"    # D

    .line 338
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->u:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    sub-double v0, p1, v0

    return-wide v0
.end method

.method protected yOriginToTop(D)D
    .locals 4
    .param p1, "yOrigin"    # D

    .line 363
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->v:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    sub-double v0, p1, v0

    return-wide v0
.end method

.method protected yTopToOrigin(D)D
    .locals 4
    .param p1, "yTop"    # D

    .line 359
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->v:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    add-double/2addr v0, p1

    return-wide v0
.end method
