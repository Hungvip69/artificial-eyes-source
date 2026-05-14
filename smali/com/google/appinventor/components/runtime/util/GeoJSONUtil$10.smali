.class Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;
.super Ljava/lang/Object;
.source "GeoJSONUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "value"    # Ljava/lang/Object;

    .line 172
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    if-eqz v0, :cond_1

    .line 173
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;

    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 173
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor(I)V

    .line 176
    :cond_1
    return-void
.end method
