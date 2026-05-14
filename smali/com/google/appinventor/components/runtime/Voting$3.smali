.class Lcom/google/appinventor/components/runtime/Voting$3;
.super Ljava/lang/Object;
.source "Voting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Voting;->SendBallot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Voting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Voting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Voting;

    .line 381
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Voting$3;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Voting$3;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Voting$3;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetuserChoice(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Voting$3;->this$0:Lcom/google/appinventor/components/runtime/Voting;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$fgetuserId(Lcom/google/appinventor/components/runtime/Voting;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Voting;->-$$Nest$mpostSendBallot(Lcom/google/appinventor/components/runtime/Voting;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
