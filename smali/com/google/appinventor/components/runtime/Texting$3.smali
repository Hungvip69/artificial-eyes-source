.class Lcom/google/appinventor/components/runtime/Texting$3;
.super Ljava/lang/Object;
.source "Texting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;

.field final synthetic val$parts:Ljava/util/ArrayList;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;

    .line 1151
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$3;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Texting$3;->val$phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Texting$3;->val$parts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$3;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting$3;->val$phoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting$3;->val$parts:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Texting;->-$$Nest$mtransmitMessage(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1155
    return-void
.end method
