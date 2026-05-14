.class public Lcom/google/appinventor/components/runtime/util/FroyoUtil;
.super Ljava/lang/Object;
.source "FroyoUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static abandonFocus(Landroid/media/AudioManager;Ljava/lang/Object;)V
    .locals 1
    .param p0, "am"    # Landroid/media/AudioManager;
    .param p1, "afChangeListener"    # Ljava/lang/Object;

    .line 114
    move-object v0, p1

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 115
    return-void
.end method

.method public static focusRequestGranted(Landroid/media/AudioManager;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "am"    # Landroid/media/AudioManager;
    .param p1, "afChangeListener"    # Ljava/lang/Object;

    .line 103
    move-object v0, p1

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 105
    .local v0, "result":I
    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static getRotation(Landroid/view/Display;)I
    .locals 1
    .param p0, "display"    # Landroid/view/Display;

    .line 39
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method public static getWebViewClient(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)Landroid/webkit/WebViewClient;
    .locals 1
    .param p0, "ignoreErrors"    # Z
    .param p1, "followLinks"    # Z
    .param p2, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p3, "component"    # Lcom/google/appinventor/components/runtime/Component;

    .line 127
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/appinventor/components/runtime/util/FroyoWebViewClient;-><init>(ZZLcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;)V

    return-object v0
.end method

.method public static setAudioFocusChangeListener(Lcom/google/appinventor/components/runtime/Player;)Ljava/lang/Object;
    .locals 1
    .param p0, "player"    # Lcom/google/appinventor/components/runtime/Player;

    .line 58
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/FroyoUtil$1;-><init>(Lcom/google/appinventor/components/runtime/Player;)V

    .line 93
    .local v0, "afChangeListener":Ljava/lang/Object;
    return-object v0
.end method

.method public static setAudioManager(Landroid/app/Activity;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 49
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public static throwIOException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
