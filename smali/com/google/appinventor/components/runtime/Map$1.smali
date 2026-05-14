.class Lcom/google/appinventor/components/runtime/Map$1;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map;->Save(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Map;

.field final synthetic val$featuresToSave:Ljava/util/List;

.field final synthetic val$target:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Map;

    .line 644
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map$1;->this$0:Lcom/google/appinventor/components/runtime/Map;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Map$1;->val$featuresToSave:Ljava/util/List;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Map$1;->val$target:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map$1;->this$0:Lcom/google/appinventor/components/runtime/Map;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map$1;->val$featuresToSave:Ljava/util/List;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Map$1;->val$target:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Map;->-$$Nest$mdoSave(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/io/File;)V

    .line 648
    return-void
.end method
