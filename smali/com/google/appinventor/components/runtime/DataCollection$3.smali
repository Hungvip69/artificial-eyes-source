.class Lcom/google/appinventor/components/runtime/DataCollection$3;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->Clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 434
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$3;, "Lcom/google/appinventor/components/runtime/DataCollection$3;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$3;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 437
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$3;, "Lcom/google/appinventor/components/runtime/DataCollection$3;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$3;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/DataModel;->clearEntries()V

    .line 438
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$3;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V

    .line 439
    return-void
.end method
