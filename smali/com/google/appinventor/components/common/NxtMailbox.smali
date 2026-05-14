.class public final enum Lcom/google/appinventor/components/common/NxtMailbox;
.super Ljava/lang/Enum;
.source "NxtMailbox.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/NxtMailbox;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box1:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box10:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box2:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box3:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box4:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box5:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box6:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box7:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box8:Lcom/google/appinventor/components/common/NxtMailbox;

.field public static final enum Box9:Lcom/google/appinventor/components/common/NxtMailbox;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/NxtMailbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intValue:I

.field private value:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Box1"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2, v4}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box1:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Box2"

    invoke-direct {v0, v5, v1, v3, v1}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box2:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Box3"

    invoke-direct {v0, v6, v2, v5, v2}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box3:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Box4"

    invoke-direct {v0, v7, v3, v6, v3}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box4:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Box5"

    invoke-direct {v0, v8, v5, v7, v5}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box5:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 24
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Box6"

    invoke-direct {v0, v9, v6, v8, v6}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box6:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 25
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Box7"

    invoke-direct {v0, v10, v7, v9, v7}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box7:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 26
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Box8"

    invoke-direct {v0, v11, v8, v10, v8}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box8:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 27
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "Box9"

    invoke-direct {v0, v12, v9, v11, v9}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box9:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 28
    new-instance v0, Lcom/google/appinventor/components/common/NxtMailbox;

    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "Box10"

    invoke-direct {v0, v13, v10, v12, v10}, Lcom/google/appinventor/components/common/NxtMailbox;-><init>(Ljava/lang/String;ILjava/lang/Integer;I)V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->Box10:Lcom/google/appinventor/components/common/NxtMailbox;

    .line 14
    new-array v0, v11, [Lcom/google/appinventor/components/common/NxtMailbox;

    sget-object v11, Lcom/google/appinventor/components/common/NxtMailbox;->Box1:Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v11, v0, v4

    sget-object v11, Lcom/google/appinventor/components/common/NxtMailbox;->Box2:Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v11, v0, v1

    sget-object v1, Lcom/google/appinventor/components/common/NxtMailbox;->Box3:Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/NxtMailbox;->Box4:Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/NxtMailbox;->Box5:Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/NxtMailbox;->Box6:Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/NxtMailbox;->Box7:Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/appinventor/components/common/NxtMailbox;->Box8:Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/appinventor/components/common/NxtMailbox;->Box9:Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/appinventor/components/common/NxtMailbox;->Box10:Lcom/google/appinventor/components/common/NxtMailbox;

    aput-object v1, v0, v10

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->$VALUES:[Lcom/google/appinventor/components/common/NxtMailbox;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->lookup:Ljava/util/Map;

    .line 49
    invoke-static {}, Lcom/google/appinventor/components/common/NxtMailbox;->values()[Lcom/google/appinventor/components/common/NxtMailbox;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v2, v0, v4

    .line 50
    .local v2, "box":Lcom/google/appinventor/components/common/NxtMailbox;
    sget-object v3, Lcom/google/appinventor/components/common/NxtMailbox;->lookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/NxtMailbox;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v2    # "box":Lcom/google/appinventor/components/common/NxtMailbox;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;I)V
    .locals 0
    .param p3, "box"    # Ljava/lang/Integer;
    .param p4, "intBox"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lcom/google/appinventor/components/common/NxtMailbox;->value:Ljava/lang/Integer;

    .line 35
    iput p4, p0, Lcom/google/appinventor/components/common/NxtMailbox;->intValue:I

    .line 36
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/NxtMailbox;
    .locals 1
    .param p0, "box"    # Ljava/lang/Integer;

    .line 55
    sget-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtMailbox;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMailbox;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/NxtMailbox;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/NxtMailbox;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/NxtMailbox;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/NxtMailbox;->$VALUES:[Lcom/google/appinventor/components/common/NxtMailbox;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/NxtMailbox;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/NxtMailbox;

    return-object v0
.end method


# virtual methods
.method public toInt()Ljava/lang/Integer;
    .locals 1

    .line 43
    iget v0, p0, Lcom/google/appinventor/components/common/NxtMailbox;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/common/NxtMailbox;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/NxtMailbox;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
