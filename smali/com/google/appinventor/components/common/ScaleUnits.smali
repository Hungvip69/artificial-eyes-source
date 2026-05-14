.class public final enum Lcom/google/appinventor/components/common/ScaleUnits;
.super Ljava/lang/Enum;
.source "ScaleUnits.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ScaleUnits;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/ScaleUnits;

.field public static final enum Imperial:Lcom/google/appinventor/components/common/ScaleUnits;

.field public static final enum Metric:Lcom/google/appinventor/components/common/ScaleUnits;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/ScaleUnits;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/ScaleUnits;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Metric"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/google/appinventor/components/common/ScaleUnits;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->Metric:Lcom/google/appinventor/components/common/ScaleUnits;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/ScaleUnits;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Imperial"

    invoke-direct {v0, v5, v1, v3}, Lcom/google/appinventor/components/common/ScaleUnits;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->Imperial:Lcom/google/appinventor/components/common/ScaleUnits;

    .line 14
    new-array v0, v2, [Lcom/google/appinventor/components/common/ScaleUnits;

    sget-object v2, Lcom/google/appinventor/components/common/ScaleUnits;->Metric:Lcom/google/appinventor/components/common/ScaleUnits;

    aput-object v2, v0, v4

    sget-object v2, Lcom/google/appinventor/components/common/ScaleUnits;->Imperial:Lcom/google/appinventor/components/common/ScaleUnits;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->$VALUES:[Lcom/google/appinventor/components/common/ScaleUnits;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->lookup:Ljava/util/Map;

    .line 31
    invoke-static {}, Lcom/google/appinventor/components/common/ScaleUnits;->values()[Lcom/google/appinventor/components/common/ScaleUnits;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    .line 32
    .local v2, "unit":Lcom/google/appinventor/components/common/ScaleUnits;
    sget-object v3, Lcom/google/appinventor/components/common/ScaleUnits;->lookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ScaleUnits;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .end local v2    # "unit":Lcom/google/appinventor/components/common/ScaleUnits;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/google/appinventor/components/common/ScaleUnits;->value:Ljava/lang/Integer;

    .line 22
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ScaleUnits;
    .locals 1
    .param p0, "unit"    # Ljava/lang/Integer;

    .line 37
    sget-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ScaleUnits;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScaleUnits;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/ScaleUnits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ScaleUnits;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ScaleUnits;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/ScaleUnits;->$VALUES:[Lcom/google/appinventor/components/common/ScaleUnits;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ScaleUnits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ScaleUnits;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/common/ScaleUnits;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ScaleUnits;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
