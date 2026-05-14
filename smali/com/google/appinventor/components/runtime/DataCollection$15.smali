.class Lcom/google/appinventor/components/runtime/DataCollection$15;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->onReceiveValue(Lcom/google/appinventor/components/runtime/RealTimeDataSource;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$finalValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 998
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$15;, "Lcom/google/appinventor/components/runtime/DataCollection$15;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->val$finalValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1003
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$15;, "Lcom/google/appinventor/components/runtime/DataCollection$15;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/Chart;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    check-cast v1, Lcom/google/appinventor/components/runtime/Chart;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgettick(Lcom/google/appinventor/components/runtime/DataCollection;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Chart;->getSyncedTValue(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fputtick(Lcom/google/appinventor/components/runtime/DataCollection;I)V

    .line 1007
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgettick(Lcom/google/appinventor/components/runtime/DataCollection;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->val$finalValue:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 1009
    .local v1, "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/DataModel;->addTimeEntry(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1010
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V

    .line 1013
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$15;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgettick(Lcom/google/appinventor/components/runtime/DataCollection;)I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fputtick(Lcom/google/appinventor/components/runtime/DataCollection;I)V

    .line 1015
    .end local v1    # "tuple":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_0
    return-void
.end method
