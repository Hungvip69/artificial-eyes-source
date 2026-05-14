.class Lcom/google/appinventor/components/runtime/DataCollection$8;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->GetAllEntries()Lcom/google/appinventor/components/runtime/util/YailList;
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


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 616
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$8;, "Lcom/google/appinventor/components/runtime/DataCollection$8;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$8;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 619
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$8;, "Lcom/google/appinventor/components/runtime/DataCollection$8;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$8;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/DataModel;->getEntriesAsTuples()Lcom/google/appinventor/components/runtime/util/YailList;

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

    .line 616
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$8;, "Lcom/google/appinventor/components/runtime/DataCollection$8;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/DataCollection$8;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method
