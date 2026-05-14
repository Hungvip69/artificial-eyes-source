.class public Lcom/google/appinventor/components/runtime/util/PermissionRegistry;
.super Ljava/lang/Object;
.source "PermissionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final permissions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public needsPermission(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;

    .line 105
    .local v0, "constraint":Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 106
    return v1

    .line 108
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;->-$$Nest$fgetminSdk(Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;)I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, v3, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;->-$$Nest$fgetmaxSdk(Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;)I

    move-result v3

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public record(Ljava/lang/String;II)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "minSdk"    # I
    .param p3, "maxSdk"    # I

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overwriting permission rules for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;

    invoke-direct {v1, p2, p3}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;-><init>(II)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object p0
.end method

.method public recordMaxSdk(Ljava/lang/String;I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "maxSdk"    # I

    .line 88
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;->-$$Nest$fgetminSdk(Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;)I

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;-><init>(II)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;->maxSdk(I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_0
    return-object p0
.end method

.method public recordMinSdk(Ljava/lang/String;I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry;
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "minSdk"    # I

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;->-$$Nest$fgetmaxSdk(Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;)I

    move-result v2

    invoke-direct {v1, p2, v2}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;-><init>(II)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry;->permissions:Ljava/util/Map;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;->minSdk(I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_0
    return-object p0
.end method
