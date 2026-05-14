.class Lcom/google/appinventor/components/runtime/File$10;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->afterRead(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/File;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/File;

    .line 701
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$10;->this$0:Lcom/google/appinventor/components/runtime/File;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$10;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$10;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$10;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/File;->GotText(Ljava/lang/String;)V

    .line 705
    return-void
.end method
