.class Lcom/google/appinventor/components/runtime/Translator$2;
.super Ljava/lang/Object;
.source "Translator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Translator;->GotTranslation(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Translator;

.field final synthetic val$responseCode:Ljava/lang/String;

.field final synthetic val$translation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Translator;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Translator;

    .line 361
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Translator$2;->this$0:Lcom/google/appinventor/components/runtime/Translator;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Translator$2;->val$responseCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Translator$2;->val$translation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Translator$2;->this$0:Lcom/google/appinventor/components/runtime/Translator;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Translator$2;->val$responseCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Translator$2;->val$translation:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const-string v1, "GotTranslation"

    invoke-static {v0, v1, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 365
    return-void
.end method
