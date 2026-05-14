.class Lcom/google/appinventor/components/runtime/DataCollection$9;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->ImportFromTinyDB(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 651
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$9;, "Lcom/google/appinventor/components/runtime/DataCollection$9;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$9;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$9;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 654
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$9;, "Lcom/google/appinventor/components/runtime/DataCollection$9;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$9;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$9;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/DataModel;->importFromList(Ljava/util/List;)V

    .line 655
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$9;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V

    .line 656
    return-void
.end method
