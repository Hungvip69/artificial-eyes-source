.class public Lcom/kumaraswamy/camerax/ProCamera;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ProCamera.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Pro custom camera developed by Kumaraswamy B G"
    iconName = "data:image/png;base64,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"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.CAMERA"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private cameraID:Ljava/lang/String;

.field private cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

.field private cameraStyle:I

.field private cameraType:I

.field private cameraView:Landroid/widget/FrameLayout;

.field final captureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private currentZoom:F

.field private enhance:Z

.field private faceDetectMode:I

.field private finger_spacing:F

.field private flashMode:Z

.field private gestureZoom:Z

.field private hasZoomSupport:Z

.field private imageDestination:Ljava/lang/String;

.field private imageDimension:Landroid/util/Size;

.field private maxZoom:F

.field private noiseReductionMode:I

.field private final rectCrop:Landroid/graphics/Rect;

.field private rectSensor:Landroid/graphics/Rect;

.field private final stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private view:Landroid/view/View;

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    nop

    .line 97
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/kumaraswamy/camerax/ProCamera;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 98
    sget-object v0, Lcom/kumaraswamy/camerax/ProCamera;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 99
    sget-object v0, Lcom/kumaraswamy/camerax/ProCamera;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 100
    sget-object v0, Lcom/kumaraswamy/camerax/ProCamera;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 105
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraType:I

    .line 63
    iput v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->noiseReductionMode:I

    .line 64
    iput v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraStyle:I

    .line 65
    iput v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->faceDetectMode:I

    .line 74
    iput-boolean v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->flashMode:Z

    .line 75
    iput-boolean v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->enhance:Z

    .line 76
    iput-boolean v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->hasZoomSupport:Z

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->visible:Z

    .line 78
    iput-boolean v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->gestureZoom:Z

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->rectCrop:Landroid/graphics/Rect;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->finger_spacing:F

    .line 110
    new-instance v0, Lcom/kumaraswamy/camerax/ProCamera$1;

    invoke-direct {v0, p0}, Lcom/kumaraswamy/camerax/ProCamera$1;-><init>(Lcom/kumaraswamy/camerax/ProCamera;)V

    iput-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 127
    new-instance v0, Lcom/kumaraswamy/camerax/ProCamera$2;

    invoke-direct {v0, p0}, Lcom/kumaraswamy/camerax/ProCamera$2;-><init>(Lcom/kumaraswamy/camerax/ProCamera;)V

    iput-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 148
    new-instance v0, Lcom/kumaraswamy/camerax/ProCamera$3;

    invoke-direct {v0, p0}, Lcom/kumaraswamy/camerax/ProCamera$3;-><init>(Lcom/kumaraswamy/camerax/ProCamera;)V

    iput-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 107
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->activity:Landroid/app/Activity;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/kumaraswamy/camerax/ProCamera;II)V
    .locals 0
    .param p0, "x0"    # Lcom/kumaraswamy/camerax/ProCamera;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/kumaraswamy/camerax/ProCamera;->configureTransform(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/kumaraswamy/camerax/ProCamera;)V
    .locals 0
    .param p0, "x0"    # Lcom/kumaraswamy/camerax/ProCamera;

    .line 59
    invoke-direct {p0}, Lcom/kumaraswamy/camerax/ProCamera;->openCamera()V

    return-void
.end method

.method static synthetic access$200(Lcom/kumaraswamy/camerax/ProCamera;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0, "x0"    # Lcom/kumaraswamy/camerax/ProCamera;

    .line 59
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$202(Lcom/kumaraswamy/camerax/ProCamera;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0, "x0"    # Lcom/kumaraswamy/camerax/ProCamera;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraDevice;

    .line 59
    iput-object p1, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$302(Lcom/kumaraswamy/camerax/ProCamera;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/kumaraswamy/camerax/ProCamera;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 59
    iput-object p1, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kumaraswamy/camerax/ProCamera;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/kumaraswamy/camerax/ProCamera;
    .param p1, "x1"    # [B

    .line 59
    invoke-direct {p0, p1}, Lcom/kumaraswamy/camerax/ProCamera;->writeBytes([B)V

    return-void
.end method

.method private configureTransform(II)V
    .locals 9
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I

    .line 589
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDimension:Landroid/util/Size;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 593
    .local v0, "rotation":I
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 594
    .local v1, "matrix":Landroid/graphics/Matrix;
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p1

    int-to-float v4, p2

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 595
    .local v2, "viewRect":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDimension:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDimension:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v5, v5, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 596
    .local v3, "bufferRect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 597
    .local v4, "centerX":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    .line 598
    .local v5, "centerY":F
    const/4 v6, 0x1

    if-eq v6, v0, :cond_2

    const/4 v6, 0x3

    if-ne v6, v0, :cond_1

    goto :goto_0

    .line 605
    :cond_1
    const/4 v6, 0x2

    if-ne v6, v0, :cond_3

    .line 606
    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {v1, v6, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_1

    .line 599
    :cond_2
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float v6, v4, v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float v7, v5, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 600
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 601
    int-to-float v6, p2

    iget-object v7, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDimension:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, p1

    iget-object v8, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDimension:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 602
    .local v6, "scale":F
    invoke-virtual {v1, v6, v6, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 603
    add-int/lit8 v7, v0, -0x2

    mul-int/lit8 v7, v7, 0x5a

    int-to-float v7, v7

    invoke-virtual {v1, v7, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 604
    .end local v6    # "scale":F
    nop

    .line 608
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    invoke-virtual {v6, v1}, Lcom/kumaraswamy/camerax/AutoFitTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 609
    return-void

    .line 590
    .end local v0    # "rotation":I
    .end local v1    # "matrix":Landroid/graphics/Matrix;
    .end local v2    # "viewRect":Landroid/graphics/RectF;
    .end local v3    # "bufferRect":Landroid/graphics/RectF;
    .end local v4    # "centerX":F
    .end local v5    # "centerY":F
    :cond_4
    :goto_2
    return-void
.end method

.method private openCamera()V
    .locals 6

    .line 574
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->activity:Landroid/app/Activity;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 576
    .local v0, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraType:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraID:Ljava/lang/String;

    .line 577
    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 578
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 579
    .local v2, "configurationMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    nop

    .line 580
    const-class v3, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDimension:Landroid/util/Size;

    .line 581
    iget-object v3, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraID:Ljava/lang/String;

    iget-object v4, p0, Lcom/kumaraswamy/camerax/ProCamera;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "configurationMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    goto :goto_0

    .line 583
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 586
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method private removeView(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "cameraView"    # Landroid/widget/FrameLayout;

    .line 191
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/AutoFitTextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 194
    :cond_0
    return-void
.end method

.method private writeBytes([B)V
    .locals 4
    .param p1, "data"    # [B

    .line 742
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDestination:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    .local v0, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 744
    invoke-virtual {p0}, Lcom/kumaraswamy/camerax/ProCamera;->SavedPhoto()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 747
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 742
    .restart local v0    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/FileOutputStream;
    .end local p1    # "data":[B
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 745
    .restart local v0    # "stream":Ljava/io/FileOutputStream;
    .restart local p1    # "data":[B
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/zzfj$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local p1    # "data":[B
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "stream":Ljava/io/FileOutputStream;
    .restart local p1    # "data":[B
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 748
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private zoomSettings()V
    .locals 6

    .line 525
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->activity:Landroid/app/Activity;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 526
    .local v0, "manager":Landroid/hardware/camera2/CameraManager;
    const/4 v1, 0x0

    .line 528
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :try_start_0
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 532
    goto :goto_0

    .line 530
    :catch_0
    move-exception v2

    .line 531
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 533
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->rectSensor:Landroid/graphics/Rect;

    .line 534
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->maxZoom:F

    .line 535
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/kumaraswamy/camerax/ProCamera;->hasZoomSupport:Z

    .line 536
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 537
    .local v4, "value":Ljava/lang/Float;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_2

    :cond_1
    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    iput v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->maxZoom:F

    .line 538
    iget v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->maxZoom:F

    invoke-static {v5, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lcom/kumaraswamy/camerax/ProCamera;->hasZoomSupport:Z

    .line 539
    return-void
.end method


# virtual methods
.method public AddComponent(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 163
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "componentLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 170
    return-void
.end method

.method public AquaFilter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 337
    const/16 v0, 0x8

    return v0
.end method

.method public BlackboardFilter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 342
    const/4 v0, 0x7

    return v0
.end method

.method public CameraActive()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if the camera is active"
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/AutoFitTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public CameraFilter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 347
    iget v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraStyle:I

    return v0
.end method

.method public CameraFilter(I)V
    .locals 0
    .param p1, "filter"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the camera style type"
    .end annotation

    .line 387
    iput p1, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraStyle:I

    .line 388
    return-void
.end method

.method public CameraTypeFront()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public CameraTypeRear()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method public CurrentCameraType()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 264
    iget v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraType:I

    return v0
.end method

.method public DefaultFilter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public Enhance(Z)V
    .locals 0
    .param p1, "condition"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 281
    iput-boolean p1, p0, Lcom/kumaraswamy/camerax/ProCamera;->enhance:Z

    .line 282
    return-void
.end method

.method public Enhance()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 286
    iget-boolean v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->enhance:Z

    return v0
.end method

.method public FaceFocusMode()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 402
    iget v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->faceDetectMode:I

    return v0
.end method

.method public FaceFocusMode(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 397
    iput p1, p0, Lcom/kumaraswamy/camerax/ProCamera;->faceDetectMode:I

    .line 398
    return-void
.end method

.method public FaceFocusModeDefault()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public FaceFocusModeHigh()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 417
    const/4 v0, 0x2

    return v0
.end method

.method public FaceFocusModeSimple()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public Flash(Z)V
    .locals 0
    .param p1, "condition"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 270
    iput-boolean p1, p0, Lcom/kumaraswamy/camerax/ProCamera;->flashMode:Z

    .line 271
    return-void
.end method

.method public Flash()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->flashMode:Z

    return v0
.end method

.method public Focus(F)V
    .locals 7
    .param p1, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set focus distance"
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    return-void

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->activity:Landroid/app/Activity;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 510
    .local v0, "cameraManager":Landroid/hardware/camera2/CameraManager;
    const/4 v1, 0x0

    .line 512
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :try_start_0
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 516
    goto :goto_0

    .line 514
    :catch_0
    move-exception v2

    .line 515
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 517
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 518
    .local v2, "minimumLens":F
    mul-float v3, p1, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    .line 519
    .local v3, "num":F
    iget-object v4, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 520
    iget-object v4, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 521
    invoke-virtual {p0}, Lcom/kumaraswamy/camerax/ProCamera;->RefreshCamera()V

    .line 522
    return-void
.end method

.method public FocusLocked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when focus locked"
    .end annotation

    .line 239
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FocusLocked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public FocusUnlocked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when focus unlocked"
    .end annotation

    .line 244
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FocusUnlocked"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public Initialize(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "cameraType"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Initialize camera in an arrangement"
    .end annotation

    .line 174
    iput p2, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraType:I

    .line 175
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraView:Landroid/widget/FrameLayout;

    .line 176
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraView:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/kumaraswamy/camerax/ProCamera;->removeView(Landroid/widget/FrameLayout;)V

    .line 177
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/kumaraswamy/camerax/AutoFitTextureView;

    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/kumaraswamy/camerax/AutoFitTextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 178
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lcom/kumaraswamy/camerax/AutoFitTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 180
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 185
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    invoke-virtual {v1, v0}, Lcom/kumaraswamy/camerax/AutoFitTextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    invoke-virtual {v1, p0}, Lcom/kumaraswamy/camerax/AutoFitTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    iget-boolean v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->visible:Z

    invoke-virtual {p0, v1}, Lcom/kumaraswamy/camerax/ProCamera;->Visible(Z)V

    .line 188
    return-void
.end method

.method public InitializeFailed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when custom camera failed to initialize"
    .end annotation

    .line 214
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "InitializeFailed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public Initialized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when custom camera layout is initialized"
    .end annotation

    .line 209
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Initialized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public IsSupported()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check if supported on the device"
    .end annotation

    .line 556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public LockFocus()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Locks the camera focus"
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 468
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method public MaxZoom()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 488
    invoke-direct {p0}, Lcom/kumaraswamy/camerax/ProCamera;->zoomSettings()V

    .line 489
    iget v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->maxZoom:F

    return v0
.end method

.method public MonoFilter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method public NegativeFilter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 312
    const/4 v0, 0x2

    return v0
.end method

.method public NoiseReductionDefault()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 362
    const/4 v0, 0x0

    return v0
.end method

.method public NoiseReductionFast()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public NoiseReductionHighQuality()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 372
    const/4 v0, 0x2

    return v0
.end method

.method public NoiseReductionMinimal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 377
    const/4 v0, 0x3

    return v0
.end method

.method public NoiseReductionMode()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 357
    iget v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->noiseReductionMode:I

    return v0
.end method

.method public NoiseReductionMode(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set noise reduction mode"
    .end annotation

    .line 352
    iput p1, p0, Lcom/kumaraswamy/camerax/ProCamera;->noiseReductionMode:I

    .line 353
    return-void
.end method

.method public NoiseReductionNoShutterLag()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 382
    const/4 v0, 0x4

    return v0
.end method

.method public Output()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDestination:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDestination:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public Output(Ljava/lang/String;)V
    .locals 0
    .param p1, "output"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDestination:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public PinchToZoom(Z)V
    .locals 0
    .param p1, "condition"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Zoom by touch gesture"
    .end annotation

    .line 199
    iput-boolean p1, p0, Lcom/kumaraswamy/camerax/ProCamera;->gestureZoom:Z

    .line 200
    return-void
.end method

.method public PinchToZoom()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 204
    iget-boolean v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->gestureZoom:Z

    return v0
.end method

.method public PosterizeFilter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 322
    const/4 v0, 0x5

    return v0
.end method

.method public RefreshCamera()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Refreshes camera"
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    goto :goto_1

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->flashMode:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 547
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraStyle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 548
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->noiseReductionMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 549
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->faceDetectMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 550
    invoke-virtual {p0}, Lcom/kumaraswamy/camerax/ProCamera;->updatePreview()V

    .line 551
    invoke-virtual {p0}, Lcom/kumaraswamy/camerax/ProCamera;->RefreshedCamera()V

    .line 552
    return-void

    .line 544
    :cond_2
    :goto_1
    return-void
.end method

.method public RefreshedCamera()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when refreshed camera"
    .end annotation

    .line 224
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RefreshedCamera"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 225
    return-void
.end method

.method public ResetCamera()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reset camera"
    .end annotation

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_0
    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Custom Camera Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/kumaraswamy/camerax/ProCamera;->removeView(Landroid/widget/FrameLayout;)V

    .line 571
    return-void
.end method

.method public SavedPhoto()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when saved photo"
    .end annotation

    .line 219
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SavedPhoto"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public SepiaFilter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 317
    const/4 v0, 0x4

    return v0
.end method

.method public SolarizeFilter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 327
    const/4 v0, 0x3

    return v0
.end method

.method public TakePicture()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take a picture"
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/kumaraswamy/camerax/ProCamera;->takePicture()V

    .line 393
    return-void
.end method

.method public TakePreviewPicture()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Take preview photo"
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDestination:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    .local v0, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    invoke-virtual {v1}, Lcom/kumaraswamy/camerax/AutoFitTextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 425
    invoke-virtual {p0}, Lcom/kumaraswamy/camerax/ProCamera;->SavedPhoto()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 428
    .end local v0    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 423
    .restart local v0    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/FileOutputStream;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 426
    .restart local v0    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/zzfj$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 429
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public Touched()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when camera layout is touched"
    .end annotation

    .line 249
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Touched"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public UnlockFocus()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unlocks the camera focus"
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-nez v0, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 480
    :try_start_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureListener:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 484
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method public Visible(Z)V
    .locals 2
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set whether camera view should be visible"
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraView:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 498
    :cond_1
    iput-boolean p1, p0, Lcom/kumaraswamy/camerax/ProCamera;->visible:Z

    .line 499
    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 503
    iget-boolean v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->visible:Z

    return v0
.end method

.method public WhiteboardFilter()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 332
    const/4 v0, 0x6

    return v0
.end method

.method public Zoom()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 145
    iget v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->currentZoom:F

    return v0
.end method

.method public Zoom(F)V
    .locals 2
    .param p1, "zoomRatio"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set zoom, make sure the values are in limit"
    .end annotation

    .line 433
    iget-boolean v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->hasZoomSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/kumaraswamy/camerax/ProCamera;->setZoom(Landroid/hardware/camera2/CaptureRequest$Builder;FZ)V

    .line 436
    :cond_0
    return-void
.end method

.method public ZoomByPinch(Z)V
    .locals 3
    .param p1, "zoomTypeIncrease"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when zoom is being done on the camera layout"
    .end annotation

    .line 234
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "ZoomByGesture"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public ZoomChanged()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event fired when zoom changed"
    .end annotation

    .line 229
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ZoomChanged"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method protected createCameraPreview()V
    .locals 7

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    invoke-virtual {v0}, Lcom/kumaraswamy/camerax/AutoFitTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 614
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    nop

    .line 615
    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDimension:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->imageDimension:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 616
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 617
    .local v1, "previewSurface":Landroid/view/Surface;
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 618
    iget-boolean v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->enhance:Z

    const/4 v4, 0x2

    if-eqz v2, :cond_0

    .line 619
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 620
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 621
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 622
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 623
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 624
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 625
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 628
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->flashMode:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 629
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraStyle:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 630
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p0, Lcom/kumaraswamy/camerax/ProCamera;->noiseReductionMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 631
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v4, p0, Lcom/kumaraswamy/camerax/ProCamera;->faceDetectMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 633
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/kumaraswamy/camerax/ProCamera$4;

    invoke-direct {v4, p0}, Lcom/kumaraswamy/camerax/ProCamera$4;-><init>(Lcom/kumaraswamy/camerax/ProCamera;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v0    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .end local v1    # "previewSurface":Landroid/view/Surface;
    goto :goto_1

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 652
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 752
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->gestureZoom:Z

    if-eqz v0, :cond_3

    .line 753
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 754
    .local v2, "x":F
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v3, v4

    .line 756
    .local v3, "y":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 757
    .local v4, "current_finger_spacing":F
    iget v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->finger_spacing:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 758
    iget v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->finger_spacing:F

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    iget v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->maxZoom:F

    iget v8, p0, Lcom/kumaraswamy/camerax/ProCamera;->currentZoom:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_0

    .line 759
    iget v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->currentZoom:F

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v6

    double-to-float v5, v8

    iput v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->currentZoom:F

    .line 760
    invoke-virtual {p0, v1}, Lcom/kumaraswamy/camerax/ProCamera;->ZoomByPinch(Z)V

    goto :goto_0

    .line 761
    :cond_0
    iget v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->finger_spacing:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1

    iget v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->currentZoom:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    .line 762
    iget v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->currentZoom:F

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v8, v6

    double-to-float v5, v8

    iput v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->currentZoom:F

    .line 763
    invoke-virtual {p0, v0}, Lcom/kumaraswamy/camerax/ProCamera;->ZoomByPinch(Z)V

    .line 765
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget v6, p0, Lcom/kumaraswamy/camerax/ProCamera;->currentZoom:F

    invoke-virtual {p0, v5, v6, v0}, Lcom/kumaraswamy/camerax/ProCamera;->setZoom(Landroid/hardware/camera2/CaptureRequest$Builder;FZ)V

    .line 767
    :cond_2
    iput v4, p0, Lcom/kumaraswamy/camerax/ProCamera;->finger_spacing:F

    .line 768
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "current_finger_spacing":F
    goto :goto_1

    .line 769
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 770
    invoke-virtual {p0}, Lcom/kumaraswamy/camerax/ProCamera;->Touched()V

    .line 773
    :cond_4
    :goto_1
    return v1
.end method

.method public setZoom(Landroid/hardware/camera2/CaptureRequest$Builder;FZ)V
    .locals 10
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "zoom"    # F
    .param p3, "isCapture"    # Z

    .line 439
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->maxZoom:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 440
    .local v0, "newZoom":F
    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->rectSensor:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 441
    .local v1, "centerX":I
    iget-object v2, p0, Lcom/kumaraswamy/camerax/ProCamera;->rectSensor:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 442
    .local v2, "centerY":I
    iget-object v3, p0, Lcom/kumaraswamy/camerax/ProCamera;->rectSensor:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    div-float/2addr v3, v0

    float-to-int v3, v3

    .line 443
    .local v3, "deltaX":I
    iget-object v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->rectSensor:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    div-float/2addr v5, v0

    float-to-int v4, v5

    .line 444
    .local v4, "deltaY":I
    iget-object v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->rectCrop:Landroid/graphics/Rect;

    sub-int v6, v1, v3

    sub-int v7, v2, v4

    add-int v8, v1, v3

    add-int v9, v2, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 445
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, p0, Lcom/kumaraswamy/camerax/ProCamera;->rectCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 447
    if-nez p3, :cond_0

    .line 448
    :try_start_0
    iget-object v5, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v7}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 449
    invoke-virtual {p0}, Lcom/kumaraswamy/camerax/ProCamera;->ZoomChanged()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v5

    .line 453
    .local v5, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_1

    .line 454
    .end local v5    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    :goto_0
    nop

    .line 455
    :goto_1
    iput p2, p0, Lcom/kumaraswamy/camerax/ProCamera;->currentZoom:F

    .line 456
    return-void
.end method

.method protected takePicture()V
    .locals 13

    .line 665
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    .line 666
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->activity:Landroid/app/Activity;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 670
    .local v0, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 671
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v2, 0x0

    .line 672
    .local v2, "jpegSizes":[Landroid/util/Size;
    const/16 v3, 0x100

    if-eqz v1, :cond_1

    .line 673
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v4

    move-object v2, v4

    .line 675
    :cond_1
    const/16 v4, 0x280

    .line 676
    .local v4, "width":I
    const/16 v5, 0x1e0

    .line 677
    .local v5, "height":I
    const/4 v6, 0x0

    if-eqz v2, :cond_2

    array-length v7, v2

    if-lez v7, :cond_2

    .line 678
    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    move v4, v7

    .line 679
    aget-object v7, v2, v6

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    move v5, v7

    .line 681
    :cond_2
    const/4 v7, 0x1

    invoke-static {v4, v5, v3, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    .line 682
    .local v3, "reader":Landroid/media/ImageReader;
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 683
    .local v8, "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    new-instance v10, Landroid/view/Surface;

    iget-object v11, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraLayout:Lcom/kumaraswamy/camerax/AutoFitTextureView;

    invoke-virtual {v11}, Lcom/kumaraswamy/camerax/AutoFitTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    iget-object v10, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v10, v9}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v10

    .line 686
    .local v10, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 687
    iget-boolean v11, p0, Lcom/kumaraswamy/camerax/ProCamera;->enhance:Z

    if-eqz v11, :cond_3

    .line 688
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 689
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 690
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 691
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 692
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 693
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 694
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 696
    :cond_3
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v12, 0x64

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 697
    sget-object v11, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v12, p0, Lcom/kumaraswamy/camerax/ProCamera;->flashMode:Z

    if-eqz v12, :cond_4

    const/4 v6, 0x2

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v11, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 698
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v9, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraStyle:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v6, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 699
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v9, p0, Lcom/kumaraswamy/camerax/ProCamera;->noiseReductionMode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v6, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 700
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v9, p0, Lcom/kumaraswamy/camerax/ProCamera;->faceDetectMode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v6, v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 702
    iget v6, p0, Lcom/kumaraswamy/camerax/ProCamera;->currentZoom:F

    invoke-virtual {p0, v10, v6, v7}, Lcom/kumaraswamy/camerax/ProCamera;->setZoom(Landroid/hardware/camera2/CaptureRequest$Builder;FZ)V

    .line 703
    new-instance v6, Lcom/kumaraswamy/camerax/ProCamera$5;

    invoke-direct {v6, p0}, Lcom/kumaraswamy/camerax/ProCamera$5;-><init>(Lcom/kumaraswamy/camerax/ProCamera;)V

    .line 719
    .local v6, "readerListener":Landroid/media/ImageReader$OnImageAvailableListener;
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 720
    iget-object v9, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v11, Lcom/kumaraswamy/camerax/ProCamera$6;

    invoke-direct {v11, p0, v10}, Lcom/kumaraswamy/camerax/ProCamera$6;-><init>(Lcom/kumaraswamy/camerax/ProCamera;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v9, v8, v11, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "jpegSizes":[Landroid/util/Size;
    .end local v3    # "reader":Landroid/media/ImageReader;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "readerListener":Landroid/media/ImageReader$OnImageAvailableListener;
    .end local v8    # "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v10    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    goto :goto_0

    .line 736
    :catch_0
    move-exception v1

    .line 737
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 739
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method protected updatePreview()V
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/kumaraswamy/camerax/ProCamera;->cameraCaptureSessions:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/kumaraswamy/camerax/ProCamera;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 662
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method
