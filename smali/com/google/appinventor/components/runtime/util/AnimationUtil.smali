.class public final Lcom/google/appinventor/components/runtime/util/AnimationUtil;
.super Ljava/lang/Object;
.source "AnimationUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "animation"    # Ljava/lang/String;

    .line 58
    const-string v0, "ScrollRightSlow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1f40

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, v2, v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 60
    :cond_0
    const-string v0, "ScrollRight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0xfa0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "ScrollRightFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x3e8

    if-eqz v0, :cond_2

    .line 63
    invoke-static {p0, v2, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "ScrollLeftSlow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 65
    invoke-static {p0, v2, v1}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "ScrollLeft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 68
    :cond_4
    const-string v0, "ScrollLeftFast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    invoke-static {p0, v2, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V

    goto :goto_0

    .line 70
    :cond_5
    const-string v0, "Stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 73
    :cond_6
    :goto_0
    return-void
.end method

.method public static ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "animType"    # Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 158
    if-nez p1, :cond_0

    .line 159
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 163
    const-string v0, "AnimationUtil"

    const-string v1, "Screen animations are not available on android versions less than 2.0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void

    .line 166
    :cond_1
    const/4 v0, 0x0

    .line 167
    .local v0, "enter":I
    const/4 v1, 0x0

    .line 169
    .local v1, "exit":I
    sget-object v2, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->$SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "anim"

    packed-switch v2, :pswitch_data_0

    .line 197
    return-void

    .line 194
    :pswitch_0
    goto :goto_0

    .line 187
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 187
    const-string v5, "slide_v_exit_reverse"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 189
    const-string v5, "slide_v_enter_reverse"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 191
    goto :goto_0

    .line 181
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 181
    const-string v5, "slide_exit_reverse"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 183
    const-string v5, "slide_enter_reverse"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 185
    goto :goto_0

    .line 175
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 175
    const-string v5, "zoom_exit_reverse"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 177
    const-string v5, "zoom_enter_reverse"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 179
    goto :goto_0

    .line 171
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "fadeout"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "hold"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 173
    nop

    .line 200
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->overridePendingTransitions(Landroid/app/Activity;II)V

    .line 201
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "animType"    # Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    .line 147
    .local v0, "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 148
    return-void
.end method

.method private static ApplyHorizontalScrollAnimation(Landroid/view/View;ZI)V
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # Z
    .param p2, "speed"    # I

    .line 34
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    .local v0, "sign":F
    :goto_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 36
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 39
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const v4, 0x3f333333    # 0.7f

    mul-float v6, v0, v4

    const v4, -0x40cccccd    # -0.7f

    mul-float v8, v0, v4

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 42
    .local v3, "move":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 43
    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 44
    invoke-virtual {v3, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 45
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 46
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    return-void
.end method

.method public static ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "animType"    # Lcom/google/appinventor/components/common/ScreenAnimation;

    .line 94
    if-nez p1, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 99
    const-string v0, "AnimationUtil"

    const-string v1, "Screen animations are not available on android versions less than 2.0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x0

    .line 103
    .local v0, "enter":I
    const/4 v1, 0x0

    .line 105
    .local v1, "exit":I
    sget-object v2, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->$SwitchMap$com$google$appinventor$components$common$ScreenAnimation:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "anim"

    packed-switch v2, :pswitch_data_0

    .line 133
    return-void

    .line 130
    :pswitch_0
    goto :goto_0

    .line 123
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 123
    const-string v5, "slide_v_exit"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 125
    const-string v5, "slide_v_enter"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 127
    goto :goto_0

    .line 117
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 117
    const-string v5, "slide_exit"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 119
    const-string v5, "slide_enter"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    goto :goto_0

    .line 111
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 111
    const-string v5, "zoom_exit"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 113
    const-string v5, "zoom_enter"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    goto :goto_0

    .line 107
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "fadein"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v4, "hold"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 109
    nop

    .line 136
    :goto_0
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->overridePendingTransitions(Landroid/app/Activity;II)V

    .line 137
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "animType"    # Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v0

    .line 83
    .local v0, "anim":Lcom/google/appinventor/components/common/ScreenAnimation;
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 84
    return-void
.end method
