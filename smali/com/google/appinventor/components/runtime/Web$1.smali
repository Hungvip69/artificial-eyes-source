.class Lcom/google/appinventor/components/runtime/Web$1;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->Get()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Web;

    .line 469
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$1;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$1;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$1;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$1;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    const-string v4, "GET"

    const-string v5, "Get"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Web;->-$$Nest$mperformRequest(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method
