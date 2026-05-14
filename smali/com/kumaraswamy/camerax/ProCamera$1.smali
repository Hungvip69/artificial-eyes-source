.class Lcom/kumaraswamy/camerax/ProCamera$1;
.super Ljava/lang/Object;
.source "ProCamera.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

    .line 110
    iput-object p1, p0, Lcom/kumaraswamy/camerax/ProCamera$1;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "height"    # I
    .param p3, "width"    # I

    .line 112
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$1;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-static {v0, p2, p3}, Lcom/kumaraswamy/camerax/ProCamera;->access$000(Lcom/kumaraswamy/camerax/ProCamera;II)V

    .line 113
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera$1;->this$0:Lcom/kumaraswamy/camerax/ProCamera;

    invoke-static {v0}, Lcom/kumaraswamy/camerax/ProCamera;->access$100(Lcom/kumaraswamy/camerax/ProCamera;)V

    .line 114
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .line 117
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 124
    return-void
.end method
