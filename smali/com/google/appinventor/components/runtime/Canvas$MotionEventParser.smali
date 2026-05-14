.class Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
.super Ljava/lang/Object;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionEventParser"
.end annotation


# static fields
.field public static final FINGER_HEIGHT:I = 0x18

.field public static final FINGER_WIDTH:I = 0x18

.field private static final HALF_FINGER_HEIGHT:I = 0xc

.field private static final HALF_FINGER_WIDTH:I = 0xc

.field private static final UNSET:I = -0x1


# instance fields
.field private drag:Z

.field private final draggedSprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private isDrag:Z

.field private lastX:F

.field private lastY:F

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .line 234
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    .line 262
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 263
    iput v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 266
    iput v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 267
    iput v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 273
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    return-void
.end method


# virtual methods
.method parse(Landroid/view/MotionEvent;)V
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v1

    .line 277
    .local v1, "width":I
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v2

    .line 283
    .local v2, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 284
    .local v3, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 288
    .local v13, "y":F
    new-instance v5, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    float-to-int v6, v3

    add-int/lit8 v6, v6, -0xc

    .line 289
    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v8, v6

    float-to-int v6, v13

    add-int/lit8 v6, v6, -0xc

    .line 290
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v10, v6

    add-int/lit8 v6, v1, -0x1

    float-to-int v12, v3

    add-int/lit8 v12, v12, 0xc

    .line 291
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v14, v6

    add-int/lit8 v6, v2, -0x1

    float-to-int v12, v13

    add-int/lit8 v12, v12, 0xc

    .line 292
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-double v6, v6

    move-wide/from16 v19, v14

    move-object v14, v5

    move-wide v15, v8

    move-wide/from16 v17, v10

    move-wide/from16 v21, v6

    invoke-direct/range {v14 .. v22}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 294
    .local v14, "rect":Lcom/google/appinventor/components/runtime/util/BoundingBox;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/high16 v6, -0x40800000    # -1.0f

    packed-switch v5, :pswitch_data_0

    move-object/from16 v15, p1

    goto/16 :goto_8

    .line 314
    :pswitch_0
    iget v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    iget v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p1

    goto :goto_1

    .line 315
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v15, p1

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Canvas"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_1
    iget-boolean v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    if-nez v5, :cond_2

    iget v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    sub-float v5, v3, v5

    .line 321
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgettapThreshold(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iget v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    sub-float v5, v13, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgettapThreshold(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 322
    goto/16 :goto_8

    .line 325
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 326
    iput-boolean v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 330
    cmpg-float v5, v3, v4

    if-lez v5, :cond_3

    int-to-float v5, v1

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_3

    cmpg-float v4, v13, v4

    if-lez v4, :cond_3

    int-to-float v4, v2

    cmpl-float v4, v13, v4

    if-lez v4, :cond_4

    :cond_3
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetextendMovesOutsideCanvas(Lcom/google/appinventor/components/runtime/Canvas;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 332
    goto/16 :goto_8

    .line 337
    :cond_4
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetsprites(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/Sprite;

    .line 338
    .local v5, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 339
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 340
    invoke-virtual {v5, v14}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 341
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v5    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_5
    goto :goto_2

    .line 346
    :cond_6
    const/4 v4, 0x0

    .line 347
    .local v4, "handled":Z
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/google/appinventor/components/runtime/Sprite;

    .line 348
    .local v16, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 349
    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v7, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iget v8, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iget v9, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move-object/from16 v5, v16

    move v10, v3

    move v11, v13

    invoke-virtual/range {v5 .. v11}, Lcom/google/appinventor/components/runtime/Sprite;->Dragged(FFFFFF)V

    .line 350
    const/4 v4, 0x1

    .line 352
    .end local v16    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_7
    goto :goto_3

    .line 355
    :cond_8
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v7, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    iget v8, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    iget v9, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    move v10, v3

    move v11, v13

    move v12, v4

    invoke-virtual/range {v5 .. v12}, Lcom/google/appinventor/components/runtime/Canvas;->Dragged(FFFFFFZ)V

    .line 356
    iput v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 357
    iput v13, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    .line 358
    goto/16 :goto_8

    .line 364
    .end local v4    # "handled":Z
    :pswitch_1
    move-object/from16 v15, p1

    iget-boolean v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    if-nez v4, :cond_b

    .line 366
    const/4 v4, 0x0

    .line 367
    .restart local v4    # "handled":Z
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/Sprite;

    .line 368
    .local v7, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 369
    invoke-virtual {v7, v3, v13}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 370
    invoke-virtual {v7, v3, v13}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    .line 371
    const/4 v4, 0x1

    .line 373
    .end local v7    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_9
    goto :goto_4

    .line 375
    :cond_a
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v5, v3, v13, v4}, Lcom/google/appinventor/components/runtime/Canvas;->Touched(FFZ)V

    goto :goto_6

    .line 378
    .end local v4    # "handled":Z
    :cond_b
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/Sprite;

    .line 379
    .restart local v5    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 380
    invoke-virtual {v5, v3, v13}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 381
    invoke-virtual {v5, v3, v13}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    .line 383
    .end local v5    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_c
    goto :goto_5

    .line 388
    :cond_d
    :goto_6
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v4, v3, v13}, Lcom/google/appinventor/components/runtime/Canvas;->TouchUp(FF)V

    .line 391
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 392
    iput v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 393
    iput v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 394
    iput v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 395
    iput v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    goto :goto_8

    .line 296
    :pswitch_2
    move-object/from16 v15, p1

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 297
    iput v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    .line 298
    iput v13, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    .line 299
    iput v3, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastX:F

    .line 300
    iput v13, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->lastY:F

    .line 301
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->drag:Z

    .line 302
    iput-boolean v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->isDrag:Z

    .line 303
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetsprites(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/Sprite;

    .line 304
    .restart local v5    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5, v14}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 305
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->draggedSprites:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v7, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    invoke-virtual {v5, v6, v7}, Lcom/google/appinventor/components/runtime/Sprite;->TouchDown(FF)V

    .line 308
    .end local v5    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_e
    goto :goto_7

    .line 309
    :cond_f
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget v5, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startX:F

    iget v6, v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->startY:F

    invoke-virtual {v4, v5, v6}, Lcom/google/appinventor/components/runtime/Canvas;->TouchDown(FF)V

    .line 310
    nop

    .line 398
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
