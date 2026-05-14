.class Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;

.field final synthetic val$parent:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;

    .line 1401
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->this$1:Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->val$parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 1405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->this$1:Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->-$$Nest$fgetrecyclerViewWidth(Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;)I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->val$parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->this$1:Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->val$parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->-$$Nest$fputrecyclerViewWidth(Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;I)V

    .line 1407
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->val$parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1408
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->val$parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1409
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1410
    .local v2, "childLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->this$1:Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->-$$Nest$fgetrecyclerViewWidth(Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->this$1:Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1411
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1407
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1413
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration$1;->val$parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 1415
    :cond_1
    return-void
.end method
