.class Lcom/google/appinventor/components/runtime/FirebaseDB$6;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->GetTagList()V
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

    .line 711
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$6;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 0
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .line 729
    return-void
.end method

.method public onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 4
    .param p1, "data"    # Lcom/firebase/client/DataSnapshot;

    .line 714
    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 715
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 716
    new-instance v1, Ljava/util/ArrayList;

    move-object v2, v0

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 717
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 718
    .local v1, "listValue":Ljava/util/List;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$6;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FirebaseDB;->-$$Nest$fgetandroidUIHandler(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/FirebaseDB$6$1;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB$6$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$6;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 725
    .end local v1    # "listValue":Ljava/util/List;
    :cond_0
    return-void
.end method
