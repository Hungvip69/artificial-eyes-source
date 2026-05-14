.class Lcom/NimaAI/NimaAI$1$1;
.super Ljava/lang/Object;
.source "NimaAI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NimaAI/NimaAI$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/NimaAI/NimaAI$1;

.field private final synthetic val$finalResult:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/NimaAI/NimaAI$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalResult"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/NimaAI/NimaAI$1$1;->this$1:Lcom/NimaAI/NimaAI$1;

    iput-object p2, p0, Lcom/NimaAI/NimaAI$1$1;->val$finalResult:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/NimaAI/NimaAI$1$1;->this$1:Lcom/NimaAI/NimaAI$1;

    invoke-static {v0}, Lcom/NimaAI/NimaAI$1;->access$0(Lcom/NimaAI/NimaAI$1;)Lcom/NimaAI/NimaAI;

    move-result-object v0

    iget-object v1, p0, Lcom/NimaAI/NimaAI$1$1;->val$finalResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/NimaAI/NimaAI;->GotResponse(Ljava/lang/String;)V

    .line 75
    return-void
.end method
