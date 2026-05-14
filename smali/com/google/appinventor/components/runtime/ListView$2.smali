.class Lcom/google/appinventor/components/runtime/ListView$2;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ListView;->setListAdapter(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ListView;

    .line 1322
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILandroid/view/View;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 1325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$2;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 1326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$2;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    .line 1327
    return-void
.end method
