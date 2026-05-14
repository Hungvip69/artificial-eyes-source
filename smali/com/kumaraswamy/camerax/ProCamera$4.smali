.class Lcom/kumaraswamy/camerax/ProCamera$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "ProCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kumaraswamy/camerax/ProCamera;->createCameraPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kumaraswamy/camerax/ProCamera;


# direct methods
.method constructor <init>(Lcom/kumaraswamy/camerax/ProCamera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kumaraswamy/camerax/ProCamera;

    .line 633
    iput-object p1, p0, Lcom/kumaraswamy/camerax/ProCamera$4;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 645
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$4;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/ProCamera;->InitializeFailed()V

    .line 646
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "cameraCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 635
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$4;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-static {v0}, Lcom/kumaraswamy/camerax/ProCamera;->access$200(Lcom/kumaraswamy/camerax/ProCamera;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 636
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$4;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-static {v0, p1}, Lcom/kumaraswamy/camerax/ProCamera;->access$302(Lcom/kumaraswamy/camerax/ProCamera;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 639
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$4;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/ProCamera;->MaxZoom()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera Zoom"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$4;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/ProCamera;->Initialized()V

    .line 641
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$4;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/ProCamera;->updatePreview()V

    .line 642
    return-void
.end method
