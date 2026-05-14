.class Lcom/kumaraswamy/camerax/ProCamera$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "ProCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kumaraswamy/camerax/ProCamera;
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

    .line 148
    iput-object p1, p0, Lcom/kumaraswamy/camerax/ProCamera$3;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 150
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 151
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$3;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/ProCamera;->createCameraPreview()V

    .line 152
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 153
    .local v0, "res":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera$3;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-virtual {v1}, Lcom/kumaraswamy/camerax/ProCamera;->FocusLocked()V

    goto :goto_0

    .line 155
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera$3;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-virtual {v1}, Lcom/kumaraswamy/camerax/ProCamera;->FocusUnlocked()V

    .line 158
    :cond_1
    :goto_0
    return-void
.end method
