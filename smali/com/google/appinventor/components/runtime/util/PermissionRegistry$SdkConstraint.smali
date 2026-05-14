.class Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;
.super Ljava/lang/Object;
.source "PermissionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/PermissionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SdkConstraint"
.end annotation


# instance fields
.field private final maxSdk:I

.field private final minSdk:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmaxSdk(Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;->maxSdk:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetminSdk(Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;->minSdk:I

    return p0
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "minSdk"    # I
    .param p2, "maxSdk"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;->minSdk:I

    .line 29
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;->maxSdk:I

    .line 30
    return-void
.end method

.method static maxSdk(I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;
    .locals 2
    .param p0, "maxSdk"    # I

    .line 37
    new-instance v0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;-><init>(II)V

    return-object v0
.end method

.method static minSdk(I)Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;
    .locals 2
    .param p0, "minSdk"    # I

    .line 33
    new-instance v0, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;

    const v1, 0x7fffffff

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/util/PermissionRegistry$SdkConstraint;-><init>(II)V

    return-object v0
.end method
