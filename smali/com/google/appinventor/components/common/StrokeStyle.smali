.class public final enum Lcom/google/appinventor/components/common/StrokeStyle;
.super Ljava/lang/Enum;
.source "StrokeStyle.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/StrokeStyle;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/StrokeStyle;

.field public static final enum Dashed:Lcom/google/appinventor/components/common/StrokeStyle;

.field public static final enum Dotted:Lcom/google/appinventor/components/common/StrokeStyle;

.field public static final enum Solid:Lcom/google/appinventor/components/common/StrokeStyle;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/StrokeStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/google/appinventor/components/common/StrokeStyle;

    const-string v1, "Solid"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/StrokeStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->Solid:Lcom/google/appinventor/components/common/StrokeStyle;

    .line 13
    new-instance v0, Lcom/google/appinventor/components/common/StrokeStyle;

    const-string v1, "Dashed"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/google/appinventor/components/common/StrokeStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->Dashed:Lcom/google/appinventor/components/common/StrokeStyle;

    .line 14
    new-instance v0, Lcom/google/appinventor/components/common/StrokeStyle;

    const-string v1, "Dotted"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/google/appinventor/components/common/StrokeStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->Dotted:Lcom/google/appinventor/components/common/StrokeStyle;

    .line 11
    new-array v0, v5, [Lcom/google/appinventor/components/common/StrokeStyle;

    sget-object v1, Lcom/google/appinventor/components/common/StrokeStyle;->Solid:Lcom/google/appinventor/components/common/StrokeStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/StrokeStyle;->Dashed:Lcom/google/appinventor/components/common/StrokeStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/StrokeStyle;->Dotted:Lcom/google/appinventor/components/common/StrokeStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->$VALUES:[Lcom/google/appinventor/components/common/StrokeStyle;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->lookup:Ljava/util/Map;

    .line 19
    invoke-static {}, Lcom/google/appinventor/components/common/StrokeStyle;->values()[Lcom/google/appinventor/components/common/StrokeStyle;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 20
    .local v3, "style":Lcom/google/appinventor/components/common/StrokeStyle;
    sget-object v4, Lcom/google/appinventor/components/common/StrokeStyle;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/StrokeStyle;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .end local v3    # "style":Lcom/google/appinventor/components/common/StrokeStyle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/google/appinventor/components/common/StrokeStyle;->value:I

    .line 28
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/StrokeStyle;
    .locals 1
    .param p0, "style"    # Ljava/lang/Integer;

    .line 35
    sget-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/StrokeStyle;

    return-object v0
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/StrokeStyle;
    .locals 2
    .param p0, "style"    # Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->lookup:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/StrokeStyle;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/StrokeStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/google/appinventor/components/common/StrokeStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/StrokeStyle;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/StrokeStyle;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/appinventor/components/common/StrokeStyle;->$VALUES:[Lcom/google/appinventor/components/common/StrokeStyle;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/StrokeStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/StrokeStyle;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/appinventor/components/common/StrokeStyle;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/StrokeStyle;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
