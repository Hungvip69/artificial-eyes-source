.class Lcom/kumaraswamy/camerax/ProCamera$5;
.super Ljava/lang/Object;
.source "ProCamera.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


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


# direct methods
.method constructor <init>(Lcom/kumaraswamy/camerax/ProCamera;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kumaraswamy/camerax/ProCamera;

    .line 703
    iput-object p1, p0, Lcom/kumaraswamy/camerax/ProCamera$5;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 705
    const/4 v0, 0x0

    .line 707
    .local v0, "image":Landroid/media/Image;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    move-object v0, v1

    .line 708
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 709
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-array v2, v2, [B

    .line 710
    .local v2, "bytes":[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 711
    iget-object v3, p0, Lcom/kumaraswamy/camerax/ProCamera$5;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-static {v3, v2}, Lcom/kumaraswamy/camerax/ProCamera;->access$400(Lcom/kumaraswamy/camerax/ProCamera;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytes":[B
    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 717
    :cond_0
    return-void

    .line 713
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 714
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 716
    :cond_1
    throw v1
.end method
