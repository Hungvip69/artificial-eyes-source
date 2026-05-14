.class Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface$1;
.super Ljava/lang/Object;
.source "ProjectsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;->finished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;

    .line 80
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface$1;->this$1:Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface$1;->this$1:Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;->this$0:Lcom/google/appinventor/components/runtime/ProjectsActivity;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ProjectsActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface$1;->this$1:Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ProjectsActivity$JavaInterface;->this$0:Lcom/google/appinventor/components/runtime/ProjectsActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ProjectsActivity;->finish()V

    .line 85
    return-void
.end method
