.class Lcom/google/appinventor/components/runtime/DataCollection$2;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->ImportFromList(Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$list:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 417
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$2;, "Lcom/google/appinventor/components/runtime/DataCollection$2;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$2;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$2;->val$list:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 420
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$2;, "Lcom/google/appinventor/components/runtime/DataCollection$2;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$2;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$2;->val$list:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/DataModel;->importFromList(Ljava/util/List;)V

    .line 421
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$2;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V

    .line 422
    return-void
.end method
