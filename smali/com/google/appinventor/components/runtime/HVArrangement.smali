.class public Lcom/google/appinventor/components/runtime/HVArrangement;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "HVArrangement.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HVArrangement"


# instance fields
.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private allChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final context:Landroid/app/Activity;

.field private defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private frameContainer:Landroid/view/ViewGroup;

.field private horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field private imagePath:Ljava/lang/String;

.field private final orientation:I

.field private scrollable:Z

.field private verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;IZ)V
    .locals 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "orientation"    # I
    .param p3, "scrollable"    # Z

    .line 95
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollable:Z

    .line 67
    sget-object v1, Lcom/google/appinventor/components/common/HorizontalAlignment;->Left:Lcom/google/appinventor/components/common/HorizontalAlignment;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 68
    sget-object v1, Lcom/google/appinventor/components/common/VerticalAlignment;->Top:Lcom/google/appinventor/components/common/VerticalAlignment;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 75
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->allChildren:Ljava/util/List;

    .line 82
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    .line 96
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    .line 98
    iput p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->orientation:I

    .line 99
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->scrollable:Z

    .line 100
    new-instance v1, Lcom/google/appinventor/components/runtime/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    .line 101
    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 102
    invoke-direct {v1, v2, p2, v4, v4}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 104
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 105
    new-instance v1, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 106
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 107
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 109
    const-string v1, "HVArrangement"

    if-eqz p3, :cond_0

    .line 110
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    const-string v2, "Setting up frameContainer = HorizontalScrollView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v1, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    goto :goto_0

    .line 112
    :pswitch_1
    const-string v2, "Setting up frameContainer = ScrollView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    .line 114
    nop

    .line 118
    :goto_0
    goto :goto_1

    .line 121
    :cond_0
    const-string v2, "Setting up frameContainer = FrameLayout()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    .line 125
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->BackgroundColor(I)V

    .line 136
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateAppearance()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 427
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->defaultButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 434
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 440
    :goto_0
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->allChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public AlignHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the %type% are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 5
    .param p1, "alignment"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/HorizontalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    .line 277
    .local v0, "align":Lcom/google/appinventor/components/common/HorizontalAlignment;
    if-nez v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 278
    const-string v2, "HorizontalAlignment"

    const/16 v4, 0x579

    invoke-virtual {v1, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 280
    return-void

    .line 282
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 283
    return-void
.end method

.method public AlignHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object v0
.end method

.method public AlignHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .locals 1
    .param p1, "alignment"    # Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    .line 261
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->horizontalAlignment:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 262
    return-void
.end method

.method public AlignVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the %type% are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement\'s height is automatic."
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AlignVertical(I)V
    .locals 5
    .param p1, "alignment"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VerticalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    .line 331
    .local v0, "align":Lcom/google/appinventor/components/common/VerticalAlignment;
    if-nez v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 333
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 332
    const-string v2, "VerticalAlignment"

    const/16 v4, 0x57a

    invoke-virtual {v1, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 334
    return-void

    .line 336
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 337
    return-void
.end method

.method public AlignVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method

.method public AlignVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .locals 1
    .param p1, "alignment"    # Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    .line 315
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->verticalAlignment:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 316
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the background color of the %type%"
    .end annotation

    .line 348
    iget v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

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

    .line 366
    iput p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundColor:I

    .line 368
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->updateAppearance()V

    .line 370
    return-void
.end method

.method public Image()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public Image(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the path of the background image for the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible."
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 399
    return-void

    .line 402
    :cond_0
    if-nez p1, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->imagePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_1

    .line 411
    :catch_0
    move-exception v0

    .line 417
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/HVArrangement;->updateAppearance()V

    .line 418
    return-void
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

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->allChildren:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->frameContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    .line 197
    .local v0, "cHeight":I
    if-nez v0, :cond_0

    .line 198
    move v1, p2

    .line 199
    .local v1, "fHeight":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/HVArrangement$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/HVArrangement$2;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 207
    .end local v1    # "fHeight":I
    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    .line 208
    add-int/lit16 v1, p2, 0x3e8

    neg-int v1, v1

    mul-int v1, v1, v0

    div-int/lit8 p2, v1, 0x64

    .line 211
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 213
    iget v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 214
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForHorizontalLayout(Landroid/view/View;I)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 218
    :goto_0
    return-void
.end method

.method public setChildNeedsLayout(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 223
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/HVArrangement;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    .line 166
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I
    .param p3, "trycount"    # I

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    .line 170
    .local v0, "cWidth":I
    if-nez v0, :cond_0

    const/4 v1, 0x2

    if-ge p3, v1, :cond_0

    .line 171
    move v1, p2

    .line 172
    .local v1, "fWidth":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/HVArrangement$1;

    invoke-direct {v3, p0, p1, v1, p3}, Lcom/google/appinventor/components/runtime/HVArrangement$1;-><init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    .end local v1    # "fWidth":I
    :cond_0
    const/16 v1, -0x3e8

    if-gt p2, v1, :cond_1

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HVArrangement.setChildWidth(): width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parent Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HVArrangement"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    add-int/lit16 v1, p2, 0x3e8

    neg-int v1, v1

    mul-int v1, v1, v0

    div-int/lit8 p2, v1, 0x64

    .line 185
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 187
    iget v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 188
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForHorizontalLayout(Landroid/view/View;I)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 192
    :goto_0
    return-void
.end method
