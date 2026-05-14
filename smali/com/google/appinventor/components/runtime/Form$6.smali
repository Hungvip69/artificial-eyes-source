.class Lcom/google/appinventor/components/runtime/Form$6;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/Component;

.field final synthetic val$errorNumber:I

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$messageArgs:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;I[Ljava/lang/Object;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .line 1044
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$6;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Form$6;->val$errorNumber:I

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Form$6;->val$messageArgs:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Form$6;->val$component:Lcom/google/appinventor/components/runtime/Component;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Form$6;->val$functionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1046
    iget v0, p0, Lcom/google/appinventor/components/runtime/Form$6;->val$errorNumber:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$6;->val$messageArgs:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ErrorMessages;->formatMessage(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$6;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form$6;->val$component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Form$6;->val$functionName:Ljava/lang/String;

    iget v5, p0, Lcom/google/appinventor/components/runtime/Form$6;->val$errorNumber:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$6;->val$functionName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Dismiss"

    move-object v6, v0

    invoke-virtual/range {v2 .. v8}, Lcom/google/appinventor/components/runtime/Form;->ErrorOccurredDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    return-void
.end method
