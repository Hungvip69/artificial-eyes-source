.class public final enum Lcom/google/appinventor/components/common/LayoutType;
.super Ljava/lang/Enum;
.source "LayoutType.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/LayoutType;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/LayoutType;

.field public static final enum ImageTop_MainText_DetailText:Lcom/google/appinventor/components/common/LayoutType;

.field public static final enum Image_MainText:Lcom/google/appinventor/components/common/LayoutType;

.field public static final enum Image_MainText_DetailText_Vertical:Lcom/google/appinventor/components/common/LayoutType;

.field public static final enum MainText:Lcom/google/appinventor/components/common/LayoutType;
    .annotation runtime Lcom/google/appinventor/components/common/Default;
    .end annotation
.end field

.field public static final enum MainText_DetailText_Horizontal:Lcom/google/appinventor/components/common/LayoutType;

.field public static final enum MainText_DetailText_Vertical:Lcom/google/appinventor/components/common/LayoutType;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/appinventor/components/common/LayoutType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final layout:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/LayoutType;

    const-string v1, "MainText"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/common/LayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/LayoutType;->MainText:Lcom/google/appinventor/components/common/LayoutType;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/LayoutType;

    const-string v1, "MainText_DetailText_Vertical"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/appinventor/components/common/LayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/LayoutType;->MainText_DetailText_Vertical:Lcom/google/appinventor/components/common/LayoutType;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/common/LayoutType;

    const-string v1, "MainText_DetailText_Horizontal"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/appinventor/components/common/LayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/LayoutType;->MainText_DetailText_Horizontal:Lcom/google/appinventor/components/common/LayoutType;

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/LayoutType;

    const-string v1, "Image_MainText"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/appinventor/components/common/LayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/LayoutType;->Image_MainText:Lcom/google/appinventor/components/common/LayoutType;

    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/LayoutType;

    const-string v1, "Image_MainText_DetailText_Vertical"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/appinventor/components/common/LayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/LayoutType;->Image_MainText_DetailText_Vertical:Lcom/google/appinventor/components/common/LayoutType;

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/LayoutType;

    const-string v1, "ImageTop_MainText_DetailText"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/appinventor/components/common/LayoutType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/common/LayoutType;->ImageTop_MainText_DetailText:Lcom/google/appinventor/components/common/LayoutType;

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/appinventor/components/common/LayoutType;

    sget-object v1, Lcom/google/appinventor/components/common/LayoutType;->MainText:Lcom/google/appinventor/components/common/LayoutType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/LayoutType;->MainText_DetailText_Vertical:Lcom/google/appinventor/components/common/LayoutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/LayoutType;->MainText_DetailText_Horizontal:Lcom/google/appinventor/components/common/LayoutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/LayoutType;->Image_MainText:Lcom/google/appinventor/components/common/LayoutType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/LayoutType;->Image_MainText_DetailText_Vertical:Lcom/google/appinventor/components/common/LayoutType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/LayoutType;->ImageTop_MainText_DetailText:Lcom/google/appinventor/components/common/LayoutType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/appinventor/components/common/LayoutType;->$VALUES:[Lcom/google/appinventor/components/common/LayoutType;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/LayoutType;->lookup:Ljava/util/Map;

    .line 36
    invoke-static {}, Lcom/google/appinventor/components/common/LayoutType;->values()[Lcom/google/appinventor/components/common/LayoutType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 37
    .local v3, "value":Lcom/google/appinventor/components/common/LayoutType;
    sget-object v4, Lcom/google/appinventor/components/common/LayoutType;->lookup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/LayoutType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .end local v3    # "value":Lcom/google/appinventor/components/common/LayoutType;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/google/appinventor/components/common/LayoutType;->layout:I

    .line 27
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/LayoutType;
    .locals 1
    .param p0, "value"    # Ljava/lang/Integer;

    .line 42
    sget-object v0, Lcom/google/appinventor/components/common/LayoutType;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/LayoutType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/LayoutType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/LayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/LayoutType;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/LayoutType;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/LayoutType;->$VALUES:[Lcom/google/appinventor/components/common/LayoutType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/LayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/LayoutType;

    return-object v0
.end method


# virtual methods
.method public toUnderlyingValue()Ljava/lang/Integer;
    .locals 1

    .line 30
    iget v0, p0, Lcom/google/appinventor/components/common/LayoutType;->layout:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/LayoutType;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
