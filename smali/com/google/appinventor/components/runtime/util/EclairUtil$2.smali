.class Lcom/google/appinventor/components/runtime/util/EclairUtil$2;
.super Ljava/lang/Object;
.source "EclairUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/EclairUtil;->showPermissionDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/webkit/GeolocationPermissions$Callback;

.field final synthetic val$theOrigin:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$2;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$2;->val$theOrigin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$2;->val$callback:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/EclairUtil$2;->val$theOrigin:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 179
    return-void
.end method
