.class Lcom/google/appinventor/components/runtime/Form$1$1;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form$1;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Form$1;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form$1;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Form$1;

    .line 341
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->this$1:Lcom/google/appinventor/components/runtime/Form$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->this$1:Lcom/google/appinventor/components/runtime/Form$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->this$1:Lcom/google/appinventor/components/runtime/Form$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->val$e:Ljava/lang/Throwable;

    .line 345
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    const-string v3, "<unknown>"

    const/16 v4, 0x38d

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->ErrorOccurred(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;)V

    .line 346
    return-void
.end method
