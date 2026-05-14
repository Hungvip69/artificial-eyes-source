.class public final enum Lcom/google/appinventor/components/common/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/FileType;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/FileType;

.field public static final enum Any:Lcom/google/appinventor/components/common/FileType;

.field public static final enum Audio:Lcom/google/appinventor/components/common/FileType;

.field public static final enum Image:Lcom/google/appinventor/components/common/FileType;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Video:Lcom/google/appinventor/components/common/FileType;


# instance fields
.field private final mimeType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/FileType;

    const-string v1, "*/*"

    const-string v2, "Any"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/appinventor/components/common/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/FileType;->Any:Lcom/google/appinventor/components/common/FileType;

    .line 28
    new-instance v0, Lcom/google/appinventor/components/common/FileType;

    const-string v1, "audio/*"

    const-string v2, "Audio"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/google/appinventor/components/common/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/FileType;->Audio:Lcom/google/appinventor/components/common/FileType;

    .line 33
    new-instance v0, Lcom/google/appinventor/components/common/FileType;

    const-string v1, "image/*"

    const-string v2, "Image"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/google/appinventor/components/common/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/FileType;->Image:Lcom/google/appinventor/components/common/FileType;

    .line 38
    new-instance v0, Lcom/google/appinventor/components/common/FileType;

    const-string v1, "video/*"

    const-string v2, "Video"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lcom/google/appinventor/components/common/FileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/FileType;->Video:Lcom/google/appinventor/components/common/FileType;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/appinventor/components/common/FileType;

    sget-object v1, Lcom/google/appinventor/components/common/FileType;->Any:Lcom/google/appinventor/components/common/FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/FileType;->Audio:Lcom/google/appinventor/components/common/FileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/FileType;->Image:Lcom/google/appinventor/components/common/FileType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/FileType;->Video:Lcom/google/appinventor/components/common/FileType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/appinventor/components/common/FileType;->$VALUES:[Lcom/google/appinventor/components/common/FileType;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/FileType;->LOOKUP:Ljava/util/Map;

    .line 43
    invoke-static {}, Lcom/google/appinventor/components/common/FileType;->values()[Lcom/google/appinventor/components/common/FileType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 44
    .local v2, "type":Lcom/google/appinventor/components/common/FileType;
    sget-object v4, Lcom/google/appinventor/components/common/FileType;->LOOKUP:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/FileType;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .end local v2    # "type":Lcom/google/appinventor/components/common/FileType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/google/appinventor/components/common/FileType;->mimeType:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileType;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/google/appinventor/components/common/FileType;->LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/FileType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/google/appinventor/components/common/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/FileType;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/FileType;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/appinventor/components/common/FileType;->$VALUES:[Lcom/google/appinventor/components/common/FileType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/FileType;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileType;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/common/FileType;->mimeType:Ljava/lang/String;

    return-object v0
.end method
