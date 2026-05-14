.class Lcom/google/appinventor/components/runtime/DataFile$4;
.super Ljava/lang/Object;
.source "DataFile.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataFile;->getDataValue(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/concurrent/Future;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataFile;

.field final synthetic val$columns:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataFile;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataFile;

    .line 283
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataFile$4;->this$0:Lcom/google/appinventor/components/runtime/DataFile;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataFile$4;->val$columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "resultingColumns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataFile$4;->val$columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataFile$4;->val$columns:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "columnName":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/DataFile$4;->this$0:Lcom/google/appinventor/components/runtime/DataFile;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/DataFile;->getColumn(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 293
    .local v3, "column":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v3    # "column":Lcom/google/appinventor/components/runtime/util/YailList;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/DataFile$4;->call()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method
