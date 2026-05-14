.class public Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory;
.super Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
.source "ListBounceEdgeEffectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;
    }
.end annotation


# static fields
.field private static final FLING_TRANSLATION_MAGNITUDE:F = 0.5f

.field private static final OVERSCROLL_TRANSLATION_MAGNITUDE:F = 0.2f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createEdgeEffect(Landroidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;
    .locals 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "direction"    # I

    .line 22
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 23
    .local v0, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 24
    .local v1, "isHorizontal":Z
    :goto_0
    new-instance v2, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;

    invoke-direct {v2, p1, p2, v1}, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory$BounceEdgeEffect;-><init>(Landroidx/recyclerview/widget/RecyclerView;IZ)V

    return-object v2
.end method
