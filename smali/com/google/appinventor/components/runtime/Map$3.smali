.class Lcom/google/appinventor/components/runtime/Map$3;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map;->doSave(Ljava/util/List;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Map;

.field final synthetic val$e:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Map;

    .line 666
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map$3;->this$0:Lcom/google/appinventor/components/runtime/Map;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Map$3;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 669
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map$3;->this$0:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map$3;->this$0:Lcom/google/appinventor/components/runtime/Map;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Map$3;->val$e:Ljava/io/IOException;

    .line 670
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 669
    const-string v2, "Save"

    const/16 v4, 0xd54

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 671
    return-void
.end method
