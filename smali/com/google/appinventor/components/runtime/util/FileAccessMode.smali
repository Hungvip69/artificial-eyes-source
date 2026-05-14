.class public final enum Lcom/google/appinventor/components/runtime/util/FileAccessMode;
.super Ljava/lang/Enum;
.source "FileAccessMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/util/FileAccessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/util/FileAccessMode;

.field public static final enum APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

.field public static final enum READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

.field public static final enum WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;


# instance fields
.field private final permission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "READ"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/util/FileAccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    const-string v1, "WRITE"

    const/4 v2, 0x1

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/appinventor/components/runtime/util/FileAccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    const-string v1, "APPEND"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v4}, Lcom/google/appinventor/components/runtime/util/FileAccessMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->APPEND:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->$VALUES:[Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->permission:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->$VALUES:[Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/FileAccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    return-object v0
.end method


# virtual methods
.method public getPermission()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->permission:Ljava/lang/String;

    return-object v0
.end method
