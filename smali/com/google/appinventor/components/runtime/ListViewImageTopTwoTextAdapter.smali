.class public Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;
.super Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.source "ListViewImageTopTwoTextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter$ImageTopTwoTextRvViewHolder;
    }
.end annotation


# instance fields
.field private imageHeight:I

.field private imageWidth:I

.field private textDetailColor:I

.field private textDetailFont:Ljava/lang/String;

.field private textDetailSize:F

.field private textMainColor:I

.field private textMainFont:Ljava/lang/String;

.field private textMainSize:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;IFLjava/lang/String;IIIII)V
    .locals 11
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p3, "textMainColor"    # I
    .param p4, "textMainSize"    # F
    .param p5, "textMainFont"    # Ljava/lang/String;
    .param p6, "textDetailColor"    # I
    .param p7, "textDetailSize"    # F
    .param p8, "textDetailFont"    # Ljava/lang/String;
    .param p9, "backgroundColor"    # I
    .param p10, "selectionColor"    # I
    .param p11, "radius"    # I
    .param p12, "imageWidth"    # I
    .param p13, "imageHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;IF",
            "Ljava/lang/String;",
            "IF",
            "Ljava/lang/String;",
            "IIIII)V"
        }
    .end annotation

    .line 50
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v6, p0

    move/from16 v7, p11

    int-to-float v5, v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p9

    move/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIF)V

    .line 51
    move-object v0, p1

    iput-object v0, v6, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 52
    move v1, p3

    iput v1, v6, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textMainColor:I

    .line 53
    move v2, p4

    iput v2, v6, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textMainSize:F

    .line 54
    move-object/from16 v3, p5

    iput-object v3, v6, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textMainFont:Ljava/lang/String;

    .line 55
    move/from16 v4, p6

    iput v4, v6, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textDetailColor:I

    .line 56
    move/from16 v5, p7

    iput v5, v6, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textDetailSize:F

    .line 57
    move-object/from16 v8, p8

    iput-object v8, v6, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textDetailFont:Ljava/lang/String;

    .line 58
    move/from16 v9, p12

    iput v9, v6, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->imageWidth:I

    .line 59
    move/from16 v10, p13

    iput v10, v6, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->imageHeight:I

    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 25
    check-cast p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .param p2, "position"    # I

    .line 128
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter$ImageTopTwoTextRvViewHolder;

    .line 129
    .local v0, "imageTwoTextHolder":Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter$ImageTopTwoTextRvViewHolder;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "o":Ljava/lang/Object;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 131
    .local v2, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v4, "Text1"

    if-eqz v3, :cond_1

    .line 132
    move-object v3, v1

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "first":Ljava/lang/String;
    const-string v4, ""

    .line 142
    .local v4, "second":Ljava/lang/String;
    const-string v5, "Text2"

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 143
    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    :cond_2
    const-string v5, ""

    .line 146
    .local v5, "imageName":Ljava/lang/String;
    const-string v6, "Image"

    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 147
    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    :cond_3
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter$ImageTopTwoTextRvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter$ImageTopTwoTextRvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :try_start_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .line 153
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, v0, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter$ImageTopTwoTextRvViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {v7, v6}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 154
    :catch_0
    move-exception v6

    .line 155
    .local v6, "ioe":Ljava/io/IOException;
    nop

    .line 156
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onBindViewHolder Unable to load image "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 155
    const-string v8, "ListView"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v6    # "ioe":Ljava/io/IOException;
    :goto_1
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter$ImageTopTwoTextRvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v6, p2}, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->updateCardViewColor(Landroidx/cardview/widget/CardView;I)V

    .line 159
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .locals 24
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 64
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->createCardView(Landroid/view/ViewGroup;)Landroidx/cardview/widget/CardView;

    move-result-object v8

    .line 65
    .local v8, "cardView":Landroidx/cardview/widget/CardView;
    invoke-virtual {v8}, Landroidx/cardview/widget/CardView;->getId()I

    move-result v9

    .line 68
    .local v9, "idCard":I
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 69
    .local v10, "imageView":Landroid/widget/ImageView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v11

    .line 70
    .local v11, "idImage":I
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setId(I)V

    .line 71
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->imageWidth:I

    iget v2, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->imageHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v12, v0

    .line 73
    .local v12, "layoutParamsImage":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 74
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    .line 78
    .local v13, "textViewFirst":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v14

    .line 79
    .local v14, "idFirst":I
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setId(I)V

    .line 80
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v15, v0

    .line 83
    .local v15, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textMainSize:F

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    iget v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textMainColor:I

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v3, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textMainFont:Ljava/lang/String;

    invoke-static {v0, v13, v3, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 89
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 90
    .local v6, "textViewSecond":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v5

    .line 91
    .local v5, "idSecond":I
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setId(I)V

    .line 92
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v0

    .line 95
    .local v4, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textDetailSize:F

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    iget-object v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v3, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textDetailFont:Ljava/lang/String;

    invoke-static {v0, v6, v3, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 97
    iget v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->textDetailColor:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    .line 101
    .local v3, "linearLayoutTexts":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 104
    .local v1, "layoutParamslinearTexts":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 106
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, v7, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    .line 112
    .local v2, "linearLayoutMain":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v18, v1

    .end local v1    # "layoutParamslinearTexts":Landroid/widget/LinearLayout$LayoutParams;
    .local v18, "layoutParamslinearTexts":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x1

    move-object/from16 v19, v4

    const/4 v4, -0x2

    .end local v4    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    .local v19, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v0

    .line 115
    .local v4, "layoutParamslinearMain":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 119
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    invoke-virtual {v8, v2}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 123
    new-instance v16, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter$ImageTopTwoTextRvViewHolder;

    move-object/from16 v0, v16

    move-object/from16 v17, v18

    .end local v18    # "layoutParamslinearTexts":Landroid/widget/LinearLayout$LayoutParams;
    .local v17, "layoutParamslinearTexts":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v1, p0

    move-object/from16 v18, v2

    .end local v2    # "linearLayoutMain":Landroid/widget/LinearLayout;
    .local v18, "linearLayoutMain":Landroid/widget/LinearLayout;
    move-object v2, v8

    move-object/from16 v20, v3

    .end local v3    # "linearLayoutTexts":Landroid/widget/LinearLayout;
    .local v20, "linearLayoutTexts":Landroid/widget/LinearLayout;
    move v3, v9

    move-object/from16 v21, v4

    .end local v4    # "layoutParamslinearMain":Landroid/widget/LinearLayout$LayoutParams;
    .local v21, "layoutParamslinearMain":Landroid/widget/LinearLayout$LayoutParams;
    move v4, v14

    move/from16 v22, v5

    .end local v5    # "idSecond":I
    .local v22, "idSecond":I
    move-object/from16 v23, v6

    .end local v6    # "textViewSecond":Landroid/widget/TextView;
    .local v23, "textViewSecond":Landroid/widget/TextView;
    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter$ImageTopTwoTextRvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;Landroid/view/View;IIII)V

    return-object v16
.end method
