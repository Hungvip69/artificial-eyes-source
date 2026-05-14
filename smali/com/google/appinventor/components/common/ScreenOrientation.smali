.class public final enum Lcom/google/appinventor/components/common/ScreenOrientation;
.super Ljava/lang/Enum;
.source "ScreenOrientation.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ScreenOrientation;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

.field public static final enum User:Lcom/google/appinventor/components/common/ScreenOrientation;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/ScreenOrientation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private orientationConst:I

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "Unspecified"

    const/4 v2, 0x0

    const-string v3, "unspecified"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "landscape"

    const-string v3, "Landscape"

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "portrait"

    const-string v3, "Portrait"

    const/4 v6, 0x2

    invoke-direct {v0, v3, v6, v1, v5}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "sensor"

    const-string v3, "Sensor"

    const/4 v7, 0x3

    invoke-direct {v0, v3, v7, v1, v4}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "User"

    const-string v3, "user"

    invoke-direct {v0, v1, v4, v3, v6}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->User:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "behind"

    const-string v3, "Behind"

    const/4 v8, 0x5

    invoke-direct {v0, v3, v8, v1, v7}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "nosensor"

    const-string v3, "NoSensor"

    const/4 v9, 0x6

    invoke-direct {v0, v3, v9, v1, v8}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "FullSensor"

    const/4 v3, 0x7

    const-string v10, "fullSensor"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v3, v10, v11}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "reverseLandscape"

    const-string v10, "ReverseLandscape"

    const/16 v12, 0x8

    invoke-direct {v0, v10, v12, v1, v12}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 24
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "reversePortrait"

    const-string v10, "ReversePortrait"

    const/16 v13, 0x9

    invoke-direct {v0, v10, v13, v1, v13}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 25
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "SensorLandscape"

    const-string v10, "sensorLandscape"

    invoke-direct {v0, v1, v11, v10, v9}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 26
    new-instance v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    const-string v1, "sensorPortrait"

    const-string v10, "SensorPortrait"

    const/16 v14, 0xb

    invoke-direct {v0, v10, v14, v1, v3}, Lcom/google/appinventor/components/common/ScreenOrientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 14
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/appinventor/components/common/ScreenOrientation;

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Unspecified:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Landscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Portrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Sensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->User:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->Behind:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->NoSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->FullSensor:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->ReverseLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->ReversePortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorLandscape:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/appinventor/components/common/ScreenOrientation;->SensorPortrait:Lcom/google/appinventor/components/common/ScreenOrientation;

    aput-object v1, v0, v14

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->$VALUES:[Lcom/google/appinventor/components/common/ScreenOrientation;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->lookup:Ljava/util/Map;

    .line 47
    invoke-static {}, Lcom/google/appinventor/components/common/ScreenOrientation;->values()[Lcom/google/appinventor/components/common/ScreenOrientation;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 48
    .local v3, "orientation":Lcom/google/appinventor/components/common/ScreenOrientation;
    sget-object v4, Lcom/google/appinventor/components/common/ScreenOrientation;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .end local v3    # "orientation":Lcom/google/appinventor/components/common/ScreenOrientation;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "val"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->value:Ljava/lang/String;

    .line 33
    iput p4, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->orientationConst:I

    .line 34
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;
    .locals 2
    .param p0, "orientation"    # Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->lookup:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenOrientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ScreenOrientation;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/ScreenOrientation;->$VALUES:[Lcom/google/appinventor/components/common/ScreenOrientation;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ScreenOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ScreenOrientation;

    return-object v0
.end method


# virtual methods
.method public getOrientationConstant()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->orientationConst:I

    return v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ScreenOrientation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/common/ScreenOrientation;->value:Ljava/lang/String;

    return-object v0
.end method
