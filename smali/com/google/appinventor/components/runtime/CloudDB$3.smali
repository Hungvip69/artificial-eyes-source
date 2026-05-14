.class Lcom/google/appinventor/components/runtime/CloudDB$3;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$valueIfTagNotThere:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .line 791
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$valueIfTagNotThere:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 793
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->val$valueIfTagNotThere:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$mgetValueByTag(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 796
    .local v0, "value":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 797
    return-void

    .line 800
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/CloudDB;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/CloudDB$3$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/CloudDB$3$1;-><init>(Lcom/google/appinventor/components/runtime/CloudDB$3;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 808
    return-void
.end method
