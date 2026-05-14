.class public Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;
.super Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.source "ListViewImageSingleTextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;
    }
.end annotation


# instance fields
.field private imageHeight:I

.field private imageWidth:I

.field private textMainColor:I

.field private textMainFont:Ljava/lang/String;

.field private textMainSize:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;IFLjava/lang/String;IIIII)V
    .locals 8
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

    .line 39
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

    .line 40
    move-object v0, p1

    iput-object v0, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 41
    move v1, p3

    iput v1, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->textMainColor:I

    .line 42
    move v2, p4

    iput v2, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->textMainSize:F

    .line 43
    move-object v3, p5

    iput-object v3, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->textMainFont:Ljava/lang/String;

    .line 44
    move/from16 v4, p12

    iput v4, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->imageWidth:I

    .line 45
    move/from16 v5, p13

    iput v5, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->imageHeight:I

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 27
    check-cast p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .param p2, "position"    # I

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;

    .line 88
    .local v0, "imageSingleTextHolder":Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 89
    .local v1, "o":Ljava/lang/Object;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 90
    .local v2, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v4, "Text1"

    if-eqz v3, :cond_1

    .line 91
    move-object v3, v1

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "first":Ljava/lang/String;
    const-string v4, ""

    .line 101
    .local v4, "imageName":Ljava/lang/String;
    const-string v5, "Image"

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    :cond_2
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :try_start_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    .line 107
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-static {v6, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 108
    :catch_0
    move-exception v5

    .line 109
    .local v5, "ioe":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBindViewHolder Unable to load image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ListView"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v5    # "ioe":Ljava/io/IOException;
    :goto_1
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v5, p2}, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->updateCardViewColor(Landroidx/cardview/widget/CardView;I)V

    .line 112
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .locals 18
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 50
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->createCardView(Landroid/view/ViewGroup;)Landroidx/cardview/widget/CardView;

    move-result-object v7

    .line 51
    .local v7, "cardView":Landroidx/cardview/widget/CardView;
    invoke-virtual {v7}, Landroidx/cardview/widget/CardView;->getId()I

    move-result v8

    .line 54
    .local v8, "idCard":I
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 55
    .local v9, "imageView":Landroid/widget/ImageView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v10

    .line 56
    .local v10, "idImage":I
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setId(I)V

    .line 57
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->imageWidth:I

    iget v2, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->imageHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v11, v0

    .line 59
    .local v11, "layoutParamsImage":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {v11, v1, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 60
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 64
    .local v12, "textViewFirst":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v13

    .line 65
    .local v13, "idFirst":I
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setId(I)V

    .line 66
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v14, v0

    .line 67
    .local v14, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget v0, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->textMainSize:F

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    iget v0, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->textMainColor:I

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v0, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v3, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->textMainFont:Ljava/lang/String;

    invoke-static {v0, v12, v3, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 72
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 73
    .local v15, "linearLayout1":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v0

    .line 74
    .local v5, "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 76
    const/16 v0, 0x10

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 78
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v7, v15}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 82
    new-instance v16, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v7

    move v3, v8

    move v4, v13

    move-object/from16 v17, v5

    .end local v5    # "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    .local v17, "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    move v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter$ImageSingleTextRvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;Landroid/view/View;III)V

    return-object v16
.end method
