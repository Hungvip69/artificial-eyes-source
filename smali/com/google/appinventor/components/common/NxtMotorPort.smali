.class public final enum Lcom/google/appinventor/components/common/NxtMotorPort;
.super Ljava/lang/Enum;
.source "NxtMotorPort.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/NxtMotorPort;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/NxtMotorPort;

.field public static final enum PortA:Lcom/google/appinventor/components/common/NxtMotorPort;

.field public static final enum PortB:Lcom/google/appinventor/components/common/NxtMotorPort;

.field public static final enum PortC:Lcom/google/appinventor/components/common/NxtMotorPort;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/NxtMotorPort;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final intValue:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/NxtMotorPort;

    const-string v1, "A"

    const-string v2, "PortA"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/google/appinventor/components/common/NxtMotorPort;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMotorPort;->PortA:Lcom/google/appinventor/components/common/NxtMotorPort;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/NxtMotorPort;

    const-string v1, "B"

    const-string v2, "PortB"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1, v4}, Lcom/google/appinventor/components/common/NxtMotorPort;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMotorPort;->PortB:Lcom/google/appinventor/components/common/NxtMotorPort;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/NxtMotorPort;

    const-string v1, "C"

    const-string v2, "PortC"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1, v5}, Lcom/google/appinventor/components/common/NxtMotorPort;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMotorPort;->PortC:Lcom/google/appinventor/components/common/NxtMotorPort;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/appinventor/components/common/NxtMotorPort;

    sget-object v1, Lcom/google/appinventor/components/common/NxtMotorPort;->PortA:Lcom/google/appinventor/components/common/NxtMotorPort;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/NxtMotorPort;->PortB:Lcom/google/appinventor/components/common/NxtMotorPort;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/NxtMotorPort;->PortC:Lcom/google/appinventor/components/common/NxtMotorPort;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/appinventor/components/common/NxtMotorPort;->$VALUES:[Lcom/google/appinventor/components/common/NxtMotorPort;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMotorPort;->lookup:Ljava/util/Map;

    .line 38
    invoke-static {}, Lcom/google/appinventor/components/common/NxtMotorPort;->values()[Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 39
    .local v2, "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    invoke-virtual {v2}, Lcom/google/appinventor/components/common/NxtMotorPort;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "str":Ljava/lang/String;
    sget-object v5, Lcom/google/appinventor/components/common/NxtMotorPort;->lookup:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v5, Lcom/google/appinventor/components/common/NxtMotorPort;->lookup:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .end local v2    # "port":Lcom/google/appinventor/components/common/NxtMotorPort;
    .end local v4    # "str":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "intPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/google/appinventor/components/common/NxtMotorPort;->value:Ljava/lang/String;

    .line 24
    iput p4, p0, Lcom/google/appinventor/components/common/NxtMotorPort;->intValue:I

    .line 25
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;
    .locals 1
    .param p0, "port"    # Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/google/appinventor/components/common/NxtMotorPort;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtMotorPort;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/NxtMotorPort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtMotorPort;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtMotorPort;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/NxtMotorPort;->$VALUES:[Lcom/google/appinventor/components/common/NxtMotorPort;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtMotorPort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtMotorPort;

    return-object v0
.end method


# virtual methods
.method public toInt()Ljava/lang/Integer;
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/appinventor/components/common/NxtMotorPort;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtMotorPort;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/google/appinventor/components/common/NxtMotorPort;->value:Ljava/lang/String;

    return-object v0
.end method
