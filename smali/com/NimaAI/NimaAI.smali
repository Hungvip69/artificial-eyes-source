.class public Lcom/NimaAI/NimaAI;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "NimaAI.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "NimaAI Extension without error thanks @Caraem144p"
    iconName = "https://static.vecteezy.com/system/resources/thumbnails/036/105/045/small_2x/artificial-intelligence-ai-processor-chip-icon-symbol-for-graphic-design-logo-web-site-social-media-png.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 31
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/NimaAI/NimaAI;->activity:Landroid/app/Activity;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/NimaAI/NimaAI;)Landroid/app/Activity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/NimaAI/NimaAI;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public GotResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when response is received"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "GotResponse"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public SendToAI(Ljava/lang/String;)V
    .locals 2
    .param p1, "question"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send question to AI and get response"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "question"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/NimaAI/NimaAI$1;

    invoke-direct {v1, p0, p1}, Lcom/NimaAI/NimaAI$1;-><init>(Lcom/NimaAI/NimaAI;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method
