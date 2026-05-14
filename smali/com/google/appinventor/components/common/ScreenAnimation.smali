.class public final enum Lcom/google/appinventor/components/common/ScreenAnimation;
.super Ljava/lang/Enum;
.source "ScreenAnimation.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ScreenAnimation;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Default:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum None:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

.field public static final enum Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/ScreenAnimation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "default"

    const-string v2, "Default"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "fade"

    const-string v2, "Fade"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 18
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "zoom"

    const-string v2, "Zoom"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "slidehorizontal"

    const-string v2, "SlideHorizontal"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "slidevertical"

    const-string v2, "SlideVertical"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    const-string v1, "none"

    const-string v2, "None"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v8, v1}, Lcom/google/appinventor/components/common/ScreenAnimation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->None:Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 15
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/appinventor/components/common/ScreenAnimation;

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Default:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->None:Lcom/google/appinventor/components/common/ScreenAnimation;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->$VALUES:[Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->lookup:Ljava/util/Map;

    .line 36
    invoke-static {}, Lcom/google/appinventor/components/common/ScreenAnimation;->values()[Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 37
    .local v2, "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    sget-object v4, Lcom/google/appinventor/components/common/ScreenAnimation;->lookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .end local v2    # "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "anim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/google/appinventor/components/common/ScreenAnimation;->value:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1
    .param p0, "anim"    # Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ScreenAnimation;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/appinventor/components/common/ScreenAnimation;->$VALUES:[Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ScreenAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ScreenAnimation;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/ScreenAnimation;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/appinventor/components/common/ScreenAnimation;->value:Ljava/lang/String;

    return-object v0
.end method
