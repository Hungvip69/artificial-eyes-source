.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/OverlayWithIWVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .line 929
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/osmdroid/views/overlay/Marker;)V
    .locals 3
    .param p1, "marker"    # Lorg/osmdroid/views/overlay/Marker;

    .line 932
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    check-cast v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10$1;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10$1;-><init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;Lorg/osmdroid/views/overlay/Marker;)V

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$mgetMarkerDrawable(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 944
    return-void
.end method

.method public visit(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 3
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .line 957
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 958
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgetform(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 959
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeColor(I)V

    .line 960
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polygon;->setStrokeWidth(F)V

    .line 961
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgetview(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 962
    return-void
.end method

.method public visit(Lorg/osmdroid/views/overlay/Polyline;)V
    .locals 3
    .param p1, "polyline"    # Lorg/osmdroid/views/overlay/Polyline;

    .line 948
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 949
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgetform(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 950
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polyline;->setColor(I)V

    .line 951
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->val$aiFeature:Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/overlay/Polyline;->setWidth(F)V

    .line 952
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$10;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->-$$Nest$fgetview(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Lorg/osmdroid/views/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 953
    return-void
.end method
