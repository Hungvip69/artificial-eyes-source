.class Lcom/google/appinventor/components/runtime/ReplForm$1;
.super Ljava/lang/Object;
.source "ReplForm.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ReplForm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ReplForm;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ReplForm;

    .line 155
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$1;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 158
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Uncaught exception"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 160
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    .local v1, "temp":Ljava/io/PrintStream;
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 162
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 163
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/RetValManager;->sendError(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 165
    return-void
.end method
