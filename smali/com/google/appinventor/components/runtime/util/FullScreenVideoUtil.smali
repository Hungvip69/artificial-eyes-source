.class public Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;
.super Ljava/lang/Object;
.source "FullScreenVideoUtil.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final ACTION_DATA:Ljava/lang/String; = "ActionData"

.field public static final ACTION_SUCESS:Ljava/lang/String; = "ActionSuccess"

.field public static final FULLSCREEN_VIDEO_ACTION_DURATION:I = 0xc4

.field public static final FULLSCREEN_VIDEO_ACTION_FULLSCREEN:I = 0xc3

.field public static final FULLSCREEN_VIDEO_ACTION_PAUSE:I = 0xc0

.field public static final FULLSCREEN_VIDEO_ACTION_PLAY:I = 0xbf

.field public static final FULLSCREEN_VIDEO_ACTION_SEEK:I = 0xbe

.field public static final FULLSCREEN_VIDEO_ACTION_SOURCE:I = 0xc2

.field public static final FULLSCREEN_VIDEO_ACTION_STOP:I = 0xc1

.field public static final FULLSCREEN_VIDEO_DIALOG_FLAG:I = 0xbd

.field public static final VIDEOPLAYER_FULLSCREEN:Ljava/lang/String; = "FullScreenKey"

.field public static final VIDEOPLAYER_PLAYING:Ljava/lang/String; = "PlayingKey"

.field public static final VIDEOPLAYER_POSITION:Ljava/lang/String; = "PositionKey"

.field public static final VIDEOPLAYER_SOURCE:Ljava/lang/String; = "SourceKey"


# instance fields
.field private mForm:Lcom/google/appinventor/components/runtime/Form;

.field private mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

.field private mFullScreenVideoBundle:Landroid/os/Bundle;

.field private mFullScreenVideoController:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

.field private mFullScreenVideoDialog:Landroid/app/Dialog;

.field private mFullScreenVideoHolder:Landroid/widget/FrameLayout;

.field private mFullScreenVideoView:Landroid/widget/VideoView;

.field private mHandler:Landroid/os/Handler;

.field private mMediaControllerParams:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFullScreenPlayer(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Lcom/google/appinventor/components/runtime/VideoPlayer;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFullScreenVideoBundle(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFullScreenVideoView(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)Landroid/widget/VideoView;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Landroid/os/Handler;)V
    .locals 4
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x50

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mMediaControllerParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 103
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    .line 104
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    const v2, 0x1030007

    invoke-direct {v0, p0, v1, v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$1;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    .line 127
    return-void
.end method

.method private doFullScreenVideoAction(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p1, "source"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Form.doFullScreenVideoAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "ActionSuccess"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    const-string v3, "FullScreenKey"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0xbd

    const/4 v5, 0x0

    const-string v6, "SourceKey"

    if-ne v3, v2, :cond_1

    .line 246
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 247
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 248
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/Form;->showDialog(I)V

    .line 250
    return-object v0

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->pause()V

    .line 253
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 254
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    invoke-virtual {p0, v2, v5}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->setSource(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    return-object v0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 260
    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    .line 259
    const-string v2, "PlayingKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 262
    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    .line 261
    const-string v2, "PositionKey"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 263
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 265
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    .line 268
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 270
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/Form;->dismissDialog(I)V

    .line 271
    return-object v0

    .line 274
    :cond_2
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    return-object v0
.end method


# virtual methods
.method public createFullScreenVideoDialog()Landroid/app/Dialog;
    .locals 6

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 286
    const-string v0, "Form.createFullScreenVideoDialog"

    const-string v1, "mFullScreenVideoBundle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 289
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    .line 290
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoController:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setId(I)V

    .line 293
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoController:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$2;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoController:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->setAnchorView(Landroid/view/View;)V

    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientation()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "orientation":Ljava/lang/String;
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x11

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-nez v1, :cond_2

    .line 309
    const-string v1, "sensorLandscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 310
    const-string v1, "reverseLandscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 315
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v4, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v5}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 311
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v5}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 320
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 327
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoController:Lcom/google/appinventor/components/runtime/util/CustomMediaController;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mMediaControllerParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/CustomMediaController;->addTo(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)Z

    .line 330
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 331
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    return-object v1
.end method

.method public dialogInitialized()Z
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .line 403
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Completed()V

    .line 406
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 417
    const-string v1, "PositionKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seeking to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    const-string v2, "FullScreenVideoUtil..onPrepared"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 419
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 418
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 420
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 421
    const-string v1, "PlayingKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 425
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil$3;-><init>(Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 433
    :goto_0
    return-void
.end method

.method public declared-synchronized performAction(ILcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 5
    .param p1, "action"    # I
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/VideoPlayer;
    .param p3, "data"    # Ljava/lang/Object;

    monitor-enter p0

    .line 166
    :try_start_0
    const-string v0, "Form.fullScreenVideoAction"

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Actions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Current Source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, "result":Landroid/os/Bundle;
    const-string v1, "ActionSuccess"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const/4 v3, 0x0

    if-ne p2, v1, :cond_6

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 215
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;
    goto/16 :goto_0

    .line 210
    .restart local p0    # "this":Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    const-string v1, "ActionData"

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    monitor-exit p0

    return-object v0

    .line 214
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;
    :cond_0
    :try_start_1
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    monitor-exit p0

    return-object v0

    .line 173
    :pswitch_1
    :try_start_2
    move-object v1, p3

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {p0, p2, v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->doFullScreenVideoAction(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 203
    :pswitch_2
    :try_start_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const-string v1, "ActionSuccess"

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->setSource(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    monitor-exit p0

    return-object v0

    .line 207
    :cond_1
    :try_start_4
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    monitor-exit p0

    return-object v0

    .line 196
    :pswitch_3
    :try_start_5
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 198
    monitor-exit p0

    return-object v0

    .line 200
    :cond_2
    :try_start_6
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 201
    monitor-exit p0

    return-object v0

    .line 175
    :pswitch_4
    :try_start_7
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 177
    monitor-exit p0

    return-object v0

    .line 179
    :cond_3
    :try_start_8
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 180
    monitor-exit p0

    return-object v0

    .line 182
    :pswitch_5
    :try_start_9
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 184
    monitor-exit p0

    return-object v0

    .line 186
    :cond_4
    :try_start_a
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 187
    monitor-exit p0

    return-object v0

    .line 189
    :pswitch_6
    :try_start_b
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 190
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 191
    monitor-exit p0

    return-object v0

    .line 193
    :cond_5
    :try_start_c
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 194
    monitor-exit p0

    return-object v0

    .line 217
    :cond_6
    const/16 v1, 0xc3

    if-ne p1, v1, :cond_8

    .line 219
    :try_start_d
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->showing()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    if-eqz v1, :cond_7

    .line 220
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v1, "values":Landroid/os/Bundle;
    const-string v2, "PositionKey"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 222
    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    .line 221
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 223
    const-string v2, "PlayingKey"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    .line 224
    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    const-string v2, "SourceKey"

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v4, "SourceKey"

    .line 227
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v2, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->fullScreenKilled(Landroid/os/Bundle;)V

    .line 230
    .end local v1    # "values":Landroid/os/Bundle;
    :cond_7
    move-object v1, p3

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {p0, p2, v1}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->doFullScreenVideoAction(Lcom/google/appinventor/components/runtime/VideoPlayer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object v1

    .line 234
    :cond_8
    :goto_0
    :try_start_e
    const-string v1, "ActionSuccess"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 235
    monitor-exit p0

    return-object v0

    .line 165
    .end local v0    # "result":Landroid/os/Bundle;
    .end local p1    # "action":I
    .end local p2    # "source":Lcom/google/appinventor/components/runtime/VideoPlayer;
    .end local p3    # "data":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public prepareFullScreenVideoDialog(Landroid/app/Dialog;)V
    .locals 1
    .param p1, "dia"    # Landroid/app/Dialog;

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 344
    return-void
.end method

.method public setSource(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "clearSeek"    # Z

    .line 379
    const/4 v0, 0x1

    const-string v1, "Source"

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 380
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v4, "PositionKey"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 383
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v3, v4, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 385
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    const-string v4, "SourceKey"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    return v0

    .line 391
    :catch_0
    move-exception v3

    .line 392
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const/16 v6, 0x2bd

    invoke-virtual {v4, v5, v1, v6, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 394
    return v2

    .line 388
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 389
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v3, v4, v1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 390
    return v2
.end method

.method public showing()Z
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->dialogInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startDialog()V
    .locals 7

    .line 440
    const-string v0, "SourceKey"

    const-string v1, "Source"

    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 442
    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 440
    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->loadVideoView(Landroid/widget/VideoView;Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenVideoBundle:Landroid/os/Bundle;

    .line 448
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 446
    const/16 v0, 0x2bd

    invoke-virtual {v3, v4, v1, v0, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 449
    return-void

    .line 443
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 444
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mForm:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FullScreenVideoUtil;->mFullScreenPlayer:Lcom/google/appinventor/components/runtime/VideoPlayer;

    invoke-virtual {v2, v3, v1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 450
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :goto_0
    nop

    .line 451
    return-void
.end method
