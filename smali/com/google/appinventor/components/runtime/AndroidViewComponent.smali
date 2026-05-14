.class public abstract Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "AndroidViewComponent.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private column:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private lastSetHeight:I

.field private lastSetWidth:I

.field private left:I

.field private percentHeightHolder:I

.field private percentWidthHolder:I

.field private row:I

.field private top:I


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 47
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    .line 31
    const/4 v0, -0x3

    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    .line 32
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    .line 33
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    .line 37
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    .line 39
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->left:I

    .line 40
    iput v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->top:I

    .line 48
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 49
    return-void
.end method


# virtual methods
.method public Column()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 243
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    return v0
.end method

.method public Column(I)V
    .locals 0
    .param p1, "column"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 253
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->column:I

    .line 254
    return-void
.end method

.method public CopyHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .param p1, "sourceComponent"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimplePropertyCopier;
    .end annotation

    .line 233
    iget v0, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 234
    return-void
.end method

.method public CopyWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .param p1, "sourceComponent"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimplePropertyCopier;
    .end annotation

    .line 171
    iget v0, p1, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 172
    return-void
.end method

.method public Height()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public Height(I)V
    .locals 2
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the vertical height of the %type%, measured in pixels."
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 194
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetHeight:I

    .line 195
    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->unregisterPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    .line 200
    :goto_0
    return-void
.end method

.method public HeightPercent(I)V
    .locals 4
    .param p1, "pCent"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the vertical height of the %type% as a percentage of the height of the Screen."
    .end annotation

    .line 213
    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    neg-int v0, p1

    add-int/lit16 v0, v0, -0x3e8

    .line 219
    .local v0, "v":I
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 220
    return-void

    .line 214
    .end local v0    # "v":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 214
    const-string v1, "HeightPercent"

    const/16 v3, 0xaf1

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 216
    return-void
.end method

.method public Left()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 265
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->left:I

    return v0
.end method

.method public Left(I)V
    .locals 1
    .param p1, "x"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 276
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->left:I

    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildNeedsLayout(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 278
    return-void
.end method

.method public Row()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 287
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    return v0
.end method

.method public Row(I)V
    .locals 0
    .param p1, "row"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 297
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->row:I

    .line 298
    return-void
.end method

.method public Top()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 309
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->top:I

    return v0
.end method

.method public Top(I)V
    .locals 1
    .param p1, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 320
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->top:I

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildNeedsLayout(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 322
    return-void
.end method

.method public Visible(Z)V
    .locals 2
    .param p1, "visibility"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 79
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 80
    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the %type% should be visible on the screen. Value is true if the %type% is showing and false if hidden."
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Width()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 92
    .local v0, "zWidth":I
    return v0
.end method

.method public Width(I)V
    .locals 2
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the horizontal width of the %type%, measured in pixels."
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 104
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->lastSetWidth:I

    .line 105
    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->WIDTH:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->registerPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;ILcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->WIDTH:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->unregisterPercentLength(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;)V

    .line 110
    :goto_0
    return-void
.end method

.method public WidthPercent(I)V
    .locals 4
    .param p1, "pCent"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the horizontal width of the %type% as a percentage of the width of the Screen."
    .end annotation

    .line 123
    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    neg-int v0, p1

    add-int/lit16 v0, v0, -0x3e8

    .line 129
    .local v0, "v":I
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 130
    return-void

    .line 124
    .end local v0    # "v":I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 124
    const-string v1, "WidthPercent"

    const/16 v3, 0xaf1

    invoke-virtual {v0, p0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public getSetHeight()I
    .locals 2

    .line 153
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    return v0

    .line 156
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    return v0
.end method

.method public getSetWidth()I
    .locals 2

    .line 139
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    return v0

    .line 142
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    return v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public setLastHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 148
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentHeightHolder:I

    .line 149
    return-void
.end method

.method public setLastWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 134
    iput p1, p0, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->percentWidthHolder:I

    .line 135
    return-void
.end method
