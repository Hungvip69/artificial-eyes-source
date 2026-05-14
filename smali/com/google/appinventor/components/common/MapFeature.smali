.class public final enum Lcom/google/appinventor/components/common/MapFeature;
.super Ljava/lang/Enum;
.source "MapFeature.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/MapFeature;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/MapFeature;

.field public static final enum Circle:Lcom/google/appinventor/components/common/MapFeature;

.field public static final enum LineString:Lcom/google/appinventor/components/common/MapFeature;

.field public static final enum Marker:Lcom/google/appinventor/components/common/MapFeature;

.field public static final enum Polygon:Lcom/google/appinventor/components/common/MapFeature;

.field public static final enum Rectangle:Lcom/google/appinventor/components/common/MapFeature;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/MapFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/MapFeature;

    const-string v1, "Circle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/google/appinventor/components/common/MapFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/MapFeature;->Circle:Lcom/google/appinventor/components/common/MapFeature;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/MapFeature;

    const-string v1, "LineString"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/google/appinventor/components/common/MapFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/MapFeature;->LineString:Lcom/google/appinventor/components/common/MapFeature;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/MapFeature;

    const-string v1, "Marker"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1}, Lcom/google/appinventor/components/common/MapFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/MapFeature;->Marker:Lcom/google/appinventor/components/common/MapFeature;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/common/MapFeature;

    const-string v1, "Polygon"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v1}, Lcom/google/appinventor/components/common/MapFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/MapFeature;->Polygon:Lcom/google/appinventor/components/common/MapFeature;

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/MapFeature;

    const-string v1, "Rectangle"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v1}, Lcom/google/appinventor/components/common/MapFeature;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/MapFeature;->Rectangle:Lcom/google/appinventor/components/common/MapFeature;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/appinventor/components/common/MapFeature;

    sget-object v1, Lcom/google/appinventor/components/common/MapFeature;->Circle:Lcom/google/appinventor/components/common/MapFeature;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/MapFeature;->LineString:Lcom/google/appinventor/components/common/MapFeature;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/MapFeature;->Marker:Lcom/google/appinventor/components/common/MapFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/MapFeature;->Polygon:Lcom/google/appinventor/components/common/MapFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/MapFeature;->Rectangle:Lcom/google/appinventor/components/common/MapFeature;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/appinventor/components/common/MapFeature;->$VALUES:[Lcom/google/appinventor/components/common/MapFeature;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/MapFeature;->lookup:Ljava/util/Map;

    .line 34
    invoke-static {}, Lcom/google/appinventor/components/common/MapFeature;->values()[Lcom/google/appinventor/components/common/MapFeature;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 35
    .local v3, "feat":Lcom/google/appinventor/components/common/MapFeature;
    sget-object v4, Lcom/google/appinventor/components/common/MapFeature;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .end local v3    # "feat":Lcom/google/appinventor/components/common/MapFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "feat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/google/appinventor/components/common/MapFeature;->value:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/MapFeature;
    .locals 1
    .param p0, "feat"    # Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/MapFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/MapFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/MapFeature;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->$VALUES:[Lcom/google/appinventor/components/common/MapFeature;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/MapFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/common/MapFeature;->value:Ljava/lang/String;

    return-object v0
.end method
