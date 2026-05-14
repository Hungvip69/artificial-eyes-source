.class Lcom/google/appinventor/components/runtime/FirebaseDB$2;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Lcom/firebase/client/Firebase$AuthStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;

    .line 202
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$2;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthStateChanged(Lcom/firebase/client/AuthData;)V
    .locals 3
    .param p1, "data"    # Lcom/firebase/client/AuthData;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthStateChanged: data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Firebase"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    if-nez p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$2;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->-$$Nest$fgetmyFirebase(Lcom/google/appinventor/components/runtime/FirebaseDB;)Lcom/firebase/client/Firebase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$2;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->-$$Nest$fgetfirebaseToken(Lcom/google/appinventor/components/runtime/FirebaseDB;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/FirebaseDB$2$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/FirebaseDB$2$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/firebase/client/Firebase;->authWithCustomToken(Ljava/lang/String;Lcom/firebase/client/Firebase$AuthResultHandler;)V

    .line 219
    :cond_0
    return-void
.end method
