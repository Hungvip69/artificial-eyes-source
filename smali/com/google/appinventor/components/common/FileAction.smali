.class public final enum Lcom/google/appinventor/components/common/FileAction;
.super Ljava/lang/Enum;
.source "FileAction.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/FileAction;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/FileAction;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PickDirectory:Lcom/google/appinventor/components/common/FileAction;

.field public static final enum PickExistingFile:Lcom/google/appinventor/components/common/FileAction;

.field public static final enum PickNewFile:Lcom/google/appinventor/components/common/FileAction;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/FileAction;

    const-string v1, "Pick Existing File"

    const-string v2, "PickExistingFile"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/appinventor/components/common/FileAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/FileAction;->PickExistingFile:Lcom/google/appinventor/components/common/FileAction;

    .line 27
    new-instance v0, Lcom/google/appinventor/components/common/FileAction;

    const-string v1, "Pick New File"

    const-string v2, "PickNewFile"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/google/appinventor/components/common/FileAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/FileAction;->PickNewFile:Lcom/google/appinventor/components/common/FileAction;

    .line 32
    new-instance v0, Lcom/google/appinventor/components/common/FileAction;

    const-string v1, "Pick Directory"

    const-string v2, "PickDirectory"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/google/appinventor/components/common/FileAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/FileAction;->PickDirectory:Lcom/google/appinventor/components/common/FileAction;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/appinventor/components/common/FileAction;

    sget-object v1, Lcom/google/appinventor/components/common/FileAction;->PickExistingFile:Lcom/google/appinventor/components/common/FileAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/FileAction;->PickNewFile:Lcom/google/appinventor/components/common/FileAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/FileAction;->PickDirectory:Lcom/google/appinventor/components/common/FileAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/appinventor/components/common/FileAction;->$VALUES:[Lcom/google/appinventor/components/common/FileAction;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/FileAction;->LOOKUP:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/google/appinventor/components/common/FileAction;->values()[Lcom/google/appinventor/components/common/FileAction;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 38
    .local v2, "action":Lcom/google/appinventor/components/common/FileAction;
    sget-object v4, Lcom/google/appinventor/components/common/FileAction;->LOOKUP:Ljava/util/Map;

    iget-object v5, v2, Lcom/google/appinventor/components/common/FileAction;->value:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v2    # "action":Lcom/google/appinventor/components/common/FileAction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/google/appinventor/components/common/FileAction;->value:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileAction;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/google/appinventor/components/common/FileAction;->LOOKUP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/FileAction;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/FileAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 17
    const-class v0, Lcom/google/appinventor/components/common/FileAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/FileAction;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/FileAction;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/appinventor/components/common/FileAction;->$VALUES:[Lcom/google/appinventor/components/common/FileAction;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/FileAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/FileAction;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/FileAction;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/common/FileAction;->value:Ljava/lang/String;

    return-object v0
.end method
