.class Lcom/google/appinventor/components/runtime/ImageBot$7;
.super Ljava/lang/Object;
.source "ImageBot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ImageBot;->doCreateImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ImageBot;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ImageBot;

    .line 472
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageBot$7;->this$0:Lcom/google/appinventor/components/runtime/ImageBot;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ImageBot$7;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot$7;->this$0:Lcom/google/appinventor/components/runtime/ImageBot;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot$7;->val$e:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x194

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/ImageBot;->ErrorOccurred(ILjava/lang/String;)V

    .line 476
    return-void
.end method
