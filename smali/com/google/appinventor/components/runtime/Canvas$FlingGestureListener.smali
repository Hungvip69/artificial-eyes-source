.class Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlingGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .line 1721
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 29
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 1725
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1726
    .local v1, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v11, v3

    .line 1729
    .local v11, "y":F
    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v12, p3, v3

    .line 1730
    .local v12, "vx":F
    div-float v13, p4, v3

    .line 1732
    .local v13, "vy":F
    mul-float v3, v12, v12

    mul-float v4, v13, v13

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v14, v3

    .line 1733
    .local v14, "speed":F
    float-to-double v3, v13

    float-to-double v5, v12

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v15, v3

    .line 1735
    .local v15, "heading":F
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v16

    .line 1736
    .local v16, "width":I
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v17

    .line 1740
    .local v17, "height":I
    new-instance v3, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    float-to-int v4, v1

    add-int/lit8 v4, v4, -0xc

    .line 1741
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-double v4, v4

    float-to-int v6, v11

    add-int/lit8 v6, v6, -0xc

    .line 1742
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v6, v2

    add-int/lit8 v2, v16, -0x1

    float-to-int v8, v1

    add-int/lit8 v8, v8, 0xc

    .line 1743
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v8, v2

    add-int/lit8 v2, v17, -0x1

    float-to-int v10, v11

    add-int/lit8 v10, v10, 0xc

    .line 1744
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v27, v12

    move/from16 v28, v13

    .end local v12    # "vx":F
    .end local v13    # "vy":F
    .local v27, "vx":F
    .local v28, "vy":F
    int-to-double v12, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v12

    invoke-direct/range {v18 .. v26}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    move-object v2, v3

    .line 1746
    .local v2, "rect":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    const/4 v3, 0x0

    .line 1748
    .local v3, "spriteHandledFling":Z
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetsprites(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v12, v3

    .end local v3    # "spriteHandledFling":Z
    .local v12, "spriteHandledFling":Z
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/google/appinventor/components/runtime/Sprite;

    .line 1749
    .local v13, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v13}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v13}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1750
    invoke-virtual {v13, v2}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1751
    move-object v3, v13

    move v4, v1

    move v5, v11

    move v6, v14

    move v7, v15

    move/from16 v8, v27

    move/from16 v9, v28

    invoke-virtual/range {v3 .. v9}, Lcom/google/appinventor/components/runtime/Sprite;->Flung(FFFFFF)V

    .line 1752
    const/4 v3, 0x1

    move v12, v3

    .line 1754
    .end local v13    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_0
    goto :goto_0

    .line 1755
    :cond_1
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    move v4, v1

    move v5, v11

    move v6, v14

    move v7, v15

    move/from16 v8, v27

    move/from16 v9, v28

    move v10, v12

    invoke-virtual/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/Canvas;->Flung(FFFFFFZ)V

    .line 1756
    const/4 v3, 0x1

    return v3
.end method
