.class public final Lcom/google/appinventor/components/runtime/util/ImageViewUtil;
.super Ljava/lang/Object;
.source "ImageViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findOverflowMenuView(Landroid/app/Activity;)Landroid/widget/ImageView;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 39
    .local v0, "vg":Landroid/view/ViewGroup;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 40
    .local v1, "children":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/ViewGroup;>;"
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 42
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 45
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 46
    move-object v4, v3

    check-cast v4, Landroid/widget/ImageView;

    return-object v4

    .line 47
    :cond_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 48
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-interface {v1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 43
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_2
    goto :goto_0

    .line 52
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public static setMenuButtonColor(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .line 29
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    new-array v2, v1, [I

    const/4 v3, 0x1

    new-array v3, v3, [[I

    aput-object v2, v3, v1

    filled-new-array {p1}, [I

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 30
    .local v0, "stateList":Landroid/content/res/ColorStateList;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->findOverflowMenuView(Landroid/app/Activity;)Landroid/widget/ImageView;

    move-result-object v1

    .line 31
    .local v1, "view":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 32
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V

    .line 33
    invoke-static {v1, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 35
    :cond_0
    return-void
.end method
