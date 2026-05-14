.class Lcom/google/appinventor/components/runtime/File$1$1;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/File$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/File$1;

    .line 205
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$1$1;->this$1:Lcom/google/appinventor/components/runtime/File$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$1$1;->this$1:Lcom/google/appinventor/components/runtime/File$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/File$1;->val$continuation:Lcom/google/appinventor/components/runtime/util/Continuation;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V

    .line 209
    return-void
.end method
