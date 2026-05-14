.class Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;
.super Landroid/widget/VideoView;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResizableVideoView"
.end annotation


# instance fields
.field public forcedHeight:I

.field public forcedWidth:I

.field private mFoundMediaPlayer:Ljava/lang/Boolean;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;


# direct methods
.method static bridge synthetic -$$Nest$monMeasure(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->onMeasure(III)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p2, "context"    # Landroid/content/Context;

    .line 651
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 652
    invoke-direct {p0, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 637
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 643
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 649
    iput v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 653
    return-void
.end method

.method private onMeasure(III)V
    .locals 17
    .param p1, "specwidth"    # I
    .param p2, "specheight"    # I
    .param p3, "trycount"    # I

    .line 669
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v5, 0x0

    .line 670
    .local v5, "scaleHeight":Z
    const/4 v6, 0x0

    .line 671
    .local v6, "scaleWidth":Z
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v7

    .line 672
    .local v7, "deviceDensity":F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device Density = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "VideoPlayer..onMeasure"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    iget v9, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AI setting dimensions as:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    nop

    .line 676
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 677
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dimenions from super>>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/16 v9, 0xb0

    .line 681
    .local v9, "width":I
    const/16 v10, 0x90

    .line 683
    .local v10, "height":I
    iget v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    const-string v11, "VideoPlayer.onMeasure"

    packed-switch v0, :pswitch_data_0

    .line 717
    const/4 v6, 0x1

    .line 718
    iget v9, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    goto :goto_3

    .line 701
    :pswitch_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    :try_start_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    move v9, v0

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got width from MediaPlayer>"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, "nullVideoPlayer":Ljava/lang/NullPointerException;
    nop

    .line 710
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to get MediaPlayer for width:\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 707
    invoke-static {v8, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    const/16 v9, 0xb0

    .line 712
    .end local v0    # "nullVideoPlayer":Ljava/lang/NullPointerException;
    :goto_0
    goto :goto_3

    .line 685
    :pswitch_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 692
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v0

    goto :goto_1

    .line 695
    :catch_1
    move-exception v0

    .line 696
    .local v0, "nullParent":Ljava/lang/NullPointerException;
    const/16 v9, 0xb0

    goto :goto_2

    .line 693
    .end local v0    # "nullParent":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 694
    .local v0, "cast":Ljava/lang/ClassCastException;
    const/16 v9, 0xb0

    .line 697
    .end local v0    # "cast":Ljava/lang/ClassCastException;
    :goto_1
    goto :goto_2

    .line 688
    :sswitch_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 689
    nop

    .line 699
    :goto_2
    nop

    .line 721
    :cond_0
    :goto_3
    iget v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    const-string v14, ")"

    const-string v15, "VideoPlayer...onMeasure"

    const/16 v13, -0x3e8

    const/16 v12, 0x64

    if-gt v0, v13, :cond_2

    .line 722
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v0

    .line 723
    .local v0, "cWidth":I
    if-nez v0, :cond_1

    const/4 v13, 0x2

    if-ge v4, v13, :cond_1

    .line 724
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Width not stable... trying again (onMeasure "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v8, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/VideoPlayer;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v8

    new-instance v11, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;

    invoke-direct {v11, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$1;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V

    const-wide/16 v13, 0x64

    invoke-virtual {v8, v11, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 731
    invoke-virtual {v1, v12, v12}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMeasuredDimension(II)V

    .line 732
    return-void

    .line 734
    :cond_1
    add-int/lit16 v13, v9, 0x3e8

    neg-int v13, v13

    mul-int v13, v13, v0

    div-int/2addr v13, v12

    int-to-float v13, v13

    mul-float v13, v13, v7

    float-to-int v9, v13

    .end local v0    # "cWidth":I
    goto :goto_4

    .line 735
    :cond_2
    if-eqz v6, :cond_3

    .line 736
    int-to-float v0, v9

    mul-float v0, v0, v7

    float-to-int v9, v0

    goto :goto_5

    .line 735
    :cond_3
    :goto_4
    nop

    .line 739
    :goto_5
    iget v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    packed-switch v0, :pswitch_data_1

    .line 768
    const/4 v5, 0x1

    .line 769
    iget v10, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    goto :goto_8

    .line 753
    :pswitch_2
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 755
    :try_start_2
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    move v10, v0

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Got height from MediaPlayer>"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_6

    .line 758
    :catch_3
    move-exception v0

    .line 759
    .local v0, "nullVideoPlayer":Ljava/lang/NullPointerException;
    nop

    .line 762
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "nullVideoPlayer":Ljava/lang/NullPointerException;
    .local v16, "nullVideoPlayer":Ljava/lang/NullPointerException;
    const-string v0, "Failed to get MediaPlayer for height:\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 759
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/16 v10, 0x90

    .line 764
    .end local v16    # "nullVideoPlayer":Ljava/lang/NullPointerException;
    :goto_6
    goto :goto_8

    .line 741
    :pswitch_3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_7

    .line 744
    :sswitch_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 745
    nop

    .line 751
    :goto_7
    nop

    .line 772
    :cond_4
    :goto_8
    iget v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    const/16 v8, -0x3e8

    if-gt v0, v8, :cond_6

    .line 773
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v0

    .line 774
    .local v0, "cHeight":I
    if-nez v0, :cond_5

    const/4 v8, 0x2

    if-ge v4, v8, :cond_5

    .line 775
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Height not stable... trying again (onMeasure "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v8, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/VideoPlayer;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;

    move-result-object v8

    new-instance v11, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$2;

    invoke-direct {v11, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView$2;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;III)V

    const-wide/16 v12, 0x64

    invoke-virtual {v8, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 782
    const/16 v8, 0x64

    invoke-virtual {v1, v8, v8}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMeasuredDimension(II)V

    .line 783
    return-void

    .line 785
    :cond_5
    add-int/lit16 v8, v10, 0x3e8

    neg-int v8, v8

    mul-int v8, v8, v0

    const/16 v12, 0x64

    div-int/2addr v8, v12

    int-to-float v8, v8

    mul-float v8, v8, v7

    float-to-int v10, v8

    .end local v0    # "cHeight":I
    goto :goto_9

    .line 786
    :cond_6
    if-eqz v5, :cond_7

    .line 787
    int-to-float v0, v10

    mul-float v0, v0, v7

    float-to-int v10, v0

    goto :goto_a

    .line 786
    :cond_7
    :goto_9
    nop

    .line 792
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting dimensions to:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "x"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v9, v10}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 796
    invoke-virtual {v1, v9, v10}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMeasuredDimension(II)V

    .line 797
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public changeVideoSize(II)V
    .locals 0
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .line 803
    iput p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    .line 804
    iput p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    .line 806
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 807
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 808
    return-void
.end method

.method public invalidateMediaPlayer(Z)V
    .locals 1
    .param p1, "triggerRedraw"    # Z

    .line 814
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 817
    if-eqz p1, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 819
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 821
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 1
    .param p1, "specwidth"    # I
    .param p2, "specheight"    # I

    .line 656
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->onMeasure(III)V

    .line 657
    return-void
.end method

.method public setMediaPlayer(Landroid/media/MediaPlayer;Z)V
    .locals 1
    .param p1, "newMediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "triggerRedraw"    # Z

    .line 825
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 826
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->mFoundMediaPlayer:Ljava/lang/Boolean;

    .line 828
    if-eqz p2, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forceLayout()V

    .line 830
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidate()V

    .line 832
    :cond_0
    return-void
.end method
