.class public Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;
.super Ljava/lang/Object;
.source "InternalTextToSpeech.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/ITextToSpeech;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InternalTTS"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

.field private volatile isTtsInitialized:Z

.field private mHandler:Landroid/os/Handler;

.field private nextUtteranceId:I

.field private tts:Landroid/speech/tts/TextToSpeech;

.field private ttsMaxRetries:I

.field private ttsRetryDelay:I


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisTtsInitialized(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mspeak(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;Ljava/lang/String;Ljava/util/Locale;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    .line 48
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsRetryDelay:I

    .line 53
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsMaxRetries:I

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    .line 58
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V

    .line 59
    return-void
.end method

.method private initializeTts()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "InternalTTS"

    const-string v1, "INTERNAL TTS is reinitializing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$1;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    .line 73
    :cond_0
    return-void
.end method

.method private speak(Ljava/lang/String;Ljava/util/Locale;I)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "loc"    # Ljava/util/Locale;
    .param p3, "retries"    # I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalTTS speak called, message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalTTS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsMaxRetries:I

    if-le p3, v0, :cond_0

    .line 96
    iget v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsMaxRetries:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "max number of speak retries exceeded ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "): speak will fail"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    .line 98
    return-void

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    if-eqz v0, :cond_2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTS initialized after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " retries."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$2;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;)V

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->nextUtteranceId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utteranceId"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v2

    .line 122
    .local v2, "result":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 123
    const-string v3, "speak called and tts.speak result was an error"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->callback:Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/util/ITextToSpeech$TextToSpeechCallback;->onFailure()V

    .line 126
    .end local v0    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "result":I
    :cond_1
    goto :goto_0

    .line 127
    :cond_2
    const-string v0, "speak called when TTS not initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech$3;-><init>(Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;ILjava/lang/String;Ljava/util/Locale;)V

    iget v2, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->ttsRetryDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    :goto_0
    return-void
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    return v0
.end method

.method public isLanguageAvailable(Ljava/util/Locale;)I
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 146
    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->isTtsInitialized:Z

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    .line 152
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 156
    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->initializeTts()V

    .line 158
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 140
    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method public setPitch(F)V
    .locals 1
    .param p1, "pitch"    # F

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 163
    return-void
.end method

.method public setSpeechRate(F)V
    .locals 1
    .param p1, "speechRate"    # F

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 168
    return-void
.end method

.method public speak(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "loc"    # Ljava/util/Locale;

    .line 77
    const-string v0, "InternalTTS"

    const-string v1, "Internal TTS got speak"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->speak(Ljava/lang/String;Ljava/util/Locale;I)V

    .line 79
    return-void
.end method

.method public stop()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/InternalTextToSpeech;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 86
    :cond_0
    return-void
.end method
