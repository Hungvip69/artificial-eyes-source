.class synthetic Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/AnimationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 105
    invoke-static {}, Lcom/google/appinventor/components/common/ScreenAnimation;->values()[Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->$SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I

    :try_start_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->$SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Fade:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->$SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->Zoom:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->$SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideHorizontal:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->$SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->SlideVertical:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->$SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I

    sget-object v1, Lcom/google/appinventor/components/common/ScreenAnimation;->None:Lcom/google/appinventor/components/common/ScreenAnimation;

    invoke-virtual {v1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
