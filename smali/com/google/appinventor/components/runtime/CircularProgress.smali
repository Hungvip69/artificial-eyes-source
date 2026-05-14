.class public final Lcom/google/appinventor/components/runtime/CircularProgress;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "CircularProgress.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A visible component that indicates the progress of an operation using an animated loop."
    iconName = "images/circularProgress.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CircularProgress"


# instance fields
.field private context:Landroid/content/Context;

.field private indeterminateColor:I

.field private layoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 45
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 42
    const v0, -0xffff01

    iput v0, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->indeterminateColor:I

    .line 46
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->context:Landroid/content/Context;

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x1010077

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->progressBar:Landroid/widget/ProgressBar;

    .line 50
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->progressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->layoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/CircularProgress;->Color(I)V

    .line 55
    const-string v0, "CircularProgress"

    const-string v1, "Circular Progress created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method


# virtual methods
.method public Color()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 80
    iget v0, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->indeterminateColor:I

    return v0
.end method

.method public Color(I)V
    .locals 3
    .param p1, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF0000FF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Change the indeterminate color of the circular progress bar."
    .end annotation

    .line 67
    iput p1, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->indeterminateColor:I

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 70
    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 72
    :cond_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 74
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Indeterminate Color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CircularProgress"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/CircularProgress;->getView()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/widget/ProgressBar;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CircularProgress;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method
