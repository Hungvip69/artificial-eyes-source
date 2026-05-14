.class public Lcom/google/appinventor/components/runtime/ImageSprite;
.super Lcom/google/appinventor/components/runtime/Sprite;
.source "ImageSprite.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>Ball</code>s and other <code>ImageSprite</code>s) and the edge of the Canvas, and move according to its property values.  Its appearance is that of the image specified in its <code>Picture</code> property (unless its <code>Visible</code> property is <code>False</code>).</p> <p>To have an <code>ImageSprite</code> move 10 pixels to the left every 1000 milliseconds (one second), for example, you would set the <code>Speed</code> property to 10 [pixels], the <code>Interval</code> property to 1000 [milliseconds], the <code>Heading</code> property to 180 [degrees], and the <code>Enabled</code> property to <code>True</code>.  A sprite whose <code>Rotates</code> property is <code>True</code> will rotate its image as the sprite\'s <code>Heading</code> changes.  Checking for collisions with a rotated sprite currently checks the sprite\'s unrotated position so that collision checking will be inaccurate for tall narrow or short wide sprites that are rotated.  Any of the sprite properties can be changed at any time under program control.</p> "
    iconName = "images/imageSprite.png"
    version = 0xa
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private heightHint:I

.field private picturePath:Ljava/lang/String;

.field private rotates:Z

.field private widthHint:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 85
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    .line 75
    iput v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    .line 86
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    .line 88
    return-void
.end method

.method private getVectorRotated(Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;
    .locals 5
    .param p1, "toRotate"    # Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 208
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Vector2D;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->xOrigin:D

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->yOrigin:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;-><init>(DD)V

    .line 210
    .local v0, "origin":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/Vector2D;->difference(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v1

    .line 211
    .local v1, "originToPoint":Lcom/google/appinventor/components/runtime/util/Vector2D;
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->headingRadians:D

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/Vector2D;->rotate(D)V

    .line 212
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->addition(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v2

    return-object v2

    .line 214
    .end local v0    # "origin":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .end local v1    # "originToPoint":Lcom/google/appinventor/components/runtime/util/Vector2D;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The height of the ImageSprite in pixels."
    .end annotation

    .line 260
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    const/16 v1, -0x3e8

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    return v0

    .line 262
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    return v0
.end method

.method public Height(I)V
    .locals 2
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 274
    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->heightHint:I

    .line 275
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->yOrigin:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/ImageSprite;->yOriginToTop(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->yTop:D

    .line 276
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 277
    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .line 282
    return-void
.end method

.method public MarkOrigin(Ljava/lang/String;)V
    .locals 5
    .param p1, "originCoordinates"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "(0.0, 0.0)"
        editorType = "origin"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Mark the origin of the image sprite using a draggable marker"
    .end annotation

    .line 418
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 419
    .local v3, "u":D
    nop

    .line 420
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    .line 419
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 421
    .local v0, "v":D
    invoke-super {p0, v3, v4}, Lcom/google/appinventor/components/runtime/Sprite;->U(D)V

    .line 422
    invoke-super {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->V(D)V

    .line 423
    return-void
.end method

.method public MoveTo(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the ImageSprite so that its origin is at the specified x and y coordinates."
    .end annotation

    .line 435
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    .line 436
    return-void
.end method

.method public OriginX()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 367
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->U()D

    move-result-wide v0

    return-wide v0
.end method

.method public OriginX(D)V
    .locals 0
    .param p1, "u"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "unit_coordinate"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 380
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->U(D)V

    .line 381
    return-void
.end method

.method public OriginY()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 392
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->V()D

    move-result-wide v0

    return-wide v0
.end method

.method public OriginY(D)V
    .locals 0
    .param p1, "v"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "unit_coordinate"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 405
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->V(D)V

    .line 406
    return-void
.end method

.method public Picture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The picture that determines the ImageSprite\'s appearance."
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    return-object v0
.end method

.method public Picture(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 243
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_1

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->picturePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageSprite"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 251
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 252
    return-void
.end method

.method public Rotates(Z)V
    .locals 0
    .param p1, "rotates"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 336
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    .line 337
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 338
    return-void
.end method

.method public Rotates()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the image should rotate to match the ImageSprite\'s heading. The sprite rotates around its origin."
    .end annotation

    .line 322
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    return v0
.end method

.method public Width()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The width of the ImageSprite in pixels."
    .end annotation

    .line 287
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    const/16 v1, -0x3e8

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 291
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    return v0

    .line 289
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    return v0
.end method

.method public Width(I)V
    .locals 2
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 301
    iput p1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->widthHint:I

    .line 302
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->xOrigin:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/ImageSprite;->xOriginToLeft(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->xLeft:D

    .line 303
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->registerChange()V

    .line 304
    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .line 309
    return-void
.end method

.method public X()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal coordinate of the origin of the ImageSprite, increasing as the ImageSprite moves right."
    .end annotation

    .line 347
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v0

    return-wide v0
.end method

.method public Y()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical coordinate of the origin of the ImageSprite, increasing as the ImageSprite moves down."
    .end annotation

    .line 355
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getCenterVector()Lcom/google/appinventor/components/runtime/util/Vector2D;
    .locals 8

    .line 122
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Width()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 123
    .local v0, "xCenter":D
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Height()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    add-double/2addr v2, v6

    .line 125
    .local v2, "yCenter":D
    new-instance v4, Lcom/google/appinventor/components/runtime/util/Vector2D;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/Vector2D;-><init>(DD)V

    .line 127
    .local v4, "center":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/ImageSprite;->getVectorRotated(Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v5

    return-object v5
.end method

.method protected getExtremityVectors()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/Vector2D;",
            ">;"
        }
    .end annotation

    .line 190
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "corners":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/Vector2D;>;"
    const/4 v2, 0x4

    new-array v2, v2, [[I

    const/4 v3, 0x0

    filled-new-array {v3, v3}, [I

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    filled-new-array {v4, v3}, [I

    move-result-object v5

    aput-object v5, v2, v4

    filled-new-array {v4, v4}, [I

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    filled-new-array {v3, v4}, [I

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    .line 196
    .local v2, "delta":[[I
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v2, v6

    .line 197
    .local v7, "d":[I
    aget v8, v7, v3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Width()I

    move-result v9

    mul-int v8, v8, v9

    int-to-double v8, v8

    .line 198
    .local v8, "dx":D
    aget v10, v7, v4

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Height()I

    move-result v11

    mul-int v10, v10, v11

    int-to-double v10, v10

    .line 199
    .local v10, "dy":D
    new-instance v12, Lcom/google/appinventor/components/runtime/util/Vector2D;

    iget-wide v13, v0, Lcom/google/appinventor/components/runtime/ImageSprite;->xLeft:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v13, v8

    iget-wide v3, v0, Lcom/google/appinventor/components/runtime/ImageSprite;->yTop:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v10

    invoke-direct {v12, v13, v14, v3, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;-><init>(DD)V

    move-object v3, v12

    .line 200
    .local v3, "corner":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/ImageSprite;->getVectorRotated(Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v3    # "corner":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .end local v7    # "d":[I
    .end local v8    # "dx":D
    .end local v10    # "dy":D
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_0

    .line 203
    :cond_0
    return-object v1
.end method

.method protected getMaxProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D
    .locals 8
    .param p1, "axis"    # Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 170
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->getExtremityVectors()Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "corners":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/Vector2D;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/Vector2D;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->dotProduct(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v1

    .line 173
    .local v1, "maximum":D
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 174
    .local v4, "point":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-static {p1, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;->dotProduct(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v5

    .line 175
    .local v5, "projectionMagnitude":D
    cmpl-double v7, v5, v1

    if-lez v7, :cond_0

    .line 176
    move-wide v1, v5

    .line 178
    .end local v4    # "point":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .end local v5    # "projectionMagnitude":D
    :cond_0
    goto :goto_0

    .line 180
    :cond_1
    return-wide v1
.end method

.method protected getMinProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D
    .locals 8
    .param p1, "axis"    # Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 153
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->getExtremityVectors()Ljava/util/List;

    move-result-object v0

    .line 154
    .local v0, "corners":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/Vector2D;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/Vector2D;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->dotProduct(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v1

    .line 156
    .local v1, "minimum":D
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 157
    .local v4, "point":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-static {p1, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;->dotProduct(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v5

    .line 158
    .local v5, "projectionMagnitude":D
    cmpg-double v7, v5, v1

    if-gez v7, :cond_0

    .line 159
    move-wide v1, v5

    .line 161
    .end local v4    # "point":Lcom/google/appinventor/components/runtime/util/Vector2D;
    .end local v5    # "projectionMagnitude":D
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    return-wide v1
.end method

.method protected getNormalAxes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/Vector2D;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->getExtremityVectors()Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "corners":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/Vector2D;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, "normalAxes":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/Vector2D;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/Vector2D;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/Vector2D;

    invoke-static {v2, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;->difference(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v2

    .line 138
    .local v2, "leftRightEdge":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/Vector2D;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/Vector2D;

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/Vector2D;->difference(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v3

    .line 140
    .local v3, "topDownEdge":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getNormalVector()Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v4

    .line 141
    .local v4, "leftRightNormal":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/Vector2D;->getNormalVector()Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v5

    .line 143
    .local v5, "topDownNormal":Lcom/google/appinventor/components/runtime/util/Vector2D;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-object v1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->visible:Z

    if-eqz v0, :cond_1

    .line 97
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->xLeft:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 98
    .local v0, "xinit":I
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->yTop:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-float v1, v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 99
    .local v1, "yinit":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 100
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 101
    .local v3, "h":I
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    add-int v5, v0, v2

    add-int v6, v1, v3

    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 104
    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->rotates:Z

    if-nez v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ImageSprite;->Heading()D

    move-result-wide v4

    neg-double v4, v4

    double-to-float v4, v4

    int-to-float v5, v0

    int-to-float v6, v2

    iget-wide v7, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->u:D

    double-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    int-to-float v6, v1

    int-to-float v7, v3

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->v:D

    double-to-float v8, v8

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 114
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ImageSprite;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 118
    .end local v0    # "xinit":I
    .end local v1    # "yinit":I
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_1
    :goto_0
    return-void
.end method
