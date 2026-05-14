.class synthetic Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$appinventor$components$common$MapType:[I

.field static final synthetic $SwitchMap$com$google$appinventor$components$common$ScaleUnits:[I

.field static final synthetic $SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

.field static final synthetic $SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1425
    invoke-static {}, Lcom/google/appinventor/components/common/ScaleUnits;->values()[Lcom/google/appinventor/components/common/ScaleUnits;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$common$ScaleUnits:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$common$ScaleUnits:[I

    sget-object v2, Lcom/google/appinventor/components/common/ScaleUnits;->Metric:Lcom/google/appinventor/components/common/ScaleUnits;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ScaleUnits;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$common$ScaleUnits:[I

    sget-object v3, Lcom/google/appinventor/components/common/ScaleUnits;->Imperial:Lcom/google/appinventor/components/common/ScaleUnits;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/ScaleUnits;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 1413
    :goto_1
    invoke-static {}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->values()[Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    :try_start_2
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    sget-object v3, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->imperial:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    :goto_2
    :try_start_3
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$org$osmdroid$views$overlay$ScaleBarOverlay$UnitsOfMeasure:[I

    sget-object v3, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->metric:Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/ScaleBarOverlay$UnitsOfMeasure;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 1398
    :goto_3
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    :try_start_4
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    :goto_4
    :try_start_5
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$runtime$util$MapFactory$MapScaleUnits:[I

    sget-object v3, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    .line 472
    :goto_5
    invoke-static {}, Lcom/google/appinventor/components/common/MapType;->values()[Lcom/google/appinventor/components/common/MapType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    :try_start_6
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    sget-object v3, Lcom/google/appinventor/components/common/MapType;->Road:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/MapType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    sget-object v2, Lcom/google/appinventor/components/common/MapType;->Aerial:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/MapType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    :try_start_8
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    sget-object v1, Lcom/google/appinventor/components/common/MapType;->Terrain:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/MapType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :goto_8
    :try_start_9
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$15;->$SwitchMap$com$google$appinventor$components$common$MapType:[I

    sget-object v1, Lcom/google/appinventor/components/common/MapType;->Custom:Lcom/google/appinventor/components/common/MapType;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/MapType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    :goto_9
    return-void
.end method
