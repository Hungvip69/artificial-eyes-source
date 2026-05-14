.class Lcom/Scorpio/ScSpeechRecognizer$1;
.super Ljava/lang/Object;
.source "ScSpeechRecognizer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/Scorpio/ScSpeechRecognizer;->GetText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Scorpio/ScSpeechRecognizer;


# direct methods
.method constructor <init>(Lcom/Scorpio/ScSpeechRecognizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/Scorpio/ScSpeechRecognizer;

    .line 154
    iput-object p1, p0, Lcom/Scorpio/ScSpeechRecognizer$1;->this$0:Lcom/Scorpio/ScSpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .line 157
    if-eqz p2, :cond_0

    .line 158
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer$1;->this$0:Lcom/Scorpio/ScSpeechRecognizer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/Scorpio/ScSpeechRecognizer;->access$002(Lcom/Scorpio/ScSpeechRecognizer;Z)Z

    .line 159
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer$1;->this$0:Lcom/Scorpio/ScSpeechRecognizer;

    invoke-virtual {v0}, Lcom/Scorpio/ScSpeechRecognizer;->GetText()V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/Scorpio/ScSpeechRecognizer$1;->this$0:Lcom/Scorpio/ScSpeechRecognizer;

    invoke-static {v0}, Lcom/Scorpio/ScSpeechRecognizer;->access$100(Lcom/Scorpio/ScSpeechRecognizer;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/Scorpio/ScSpeechRecognizer$1;->this$0:Lcom/Scorpio/ScSpeechRecognizer;

    const-string v2, "RecordAudio"

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void
.end method
