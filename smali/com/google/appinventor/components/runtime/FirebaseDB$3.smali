.class Lcom/google/appinventor/components/runtime/FirebaseDB$3;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$valueIfTagNotThere:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;

    .line 486
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->val$valueIfTagNotThere:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 2
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .line 515
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$3;Lcom/firebase/client/FirebaseError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 523
    return-void
.end method

.method public onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 5
    .param p1, "snapshot"    # Lcom/firebase/client/DataSnapshot;

    .line 489
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 494
    .local v0, "value":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->val$valueIfTagNotThere:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    nop

    .line 503
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/FirebaseDB$3$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB$3$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$3;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 511
    return-void

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Value failed to convert to JSON."

    const-string v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method
