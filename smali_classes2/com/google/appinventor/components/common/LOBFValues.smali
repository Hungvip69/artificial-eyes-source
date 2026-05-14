.class public final enum Lcom/google/appinventor/components/common/LOBFValues;
.super Ljava/lang/Enum;
.source "LOBFValues.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/LOBFValues;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum AllValues:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum CorrCoef:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum ExponentialBase:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum ExponentialCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum LinearCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum LogarithmCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum LogarithmConstant:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum Predictions:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum QuadraticCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum RSquared:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum Slope:Lcom/google/appinventor/components/common/LOBFValues;
    .annotation runtime Lcom/google/appinventor/components/common/Default;
    .end annotation
.end field

.field public static final enum XIntercepts:Lcom/google/appinventor/components/common/LOBFValues;

.field public static final enum Yintercept:Lcom/google/appinventor/components/common/LOBFValues;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/LOBFValues;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final lobfValues:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "correlation coefficient"

    const-string v2, "CorrCoef"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->CorrCoef:Lcom/google/appinventor/components/common/LOBFValues;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "Slope"

    const/4 v2, 0x1

    const-string v4, "slope"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->Slope:Lcom/google/appinventor/components/common/LOBFValues;

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "Yintercept"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v1}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->Yintercept:Lcom/google/appinventor/components/common/LOBFValues;

    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "predictions"

    const-string v6, "Predictions"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v7, v1}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->Predictions:Lcom/google/appinventor/components/common/LOBFValues;

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "all values"

    const-string v6, "AllValues"

    const/4 v8, 0x4

    invoke-direct {v0, v6, v8, v1}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->AllValues:Lcom/google/appinventor/components/common/LOBFValues;

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "Quadratic Coefficient"

    const-string v6, "QuadraticCoefficient"

    const/4 v9, 0x5

    invoke-direct {v0, v6, v9, v1}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->QuadraticCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "LinearCoefficient"

    const/4 v6, 0x6

    invoke-direct {v0, v1, v6, v4}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->LinearCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    .line 24
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "ExponentialCoefficient"

    const/4 v4, 0x7

    const-string v10, "a"

    invoke-direct {v0, v1, v4, v10}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->ExponentialCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    .line 25
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "ExponentialBase"

    const/16 v11, 0x8

    const-string v12, "b"

    invoke-direct {v0, v1, v11, v12}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->ExponentialBase:Lcom/google/appinventor/components/common/LOBFValues;

    .line 26
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "LogarithmCoefficient"

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v12}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->LogarithmCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    .line 27
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "LogarithmConstant"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v10}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->LogarithmConstant:Lcom/google/appinventor/components/common/LOBFValues;

    .line 28
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "Xintercepts"

    const-string v10, "XIntercepts"

    const/16 v14, 0xb

    invoke-direct {v0, v10, v14, v1}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->XIntercepts:Lcom/google/appinventor/components/common/LOBFValues;

    .line 29
    new-instance v0, Lcom/google/appinventor/components/common/LOBFValues;

    const-string v1, "r^2"

    const-string v10, "RSquared"

    const/16 v15, 0xc

    invoke-direct {v0, v10, v15, v1}, Lcom/google/appinventor/components/common/LOBFValues;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->RSquared:Lcom/google/appinventor/components/common/LOBFValues;

    .line 14
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/google/appinventor/components/common/LOBFValues;

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->CorrCoef:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->Slope:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->Yintercept:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->Predictions:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->AllValues:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->QuadraticCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->LinearCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->ExponentialCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->ExponentialBase:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->LogarithmCoefficient:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->LogarithmConstant:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->XIntercepts:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/appinventor/components/common/LOBFValues;->RSquared:Lcom/google/appinventor/components/common/LOBFValues;

    aput-object v1, v0, v15

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->$VALUES:[Lcom/google/appinventor/components/common/LOBFValues;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/LOBFValues;->lookup:Ljava/util/Map;

    .line 44
    invoke-static {}, Lcom/google/appinventor/components/common/LOBFValues;->values()[Lcom/google/appinventor/components/common/LOBFValues;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 45
    .local v2, "value":Lcom/google/appinventor/components/common/LOBFValues;
    sget-object v4, Lcom/google/appinventor/components/common/LOBFValues;->lookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/LOBFValues;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v2    # "value":Lcom/google/appinventor/components/common/LOBFValues;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "lobfV"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/google/appinventor/components/common/LOBFValues;->lobfValues:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/LOBFValues;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/google/appinventor/components/common/LOBFValues;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/LOBFValues;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/LOBFValues;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/LOBFValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/LOBFValues;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/LOBFValues;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/LOBFValues;->$VALUES:[Lcom/google/appinventor/components/common/LOBFValues;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/LOBFValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/LOBFValues;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/LOBFValues;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/appinventor/components/common/LOBFValues;->lobfValues:Ljava/lang/String;

    return-object v0
.end method
