.class public final enum Lcom/google/appinventor/components/common/NxtRunState;
.super Ljava/lang/Enum;
.source "NxtRunState.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/NxtRunState;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/NxtRunState;

.field public static final enum Disabled:Lcom/google/appinventor/components/common/NxtRunState;

.field public static final enum RampDown:Lcom/google/appinventor/components/common/NxtRunState;

.field public static final enum RampUp:Lcom/google/appinventor/components/common/NxtRunState;

.field public static final enum Running:Lcom/google/appinventor/components/common/NxtRunState;
    .annotation runtime Lcom/google/appinventor/components/common/Default;
    .end annotation
.end field

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/NxtRunState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/NxtRunState;

    const-string v1, "Disabled"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/common/NxtRunState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtRunState;->Disabled:Lcom/google/appinventor/components/common/NxtRunState;

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/NxtRunState;

    const/16 v1, 0x20

    const-string v3, "Running"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/appinventor/components/common/NxtRunState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    .line 24
    new-instance v0, Lcom/google/appinventor/components/common/NxtRunState;

    const/16 v1, 0x10

    const-string v3, "RampUp"

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5, v1}, Lcom/google/appinventor/components/common/NxtRunState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtRunState;->RampUp:Lcom/google/appinventor/components/common/NxtRunState;

    .line 25
    new-instance v0, Lcom/google/appinventor/components/common/NxtRunState;

    const/16 v1, 0x40

    const-string v3, "RampDown"

    const/4 v6, 0x3

    invoke-direct {v0, v3, v6, v1}, Lcom/google/appinventor/components/common/NxtRunState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtRunState;->RampDown:Lcom/google/appinventor/components/common/NxtRunState;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/appinventor/components/common/NxtRunState;

    sget-object v1, Lcom/google/appinventor/components/common/NxtRunState;->Disabled:Lcom/google/appinventor/components/common/NxtRunState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/NxtRunState;->RampUp:Lcom/google/appinventor/components/common/NxtRunState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/NxtRunState;->RampDown:Lcom/google/appinventor/components/common/NxtRunState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/appinventor/components/common/NxtRunState;->$VALUES:[Lcom/google/appinventor/components/common/NxtRunState;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/NxtRunState;->lookup:Ljava/util/Map;

    .line 40
    invoke-static {}, Lcom/google/appinventor/components/common/NxtRunState;->values()[Lcom/google/appinventor/components/common/NxtRunState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 41
    .local v3, "state":Lcom/google/appinventor/components/common/NxtRunState;
    sget-object v4, Lcom/google/appinventor/components/common/NxtRunState;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/NxtRunState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .end local v3    # "state":Lcom/google/appinventor/components/common/NxtRunState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/google/appinventor/components/common/NxtRunState;->value:I

    .line 31
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtRunState;
    .locals 1
    .param p0, "state"    # Ljava/lang/Integer;

    .line 46
    sget-object v0, Lcom/google/appinventor/components/common/NxtRunState;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtRunState;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtRunState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 20
    const-class v0, Lcom/google/appinventor/components/common/NxtRunState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtRunState;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtRunState;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/appinventor/components/common/NxtRunState;->$VALUES:[Lcom/google/appinventor/components/common/NxtRunState;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtRunState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtRunState;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/appinventor/components/common/NxtRunState;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtRunState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
