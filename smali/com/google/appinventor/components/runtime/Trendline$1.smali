.class Lcom/google/appinventor/components/runtime/Trendline$1;
.super Ljava/lang/Object;
.source "Trendline.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Trendline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 75
    instance-of v0, p1, Lcom/google/appinventor/components/common/OptionList;

    if-eqz v0, :cond_0

    .line 76
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/common/OptionList;

    invoke-interface {v0}, Lcom/google/appinventor/components/common/OptionList;->toUnderlyingValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    return-object p1
.end method
