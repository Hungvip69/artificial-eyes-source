.class Lcom/google/appinventor/components/runtime/FirebaseDB$4;
.super Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
.source "FirebaseDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->RemoveFirst(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

.field final synthetic val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "retv"    # Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    .line 659
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;)V

    return-void
.end method


# virtual methods
.method run(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    .locals 4
    .param p1, "currentData"    # Lcom/firebase/client/MutableData;

    .line 662
    const-string v0, "Invalid JSON object in database (shouldn\'t happen!)"

    invoke-virtual {p1}, Lcom/firebase/client/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 663
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v2, "Previous value was empty."

    iput-object v2, v0, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 665
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v0

    return-object v0

    .line 668
    :cond_0
    :try_start_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 669
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 677
    .end local v1    # "value":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    nop

    .line 678
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 679
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 680
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v2, "The list was empty"

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 681
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v1

    return-object v1

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->retval:Ljava/lang/Object;

    .line 685
    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 689
    nop

    .line 690
    invoke-virtual {p1, v0}, Lcom/firebase/client/MutableData;->setValue(Ljava/lang/Object;)V

    .line 691
    invoke-static {p1}, Lcom/firebase/client/Transaction;->success(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object v1

    return-object v1

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v3, "Could not convert value to JSON."

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 688
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v2

    return-object v2

    .line 693
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    const-string v2, "You can only remove elements from a list."

    iput-object v2, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 694
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v1

    return-object v1

    .line 671
    .end local v0    # "value":Ljava/lang/Object;
    .local v1, "value":Ljava/lang/Object;
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    iput-object v0, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 672
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    .line 674
    :catch_1
    move-exception v2

    .line 675
    .local v2, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    iput-object v0, v3, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    .line 676
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object v0

    return-object v0
.end method
