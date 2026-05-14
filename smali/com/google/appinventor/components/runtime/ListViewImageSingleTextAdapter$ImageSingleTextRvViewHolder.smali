.class public Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;
.super Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
.source "ListViewImageSingleTextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageSingleTextRvViewHolder"
.end annotation


# instance fields
.field public cardView:Landroidx/cardview/widget/CardView;

.field public imageView:Landroid/widget/ImageView;

.field public textViewFirst:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;Landroid/view/View;III)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "idCard"    # I
    .param p4, "idFirst"    # I
    .param p5, "idImage"    # I

    .line 120
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;->this$0:Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Landroid/view/View;)V

    .line 122
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    .line 123
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;->textViewFirst:Landroid/widget/TextView;

    .line 124
    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;->imageView:Landroid/widget/ImageView;

    .line 125
    return-void
.end method


# virtual methods
.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->onClick(Landroid/view/View;)V

    return-void
.end method
