.class public Lcom/google/appinventor/components/runtime/Slider;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Slider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Slider is a progress bar that adds a draggable thumb. You can touch the thumb and drag left or right to set the slider thumb position. As the Slider thumb is dragged, it will trigger the PositionChanged event, reporting the position of the Slider thumb. The reported position of the Slider thumb can be used to dynamically update another component attribute, such as the font size of a TextBox or the radius of a Ball."
    iconName = "images/slider.png"
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Slider"

.field private static final initialLeftColor:I = -0x3800

.field private static final initialLeftColorString:Ljava/lang/String; = "&HFFFFC800"

.field private static final initialRightColor:I = -0x777778

.field private static final initialRightColorString:Ljava/lang/String; = "&HFF888888"

.field private static final initialThumbColor:I = -0xbbbbbc

.field private static final initialThumbColorString:Ljava/lang/String; = "&HFF444444"


# instance fields
.field private leftColor:I

.field private maxValue:F

.field private minValue:F

.field private notice:Z

.field private numberOfSteps:I

.field private rightColor:I

.field private final seekbar:Landroid/widget/SeekBar;

.field private thumbColor:I

.field private thumbEnabled:Z

.field private thumbPosition:F


# direct methods
.method static bridge synthetic -$$Nest$fgetseekbar(Lcom/google/appinventor/components/runtime/Slider;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthumbEnabled(Lcom/google/appinventor/components/runtime/Slider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    return p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 108
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->notice:Z

    .line 109
    new-instance v1, Landroid/widget/SeekBar;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    .line 111
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setSplitTrack(Z)V

    .line 115
    :cond_0
    const/16 v1, -0x3800

    iput v1, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    .line 116
    const v1, -0x777778

    iput v1, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    .line 117
    const v1, -0xbbbbbc

    iput v1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbColor:I

    .line 118
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSliderColors()V

    .line 121
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 124
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    .line 125
    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    .line 126
    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 127
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    .line 128
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->numberOfSteps:I

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->numberOfSteps:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 140
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSeekbarPosition()V

    .line 151
    return-void
.end method

.method private setSeekbarPosition()V
    .locals 4

    .line 188
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    iget v2, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->numberOfSteps:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    .line 199
    .local v0, "seekbarPosition":F
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 200
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    float-to-int v2, v0

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Slider;->notice:Z

    invoke-virtual {v1, v2, v3}, Landroid/widget/SeekBar;->setProgress(IZ)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 204
    :goto_0
    return-void
.end method

.method private setSliderColors()V
    .locals 4

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    .line 160
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 170
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 172
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v2, 0x1020000

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 173
    .local v2, "background":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 174
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 176
    .end local v0    # "drawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v1    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    goto :goto_1

    .line 161
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 179
    .local v0, "fullBar":Landroid/graphics/drawable/LayerDrawable;
    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 182
    .end local v0    # "fullBar":Landroid/graphics/drawable/LayerDrawable;
    :goto_1
    return-void
.end method


# virtual methods
.method public ColorLeft()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the left of the thumb."
    .end annotation

    .line 391
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    return v0
.end method

.method public ColorLeft(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFC800"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 406
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->leftColor:I

    .line 407
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSliderColors()V

    .line 408
    return-void
.end method

.method public ColorRight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of slider to the right of the thumb."
    .end annotation

    .line 423
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    return v0
.end method

.method public ColorRight(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 438
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->rightColor:I

    .line 439
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSliderColors()V

    .line 440
    return-void
.end method

.method public Height()I
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I

    .line 554
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 555
    return-void
.end method

.method public MaxValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the slider max value."
        userVisible = true
    .end annotation

    .line 342
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    return v0
.end method

.method public MaxValue(F)V
    .locals 2
    .param p1, "value"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the maximum value of slider. If the new maximum is less than the current minimum, then minimum and maximum will both be set to this value. "
        userVisible = true
    .end annotation

    .line 324
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    .line 325
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    .line 330
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->numberOfSteps:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 331
    return-void
.end method

.method public MinValue()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the value of slider min value."
        userVisible = true
    .end annotation

    .line 310
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    return v0
.end method

.method public MinValue(F)V
    .locals 2
    .param p1, "value"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "10.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the minimum value of slider. If the new minimum is greater than the current maximum, then minimum and maximum will both be set to this value."
        userVisible = true
    .end annotation

    .line 290
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    .line 292
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    .line 297
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->numberOfSteps:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 298
    return-void
.end method

.method public NumberOfSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Number of steps on the slider scale. Combined withMinValue and MaxValue, it allows you to get the slider precision that you want, e.g. MinValue = 0,MaxValue = 150, NumberOfSteps = 1000, the slider will change position every 0.15."
        userVisible = true
    .end annotation

    .line 354
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->numberOfSteps:I

    return v0
.end method

.method public NumberOfSteps(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 366
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->numberOfSteps:I

    .line 368
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 370
    .local v0, "oldPosition":F
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Slider;->notice:Z

    .line 371
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 373
    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 374
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSeekbarPosition()V

    .line 375
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Slider;->notice:Z

    .line 376
    return-void
.end method

.method public PositionChanged(F)V
    .locals 3
    .param p1, "thumbPosition"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when the thumb slider position has changed."
    .end annotation

    .line 504
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "PositionChanged"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method public ThumbColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The slider thumb color"
    .end annotation

    .line 455
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbColor:I

    return v0
.end method

.method public ThumbColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 470
    iput p1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbColor:I

    .line 471
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSliderColors()V

    .line 472
    return-void
.end method

.method public ThumbEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether or not to display the slider thumb."
        userVisible = true
    .end annotation

    .line 216
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    .line 217
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    .local v0, "alpha":I
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 219
    new-instance v1, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;-><init>(Lcom/google/appinventor/components/runtime/Slider;Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper-IA;)V

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;->getThumb(I)V

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/google/appinventor/components/runtime/Slider$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Slider$1;-><init>(Lcom/google/appinventor/components/runtime/Slider;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 229
    return-void
.end method

.method public ThumbEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether or not the slider thumb is being be shown"
        userVisible = true
    .end annotation

    .line 240
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbEnabled:Z

    return v0
.end method

.method public ThumbPosition()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the position of slider thumb"
        userVisible = true
    .end annotation

    .line 275
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    return v0
.end method

.method public ThumbPosition(F)V
    .locals 2
    .param p1, "position"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the position of the slider thumb. If this value is greater than MaxValue, then it will be set to same value as MaxValue. If this value is less than MinValue, then it will be set to same value as MinValue."
        userVisible = true
    .end annotation

    .line 260
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 263
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Slider;->setSeekbarPosition()V

    .line 264
    return-void
.end method

.method public TouchDown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when the user has started a touch gesture."
    .end annotation

    .line 512
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchDown"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 513
    return-void
.end method

.method public TouchUp()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when the user has finished a touch gesture."
    .end annotation

    .line 520
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchUp"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 521
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider;->seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 486
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Slider;->notice:Z

    if-eqz v0, :cond_0

    .line 487
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->maxValue:F

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    sub-float/2addr v0, v1

    int-to-float v1, p2

    mul-float v0, v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->numberOfSteps:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/Slider;->minValue:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    .line 495
    iget v0, p0, Lcom/google/appinventor/components/runtime/Slider;->thumbPosition:F

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Slider;->PositionChanged(F)V

    .line 497
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 525
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->TouchDown()V

    .line 526
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 530
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Slider;->TouchUp()V

    .line 531
    return-void
.end method
