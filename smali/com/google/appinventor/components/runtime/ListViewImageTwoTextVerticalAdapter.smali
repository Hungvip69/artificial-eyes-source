.class public Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;
.super Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.source "ListViewImageTwoTextVerticalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;
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

    .line 42
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

    .line 43
    move-object v0, p1

    iput-object v0, v6, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 44
    move v1, p3

    iput v1, v6, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textMainColor:I

    .line 45
    move v2, p4

    iput v2, v6, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textMainSize:F

    .line 46
    move-object/from16 v3, p5

    iput-object v3, v6, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textMainFont:Ljava/lang/String;

    .line 47
    move/from16 v4, p6

    iput v4, v6, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textDetailColor:I

    .line 48
    move/from16 v5, p7

    iput v5, v6, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textDetailSize:F

    .line 49
    move-object/from16 v8, p8

    iput-object v8, v6, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textDetailFont:Ljava/lang/String;

    .line 50
    move/from16 v9, p12

    iput v9, v6, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->imageWidth:I

    .line 51
    move/from16 v10, p13

    iput v10, v6, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->imageHeight:I

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .param p2, "position"    # I

    .line 114
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;

    .line 115
    .local v0, "imageTwoTextHolder":Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 116
    .local v1, "o":Ljava/lang/Object;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 117
    .local v2, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v4, "Text1"

    if-eqz v3, :cond_1

    .line 118
    move-object v3, v1

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "first":Ljava/lang/String;
    const-string v4, ""

    .line 128
    .local v4, "second":Ljava/lang/String;
    const-string v5, "Text2"

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    :cond_2
    const-string v5, ""

    .line 132
    .local v5, "imageName":Ljava/lang/String;
    const-string v6, "Image"

    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 133
    invoke-virtual {v2, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    :cond_3
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :try_start_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .line 139
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, v0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {v7, v6}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 140
    :catch_0
    move-exception v6

    .line 141
    .local v6, "ioe":Ljava/io/IOException;
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

    const-string v8, "ListView"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v6    # "ioe":Ljava/io/IOException;
    :goto_1
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v6, p2}, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->updateCardViewColor(Landroidx/cardview/widget/CardView;I)V

    .line 144
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .locals 24
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 56
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->createCardView(Landroid/view/ViewGroup;)Landroidx/cardview/widget/CardView;

    move-result-object v8

    .line 57
    .local v8, "cardView":Landroidx/cardview/widget/CardView;
    invoke-virtual {v8}, Landroidx/cardview/widget/CardView;->getId()I

    move-result v9

    .line 60
    .local v9, "idCard":I
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 61
    .local v10, "imageView":Landroid/widget/ImageView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v11

    .line 62
    .local v11, "idImage":I
    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setId(I)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->imageWidth:I

    iget v2, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->imageHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v12, v0

    .line 65
    .local v12, "layoutParamsImage":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 66
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    .line 70
    .local v13, "textViewFirst":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v14

    .line 71
    .local v14, "idFirst":I
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setId(I)V

    .line 72
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v15, v0

    .line 73
    .local v15, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textMainSize:F

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    iget v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textMainColor:I

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v3, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textMainFont:Ljava/lang/String;

    invoke-static {v0, v13, v3, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 79
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 80
    .local v6, "textViewSecond":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v5

    .line 81
    .local v5, "idSecond":I
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setId(I)V

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v0

    .line 85
    .local v4, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textDetailSize:F

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 86
    iget-object v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v3, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textDetailFont:Ljava/lang/String;

    invoke-static {v0, v6, v3, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 87
    iget v0, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->textDetailColor:I

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    .line 91
    .local v3, "linearLayout2":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v16, v4

    .end local v4    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    .local v16, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v4, v0

    .line 93
    .local v4, "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 96
    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v7, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    .line 100
    .local v1, "linearLayout1":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v18, v4

    .end local v4    # "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    .local v18, "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -0x1

    invoke-direct {v0, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v4, v0

    .line 101
    .local v4, "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 105
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    invoke-virtual {v8, v1}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 109
    new-instance v17, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;

    move-object/from16 v0, v17

    move-object/from16 v19, v1

    .end local v1    # "linearLayout1":Landroid/widget/LinearLayout;
    .local v19, "linearLayout1":Landroid/widget/LinearLayout;
    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v20, v3

    .end local v3    # "linearLayout2":Landroid/widget/LinearLayout;
    .local v20, "linearLayout2":Landroid/widget/LinearLayout;
    move v3, v9

    move-object/from16 v21, v4

    .end local v4    # "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    .local v21, "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    move v4, v14

    move/from16 v22, v5

    .end local v5    # "idSecond":I
    .local v22, "idSecond":I
    move-object/from16 v23, v6

    .end local v6    # "textViewSecond":Landroid/widget/TextView;
    .local v23, "textViewSecond":Landroid/widget/TextView;
    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter$ImageTwoTextRvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;Landroid/view/View;IIII)V

    return-object v17
.end method
