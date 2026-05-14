.class public Lcom/google/appinventor/components/runtime/AbsoluteArrangement;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "AbsoluteArrangement.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A formatting element in which to place components that should be displayed at any coordinates.</p>"
    iconName = "images/absoluteArrangement.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AArrangement"


# instance fields
.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/app/Activity;

.field private imagePath:Ljava/lang/String;

.field private final viewLayout:Lcom/google/appinventor/components/runtime/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 70
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->children:Ljava/util/List;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->imagePath:Ljava/lang/String;

    .line 71
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->context:Landroid/app/Activity;

    .line 73
    const-string v0, "AArrangement"

    const-string v1, "Setting up layoutManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v0, Lcom/google/appinventor/components/runtime/RelativeLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->context:Landroid/app/Activity;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 76
    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/runtime/RelativeLayout;-><init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/RelativeLayout;

    .line 78
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->BackgroundColor(I)V

    .line 80
    return-void
.end method

.method private updateAppearance()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 243
    iget v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->backgroundColor:I

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 247
    .local v0, "color":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/RelativeLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 248
    .end local v0    # "color":I
    goto :goto_1

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/RelativeLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/RelativeLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_1

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/RelativeLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 257
    :goto_1
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/RelativeLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 98
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the component\'s background color"
    .end annotation

    .line 166
    iget v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the component\'s background color. The background color will not be visible if an Image is being displayed."
    .end annotation

    .line 182
    iput p1, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->backgroundColor:I

    .line 183
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->updateAppearance()V

    .line 184
    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the component\'s image.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 211
    if-nez p1, :cond_0

    .line 212
    const-string p1, ""

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 215
    return-void

    .line 218
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->imagePath:Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 233
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->updateAppearance()V

    .line 234
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/RelativeLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .line 125
    const/16 v0, -0x3e8

    if-gt p2, v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v1

    .line 128
    .local v1, "childHeight":I
    if-le v1, v0, :cond_0

    if-gtz v1, :cond_0

    .line 130
    const/4 p2, -0x1

    goto :goto_0

    .line 132
    :cond_0
    add-int/lit16 v0, p2, 0x3e8

    neg-int v0, v0

    mul-int v0, v0, v1

    div-int/lit8 p2, v0, 0x64

    .line 136
    .end local v1    # "childHeight":I
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 138
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForRelativeLayout(Landroid/view/View;I)V

    .line 139
    return-void
.end method

.method public setChildNeedsLayout(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/RelativeLayout;->updateComponentPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 144
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChildWidth: width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " component = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AArrangement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/16 v0, -0x3e8

    if-gt p2, v0, :cond_1

    .line 106
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AbsoluteArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v2

    .line 108
    .local v2, "childWidth":I
    if-le v2, v0, :cond_0

    if-gtz v2, :cond_0

    .line 110
    const/4 p2, -0x1

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%%setChildWidth(): width = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " parent Width = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " child = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    add-int/lit16 v0, p2, 0x3e8

    neg-int v0, v0

    mul-int v0, v0, v2

    div-int/lit8 p2, v0, 0x64

    .line 118
    .end local v2    # "childWidth":I
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 120
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForRelativeLayout(Landroid/view/View;I)V

    .line 121
    return-void
.end method
