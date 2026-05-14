.class Lcom/google/appinventor/components/runtime/DataCollection$1;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->ElementsFromPairs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$elements:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 184
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$1;, "Lcom/google/appinventor/components/runtime/DataCollection$1;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$1;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$1;->val$elements:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$1;, "Lcom/google/appinventor/components/runtime/DataCollection$1;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$1;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$1;->val$elements:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/DataModel;->setElements(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$1;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V

    .line 189
    return-void
.end method
