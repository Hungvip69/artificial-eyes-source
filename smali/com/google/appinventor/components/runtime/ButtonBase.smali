.class public abstract Lcom/google/appinventor/components/runtime/ButtonBase;
.super Lcom/google/appinventor/components/runtime/TouchComponent;
.source "ButtonBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/TouchComponent<",
        "Landroid/widget/Button;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnLongClickListener;",
        "Lcom/google/appinventor/components/runtime/AccessibleComponent;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ButtonBase"

.field private static final ROUNDED_CORNERS_ARRAY:[F

.field private static final ROUNDED_CORNERS_RADIUS:F = 10.0f

.field private static final SHAPED_DEFAULT_BACKGROUND_COLOR:I = -0x333334

.field private static defaultButtonMinHeight:I

.field private static defaultButtonMinWidth:I


# instance fields
.field private bold:Z

.field private defaultColorStateList:Landroid/content/res/ColorStateList;

.field private defaultOutlineProvider:Ljava/lang/Object;

.field private defaultStateAnimator:Ljava/lang/Object;

.field private fontTypeface:Ljava/lang/String;

.field private isBigText:Z

.field private isHighContrast:Z

.field private italic:Z

.field private myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private shape:I

.field private textAlignment:I

.field private textColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/appinventor/components/runtime/ButtonBase;->ROUNDED_CORNERS_ARRAY:[F

    .line 109
    const/4 v0, 0x0

    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    .line 116
    sput v0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 124
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TouchComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    .line 102
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isBigText:Z

    .line 125
    new-instance v1, Landroid/widget/Button;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    .line 128
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    .line 129
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinWidth(Landroid/widget/TextView;)I

    move-result v1

    sput v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    .line 130
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMinHeight(Landroid/widget/TextView;)I

    move-result v1

    sput v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    .line 131
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultOutlineProvider:Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getStateListAnimator()Landroid/animation/StateListAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultStateAnimator:Ljava/lang/Object;

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->initToggle()V

    .line 140
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 143
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/IceCreamSandwichUtil;->setAllCaps(Landroid/widget/TextView;Z)V

    .line 146
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextAlignment(I)V

    .line 147
    const-string v1, "0"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    .line 148
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 149
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->FontSize(F)V

    .line 150
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ButtonBase;->Text(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->TextColor(I)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ButtonBase;->Shape(I)V

    .line 153
    return-void
.end method

.method private createRippleState()Landroid/content/res/ColorStateList;
    .locals 6

    .line 344
    const/4 v0, 0x1

    new-array v0, v0, [[I

    const v1, 0x101009e

    filled-new-array {v1}, [I

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 345
    .local v0, "states":[[I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 346
    .local v1, "enabled_color":I
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    .line 347
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    .line 346
    const/16 v5, 0x46

    invoke-static {v5, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    .line 349
    .local v2, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 325
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 327
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "ButtonBase"

    const-string v3, "Unable to clone button drawable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 333
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_0
    goto :goto_1

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 339
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->myBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private setShape()V
    .locals 6

    .line 354
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 357
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 368
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 365
    :pswitch_0
    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 366
    goto :goto_0

    .line 362
    :pswitch_1
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 363
    goto :goto_0

    .line 359
    :pswitch_2
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v3, Lcom/google/appinventor/components/runtime/ButtonBase;->ROUNDED_CORNERS_ARRAY:[F

    invoke-direct {v1, v3, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 360
    nop

    .line 371
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v1

    const/16 v3, 0x15

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    .line 377
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->createRippleState()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-direct {v4, v5, v0, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 383
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v4, 0xffffff

    if-lt v1, v3, :cond_3

    .line 384
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-ne v1, v4, :cond_2

    .line 385
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 386
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto :goto_2

    .line 388
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultOutlineProvider:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 389
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultStateAnimator:Ljava/lang/Object;

    check-cast v2, Landroid/animation/StateListAnimator;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 393
    :cond_3
    :goto_2
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-ne v1, v4, :cond_4

    .line 394
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    .line 395
    :cond_4
    iget v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v1, :cond_7

    .line 396
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 399
    :cond_5
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, -0x333334

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    .line 397
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_4

    .line 402
    :cond_7
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 405
    :goto_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 406
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public FontBold(Z)V
    .locals 4
    .param p1, "bold"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 433
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    .line 434
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 435
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in bold."
    .end annotation

    .line 419
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 4
    .param p1, "italic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 462
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    .line 463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 464
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, %type% text is displayed in italics."
    .end annotation

    .line 448
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Point size for %type% text."
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 2
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 491
    const/high16 v0, 0x41600000    # 14.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 496
    :goto_0
    return-void
.end method

.method public FontTypeface()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Font family for %type% text."
        userVisible = false
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public FontTypeface(Ljava/lang/String;)V
    .locals 5
    .param p1, "typeface"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 530
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->bold:Z

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->italic:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 532
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved over the %type% so it is now possible to click it."
    .end annotation

    .line 166
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotFocus"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public Initialize()V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 157
    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the cursor moved away from the %type% so it is now no longer possible to click it."
    .end annotation

    .line 176
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LostFocus"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public Shape()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 226
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    return v0
.end method

.method public Shape(I)V
    .locals 0
    .param p1, "shape"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "button_shape"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the shape of the %type% (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed."
        userVisible = false
    .end annotation

    .line 250
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    .line 251
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->updateAppearance()V

    .line 252
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text to display on %type%."
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Left, center, or right."
        userVisible = false
    .end annotation

    .line 193
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textAlignment:I

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
        userVisible = false
    .end annotation

    .line 210
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textAlignment:I

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 212
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for button text."
    .end annotation

    .line 569
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 583
    iput p1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    .line 584
    if-eqz p1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 587
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 588
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 594
    :goto_1
    return-void
.end method

.method public abstract click()V
.end method

.method public getHighContrast()Z
    .locals 1

    .line 656
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    return v0
.end method

.method public getLargeFont()Z
    .locals 1

    .line 672
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isBigText:Z

    return v0
.end method

.method public longClick()Z
    .locals 1

    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 610
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->click()V

    .line 611
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .line 617
    if-eqz p2, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->GotFocus()V

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->LostFocus()V

    .line 622
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 628
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->longClick()Z

    move-result v0

    return v0
.end method

.method public setHighContrast(Z)V
    .locals 3
    .param p1, "isHighContrast"    # Z

    .line 634
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v0, :cond_1

    .line 635
    if-eqz p1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 637
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 645
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->textColor:I

    if-nez v0, :cond_3

    .line 646
    if-eqz p1, :cond_2

    .line 647
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 652
    :cond_3
    :goto_1
    return-void
.end method

.method public setLargeFont(Z)V
    .locals 6
    .param p1, "isLargeFont"    # Z

    .line 661
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    const/high16 v4, 0x41600000    # 14.0f

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    .line 662
    :cond_0
    if-eqz p1, :cond_1

    .line 663
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 668
    :cond_2
    :goto_0
    return-void
.end method

.method protected updateAppearance()V
    .locals 13

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 261
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    if-nez v0, :cond_3

    .line 262
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundColor:I

    if-nez v0, :cond_2

    .line 265
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->isHighContrast:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/TouchComponent;->updateAppearance()V

    goto :goto_1

    .line 266
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->getSafeBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 274
    :cond_2
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/TouchComponent;->updateAppearance()V

    goto :goto_1

    .line 279
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ButtonBase;->setShape()V

    .line 281
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinWidth:I

    sget v2, Lcom/google/appinventor/components/runtime/ButtonBase;->defaultButtonMinHeight:I

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    goto/16 :goto_3

    .line 283
    :cond_4
    iget v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    const/4 v2, 0x0

    if-nez v0, :cond_5

    .line 284
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/TouchComponent;->updateAppearance()V

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinSize(Landroid/widget/TextView;II)V

    goto/16 :goto_3

    .line 287
    :cond_5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 288
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 290
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 291
    .local v3, "backgroundBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 292
    .local v4, "displayDensity":F
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 293
    .local v5, "shapeHeight":I
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 295
    .local v6, "shapeWidth":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 296
    .local v7, "result":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 298
    .local v8, "canvas":Landroid/graphics/Canvas;
    iget v9, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->shape:I

    const/4 v10, 0x0

    packed-switch v9, :pswitch_data_0

    .line 310
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 307
    :pswitch_0
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v11, v6

    int-to-float v12, v5

    invoke-direct {v9, v10, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v8, v9, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 308
    goto :goto_2

    .line 304
    :pswitch_1
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v11, v6

    int-to-float v12, v5

    invoke-direct {v9, v10, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v8, v9, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 305
    goto :goto_2

    .line 300
    :pswitch_2
    new-instance v9, Landroid/graphics/RectF;

    int-to-float v11, v6

    int-to-float v12, v5

    invoke-direct {v9, v10, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-virtual {v8, v9, v10, v10, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 302
    nop

    .line 313
    :goto_2
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 315
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v2, v2, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v3, v1, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 317
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ButtonBase;->view:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 320
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v3    # "backgroundBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "displayDensity":F
    .end local v5    # "shapeHeight":I
    .end local v6    # "shapeWidth":I
    .end local v7    # "result":Landroid/graphics/Bitmap;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
