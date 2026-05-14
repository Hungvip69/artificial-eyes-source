.class public final enum Lcom/google/appinventor/components/common/FileScope;
.super Ljava/lang/Enum;
.source "FileScope.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/FileScope;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/FileScope;

.field public static final enum App:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Asset:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Cache:Lcom/google/appinventor/components/common/FileScope;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Legacy:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Private:Lcom/google/appinventor/components/common/FileScope;

.field public static final enum Shared:Lcom/google/appinventor/components/common/FileScope;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "App"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    .line 29
    new-instance v0, Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "Asset"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    .line 34
    new-instance v0, Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "Cache"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->Cache:Lcom/google/appinventor/components/common/FileScope;

    .line 40
    new-instance v0, Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "Legacy"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    .line 45
    new-instance v0, Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "Private"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    .line 51
    new-instance v0, Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "Shared"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/appinventor/components/common/FileScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/appinventor/components/common/FileScope;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Cache:Lcom/google/appinventor/components/common/FileScope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Private:Lcom/google/appinventor/components/common/FileScope;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->$VALUES:[Lcom/google/appinventor/components/common/FileScope;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/FileScope;->LOOKUP:Ljava/util/Map;

    .line 56
    invoke-static {}, Lcom/google/appinventor/components/common/FileScope;->values()[Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 57
    .local v3, "scope":Lcom/google/appinventor/components/common/FileScope;
    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->LOOKUP:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/FileScope;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v3    # "scope":Lcom/google/appinventor/components/common/FileScope;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileScope;
    .locals 1
    .param p0, "scope"    # Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileScope;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/FileScope;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->$VALUES:[Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/FileScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileScope;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileScope;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
