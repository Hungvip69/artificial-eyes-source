.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/MapView$OnTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;-><init>(Lcom/google/appinventor/components/runtime/Form;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .line 349
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lorg/osmdroid/views/MapView;DD)V
    .locals 2
    .param p1, "view"    # Lorg/osmdroid/views/MapView;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .line 359
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 360
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onDoubleTap(DD)V

    .line 361
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method public onSingleTap(Lorg/osmdroid/views/MapView;DD)V
    .locals 2
    .param p1, "view"    # Lorg/osmdroid/views/MapView;
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$1;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

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

    .line 353
    .local v1, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    invoke-interface {v1, p2, p3, p4, p5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onSingleTap(DD)V

    .line 354
    .end local v1    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    goto :goto_0

    .line 355
    :cond_0
    return-void
.end method
