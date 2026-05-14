.class public final Lcom/google/appinventor/components/runtime/Ball;
.super Lcom/google/appinventor/components/runtime/Sprite;
.source "Ball.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A round \'sprite\' that can be placed on a <code>Canvas</code>, where it can react to touches and drags, interact with other sprites (<code>ImageSprite</code>s and other <code>Ball</code>s) and the edge of the Canvas, and move according to its property values.</p><p>For example, to have a <code>Ball</code> move 4 pixels toward the top of a <code>Canvas</code> every 500 milliseconds (half second), you would set the <code>Speed</code> property to 4 [pixels], the <code>Interval</code> property to 500 [milliseconds], the <code>Heading</code> property to 90 [degrees], and the <code>Enabled</code> property to <code>True</code>.</p><p>The difference between a <code>Ball</code> and an <code>ImageSprite</code> is that the latter can get its appearance from an image file, while a <code>Ball</code>\'s appearance can be changed only by varying its <code>PaintColor</code> and <code>Radius</code> properties.</p>"
    iconName = "images/ball.png"
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field static final DEFAULT_RADIUS:I = 0x5


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private paintColor:I

.field private radius:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 66
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    .line 70
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ball;->PaintColor(I)V

    .line 71
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ball;->Radius(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public Height()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Height(I)V
    .locals 0
    .param p1, "height"    # I

    .line 117
    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .line 122
    return-void
.end method

.method public MoveTo(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the x and y coordinates of the Ball. If CenterAtOrigin is true, the center of the Ball will be placed here. Otherwise, the top left edge of the Ball will be placed at the specified coordinates."
    .end annotation

    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->MoveTo(DD)V

    .line 260
    return-void
.end method

.method public OriginAtCenter(Z)V
    .locals 0
    .param p1, "b"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the x- and y-coordinates should represent the center of the Ball (true) or its left and top edges (false)."
        userVisible = false
    .end annotation

    .line 215
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    .line 216
    return-void
.end method

.method public PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the Ball."
    .end annotation

    .line 179
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paintColor:I

    return v0
.end method

.method public PaintColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 192
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ball;->paintColor:I

    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 199
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->registerChange()V

    .line 200
    return-void
.end method

.method public Radius()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 166
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    return v0
.end method

.method public Radius(I)V
    .locals 2
    .param p1, "radius"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The distance from the edge of the Ball to its center."
    .end annotation

    .line 155
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    .line 156
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->xOrigin:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Ball;->xOriginToLeft(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    .line 157
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->yOrigin:D

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Ball;->yOriginToTop(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    .line 158
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->registerChange()V

    .line 159
    return-void
.end method

.method public Width()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public Width(I)V
    .locals 0
    .param p1, "width"    # I

    .line 132
    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .param p1, "pCent"    # I

    .line 137
    return-void
.end method

.method public X()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal coordinate of the Ball, increasing as the Ball moves right. If the property OriginAtCenter is true, the coordinate is for the center of the Ball; otherwise, it is for the leftmost point of the Ball."
    .end annotation

    .line 229
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->X()D

    move-result-wide v0

    return-wide v0
.end method

.method public Y()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical coordinate of the Ball, increasing as the Ball moves down. If the property OriginAtCenter is true, the coordinate is for the center of the Ball; otherwise, it is for the uppermost point of the Ball."
    .end annotation

    .line 243
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Y()D

    move-result-wide v0

    return-wide v0
.end method

.method public containsPoint(DD)Z
    .locals 10
    .param p1, "qx"    # D
    .param p3, "qy"    # D

    .line 141
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->Width()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 142
    .local v0, "xCenter":D
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->Height()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    add-double/2addr v2, v6

    .line 143
    .local v2, "yCenter":D
    sub-double v4, p1, v0

    sub-double v6, p1, v0

    mul-double v4, v4, v6

    sub-double v6, p3, v2

    sub-double v8, p3, v2

    mul-double v6, v6, v8

    add-double/2addr v4, v6

    iget v6, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    iget v7, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    mul-int v6, v6, v7

    int-to-double v6, v6

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method getCenterVector()Lcom/google/appinventor/components/runtime/util/Vector2D;
    .locals 8

    .line 89
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->Width()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 90
    .local v0, "xCenter":D
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->Height()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    add-double/2addr v2, v6

    .line 91
    .local v2, "yCenter":D
    new-instance v4, Lcom/google/appinventor/components/runtime/util/Vector2D;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/Vector2D;-><init>(DD)V

    return-object v4
.end method

.method getMaxProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D
    .locals 6
    .param p1, "axis"    # Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 103
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->getCenterVector()Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->dotProduct(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->Radius()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->magnitude()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method getMinProjection(Lcom/google/appinventor/components/runtime/util/Vector2D;)D
    .locals 6
    .param p1, "axis"    # Lcom/google/appinventor/components/runtime/util/Vector2D;

    .line 97
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->getCenterVector()Lcom/google/appinventor/components/runtime/util/Vector2D;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->dotProduct(Lcom/google/appinventor/components/runtime/util/Vector2D;Lcom/google/appinventor/components/runtime/util/Vector2D;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Ball;->Radius()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/Vector2D;->magnitude()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 78
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ball;->visible:Z

    if-eqz v0, :cond_0

    .line 79
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ball;->xLeft:D

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    .line 80
    .local v0, "correctedXLeft":F
    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/Ball;->yTop:D

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-float v1, v1

    .line 81
    .local v1, "correctedYTop":F
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ball;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ball;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float v2, v2, v3

    .line 82
    .local v2, "correctedRadius":F
    add-float v3, v0, v2

    add-float v4, v1, v2

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Ball;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    .end local v0    # "correctedXLeft":F
    .end local v1    # "correctedYTop":F
    .end local v2    # "correctedRadius":F
    :cond_0
    return-void
.end method
