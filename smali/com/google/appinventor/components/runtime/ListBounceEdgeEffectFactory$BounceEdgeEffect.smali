.class Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "ListBounceEdgeEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BounceEdgeEffect"
.end annotation


# instance fields
.field private final direction:I

.field private final isHorizontal:Z

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;IZ)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "direction"    # I
    .param p3, "isHorizontal"    # Z

    .line 34
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iput p2, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->direction:I

    .line 37
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->isHorizontal:Z

    .line 38
    return-void
.end method

.method private createAnim()Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 3

    .line 98
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->isHorizontal:Z

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/dynamicanimation/animation/SpringAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    :goto_0
    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 100
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 101
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 102
    const/high16 v2, 0x43480000    # 200.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    .line 98
    return-object v0
.end method

.method private getTranslation()F
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->isHorizontal:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getTranslationX()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getTranslationY()F

    move-result v0

    :goto_0
    return v0
.end method

.method private handlePull(F)V
    .locals 3
    .param p1, "deltaDistance"    # F

    .line 53
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->isHorizontal:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->direction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 54
    .local v0, "sign":I
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    mul-int v1, v1, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v1, v1, v2

    .line 55
    .local v1, "translationDelta":F
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translateRecyclerView(F)V

    .line 56
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 59
    :cond_2
    return-void
.end method

.method private translateRecyclerView(F)V
    .locals 2
    .param p1, "translationDelta"    # F

    .line 111
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->isHorizontal:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->getTranslation()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationX(F)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->getTranslation()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTranslationY(F)V

    .line 116
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onAbsorb(I)V
    .locals 3
    .param p1, "velocity"    # I

    .line 74
    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 75
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->isHorizontal:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->direction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 76
    .local v0, "sign":I
    :goto_1
    mul-int v1, v0, p1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    .line 77
    .local v1, "translationVelocity":F
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_2

    .line 78
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->createAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 81
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v2, :cond_3

    .line 82
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 83
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 85
    :cond_3
    return-void
.end method

.method public onPull(F)V
    .locals 0
    .param p1, "deltaDistance"    # F

    .line 42
    invoke-super {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 43
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->handlePull(F)V

    .line 44
    return-void
.end method

.method public onPull(FF)V
    .locals 0
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 49
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->handlePull(F)V

    .line 50
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 63
    invoke-super {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 64
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->getTranslation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->createAnim()Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;->translationAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 70
    :cond_0
    return-void
.end method
