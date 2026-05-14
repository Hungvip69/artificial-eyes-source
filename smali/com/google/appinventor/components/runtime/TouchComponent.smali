.class public abstract Lcom/google/appinventor/components/runtime/TouchComponent;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "TouchComponent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/google/appinventor/components/runtime/AndroidViewComponent;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TouchComponent"


# instance fields
.field protected backgroundColor:I

.field protected backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field protected defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private imagePath:Ljava/lang/String;

.field private showFeedback:Z

.field protected view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 62
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->showFeedback:Z

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->imagePath:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the button\'s background color"
    .end annotation

    .line 168
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundColor:I

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
        description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed."
    .end annotation

    .line 186
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundColor:I

    .line 187
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TouchComponent;->updateAppearance()V

    .line 188
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 123
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 125
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, user can tap %type% to cause action."
    .end annotation

    .line 111
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image to display on button."
    .end annotation

    .line 199
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
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
        description = "Specifies the path of the image of the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 220
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 221
    return-void

    .line 224
    :cond_0
    if-nez p1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->imagePath:Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->imagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->imagePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchComponent"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TouchComponent;->updateAppearance()V

    .line 242
    return-void
.end method

.method public ShowFeedback(Z)V
    .locals 0
    .param p1, "showFeedback"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies if a visual feedback should be shown  for a %type% that has an image as background."
    .end annotation

    .line 139
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->showFeedback:Z

    .line 140
    return-void
.end method

.method public ShowFeedback()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the visual feedback state of the %type%"
    .end annotation

    .line 154
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->showFeedback:Z

    return v0
.end method

.method public TouchDown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% was pressed down."
    .end annotation

    .line 91
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchDown"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method public TouchUp()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the %type% has been released."
    .end annotation

    .line 99
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TouchUp"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 83
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    return-object v0
.end method

.method protected initToggle()V
    .locals 1

    .line 67
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TouchComponent;->BackgroundColor(I)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TouchComponent;->Enabled(Z)V

    .line 78
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TouchComponent;->Image(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .line 257
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x15

    if-nez v0, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TouchComponent;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TouchComponent;->TouchDown()V

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 265
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    .line 267
    :cond_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TouchComponent;->ShowFeedback()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_5

    .line 268
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 269
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 271
    :cond_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TouchComponent;->TouchUp()V

    .line 274
    :cond_6
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected updateAppearance()V
    .locals 3

    .line 280
    .local p0, "this":Lcom/google/appinventor/components/runtime/TouchComponent;, "Lcom/google/appinventor/components/runtime/TouchComponent<TT;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 281
    iget v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundColor:I

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 285
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundColor:I

    const v1, 0xffffff

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TouchComponent;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 303
    :goto_0
    return-void
.end method
