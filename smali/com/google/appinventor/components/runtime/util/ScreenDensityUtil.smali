.class public final Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;
.super Ljava/lang/Object;
.source "ScreenDensityUtil.java"


# static fields
.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field private static final LOG_TAG:Ljava/lang/String; = "ScreenDensityUtil"

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static computeCompatibleScaling(Landroid/content/Context;)F
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 46
    .local v0, "dm":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 47
    .local v1, "rawDims":Landroid/graphics/Point;
    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;->getRawScreenDim(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 49
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 50
    .local v2, "width":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 53
    .local v3, "height":I
    if-ge v2, v3, :cond_0

    .line 54
    move v4, v2

    .line 55
    .local v4, "shortSize":I
    move v5, v3

    .local v5, "longSize":I
    goto :goto_0

    .line 57
    .end local v4    # "shortSize":I
    .end local v5    # "longSize":I
    :cond_0
    move v4, v3

    .line 58
    .restart local v4    # "shortSize":I
    move v5, v2

    .line 60
    .restart local v5    # "longSize":I
    :goto_0
    const/high16 v6, 0x43a00000    # 320.0f

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v7, v6

    float-to-int v7, v7

    .line 61
    .local v7, "newShortSize":I
    int-to-float v8, v5

    int-to-float v9, v4

    div-float/2addr v8, v9

    .line 62
    .local v8, "aspect":F
    const v9, 0x3fe3bbbc

    cmpl-float v10, v8, v9

    if-lez v10, :cond_1

    .line 63
    const v8, 0x3fe3bbbc

    .line 65
    :cond_1
    int-to-float v10, v7

    mul-float v10, v10, v8

    add-float/2addr v10, v6

    float-to-int v6, v10

    .line 67
    .local v6, "newLongSize":I
    if-ge v2, v3, :cond_2

    .line 68
    move v10, v7

    .line 69
    .local v10, "newWidth":I
    move v11, v6

    .local v11, "newHeight":I
    goto :goto_1

    .line 71
    .end local v10    # "newWidth":I
    .end local v11    # "newHeight":I
    :cond_2
    move v10, v6

    .line 72
    .restart local v10    # "newWidth":I
    move v11, v7

    .line 75
    .restart local v11    # "newHeight":I
    :goto_1
    int-to-float v12, v2

    int-to-float v13, v10

    div-float/2addr v12, v13

    .line 76
    .local v12, "sw":F
    int-to-float v13, v3

    int-to-float v14, v11

    div-float/2addr v13, v14

    .line 78
    .local v13, "sh":F
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v14, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-static {v14, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    return v9
.end method

.method private static getRawScreenDim(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "outSize"    # Landroid/graphics/Point;

    .line 90
    const-string v0, "Error reading raw screen size"

    const-string v1, "ScreenDensityUtil"

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 92
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 94
    .local v4, "display":Landroid/view/Display;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v5

    .line 95
    .local v5, "sdkLevel":I
    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 97
    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 98
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 99
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 100
    :cond_0
    const/16 v6, 0x11

    if-lt v5, v6, :cond_1

    .line 102
    invoke-static {v4, p1}, Lcom/google/appinventor/components/runtime/util/JellybeanUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    goto :goto_1

    .line 103
    :cond_1
    const/16 v6, 0xa

    if-le v5, v6, :cond_2

    .line 108
    :try_start_0
    const-class v6, Landroid/view/Display;

    const-string v7, "getRawHeight"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 109
    .local v6, "getRawH":Ljava/lang/reflect/Method;
    const-class v7, Landroid/view/Display;

    const-string v9, "getRawWidth"

    new-array v10, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    .line 111
    .local v7, "getRawW":Ljava/lang/reflect/Method;
    :try_start_1
    new-array v9, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p1, Landroid/graphics/Point;->x:I

    .line 112
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p1, Landroid/graphics/Point;->y:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v8

    .line 118
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    invoke-static {v1, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 115
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v8

    .line 116
    .local v8, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    nop

    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 113
    :catch_2
    move-exception v8

    .line 114
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v1, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3

    .line 119
    nop

    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 120
    .end local v6    # "getRawH":Ljava/lang/reflect/Method;
    .end local v7    # "getRawW":Ljava/lang/reflect/Method;
    :catch_3
    move-exception v6

    .line 121
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    goto :goto_1

    .line 126
    :cond_2
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 127
    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 130
    :goto_1
    return-void
.end method
