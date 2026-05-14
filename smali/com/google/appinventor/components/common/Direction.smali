.class public final enum Lcom/google/appinventor/components/common/Direction;
.super Ljava/lang/Enum;
.source "Direction.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/Direction;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/Direction;

.field public static final enum East:Lcom/google/appinventor/components/common/Direction;

.field public static final enum North:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Northeast:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Northwest:Lcom/google/appinventor/components/common/Direction;

.field public static final enum South:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Southeast:Lcom/google/appinventor/components/common/Direction;

.field public static final enum Southwest:Lcom/google/appinventor/components/common/Direction;

.field public static final enum West:Lcom/google/appinventor/components/common/Direction;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/Direction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/Direction;

    const-string v1, "North"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/Direction;

    const-string v1, "Northeast"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/Direction;

    const-string v1, "East"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/common/Direction;

    const-string v1, "Southeast"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/Direction;

    const-string v1, "South"

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/Direction;

    const/4 v1, -0x2

    const-string v7, "Southwest"

    const/4 v8, 0x5

    invoke-direct {v0, v7, v8, v1}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/Direction;

    const/4 v1, -0x3

    const-string v7, "West"

    const/4 v9, 0x6

    invoke-direct {v0, v7, v9, v1}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/Direction;

    const/4 v1, -0x4

    const-string v7, "Northwest"

    const/4 v10, 0x7

    invoke-direct {v0, v7, v10, v1}, Lcom/google/appinventor/components/common/Direction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/appinventor/components/common/Direction;

    sget-object v1, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->$VALUES:[Lcom/google/appinventor/components/common/Direction;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/Direction;->lookup:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/google/appinventor/components/common/Direction;->values()[Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 38
    .local v3, "dir":Lcom/google/appinventor/components/common/Direction;
    sget-object v4, Lcom/google/appinventor/components/common/Direction;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v3    # "dir":Lcom/google/appinventor/components/common/Direction;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "dir"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/google/appinventor/components/common/Direction;->value:I

    .line 28
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;
    .locals 1
    .param p0, "dir"    # Ljava/lang/Integer;

    .line 43
    sget-object v0, Lcom/google/appinventor/components/common/Direction;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/Direction;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/Direction;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/Direction;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/Direction;->$VALUES:[Lcom/google/appinventor/components/common/Direction;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/Direction;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/appinventor/components/common/Direction;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
