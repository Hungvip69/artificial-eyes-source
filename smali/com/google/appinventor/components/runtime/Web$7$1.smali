.class Lcom/google/appinventor/components/runtime/Web$7$1;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web$7;->onGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Web$7;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Web$7;

    .line 1226
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$7$1;->this$1:Lcom/google/appinventor/components/runtime/Web$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7$1;->this$1:Lcom/google/appinventor/components/runtime/Web$7;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/Web$7;->val$me:Lcom/google/appinventor/components/runtime/Web;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7$1;->this$1:Lcom/google/appinventor/components/runtime/Web$7;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Web$7;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7$1;->this$1:Lcom/google/appinventor/components/runtime/Web$7;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Web$7;->val$postData:[B

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7$1;->this$1:Lcom/google/appinventor/components/runtime/Web$7;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Web$7;->val$postFile:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7$1;->this$1:Lcom/google/appinventor/components/runtime/Web$7;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Web$7;->val$httpVerb:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$7$1;->this$1:Lcom/google/appinventor/components/runtime/Web$7;

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Web$7;->val$method:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Web;->-$$Nest$mperformRequest(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    return-void
.end method
