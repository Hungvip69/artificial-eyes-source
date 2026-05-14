.class public final enum Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
.super Ljava/lang/Enum;
.source "UltrasonicSensorUnit.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/UltrasonicSensorUnit;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

.field public static final enum Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

.field public static final enum Inches:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/UltrasonicSensorUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    const-string v1, "cm"

    const-string v2, "Centimeters"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    const-string v1, "inch"

    const-string v2, "Inches"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1, v4}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Inches:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    sget-object v1, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Inches:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->$VALUES:[Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->lookup:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->values()[Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 38
    .local v2, "mode":Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    sget-object v4, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->lookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v2    # "mode":Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "intMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->value:Ljava/lang/String;

    .line 23
    iput p4, p0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->intValue:I

    .line 24
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .locals 1
    .param p0, "mode"    # Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->$VALUES:[Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-object v0
.end method


# virtual methods
.method public toInt()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->value:Ljava/lang/String;

    return-object v0
.end method
