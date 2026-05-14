.class public final Lcom/google/appinventor/components/runtime/VideoPlayer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A multimedia component capable of playing videos. When the application is run, the VideoPlayer will be displayed as a rectangle on-screen.  If the user touches the rectangle, controls will appear to play/pause, skip ahead, and skip backward within the video.  The application can also control behavior by calling the <code>Start</code>, <code>Pause</code>, and <code>SeekTo</code> methods.  <p>Video files should be in 3GPP (.3gp) or MPEG-4 (.mp4) formats.  For more details about legal formats, see <a href=\"http://developer.android.com/guide/appendix/media-formats.html\" target=\"_blank\">Android Supported Media Formats</a>.</p><p>App Inventor for Android only permits video files under 1 MB and limits the total size of an application to 5 MB, not all of which is available for media (video, audio, and sound) files.  If your media files are too large, you may get errors when packaging or installing your application, in which case you should reduce the number of media files or their sizes.  Most video editing software, such as Windows Movie Maker and Apple iMovie, can help you decrease the size of videos by shortening them or re-encoding the video into a more compact format.</p><p>You can also set the media source to a URL that points to a streaming video, but the URL must point to the video file itself, not to a program that plays the video."
    iconName = "images/videoPlayer.png"
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;
    }
.end annotation


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private delayedStart:Z

.field private inFullScreen:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mediaReady:Z

.field private sourcePath:Ljava/lang/String;

.field private final videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;


# direct methods
.method static bridge synthetic -$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/VideoPlayer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 155
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 141
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 143
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->androidUIHandler:Landroid/os/Handler;

    .line 156
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 157
    new-instance v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 164
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 166
    const/16 v0, 0xb0

    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 168
    const/16 v0, 0x90

    invoke-interface {p1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 172
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->setVolumeControlStream(I)V

    .line 174
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 175
    return-void
.end method

.method private prepareToDie()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->stopPlayback()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 457
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->clearAnimation()V

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 460
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 462
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v1, :cond_1

    .line 463
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 464
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "FullScreenKey"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v2, 0xc3

    invoke-virtual {v0, v2, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 468
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_1
    return-void
.end method


# virtual methods
.method public Completed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 393
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Completed"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method public FullScreen(Z)V
    .locals 10
    .param p1, "value"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 545
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 546
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0x517

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "FullScreen(true)"

    invoke-virtual {v1, p0, v3, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 548
    return-void

    .line 551
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eq p1, v1, :cond_4

    .line 552
    const-string v1, ""

    const-string v2, "FullScreen"

    const-string v3, "ActionSuccess"

    const/16 v4, 0xc3

    const-string v5, "FullScreenKey"

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    .line 553
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 554
    .local v7, "data":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    .line 555
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getCurrentPosition()I

    move-result v8

    .line 554
    const-string v9, "PositionKey"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    .line 557
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->isPlaying()Z

    move-result v8

    .line 556
    const-string v9, "PlayingKey"

    invoke-virtual {v7, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 558
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->pause()V

    .line 559
    invoke-virtual {v7, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 560
    const-string v5, "SourceKey"

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5, v4, p0, v7}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    .line 563
    .local v4, "result":Landroid/os/Bundle;
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    goto :goto_0

    .line 566
    :cond_1
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 567
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v0

    const/16 v0, 0x515

    invoke-virtual {v3, p0, v2, v0, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 570
    .end local v4    # "result":Landroid/os/Bundle;
    .end local v7    # "data":Landroid/os/Bundle;
    :goto_0
    goto :goto_1

    .line 571
    :cond_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v7, "values":Landroid/os/Bundle;
    invoke-virtual {v7, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 573
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5, v4, p0, v7}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    .line 576
    .restart local v4    # "result":Landroid/os/Bundle;
    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 577
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    goto :goto_1

    .line 579
    :cond_3
    iput-boolean v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 580
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v0

    const/16 v0, 0x516

    invoke-virtual {v3, p0, v2, v0, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 585
    .end local v4    # "result":Landroid/os/Bundle;
    .end local v7    # "values":Landroid/os/Bundle;
    :cond_4
    :goto_1
    return-void
.end method

.method public FullScreen()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 531
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    return v0
.end method

.method public GetDuration()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns duration of the video in milliseconds."
    .end annotation

    .line 367
    const-string v0, "VideoPlayer"

    const-string v1, "Calling GetDuration"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xc4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    .line 371
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "ActionData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 374
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 377
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 506
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 2
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 518
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 521
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->changeVideoSize(II)V

    .line 522
    return-void
.end method

.method public Pause()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pauses playback of the video.  Playback can be resumed at the same location by calling the <code>Start</code> method."
    .end annotation

    .line 322
    const-string v0, "VideoPlayer"

    const-string v1, "Calling Pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v2, 0xc0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 326
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    goto :goto_0

    .line 328
    :cond_0
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->pause()V

    .line 331
    :goto_0
    return-void
.end method

.method public SeekTo(I)V
    .locals 3
    .param p1, "ms"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Seeks to the requested time (specified in milliseconds) in the video. If the video is paused, the frame shown will not be updated by the seek. The player can jump only to key frames in the video, so seeking to times that differ by short intervals may not actually move to different frames."
    .end annotation

    .line 351
    const-string v0, "VideoPlayer"

    const-string v1, "Calling SeekTo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-gez p1, :cond_0

    .line 353
    const/4 p1, 0x0

    .line 355
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 356
    const/16 v2, 0xbe

    invoke-virtual {v0, v2, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->seekTo(I)V

    .line 362
    :goto_0
    return-void
.end method

.method public Source(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The \"path\" to the video.  Usually, this will be the name of the video file, which should be added in the Designer."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .line 201
    const-string v0, "Source"

    const-string v1, ""

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 202
    .local v2, "tempPath":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/VideoPlayer$1;

    invoke-direct {v4, p0, v2}, Lcom/google/appinventor/components/runtime/VideoPlayer$1;-><init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/String;)V

    invoke-static {v3, p1, v4}, Lcom/google/appinventor/components/runtime/util/TiramisuUtil;->requestVideoPermissions(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    return-void

    .line 217
    :cond_1
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v3, :cond_2

    .line 218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    goto/16 :goto_2

    .line 221
    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidateMediaPlayer(Z)V

    .line 229
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->stopPlayback()V

    .line 232
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 233
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->clearAnimation()V

    .line 235
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 236
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Source path is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "VideoPlayer"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 240
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    nop

    .line 250
    const-string v0, "loading video succeeded"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 244
    :catch_0
    move-exception v4

    .line 245
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    const/16 v1, 0x2bd

    invoke-virtual {v5, p0, v0, v1, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 247
    return-void

    .line 241
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 243
    return-void

    .line 253
    .end local v1    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :cond_5
    :goto_2
    return-void
.end method

.method public Start()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Starts playback of the video."
    .end annotation

    .line 264
    const-string v0, "VideoPlayer"

    const-string v1, "Calling Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xbf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/appinventor/components/runtime/Form;->fullScreenVideoAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;

    goto :goto_0

    .line 269
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->start()V

    goto :goto_0

    .line 272
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 275
    :goto_0
    return-void
.end method

.method public Stop()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets to start of video and pauses it if video was playing."
    .end annotation

    .line 336
    const-string v0, "VideoPlayer"

    const-string v1, "Calling Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->SeekTo(I)V

    .line 342
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Pause()V

    .line 343
    return-void
.end method

.method public VideoPlayerError(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The VideoPlayerError event is no longer used. Please use the Screen.ErrorOccurred event instead."
        userVisible = false
    .end annotation

    .line 436
    return-void
.end method

.method public Volume(I)V
    .locals 4
    .param p1, "vol"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "50"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the volume to a number between 0 and 100. Values less than 0 will be treated as 0, and values greater than 100 will be treated as 100."
    .end annotation

    .line 297
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 298
    const/16 v0, 0x64

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 299
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    int-to-float v3, p1

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 302
    :cond_0
    return-void
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 479
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width()I

    move-result v0

    return v0
.end method

.method public Width(I)V
    .locals 2
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 491
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 494
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v1, v1, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->changeVideoSize(II)V

    .line 495
    return-void
.end method

.method public delayedStart()V
    .locals 1

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 311
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 312
    return-void
.end method

.method public fullScreenKilled(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->inFullScreen:Z

    .line 595
    const-string v1, "SourceKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "newSource":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 597
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Source(Ljava/lang/String;)V

    .line 599
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->requestLayout()V

    .line 601
    const-string v0, "PositionKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->SeekTo(I)V

    .line 602
    const-string v0, "PlayingKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 605
    :cond_1
    return-void
.end method

.method public getPassedHeight()I
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedHeight:I

    return v0
.end method

.method public getPassedWidth()I
    .locals 1

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->forcedWidth:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "m"    # Landroid/media/MediaPlayer;

    .line 385
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Completed()V

    .line 386
    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 449
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->prepareToDie()V

    .line 450
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 442
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->prepareToDie()V

    .line 443
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6
    .param p1, "m"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->invalidateMediaPlayer(Z)V

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 411
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 413
    nop

    .line 414
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 415
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onError: what is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", extra is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    const-string v3, "VideoPlayer"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->sourcePath:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v0, "Source"

    const/16 v3, 0x2bd

    invoke-virtual {v2, p0, v0, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 418
    return v1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "newMediaPlayer"    # Landroid/media/MediaPlayer;

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mediaReady:Z

    .line 424
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    .line 425
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 426
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->videoView:Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2, v0}, Lcom/google/appinventor/components/runtime/VideoPlayer$ResizableVideoView;->setMediaPlayer(Landroid/media/MediaPlayer;Z)V

    .line 427
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer;->delayedStart:Z

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Start()V

    .line 430
    :cond_0
    return-void
.end method
