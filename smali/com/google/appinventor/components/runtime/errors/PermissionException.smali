.class public Lcom/google/appinventor/components/runtime/errors/PermissionException;
.super Ljava/lang/RuntimeException;
.source "PermissionException.java"


# instance fields
.field private final permissionNeeded:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "permissionNeeded"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/errors/PermissionException;->permissionNeeded:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/errors/PermissionException;->permissionNeeded:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to complete the operation because the user denied permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionNeeded()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/errors/PermissionException;->permissionNeeded:Ljava/lang/String;

    return-object v0
.end method
