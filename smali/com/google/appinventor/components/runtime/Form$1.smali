.class Lcom/google/appinventor/components/runtime/Form$1;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .line 337
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 340
    const-string v0, "Form"

    const-string v1, "Uncaught Exception"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Form$1$1;

    invoke-direct {v1, p0, p2}, Lcom/google/appinventor/components/runtime/Form$1$1;-><init>(Lcom/google/appinventor/components/runtime/Form$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method
