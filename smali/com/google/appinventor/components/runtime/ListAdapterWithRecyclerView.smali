.class public abstract Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListAdapterWithRecyclerView.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;,
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "ListView"


# instance fields
.field protected backgroundColor:I

.field protected clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

.field protected container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field protected final filter:Landroid/widget/Filter;

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected lastQuery:Ljava/lang/String;

.field protected originalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected originalPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected radius:F

.field protected selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected selectionColor:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIF)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p3, "backgroundColor"    # I
    .param p4, "selectionColor"    # I
    .param p5, "radius"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;IIF)V"
        }
    .end annotation

    .line 91
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalItems:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalPositions:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->lastQuery:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 93
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    .line 94
    iput p5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->radius:F

    .line 95
    iput p4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    .line 96
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->updateData(Ljava/util/List;)V

    .line 97
    return-void
.end method


# virtual methods
.method public changeSelections(I)V
    .locals 2
    .param p1, "position"    # I

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyItemChanged(I)V

    .line 168
    return-void
.end method

.method public clearSelections()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    return-void
.end method

.method protected createCardView(Landroid/view/ViewGroup;)Landroidx/cardview/widget/CardView;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 110
    new-instance v0, Landroidx/cardview/widget/CardView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 111
    .local v0, "cardView":Landroidx/cardview/widget/CardView;
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v1, v1, v1}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 113
    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 114
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 115
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->radius:F

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 116
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 117
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 119
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    .line 120
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v2

    .line 121
    .local v2, "idCard":I
    invoke-virtual {v0, v2}, Landroidx/cardview/widget/CardView;->setId(I)V

    .line 123
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 124
    .local v3, "params1":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    invoke-virtual {v0, v3}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    .line 192
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    .line 193
    return-void
.end method

.method public toggleSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalPositions:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    .local v0, "oldPosition":I
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 152
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyItemChanged(I)V

    .line 154
    .end local v0    # "oldPosition":I
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyItemChanged(I)V

    .line 156
    return-void
.end method

.method protected updateCardViewColor(Landroidx/cardview/widget/CardView;I)V
    .locals 2
    .param p1, "cardView"    # Landroidx/cardview/widget/CardView;
    .param p2, "position"    # I

    .line 130
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectedItems:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_0

    .line 133
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 135
    :goto_0
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "newItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalItems:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->lastQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clearSelections()V

    .line 107
    return-void
.end method
