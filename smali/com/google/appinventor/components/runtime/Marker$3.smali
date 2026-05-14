.class Lcom/google/appinventor/components/runtime/Marker$3;
.super Ljava/lang/Object;
.source "Marker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Marker;->setNeedsUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Marker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Marker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Marker;

    .line 612
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Marker$3;->this$0:Lcom/google/appinventor/components/runtime/Marker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker$3;->this$0:Lcom/google/appinventor/components/runtime/Marker;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Marker$3;->this$0:Lcom/google/appinventor/components/runtime/Marker;

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureImage(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 616
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker$3;->this$0:Lcom/google/appinventor/components/runtime/Marker;

    monitor-enter v0

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Marker$3;->this$0:Lcom/google/appinventor/components/runtime/Marker;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Marker;->-$$Nest$fputpendingUpdate(Lcom/google/appinventor/components/runtime/Marker;Z)V

    .line 618
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
