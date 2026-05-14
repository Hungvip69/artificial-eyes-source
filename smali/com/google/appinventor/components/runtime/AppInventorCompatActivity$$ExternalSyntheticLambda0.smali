.class public final synthetic Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$$ExternalSyntheticLambda0;->f$0:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$$ExternalSyntheticLambda0;->f$0:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->lambda$onCreate$0$com-google-appinventor-components-runtime-AppInventorCompatActivity(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
