.class Lcom/google/appinventor/components/runtime/ImageBot$9;
.super Ljava/lang/Object;
.source "ImageBot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ImageBot;->doEditImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ImageBot;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ImageBot;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ImageBot;

    .line 527
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImageBot$9;->this$0:Lcom/google/appinventor/components/runtime/ImageBot;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ImageBot$9;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImageBot$9;->this$0:Lcom/google/appinventor/components/runtime/ImageBot;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImageBot$9;->val$response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ImageBot;->ImageEdited(Ljava/lang/String;)V

    .line 531
    return-void
.end method
