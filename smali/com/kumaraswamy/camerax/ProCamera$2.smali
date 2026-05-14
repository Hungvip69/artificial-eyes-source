.class Lcom/kumaraswamy/camerax/ProCamera$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    .line 127
    iput-object p1, p0, Lcom/kumaraswamy/camerax/ProCamera$2;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 134
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$2;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-static {v0}, Lcom/kumaraswamy/camerax/ProCamera;->access$200(Lcom/kumaraswamy/camerax/ProCamera;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 135
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "error"    # I

    .line 138
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$2;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-static {v0}, Lcom/kumaraswamy/camerax/ProCamera;->access$200(Lcom/kumaraswamy/camerax/ProCamera;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 139
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$2;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kumaraswamy/camerax/ProCamera;->access$202(Lcom/kumaraswamy/camerax/ProCamera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 140
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/camera2/CameraDevice;

    .line 129
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$2;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-static {v0, p1}, Lcom/kumaraswamy/camerax/ProCamera;->access$202(Lcom/kumaraswamy/camerax/ProCamera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 130
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$2;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/ProCamera;->createCameraPreview()V

    .line 131
    return-void
.end method
