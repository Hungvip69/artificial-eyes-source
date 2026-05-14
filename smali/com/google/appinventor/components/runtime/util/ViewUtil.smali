.class public final Lcom/google/appinventor/components/runtime/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static calculatePixels(Landroid/view/View;I)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "sizeInDP"    # I

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 258
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 260
    return-void
.end method

.method public static setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 242
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 244
    return-void
.end method

.method public static setChildHeightForHorizontalLayout(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 71
    .local v0, "layoutParams":Ljava/lang/Object;
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 72
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    .local v1, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 81
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 75
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 76
    goto :goto_0

    .line 78
    :pswitch_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 79
    nop

    .line 84
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 85
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_1

    .line 86
    :cond_0
    const-string v1, "ViewUtil"

    const-string v2, "The view does not have linear layout parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForRelativeLayout(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 219
    .local v0, "layoutParams":Ljava/lang/Object;
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 220
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 221
    .local v1, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 229
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 223
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 224
    goto :goto_0

    .line 226
    :pswitch_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 227
    nop

    .line 232
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 233
    .end local v1    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 234
    :cond_0
    const-string v1, "ViewUtil"

    const-string v2, "The view does not have relative layout parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForTableLayout(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 163
    .local v0, "layoutParams":Ljava/lang/Object;
    instance-of v1, v0, Landroid/widget/TableRow$LayoutParams;

    if-eqz v1, :cond_0

    .line 164
    move-object v1, v0

    check-cast v1, Landroid/widget/TableRow$LayoutParams;

    .line 165
    .local v1, "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 173
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    .line 167
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 168
    goto :goto_0

    .line 170
    :pswitch_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 171
    nop

    .line 176
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 177
    .end local v1    # "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    goto :goto_1

    .line 178
    :cond_0
    const-string v1, "ViewUtil"

    const-string v2, "The view does not have table layout parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildHeightForVerticalLayout(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "height"    # I

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 118
    .local v0, "layoutParams":Ljava/lang/Object;
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 119
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    .local v1, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 130
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 131
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 122
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 123
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 124
    goto :goto_0

    .line 126
    :pswitch_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 127
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 128
    nop

    .line 134
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 135
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_1

    .line 136
    :cond_0
    const-string v1, "ViewUtil"

    const-string v2, "The view does not have linear layout parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForHorizontalLayout(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 45
    .local v0, "layoutParams":Ljava/lang/Object;
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 46
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 47
    .local v1, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 57
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 58
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 49
    :pswitch_0
    const/4 v3, -0x2

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 50
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51
    goto :goto_0

    .line 53
    :pswitch_1
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 54
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 55
    nop

    .line 61
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 62
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_1

    .line 63
    :cond_0
    const-string v1, "ViewUtil"

    const-string v2, "The view does not have linear layout parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForRelativeLayout(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 191
    .local v0, "layoutParams":Ljava/lang/Object;
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 192
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    .local v1, "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 201
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0

    .line 195
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 196
    goto :goto_0

    .line 198
    :pswitch_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 199
    nop

    .line 204
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 205
    .end local v1    # "relativeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 206
    :cond_0
    const-string v1, "ViewUtil"

    const-string v2, "The view does not have relative layout parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForTableLayout(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 142
    .local v0, "layoutParams":Ljava/lang/Object;
    instance-of v1, v0, Landroid/widget/TableRow$LayoutParams;

    if-eqz v1, :cond_0

    .line 143
    move-object v1, v0

    check-cast v1, Landroid/widget/TableRow$LayoutParams;

    .line 144
    .local v1, "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 152
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 146
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 147
    goto :goto_0

    .line 149
    :pswitch_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 150
    nop

    .line 155
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 156
    .end local v1    # "tableLayoutParams":Landroid/widget/TableRow$LayoutParams;
    goto :goto_1

    .line 157
    :cond_0
    const-string v1, "ViewUtil"

    const-string v2, "The view does not have table layout parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setChildWidthForVerticalLayout(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 94
    .local v0, "layoutParams":Ljava/lang/Object;
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 95
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    .local v1, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    packed-switch p1, :pswitch_data_0

    .line 104
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 98
    :pswitch_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 99
    goto :goto_0

    .line 101
    :pswitch_1
    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 102
    nop

    .line 108
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 109
    .end local v1    # "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    goto :goto_1

    .line 110
    :cond_0
    const-string v1, "ViewUtil"

    const-string v2, "The view does not have linear layout parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 250
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    if-eqz p1, :cond_0

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 255
    return-void
.end method
