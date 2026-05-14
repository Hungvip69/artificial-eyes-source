.class Lcom/google/appinventor/components/runtime/DataCollection$6;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->GetEntriesWithXValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$x:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 559
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$6;, "Lcom/google/appinventor/components/runtime/DataCollection$6;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$6;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$6;->val$x:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3

    .line 563
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$6;, "Lcom/google/appinventor/components/runtime/DataCollection$6;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$6;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$6;->val$x:Ljava/lang/String;

    sget-object v2, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->XValue:Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/DataModel;->findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 559
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$6;, "Lcom/google/appinventor/components/runtime/DataCollection$6;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/DataCollection$6;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method
