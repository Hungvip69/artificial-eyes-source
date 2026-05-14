.class public Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;
.super Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
.source "ListViewTwoTextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwoTextRvViewHolder"
.end annotation


# instance fields
.field public cardView:Landroidx/cardview/widget/CardView;

.field public textViewFirst:Landroid/widget/TextView;

.field public textViewSecond:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;Landroid/view/View;III)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "idCard"    # I
    .param p4, "idFirst"    # I
    .param p5, "idSecond"    # I

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;->this$0:Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Landroid/view/View;)V

    .line 126
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    .line 127
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;->textViewFirst:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;->textViewSecond:Landroid/widget/TextView;

    .line 129
    return-void
.end method


# virtual methods
.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->onClick(Landroid/view/View;)V

    return-void
.end method
