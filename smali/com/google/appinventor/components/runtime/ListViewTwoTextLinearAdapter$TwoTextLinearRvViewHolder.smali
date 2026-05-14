.class public Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter$TwoTextLinearRvViewHolder;
.super Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
.source "ListViewTwoTextLinearAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwoTextLinearRvViewHolder"
.end annotation


# instance fields
.field public cardView:Landroidx/cardview/widget/CardView;

.field public textViewFirst:Landroid/widget/TextView;

.field public textViewSecond:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter;Landroid/view/View;III)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "idCard"    # I
    .param p4, "idFirst"    # I
    .param p5, "idSecond"    # I

    .line 117
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter$TwoTextLinearRvViewHolder;->this$0:Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter;

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Landroid/view/View;)V

    .line 119
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter$TwoTextLinearRvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    .line 120
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter$TwoTextLinearRvViewHolder;->textViewFirst:Landroid/widget/TextView;

    .line 121
    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter$TwoTextLinearRvViewHolder;->textViewSecond:Landroid/widget/TextView;

    .line 122
    return-void
.end method


# virtual methods
.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->onClick(Landroid/view/View;)V

    return-void
.end method
