.class public Lcom/google/appinventor/components/runtime/util/TextViewUtil;
.super Ljava/lang/Object;
.source "TextViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F
    .locals 2
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "context"    # Landroid/content/Context;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 107
    .local v0, "scaledDensity":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static getText(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;

    .line 195
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "fontFile"    # Ljava/lang/String;

    .line 166
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, "typeface":Landroid/graphics/Typeface;
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    instance-of v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_1

    .line 174
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->getAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->fileUrlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 177
    goto :goto_0

    .line 176
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 177
    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .restart local v1    # "file":Ljava/io/File;
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 185
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .line 167
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isEnabled(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static setAlignment(Landroid/widget/TextView;IZ)V
    .locals 3
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "alignment"    # I
    .param p2, "centerVertically"    # Z

    .line 43
    packed-switch p1, :pswitch_data_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 56
    :pswitch_0
    const/4 v0, 0x5

    .local v0, "horizontalGravity":I
    goto :goto_0

    .line 52
    .end local v0    # "horizontalGravity":I
    :pswitch_1
    const/4 v0, 0x1

    .line 53
    .restart local v0    # "horizontalGravity":I
    goto :goto_0

    .line 48
    .end local v0    # "horizontalGravity":I
    :pswitch_2
    const/4 v0, 0x3

    .line 49
    .restart local v0    # "horizontalGravity":I
    nop

    .line 59
    :goto_0
    if-eqz p2, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :cond_0
    const/16 v1, 0x30

    .line 60
    .local v1, "verticalGravity":I
    :goto_1
    or-int v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 62
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setBackgroundColor(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "argb"    # I

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 75
    return-void
.end method

.method public static setEnabled(Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "enabled"    # Z

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 96
    return-void
.end method

.method public static setFontSize(Landroid/widget/TextView;F)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "size"    # F

    .line 117
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 119
    return-void
.end method

.method public static setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V
    .locals 3
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;
    .param p1, "textview"    # Landroid/widget/TextView;
    .param p2, "typeface"    # Ljava/lang/String;
    .param p3, "bold"    # Z
    .param p4, "italic"    # Z

    .line 135
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .local v0, "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 137
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_0
    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 139
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_1
    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 141
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_2
    const-string v0, "3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .restart local v0    # "tf":Landroid/graphics/Typeface;
    goto :goto_0

    .line 144
    .end local v0    # "tf":Landroid/graphics/Typeface;
    :cond_3
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 147
    .restart local v0    # "tf":Landroid/graphics/Typeface;
    :goto_0
    const/4 v1, 0x0

    .line 148
    .local v1, "style":I
    if-eqz p3, :cond_4

    .line 149
    or-int/lit8 v1, v1, 0x1

    .line 151
    :cond_4
    if-eqz p4, :cond_5

    .line 152
    or-int/lit8 v1, v1, 0x2

    .line 154
    :cond_5
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 156
    return-void
.end method

.method public static setMinHeight(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "minHeight"    # I

    .line 268
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 269
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 270
    return-void
.end method

.method public static setMinSize(Landroid/widget/TextView;II)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I

    .line 280
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinWidth(Landroid/widget/TextView;I)V

    .line 281
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinHeight(Landroid/widget/TextView;I)V

    .line 282
    return-void
.end method

.method public static setMinWidth(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "minWidth"    # I

    .line 255
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 256
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 257
    return-void
.end method

.method public static setPadding(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "padding"    # I

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p1, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 228
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 229
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .line 216
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 218
    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "argb"    # I

    .line 238
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 240
    return-void
.end method

.method public static setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .line 243
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 244
    return-void
.end method

.method public static setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "textview"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .line 205
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 207
    return-void
.end method
