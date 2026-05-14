.class final Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
.super Landroid/view/View;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CanvasView"
.end annotation


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private completeBitmap:Landroid/graphics/Bitmap;

.field private scaledBackgroundBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method static bridge synthetic -$$Nest$fgetcanvas(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcompleteBitmap(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearDrawingLayer(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateBitmap(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdrawTextAtAngle(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->drawTextAtAngle(Ljava/lang/String;IIF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBackgroundPixelColor(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPixelColor(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getPixelColor(II)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .line 425
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    .line 426
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 427
    const/16 p1, 0x30

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x20

    invoke-static {v1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 430
    new-instance p1, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    .line 431
    return-void
.end method

.method private clearDrawingLayer()V
    .locals 3

    .line 643
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 644
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 645
    return-void
.end method

.method private createBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .line 438
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getWidth()I

    move-result v0

    .line 439
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getHeight()I

    move-result v1

    .line 440
    .local v1, "height":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 441
    .local v2, "currentBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 442
    .local v3, "c":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->layout(IIII)V

    .line 443
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->draw(Landroid/graphics/Canvas;)V

    .line 444
    return-object v2
.end method

.method private drawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "angle"    # F

    .line 661
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 662
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    neg-float v1, p4

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 663
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p2

    int-to-float v2, p3

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetpaint(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 664
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 665
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 666
    return-void
.end method

.method private getBackgroundPixelColor(II)I
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 671
    const v0, 0xffffff

    if-ltz p1, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_5

    if-ltz p2, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 672
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 679
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 680
    .local v2, "color":I
    if-eqz v2, :cond_1

    .line 681
    return v2

    .line 686
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 687
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 688
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 689
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 690
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 688
    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 693
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 694
    .end local v2    # "color":I
    .local v0, "color":I
    return v0

    .line 698
    .end local v0    # "color":I
    .restart local v2    # "color":I
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundColor(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-eqz v3, :cond_4

    .line 699
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundColor(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 701
    :cond_4
    return v0

    .line 702
    .end local v2    # "color":I
    :catch_0
    move-exception v2

    .line 704
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-array v1, v1, [Ljava/lang/Object;

    .line 705
    const-string v3, "Returning COLOR_NONE (exception) from getBackgroundPixelColor."

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 704
    const-string v3, "Canvas"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return v0

    .line 673
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    :goto_0
    return v0
.end method

.method private getPixelColor(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 712
    const v0, 0xffffff

    if-ltz p1, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_5

    if-ltz p2, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 713
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_2

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, "anySpritesVisible":Z
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetsprites(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 722
    .local v3, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 723
    const/4 v1, 0x1

    .line 724
    goto :goto_1

    .line 726
    .end local v3    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_1
    goto :goto_0

    .line 727
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 728
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getBackgroundPixelColor(II)I

    move-result v0

    return v0

    .line 736
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->createBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeBitmap:Landroid/graphics/Bitmap;

    .line 741
    .end local v1    # "anySpritesVisible":Z
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 742
    :catch_0
    move-exception v1

    .line 744
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 745
    const-string v3, "Returning COLOR_NONE (exception) from getPixelColor."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 744
    const-string v3, "Canvas"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return v0

    .line 714
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    :goto_2
    return v0
.end method

.method private getSize(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "preferredSize"    # I

    .line 549
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 550
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 552
    .local v1, "specSize":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 554
    move v2, v1

    .local v2, "result":I
    goto :goto_0

    .line 557
    .end local v2    # "result":I
    :cond_0
    move v2, p2

    .line 558
    .restart local v2    # "result":I
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_1

    .line 560
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 564
    :cond_1
    :goto_0
    return v2
.end method

.method private setBackground()V
    .locals 4

    .line 629
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 630
    .local v0, "setDraw":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundImagePath(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 631
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundColor(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundColor(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v3

    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 636
    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 637
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundColor(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundColor(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v3

    :cond_2
    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v0, v1

    .line 639
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 640
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas0"    # Landroid/graphics/Canvas;

    .line 449
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->completeBitmap:Landroid/graphics/Bitmap;

    .line 452
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 456
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetsprites(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    .line 461
    .local v1, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->onDraw(Landroid/graphics/Canvas;)V

    .line 462
    .end local v1    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    goto :goto_0

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fputdrawn(Lcom/google/appinventor/components/runtime/Canvas;Z)V

    .line 464
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 534
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 537
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 538
    .local v1, "preferredWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 539
    .local v0, "preferredHeight":I
    goto :goto_0

    .line 540
    .end local v0    # "preferredHeight":I
    .end local v1    # "preferredWidth":I
    :cond_0
    const/16 v1, 0x20

    .line 541
    .restart local v1    # "preferredWidth":I
    const/16 v0, 0x30

    .line 543
    .restart local v0    # "preferredHeight":I
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getSize(II)I

    move-result v2

    .line 544
    invoke-direct {p0, p2, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getSize(II)I

    move-result v3

    .line 543
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setMeasuredDimension(II)V

    .line 545
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .line 468
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 469
    .local v0, "oldBitmapWidth":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 470
    .local v1, "oldBitmapHeight":I
    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_2

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 485
    .local v2, "oldBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, p1, p2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 487
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 489
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 493
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    goto :goto_0

    .line 498
    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    .line 502
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    .line 505
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v6

    .line 506
    .local v4, "src":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, p1

    int-to-float v8, p2

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 507
    .local v6, "dst":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v2, v4, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v4    # "src":Landroid/graphics/Rect;
    .end local v5    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "dst":Landroid/graphics/RectF;
    :goto_0
    goto :goto_1

    .line 510
    :catch_0
    move-exception v4

    .line 519
    .local v4, "ioe":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad values to createScaledBimap w = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", h = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Canvas"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v4    # "ioe":Ljava/lang/IllegalArgumentException;
    :goto_1
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 528
    .end local v2    # "oldBitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->dontGrabTouchEventsForComponent()V

    .line 575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetmotionEventParser(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;->parse(Landroid/view/MotionEvent;)V

    .line 576
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetmGestureDetector(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetextensionGestureDetectors(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;

    .line 581
    .local v1, "g":Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;
    invoke-interface {v1, p1}, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 582
    .end local v1    # "g":Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;
    goto :goto_0

    .line 583
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 652
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fputbackgroundColor(Lcom/google/appinventor/components/runtime/Canvas;I)V

    .line 654
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackground()V

    .line 656
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    .line 657
    return-void
.end method

.method setBackgroundImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fputbackgroundImagePath(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 597
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 599
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundImagePath(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundImagePath(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    goto :goto_1

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundImagePath(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Canvas"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackground()V

    .line 609
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    .line 610
    return-void
.end method

.method setBackgroundImageBase64(Ljava/lang/String;)V
    .locals 3
    .param p1, "imageUrl"    # Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fputbackgroundImagePath(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)V

    .line 615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 616
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->scaledBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 618
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundImagePath(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->-$$Nest$fgetbackgroundImagePath(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 620
    .local v0, "decodedString":[B
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 621
    .local v1, "decodedByte":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->backgroundDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 624
    .end local v0    # "decodedString":[B
    .end local v1    # "decodedByte":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackground()V

    .line 625
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->clearDrawingLayer()V

    .line 626
    return-void
.end method
