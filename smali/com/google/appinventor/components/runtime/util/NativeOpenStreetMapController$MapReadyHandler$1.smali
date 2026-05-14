.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler$1;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    .line 273
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgeteventListeners(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 277
    .local v1, "l":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler$1;->this$1:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MapReadyHandler;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-interface {v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onReady(Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;)V

    .line 278
    .end local v1    # "l":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method
