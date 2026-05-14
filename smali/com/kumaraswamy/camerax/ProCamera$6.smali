.class Lcom/kumaraswamy/camerax/ProCamera$6;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "ProCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kumaraswamy/camerax/ProCamera;->takePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kumaraswamy/camerax/ProCamera;

.field final synthetic val$captureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Lcom/kumaraswamy/camerax/ProCamera;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kumaraswamy/camerax/ProCamera;

    .line 720
    iput-object p1, p0, Lcom/kumaraswamy/camerax/ProCamera$6;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    iput-object p2, p0, Lcom/kumaraswamy/camerax/ProCamera$6;->val$captureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 731
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$6;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/ProCamera;->createCameraPreview()V

    .line 732
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$6;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/ProCamera;->TakePreviewPicture()V

    .line 733
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 723
    :try_start_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$6;->val$captureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera$6;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    iget-object v1, v1, Lcom/kumaraswamy/camerax/ProCamera;->captureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 728
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method
