.class public Lcom/Scorpio/ScSpeechRecognizer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ScSpeechRecognizer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Landroid/speech/RecognitionListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "This is an alternate version of the Voice Recognition Component<br />(by ScorpioNormal)<br />Features:<br />- Ability to disable the Google dialogue,<br />- Turn off the sound prompt signal,<br />- Continuous listening (hands free),<br />- and more..."
    iconName = "images/speechRecognizer.png"
    nonVisible = true
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.RECORD_AUDIO"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ScSpeechRecognizer"


# instance fields
.field private StopFlag:Z

.field private amanager:Landroid/media/AudioManager;

.field private audioMuteFlag:Z

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private continuoslyRecognitionEnabled:Z

.field private enableGoogleDialog:Z

.field private enablePartialResult:Z

.field private extraLengv:Ljava/lang/String;

.field private extraPrompt:Ljava/lang/String;

.field private havePermission:Z

.field private isListening:Z

.field private keepScreenOn:Z

.field private keyword:Ljava/lang/String;

.field private keywordEnable:Z

.field private keywordOk:Z

.field private keywordTimeSeg:I

.field private lastError:Ljava/lang/String;

.field private muteAudio:Z

.field private preferOffLine:Z

.field private recognizerIntent:Landroid/content/Intent;

.field private requestCode:I

.field private result:Ljava/lang/String;

.field private speech:Landroid/speech/SpeechRecognizer;

.field private starttime:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 97
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->havePermission:Z

    .line 77
    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->enableGoogleDialog:Z

    .line 78
    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->muteAudio:Z

    .line 79
    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->audioMuteFlag:Z

    .line 80
    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->continuoslyRecognitionEnabled:Z

    .line 81
    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->preferOffLine:Z

    .line 82
    const-string v1, ""

    iput-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->lastError:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->extraPrompt:Ljava/lang/String;

    .line 86
    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keepScreenOn:Z

    .line 87
    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->enablePartialResult:Z

    .line 88
    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->isListening:Z

    .line 89
    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->StopFlag:Z

    .line 486
    iput-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->extraLengv:Ljava/lang/String;

    .line 524
    iput-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->keyword:Ljava/lang/String;

    .line 525
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordEnable:Z

    .line 526
    const/16 v2, 0x1e

    iput v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordTimeSeg:I

    .line 527
    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordOk:Z

    .line 528
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->starttime:J

    .line 98
    iput-object p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 99
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 100
    iput-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->result:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Lcom/Scorpio/ScSpeechRecognizer;->SetASR()V

    .line 102
    invoke-direct {p0}, Lcom/Scorpio/ScSpeechRecognizer;->SetSRIntent()V

    .line 103
    invoke-direct {p0}, Lcom/Scorpio/ScSpeechRecognizer;->SetAM()V

    .line 104
    return-void
.end method

.method private AudioMute(Z)V
    .locals 8
    .param p1, "mute"    # Z

    .line 349
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->audioMuteFlag:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 350
    :cond_0
    iput-boolean p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->audioMuteFlag:Z

    .line 354
    const/16 v0, 0x17

    const/16 v1, 0x64

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v0, :cond_3

    .line 356
    iget-object v5, p0, Lcom/Scorpio/ScSpeechRecognizer;->amanager:Landroid/media/AudioManager;

    const/16 v6, -0x64

    if-eqz p1, :cond_1

    const/16 v7, -0x64

    goto :goto_0

    :cond_1
    const/16 v7, 0x64

    :goto_0
    invoke-virtual {v5, v3, v7, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 357
    iget-object v5, p0, Lcom/Scorpio/ScSpeechRecognizer;->amanager:Landroid/media/AudioManager;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v6, 0x64

    :goto_1
    invoke-virtual {v5, v2, v6, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_2

    .line 361
    :cond_3
    iget-object v5, p0, Lcom/Scorpio/ScSpeechRecognizer;->amanager:Landroid/media/AudioManager;

    invoke-virtual {v5, v3, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 362
    iget-object v5, p0, Lcom/Scorpio/ScSpeechRecognizer;->amanager:Landroid/media/AudioManager;

    invoke-virtual {v5, v2, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_2
    goto :goto_4

    .line 365
    :catch_0
    move-exception v5

    .line 367
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/Scorpio/ScSpeechRecognizer;->amanager:Landroid/media/AudioManager;

    if-nez v6, :cond_4

    return-void

    .line 370
    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v0, :cond_5

    .line 372
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->amanager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v1, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 373
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->amanager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v1, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_3

    .line 377
    :cond_5
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->amanager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 378
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->amanager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 380
    :goto_3
    iput-boolean v4, p0, Lcom/Scorpio/ScSpeechRecognizer;->audioMuteFlag:Z

    .line 382
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method private CheckKeyWorld(Ljava/lang/String;)Z
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .line 531
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordEnable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->keyword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    iput-boolean v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordOk:Z

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->starttime:J

    .line 535
    return v1

    .line 537
    :cond_1
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordOk:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 539
    .local v3, "millis":J
    iget-wide v5, p0, Lcom/Scorpio/ScSpeechRecognizer;->starttime:J

    sub-long v5, v3, v5

    iget v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordTimeSeg:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    .line 540
    iput-boolean v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordOk:Z

    .line 541
    return v2

    .line 544
    :cond_2
    iput-wide v3, p0, Lcom/Scorpio/ScSpeechRecognizer;->starttime:J

    .line 545
    return v1

    .line 548
    .end local v3    # "millis":J
    :cond_3
    return v2

    .line 531
    :cond_4
    :goto_0
    return v1
.end method

.method private RestartASR()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->StopFlag:Z

    if-eqz v0, :cond_1

    return-void

    .line 195
    :cond_1
    const-wide/16 v0, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/Scorpio/ScSpeechRecognizer;->Sleep(J)V

    .line 196
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method private SetAM()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->amanager:Landroid/media/AudioManager;

    .line 107
    return-void
.end method

.method private SetASR()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    .line 111
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    goto :goto_0

    .line 112
    :cond_0
    const-string v0, "Speech Recognizer not Available!"

    iput-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->lastError:Ljava/lang/String;

    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->lastError:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/Scorpio/ScSpeechRecognizer;->OnError(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void
.end method

.method private SetSRIntent()V
    .locals 3

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    .line 116
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "calling_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    iget-boolean v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->enablePartialResult:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->extraPrompt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.PROMPT"

    iget-object v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->extraPrompt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->extraLengv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE"

    iget-object v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->extraLengv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 123
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.PREFER_OFFLINE"

    iget-boolean v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->preferOffLine:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    :cond_2
    return-void
.end method

.method private Sleep(J)V
    .locals 1
    .param p1, "ms"    # J

    .line 201
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$002(Lcom/Scorpio/ScSpeechRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/Scorpio/ScSpeechRecognizer;
    .param p1, "x1"    # Z

    .line 63
    iput-boolean p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->havePermission:Z

    return p1
.end method

.method static synthetic access$100(Lcom/Scorpio/ScSpeechRecognizer;)Lcom/google/appinventor/components/runtime/Form;
    .locals 1
    .param p0, "x0"    # Lcom/Scorpio/ScSpeechRecognizer;

    .line 63
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method


# virtual methods
.method public AfterGettingText(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 237
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "AfterGettingText"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public AfterPartialResults(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event occurs when exist Partial Results"
    .end annotation

    .line 503
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "AfterPartialResults"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method public BeforeGettingText()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 229
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BeforeGettingText"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public ContinuoslyRecognitionEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Continuosly Recognition (if Dialog is disable only),\ncontinues to listen to the first successful recognition.\nThe default is FALSE, One session recognition will be used"
    .end annotation

    .line 419
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->continuoslyRecognitionEnabled:Z

    if-eq v0, p1, :cond_0

    .line 420
    iput-boolean p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->continuoslyRecognitionEnabled:Z

    .line 421
    :cond_0
    return-void
.end method

.method public ContinuoslyRecognitionEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 424
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->continuoslyRecognitionEnabled:Z

    return v0
.end method

.method public EnableGoogleDialog(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable Google Promt Dialog (works like a normal SpeechRecognizer component)\nThe default is FALSE,in this case, the capabilities of this component become available."
    .end annotation

    .line 389
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->enableGoogleDialog:Z

    if-eq v0, p1, :cond_0

    .line 390
    iput-boolean p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->enableGoogleDialog:Z

    .line 391
    :cond_0
    return-void
.end method

.method public EnableGoogleDialog()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 394
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->enableGoogleDialog:Z

    return v0
.end method

.method public EnablePartialResult(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows to have intermediate recognition results when the user continues to speak.\nTriggers an event AfterPartialResults. The default is FALSE"
    .end annotation

    .line 509
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->enablePartialResult:Z

    if-eq v0, p1, :cond_0

    .line 510
    iput-boolean p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->enablePartialResult:Z

    .line 511
    invoke-direct {p0}, Lcom/Scorpio/ScSpeechRecognizer;->SetSRIntent()V

    .line 513
    :cond_0
    return-void
.end method

.method public EnablePartialResult()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 516
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->enablePartialResult:Z

    return v0
.end method

.method public ExtraLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->extraLengv:Ljava/lang/String;

    return-object v0
.end method

.method public ExtraLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "lengv"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Optional IETF language tag (as defined by BCP 47),\nfor example \"en-US\""
    .end annotation

    .line 491
    iput-object p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->extraLengv:Ljava/lang/String;

    .line 492
    invoke-direct {p0}, Lcom/Scorpio/ScSpeechRecognizer;->SetSRIntent()V

    .line 493
    return-void
.end method

.method public ExtraPrompt()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->extraPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public ExtraPrompt(Ljava/lang/String;)V
    .locals 0
    .param p1, "prompt"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Optional text prompt to show to the user when asking them to speak\n(if Dialog is ENABLE only).To stop the prompt, leave this field empty."
    .end annotation

    .line 445
    iput-object p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->extraPrompt:Ljava/lang/String;

    .line 446
    invoke-direct {p0}, Lcom/Scorpio/ScSpeechRecognizer;->SetSRIntent()V

    .line 447
    return-void
.end method

.method public GetText()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 143
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->enableGoogleDialog:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 144
    iget v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->requestCode:I

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/Scorpio/ScSpeechRecognizer;->BeforeGettingText()V

    .line 146
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->muteAudio:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/Scorpio/ScSpeechRecognizer;->AudioMute(Z)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->requestCode:I

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_5

    .line 152
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->havePermission:Z

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    .line 153
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/Scorpio/ScSpeechRecognizer$1;

    invoke-direct {v1, p0}, Lcom/Scorpio/ScSpeechRecognizer$1;-><init>(Lcom/Scorpio/ScSpeechRecognizer;)V

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    goto :goto_0

    .line 167
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->StopFlag:Z

    .line 168
    invoke-virtual {p0}, Lcom/Scorpio/ScSpeechRecognizer;->BeforeGettingText()V

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->lastError:Ljava/lang/String;

    .line 170
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->muteAudio:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v1}, Lcom/Scorpio/ScSpeechRecognizer;->AudioMute(Z)V

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->recognizerIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 175
    :cond_5
    :goto_0
    return-void
.end method

.method public IsListening()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Is listening at the moment. Read only"
    .end annotation

    .line 520
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->isListening:Z

    return v0
.end method

.method public KeepScreenOn(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "To keep the device\'s screen turned on and bright.\nThe default is FALSE"
    .end annotation

    .line 473
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keepScreenOn:Z

    if-eq v0, p1, :cond_1

    .line 474
    iput-boolean p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->keepScreenOn:Z

    .line 475
    const/16 v0, 0x80

    if-eqz p1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 480
    :cond_1
    :goto_0
    return-void
.end method

.method public KeepScreenOn()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 483
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keepScreenOn:Z

    return v0
.end method

.method public Keyword()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public Keyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyw"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The keyword that must contain the recognition result in order to unlock \nthe occurrence of an AfterGettingText event for a certain time.\nOnly works if Continuosly Recognition is Enabled. The default is Empty."
    .end annotation

    .line 555
    iput-object p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->keyword:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public KeywordEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows or disables keyword pending.\nOnly works if Continuosly Recognition is Enabled. The default is FALSE"
    .end annotation

    .line 566
    iput-boolean p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordEnable:Z

    .line 567
    return-void
.end method

.method public KeywordEnable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 570
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordEnable:Z

    return v0
.end method

.method public KeywordTimeSeg()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 580
    iget v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordTimeSeg:I

    return v0
.end method

.method public KeywordTimeSeg(I)V
    .locals 0
    .param p1, "seg"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Time in seconds during which the AfterGettingText event will be unlocked,\nafter the last recognized phrase. The default is 30S"
    .end annotation

    .line 576
    iput p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->keywordTimeSeg:I

    .line 577
    return-void
.end method

.method public LastError()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Error of the last recognition"
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public MuteAudio(Z)V
    .locals 1
    .param p1, "mute"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Mute audio Prompt signal (if Dialog is disable only)\nThe default is FALSE, A beep will be played at the beginning and at the end of the recognition process."
    .end annotation

    .line 406
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->muteAudio:Z

    if-eq v0, p1, :cond_0

    .line 407
    iput-boolean p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->muteAudio:Z

    .line 408
    :cond_0
    return-void
.end method

.method public MuteAudio()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 411
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->muteAudio:Z

    return v0
.end method

.method public OnError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event occurs when recognition error"
    .end annotation

    .line 455
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "OnError"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method public OnRmsChanged(I)V
    .locals 3
    .param p1, "rms"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event occurs when Microphone input is change (0...10)"
    .end annotation

    .line 459
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "OnRmsChanged"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 460
    return-void
.end method

.method public PreferOffLine(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "To only use an offline speech recognition engine (Beginning with Android 6.0).\nThe default is FALSE, meaning that either network or offline recognition engines may be used"
    .end annotation

    .line 431
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->preferOffLine:Z

    if-eq v0, p1, :cond_0

    .line 432
    iput-boolean p1, p0, Lcom/Scorpio/ScSpeechRecognizer;->preferOffLine:Z

    .line 433
    invoke-direct {p0}, Lcom/Scorpio/ScSpeechRecognizer;->SetSRIntent()V

    .line 435
    :cond_0
    return-void
.end method

.method public PreferOffLine()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 438
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->preferOffLine:Z

    return v0
.end method

.method public Result()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->result:Ljava/lang/String;

    return-object v0
.end method

.method public StopASR()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop continuosly Recognition process"
    .end annotation

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->StopFlag:Z

    .line 180
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 182
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 185
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->isListening:Z

    .line 186
    iget-boolean v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->audioMuteFlag:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/Scorpio/ScSpeechRecognizer;->Sleep(J)V

    invoke-direct {p0, v0}, Lcom/Scorpio/ScSpeechRecognizer;->AudioMute(Z)V

    .line 187
    :cond_1
    return-void
.end method

.method public getErrorText(I)Ljava/lang/String;
    .locals 1
    .param p1, "errorCode"    # I

    .line 312
    packed-switch p1, :pswitch_data_0

    .line 341
    const-string v0, "Didn\'t understand, please try again."

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 320
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Insufficient permissions"

    .line 321
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 332
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_1
    const-string v0, "RecognitionService busy"

    .line 333
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 329
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_2
    const-string v0, "No match"

    .line 330
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 338
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_3
    const-string v0, "No speech input"

    .line 339
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 317
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_4
    const-string v0, "Client side error"

    .line 318
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 335
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_5
    const-string v0, "Error from server"

    .line 336
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 314
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_6
    const-string v0, "Audio recording error"

    .line 315
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 323
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_7
    const-string v0, "Network error"

    .line 324
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 326
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_8
    const-string v0, "Network timeout"

    .line 327
    .restart local v0    # "message":Ljava/lang/String;
    nop

    .line 344
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    .line 245
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .line 250
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/Scorpio/ScSpeechRecognizer;->AudioMute(Z)V

    .line 465
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->speech:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 468
    :cond_0
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->isListening:Z

    .line 255
    return-void
.end method

.method public onError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .line 260
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->continuoslyRecognitionEnabled:Z

    if-eqz v0, :cond_1

    .line 261
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/Scorpio/ScSpeechRecognizer;->RestartASR()V

    .line 263
    return-void

    .line 266
    :cond_1
    invoke-virtual {p0, p1}, Lcom/Scorpio/ScSpeechRecognizer;->getErrorText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->lastError:Ljava/lang/String;

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->result:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->lastError:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/Scorpio/ScSpeechRecognizer;->OnError(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;

    .line 276
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .line 280
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 281
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    .local v1, "parresult":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/Scorpio/ScSpeechRecognizer;->AfterPartialResults(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->isListening:Z

    .line 288
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "results"    # Landroid/os/Bundle;

    .line 292
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 293
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->result:Ljava/lang/String;

    .line 294
    iget-object v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->result:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/Scorpio/ScSpeechRecognizer;->CheckKeyWorld(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->continuoslyRecognitionEnabled:Z

    if-eqz v2, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/Scorpio/ScSpeechRecognizer;->RestartASR()V

    .line 296
    return-void

    .line 298
    :cond_0
    iget-boolean v2, p0, Lcom/Scorpio/ScSpeechRecognizer;->audioMuteFlag:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1f4

    invoke-direct {p0, v2, v3}, Lcom/Scorpio/ScSpeechRecognizer;->Sleep(J)V

    invoke-direct {p0, v1}, Lcom/Scorpio/ScSpeechRecognizer;->AudioMute(Z)V

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->result:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/Scorpio/ScSpeechRecognizer;->AfterGettingText(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 1
    .param p1, "rmsdB"    # F

    .line 305
    float-to-int v0, p1

    .line 306
    .local v0, "rms":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 307
    :cond_0
    invoke-virtual {p0, v0}, Lcom/Scorpio/ScSpeechRecognizer;->OnRmsChanged(I)V

    .line 308
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 210
    iget v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->requestCode:I

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 211
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 214
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer;->result:Ljava/lang/String;

    .line 215
    .end local v0    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 216
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->result:Ljava/lang/String;

    .line 218
    :goto_0
    iget-boolean v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->audioMuteFlag:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/Scorpio/ScSpeechRecognizer;->Sleep(J)V

    invoke-direct {p0, v2}, Lcom/Scorpio/ScSpeechRecognizer;->AudioMute(Z)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer;->result:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/Scorpio/ScSpeechRecognizer;->AfterGettingText(Ljava/lang/String;)V

    .line 221
    :cond_2
    return-void
.end method
