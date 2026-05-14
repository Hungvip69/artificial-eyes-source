.class public final enum Lcom/google/appinventor/components/common/NxtSensorType;
.super Ljava/lang/Enum;
.source "NxtSensorType.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/NxtSensorType;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum ColorBlue:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum ColorFull:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum ColorGreen:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum ColorNone:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum ColorRed:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum Digital12C:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum Digital12C9V:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum LightOff:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum LightOn:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum NoSensor:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum RcxAngle:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum RcxLight:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum RcxTemperature:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum SoundDB:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum SoundDBA:Lcom/google/appinventor/components/common/NxtSensorType;

.field public static final enum Touch:Lcom/google/appinventor/components/common/NxtSensorType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/NxtSensorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "NoSensor"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->NoSensor:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "Touch"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->Touch:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "LightOn"

    const/4 v4, 0x2

    const/4 v5, 0x5

    invoke-direct {v0, v1, v4, v5}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->LightOn:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 24
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "LightOff"

    const/4 v6, 0x3

    const/4 v7, 0x6

    invoke-direct {v0, v1, v6, v7}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->LightOff:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 25
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "SoundDB"

    const/4 v8, 0x4

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->SoundDB:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 26
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "SoundDBA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v5, v10}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->SoundDBA:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 27
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "ColorFull"

    const/16 v11, 0xd

    invoke-direct {v0, v1, v7, v11}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->ColorFull:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 28
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "ColorRed"

    const/16 v12, 0xe

    invoke-direct {v0, v1, v9, v12}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->ColorRed:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 29
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "ColorGreen"

    const/16 v13, 0xf

    invoke-direct {v0, v1, v10, v13}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->ColorGreen:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 30
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "ColorBlue"

    const/16 v14, 0x9

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->ColorBlue:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 31
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const/16 v1, 0x11

    const-string v14, "ColorNone"

    const/16 v10, 0xa

    invoke-direct {v0, v14, v10, v1}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->ColorNone:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 32
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "Digital12C"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v10}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->Digital12C:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 33
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "Digital12C9V"

    const/16 v10, 0xc

    invoke-direct {v0, v1, v10, v14}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->Digital12C9V:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 35
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "RcxTemperature"

    invoke-direct {v0, v1, v11, v4}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->RcxTemperature:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 36
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "RcxLight"

    invoke-direct {v0, v1, v12, v6}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->RcxLight:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 37
    new-instance v0, Lcom/google/appinventor/components/common/NxtSensorType;

    const-string v1, "RcxAngle"

    invoke-direct {v0, v1, v13, v8}, Lcom/google/appinventor/components/common/NxtSensorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->RcxAngle:Lcom/google/appinventor/components/common/NxtSensorType;

    .line 20
    new-array v0, v15, [Lcom/google/appinventor/components/common/NxtSensorType;

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->NoSensor:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->Touch:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->LightOn:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->LightOff:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->SoundDB:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->SoundDBA:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->ColorFull:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->ColorRed:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->ColorGreen:Lcom/google/appinventor/components/common/NxtSensorType;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->ColorBlue:Lcom/google/appinventor/components/common/NxtSensorType;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->ColorNone:Lcom/google/appinventor/components/common/NxtSensorType;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->Digital12C:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->Digital12C9V:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->RcxTemperature:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->RcxLight:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/appinventor/components/common/NxtSensorType;->RcxAngle:Lcom/google/appinventor/components/common/NxtSensorType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->$VALUES:[Lcom/google/appinventor/components/common/NxtSensorType;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->lookup:Ljava/util/Map;

    .line 52
    invoke-static {}, Lcom/google/appinventor/components/common/NxtSensorType;->values()[Lcom/google/appinventor/components/common/NxtSensorType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 53
    .local v3, "type":Lcom/google/appinventor/components/common/NxtSensorType;
    sget-object v4, Lcom/google/appinventor/components/common/NxtSensorType;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/NxtSensorType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v3    # "type":Lcom/google/appinventor/components/common/NxtSensorType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/google/appinventor/components/common/NxtSensorType;->value:I

    .line 43
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtSensorType;
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .line 58
    sget-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtSensorType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtSensorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/google/appinventor/components/common/NxtSensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtSensorType;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtSensorType;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/appinventor/components/common/NxtSensorType;->$VALUES:[Lcom/google/appinventor/components/common/NxtSensorType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtSensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtSensorType;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget v0, p0, Lcom/google/appinventor/components/common/NxtSensorType;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtSensorType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
