.class public final Lcom/google/appinventor/components/runtime/Canvas;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Canvas.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A two-dimensional touch-sensitive rectangular panel on which drawing can be done and sprites can be moved.</p> <p>The <code>BackgroundColor</code>, <code>PaintColor</code>, <code>BackgroundImage</code>, <code>Width</code>, and <code>Height</code> of the Canvas can be set in either the Designer or in the Blocks Editor.  The <code>Width</code> and <code>Height</code> are measured in pixels and must be positive.</p><p>Any location on the Canvas can be specified as a pair of (X, Y) values, where <ul> <li>X is the number of pixels away from the left edge of the Canvas</li><li>Y is the number of pixels away from the top edge of the Canvas</li></ul>.</p> <p>There are events to tell when and where a Canvas has been touched or a <code>Sprite</code> (<code>ImageSprite</code> or <code>Ball</code>) has been dragged.  There are also methods for drawing points, lines, and circles.</p>"
    iconName = "images/canvas.png"
    version = 0xf
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;,
        Lcom/google/appinventor/components/runtime/Canvas$CanvasView;,
        Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;,
        Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1

.field private static final DEFAULT_LINE_WIDTH:F = 2.0f

.field private static final DEFAULT_PAINT_COLOR:I = -0x1000000

.field private static final DEFAULT_TAP_THRESHOLD:I = 0xf

.field private static final DEFAULT_TEXTALIGNMENT:I = 0x1

.field private static final FLING_INTERVAL:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "Canvas"

.field private static final MIN_WIDTH_HEIGHT:I = 0x1


# instance fields
.field private backgroundColor:I

.field private backgroundImagePath:Ljava/lang/String;

.field private final context:Landroid/app/Activity;

.field private drawn:Z

.field private extendMovesOutsideCanvas:Z

.field private final extensionGestureDetectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;",
            ">;"
        }
    .end annotation
.end field

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private havePermission:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

.field private final paint:Landroid/graphics/Paint;

.field private paintColor:I

.field private final sprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private tapThreshold:I

.field private textAlignment:I

.field private final view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;


# direct methods
.method static bridge synthetic -$$Nest$fgetbackgroundColor(Lcom/google/appinventor/components/runtime/Canvas;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbackgroundImagePath(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetextendMovesOutsideCanvas(Lcom/google/appinventor/components/runtime/Canvas;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetextensionGestureDetectors(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureDetector(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmotionEventParser(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaint(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsprites(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettapThreshold(Lcom/google/appinventor/components/runtime/Canvas;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->tapThreshold:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetview(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbackgroundColor(Lcom/google/appinventor/components/runtime/Canvas;I)V
    .locals 0

    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbackgroundImagePath(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdrawn(Lcom/google/appinventor/components/runtime/Canvas;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->drawn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/Canvas;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 752
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    .line 167
    const/16 v1, 0xf

    iput v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->tapThreshold:I

    .line 193
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    .line 195
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 198
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    .line 753
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    .line 756
    new-instance v0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    invoke-direct {v0, p0, v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    .line 757
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 759
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    .line 760
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 763
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->LineWidth(F)V

    .line 764
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->PaintColor(I)V

    .line 765
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->BackgroundColor(I)V

    .line 766
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Canvas;->TextAlignment(I)V

    .line 767
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->FontSize(F)V

    .line 768
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->TapThreshold(I)V

    .line 770
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    .line 771
    new-instance v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    .line 772
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    new-instance v3, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->mGestureDetector:Landroid/view/GestureDetector;

    .line 773
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    goto :goto_0

    .line 776
    :cond_0
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    .line 778
    :goto_0
    return-void
.end method

.method private changePaint(Landroid/graphics/Paint;I)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "argb"    # I

    .line 1157
    if-nez p2, :cond_0

    .line 1159
    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0

    .line 1160
    :cond_0
    const v0, 0xffffff

    if-ne p2, v0, :cond_1

    .line 1161
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaintTransparent(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1163
    :cond_1
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1165
    :goto_0
    return-void
.end method

.method private parsePath([[F)Landroid/graphics/Path;
    .locals 7
    .param p1, "points"    # [[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1466
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 1469
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1471
    .local v0, "scalingFactor":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1472
    .local v1, "path":Landroid/graphics/Path;
    const/4 v2, 0x0

    aget-object v3, p1, v2

    aget v3, v3, v2

    mul-float v3, v3, v0

    aget-object v4, p1, v2

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float v4, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1473
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1474
    aget-object v4, p1, v3

    aget v4, v4, v2

    mul-float v4, v4, v0

    aget-object v6, p1, v3

    aget v6, v6, v5

    mul-float v6, v6, v0

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1473
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1477
    .end local v3    # "i":I
    :cond_0
    return-object v1

    .line 1467
    .end local v0    # "scalingFactor":F
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private parsePointList(Lcom/google/appinventor/components/runtime/util/YailList;)[[F
    .locals 12
    .param p1, "pointList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1481
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1484
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput v0, v2, v4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 1485
    .local v0, "points":[[F
    const/4 v2, 0x0

    .line 1487
    .local v2, "index":I
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 1488
    .local v8, "pointObject":Ljava/lang/Object;
    instance-of v9, v8, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v9, :cond_1

    .line 1489
    move-object v9, v8

    check-cast v9, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1490
    .local v9, "pointYailList":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v10

    if-ne v10, v1, :cond_0

    .line 1492
    :try_start_0
    aget-object v10, v0, v2

    invoke-virtual {v9, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v10, v4

    .line 1493
    aget-object v10, v0, v2

    invoke-virtual {v9, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v10, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1494
    add-int/lit8 v2, v2, 0x1

    .line 1499
    nop

    .line 1487
    .end local v8    # "pointObject":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1497
    .restart local v8    # "pointObject":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1498
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1495
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 1496
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1501
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length of item YailList("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not 2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1504
    .end local v9    # "pointYailList":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") in YailList is not a YailList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1507
    .end local v8    # "pointObject":Ljava/lang/Object;
    :cond_2
    return-object v0

    .line 1482
    .end local v0    # "points":[[F
    .end local v2    # "index":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private saveFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "scopedFile"    # Lcom/google/appinventor/components/runtime/util/ScopedFile;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "method"    # Ljava/lang/String;

    .line 1682
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/runtime/util/ScopedFile;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1683
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Canvas$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Canvas$1;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 1689
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v0

    .line 1692
    :cond_1
    :goto_0
    new-instance v9, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v9}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 1693
    .local v9, "result":Lcom/google/appinventor/components/runtime/util/Synchronizer;, "Lcom/google/appinventor/components/runtime/util/Synchronizer<Ljava/lang/Boolean;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/Canvas$2;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p0

    move-object v5, p3

    move-object v6, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/Canvas$2;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/ScopedFile;ZZLcom/google/appinventor/components/runtime/util/Synchronizer;Landroid/graphics/Bitmap$CompressFormat;)V

    .line 1700
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$2;->run()V

    .line 1702
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/FileNotFoundException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1703
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 1705
    invoke-static {v3, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 1703
    const/16 v2, 0x2c3

    invoke-virtual {v0, p0, p3, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1706
    :cond_2
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 1707
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 1708
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 1707
    const/16 v2, 0x2c4

    invoke-virtual {v0, p0, p3, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1709
    :cond_3
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    if-eqz v0, :cond_4

    .line 1710
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 1711
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/errors/PermissionException;

    .line 1710
    invoke-virtual {v0, p0, p3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    goto :goto_1

    .line 1712
    :cond_4
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    if-eqz v0, :cond_5

    .line 1713
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 1714
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1713
    invoke-virtual {v0, p0, p3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1715
    :cond_5
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1716
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1718
    :cond_6
    :goto_1
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 881
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.$add() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the canvas background."
    .end annotation

    .line 1030
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundColor(I)V

    .line 1047
    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of a file containing the background image for the canvas"
    .end annotation

    .line 1058
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 1
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

    .line 1074
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundImage(Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method public BackgroundImageinBase64(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background image in Base64 format. This requires API level >= 8. For devices with API level less than 8, setting this will end up with an empty background."
    .end annotation

    .line 1089
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundImageBase64(Ljava/lang/String;)V

    goto :goto_0

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundImageBase64(Ljava/lang/String;)V

    .line 1095
    :goto_0
    return-void
.end method

.method public Clear()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears anything drawn on this Canvas but not any background color or image."
    .end annotation

    .line 1380
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$mclearDrawingLayer(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V

    .line 1381
    return-void
.end method

.method public Dragged(FFFFFFZ)V
    .locals 9
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "prevX"    # F
    .param p4, "prevY"    # F
    .param p5, "currentX"    # F
    .param p6, "currentY"    # F
    .param p7, "draggedAnySprite"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1367
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 1368
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    .line 1367
    const-string v0, "Dragged"

    move-object v1, p0

    invoke-static {p0, v0, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1369
    return-void
.end method

.method public DrawArc(IIIIFFZZ)V
    .locals 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw an arc on Canvas, by drawing an arc from a specified oval (specified by left, top, right & bottom). Start angle is 0 when heading to the right, and increase when rotate clockwise. When useCenter is true, a sector will be drawed instead of an arc. When fill is true, a filled arc (or sector) will be drawed instead of just an outline."
    .end annotation

    .line 1532
    move-object v0, p0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    .line 1533
    .local v1, "scalingFactor":F
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1534
    .local v2, "p":Landroid/graphics/Paint;
    if-eqz p8, :cond_0

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1535
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$fgetcanvas(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    move v3, p1

    int-to-float v6, v3

    mul-float v6, v6, v1

    move v10, p2

    int-to-float v7, v10

    mul-float v7, v7, v1

    move/from16 v11, p3

    int-to-float v8, v11

    mul-float v8, v8, v1

    move/from16 v12, p4

    int-to-float v9, v12

    mul-float v9, v9, v1

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1539
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1540
    return-void
.end method

.method public DrawCircle(IIFZ)V
    .locals 5
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "radius"    # F
    .param p4, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 1408
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v0, v0, v1

    .line 1409
    .local v0, "correctedX":F
    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    mul-float v1, v1, v2

    .line 1410
    .local v1, "correctedY":F
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    mul-float v2, v2, p3

    .line 1411
    .local v2, "correctedR":F
    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1412
    .local v3, "p":Landroid/graphics/Paint;
    if-eqz p4, :cond_0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1413
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$fgetcanvas(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1414
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1415
    return-void
.end method

.method public DrawLine(IIII)V
    .locals 10
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 1427
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v0, v0, v1

    .line 1428
    .local v0, "correctedX1":F
    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    mul-float v1, v1, v2

    .line 1429
    .local v1, "correctedY1":F
    int-to-float v2, p3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float v8, v2, v3

    .line 1430
    .local v8, "correctedX2":F
    int-to-float v2, p4

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float v9, v2, v3

    .line 1431
    .local v9, "correctedY2":F
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$fgetcanvas(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v2

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    move v3, v0

    move v4, v1

    move v5, v8

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1432
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1433
    return-void
.end method

.method public DrawPoint(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 1391
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v0, v0, v1

    .line 1392
    .local v0, "correctedX":F
    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    mul-float v1, v1, v2

    .line 1393
    .local v1, "correctedY":F
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$fgetcanvas(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1394
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1395
    return-void
.end method

.method public DrawShape(Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .locals 5
    .param p1, "pointList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws a shape on the canvas. pointList should be a list contains sub-lists with two number which represents a coordinate. The first point and last point does not need to be the same. e.g. ((x1 y1) (x2 y2) (x3 y3)) When fill is true, the shape will be filled."
    .end annotation

    .line 1453
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->parsePointList(Lcom/google/appinventor/components/runtime/util/YailList;)[[F

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->parsePath([[F)Landroid/graphics/Path;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    .local v0, "path":Landroid/graphics/Path;
    nop

    .line 1458
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1459
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1460
    .local v1, "p":Landroid/graphics/Paint;
    if-eqz p2, :cond_0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1461
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$fgetcanvas(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1462
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1463
    return-void

    .line 1454
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "p":Landroid/graphics/Paint;
    :catch_0
    move-exception v0

    .line 1455
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DrawShape"

    const/16 v4, 0x3ec

    invoke-virtual {v1, p0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1456
    return-void
.end method

.method public DrawText(Ljava/lang/String;II)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text relative to the specified coordinates using the values of the FontSize and TextAlignment properties."
    .end annotation

    .line 1554
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1555
    .local v0, "fontScalingFactor":F
    int-to-float v1, p2

    mul-float v1, v1, v0

    .line 1556
    .local v1, "correctedX":F
    int-to-float v2, p3

    mul-float v2, v2, v0

    .line 1557
    .local v2, "correctedY":F
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$fgetcanvas(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1558
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1559
    return-void
.end method

.method public DrawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "angle"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text starting at the specified coordinates at the specified angle using the values of the FontSize and TextAlignment properties."
    .end annotation

    .line 1574
    int-to-float v0, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1575
    .local v0, "correctedX":I
    int-to-float v1, p3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 1576
    .local v1, "correctedY":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v2, p1, v0, v1, p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$mdrawTextAtAngle(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V

    .line 1577
    return-void
.end method

.method public ExtendMovesOutsideCanvas(Z)V
    .locals 0
    .param p1, "extend"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 1277
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    .line 1278
    return-void
.end method

.method public ExtendMovesOutsideCanvas()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether moves can extend beyond the canvas borders.   Default is false. This should normally be false, and the property is provided for backwards compatibility."
        userVisible = true
    .end annotation

    .line 1267
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    return v0
.end method

.method public Flung(FFFFFFZ)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "speed"    # F
    .param p4, "heading"    # F
    .param p5, "xvel"    # F
    .param p6, "yvel"    # F
    .param p7, "flungSprite"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1344
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

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v3, v7, v0

    const/4 v0, 0x4

    aput-object v4, v7, v0

    const/4 v0, 0x5

    aput-object v5, v7, v0

    const/4 v0, 0x6

    aput-object v6, v7, v0

    const-string v0, "Flung"

    move-object v1, p0

    invoke-static {p0, v0, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1345
    return-void
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size of text drawn on the canvas."
    .end annotation

    .line 1171
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1172
    .local v0, "scale":F
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public FontSize(F)V
    .locals 3
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1183
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1184
    .local v0, "scale":F
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1185
    return-void
.end method

.method public GetBackgroundPixelColor(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point. This includes the background and any drawn points, lines, or circles but not sprites."
    .end annotation

    .line 1592
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1593
    .local v0, "correctedX":I
    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 1594
    .local v1, "correctedY":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v2, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$mgetBackgroundPixelColor(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I

    move-result v2

    return v2
.end method

.method public GetPixelColor(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point."
    .end annotation

    .line 1627
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 1628
    .local v0, "correctedX":I
    int-to-float v1, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 1629
    .local v1, "correctedY":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v2, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$mgetPixelColor(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I

    move-result v2

    return v2
.end method

.method public Height(I)V
    .locals 4
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1006
    if-gtz p1, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Height"

    const/16 v3, 0x3eb

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1008
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 1014
    :goto_1
    return-void
.end method

.method public LineWidth()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The width of lines drawn on the canvas."
    .end annotation

    .line 1195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public LineWidth(F)V
    .locals 2
    .param p1, "width"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1208
    return-void
.end method

.method public PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color in which lines are drawn"
    .end annotation

    .line 1137
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paintColor:I

    return v0
.end method

.method public PaintColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1152
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paintColor:I

    .line 1153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->changePaint(Landroid/graphics/Paint;I)V

    .line 1154
    return-void
.end method

.method public Save()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves a picture of this Canvas to the device\'s external storage. If an error occurs, the Screen\'s ErrorOccurred event will be called."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 1644
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "png"

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getScopedPictureFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v2, "Save"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SaveAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves a picture of this Canvas to the device\'s external storage in the file named fileName. fileName must end with one of .jpg, .jpeg, or .png, which determines the file type."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 1664
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "SaveAs"

    if-nez v0, :cond_3

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1666
    :cond_0
    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1667
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .local v0, "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_1

    .line 1668
    .end local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_1
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1670
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_1

    .line 1672
    .end local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x2c2

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1674
    const-string v0, ""

    return-object v0

    .line 1665
    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1676
    .restart local v0    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_1
    new-instance v2, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public SetBackgroundPixelColor(III)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the color of the specified point. This differs from DrawPoint by having an argument for color."
    .end annotation

    .line 1608
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1609
    .local v0, "pixelPaint":Landroid/graphics/Paint;
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1610
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 1611
    .local v1, "correctedX":I
    int-to-float v2, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 1612
    .local v2, "correctedY":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$fgetcanvas(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v3

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1613
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1614
    return-void
.end method

.method public TapThreshold()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the number of pixels right, left, up or down, a sequence of drags mustmove from the starting point to be considered a drag (instead of a touch)."
    .end annotation

    .line 1108
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->tapThreshold:I

    return v0
.end method

.method public TapThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "15"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1121
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->tapThreshold:I

    .line 1122
    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the alignment of the text drawn by DrawText() or DrawAngle() with respect to the point specified by that command: point at the left of the text, point at the center of the text, or point at the right of the text."
        userVisible = true
    .end annotation

    .line 1227
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 1246
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->textAlignment:I

    .line 1247
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1255
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 1252
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1253
    goto :goto_0

    .line 1249
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1250
    nop

    .line 1258
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public TouchDown(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1307
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

    invoke-static {p0, v0, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1308
    return-void
.end method

.method public TouchUp(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1320
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

    invoke-static {p0, v0, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1321
    return-void
.end method

.method public Touched(FFZ)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchedAnySprite"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 1294
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "Touched"

    invoke-static {p0, v0, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1295
    return-void
.end method

.method public Width(I)V
    .locals 4
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 982
    if-gtz p1, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Width"

    const/16 v3, 0x3ea

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 984
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 990
    :goto_1
    return-void
.end method

.method addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;

    .line 837
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 838
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v3

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 839
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 840
    return-void

    .line 837
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    return-void
.end method

.method changeSpriteLayer(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;

    .line 864
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 865
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 866
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 867
    return-void
.end method

.method protected findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3
    .param p1, "movedSprite"    # Lcom/google/appinventor/components/runtime/Sprite;

    .line 936
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    .line 937
    .local v1, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    if-eq v1, p1, :cond_2

    .line 939
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 941
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 942
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 944
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 945
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_1

    .line 951
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 952
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 953
    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 955
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 956
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 962
    .end local v1    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_2
    :goto_1
    goto :goto_0

    .line 963
    :cond_3
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->-$$Nest$mcreateBitmap(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 886
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    return-object v0
.end method

.method public ready()Z
    .locals 1

    .line 819
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->drawn:Z

    return v0
.end method

.method registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;

    .line 913
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 914
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 915
    return-void
.end method

.method public registerCustomGestureDetector(Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;

    .line 801
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 802
    return-void
.end method

.method public removeCustomGestureDetector(Ljava/lang/Object;)V
    .locals 1
    .param p1, "detector"    # Ljava/lang/Object;

    .line 805
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 806
    return-void
.end method

.method removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;

    .line 854
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 855
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .line 896
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.setChildHeight() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildNeedsLayout(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 901
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.setChildNeedsLayout() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .line 891
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.setChildWidth() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
