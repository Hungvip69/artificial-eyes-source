.class Lcom/google/appinventor/components/runtime/Web$6;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$httpVerb:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Web;

    .line 791
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$6;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$encoding:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$functionName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$httpVerb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$encoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$text:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "requestData":[B
    goto :goto_1

    .line 798
    .end local v0    # "requestData":[B
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$text:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .restart local v0    # "requestData":[B
    :goto_1
    nop

    .line 808
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$6;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$httpVerb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$functionName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Web;->-$$Nest$mperformRequest(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    return-void

    .line 802
    .end local v0    # "requestData":[B
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$6;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$6;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$functionName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$6;->val$encoding:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/16 v4, 0x44e

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 805
    return-void
.end method
