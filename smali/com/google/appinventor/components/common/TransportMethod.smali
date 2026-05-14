.class public final enum Lcom/google/appinventor/components/common/TransportMethod;
.super Ljava/lang/Enum;
.source "TransportMethod.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/TransportMethod;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Bicycle:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Car:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Foot:Lcom/google/appinventor/components/common/TransportMethod;

.field public static final enum Wheelchair:Lcom/google/appinventor/components/common/TransportMethod;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/TransportMethod;",
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
    new-instance v0, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v1, "foot-walking"

    const-string v2, "Foot"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/TransportMethod;->Foot:Lcom/google/appinventor/components/common/TransportMethod;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v1, "driving-car"

    const-string v2, "Car"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/TransportMethod;->Car:Lcom/google/appinventor/components/common/TransportMethod;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v1, "cycling-regular"

    const-string v2, "Bicycle"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/TransportMethod;->Bicycle:Lcom/google/appinventor/components/common/TransportMethod;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/common/TransportMethod;

    const-string v1, "wheelchair"

    const-string v2, "Wheelchair"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lcom/google/appinventor/components/common/TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/TransportMethod;->Wheelchair:Lcom/google/appinventor/components/common/TransportMethod;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/appinventor/components/common/TransportMethod;

    sget-object v1, Lcom/google/appinventor/components/common/TransportMethod;->Foot:Lcom/google/appinventor/components/common/TransportMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/TransportMethod;->Car:Lcom/google/appinventor/components/common/TransportMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/TransportMethod;->Bicycle:Lcom/google/appinventor/components/common/TransportMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/TransportMethod;->Wheelchair:Lcom/google/appinventor/components/common/TransportMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/appinventor/components/common/TransportMethod;->$VALUES:[Lcom/google/appinventor/components/common/TransportMethod;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/TransportMethod;->lookup:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/google/appinventor/components/common/TransportMethod;->values()[Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 34
    .local v2, "method":Lcom/google/appinventor/components/common/TransportMethod;
    sget-object v4, Lcom/google/appinventor/components/common/TransportMethod;->lookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v2    # "method":Lcom/google/appinventor/components/common/TransportMethod;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/google/appinventor/components/common/TransportMethod;->value:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/google/appinventor/components/common/TransportMethod;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/TransportMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/TransportMethod;->$VALUES:[Lcom/google/appinventor/components/common/TransportMethod;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/TransportMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/common/TransportMethod;->value:Ljava/lang/String;

    return-object v0
.end method
