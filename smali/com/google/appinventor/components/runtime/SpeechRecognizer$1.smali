.class Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SpeechRecognizer;->GetText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/SpeechRecognizer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/SpeechRecognizer;Lcom/google/appinventor/components/runtime/SpeechRecognizer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    .line 132
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->val$me:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;->this$0:Lcom/google/appinventor/components/runtime/SpeechRecognizer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SpeechRecognizer;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/SpeechRecognizer$1$1;-><init>(Lcom/google/appinventor/components/runtime/SpeechRecognizer$1;)V

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 147
    return-void
.end method
