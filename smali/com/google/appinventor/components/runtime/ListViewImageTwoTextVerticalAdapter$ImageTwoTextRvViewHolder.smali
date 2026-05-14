.class public Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;
.super Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
.source "ListViewImageTwoTextVerticalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageTwoTextRvViewHolder"
.end annotation


# instance fields
.field public cardView:Landroidx/cardview/widget/CardView;

.field public imageView:Landroid/widget/ImageView;

.field public textViewFirst:Landroid/widget/TextView;

.field public textViewSecond:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;Landroid/view/View;IIII)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "idCard"    # I
    .param p4, "idFirst"    # I
    .param p5, "idSecond"    # I
    .param p6, "idImage"    # I

    .line 152
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;->this$0:Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Landroid/view/View;)V

    .line 154
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    .line 155
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;->textViewFirst:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;->textViewSecond:Landroid/widget/TextView;

    .line 157
    invoke-virtual {p2, p6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;->imageView:Landroid/widget/ImageView;

    .line 158
    return-void
.end method


# virtual methods
.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0

    .line 146
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->onClick(Landroid/view/View;)V

    return-void
.end method
