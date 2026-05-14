.class public Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;
.super Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.source "ListViewTwoTextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;
    }
.end annotation


# instance fields
.field private textDetailColor:I

.field private textDetailFont:Ljava/lang/String;

.field private textDetailSize:F

.field private textMainColor:I

.field private textMainFont:Ljava/lang/String;

.field private textMainSize:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;IFLjava/lang/String;IIIII)V
    .locals 9
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

    .line 32
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

    .line 33
    move-object v0, p1

    iput-object v0, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 34
    move v1, p3

    iput v1, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textMainColor:I

    .line 35
    move v2, p4

    iput v2, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textMainSize:F

    .line 36
    move-object v3, p5

    iput-object v3, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textMainFont:Ljava/lang/String;

    .line 37
    move v4, p6

    iput v4, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textDetailColor:I

    .line 38
    move/from16 v5, p7

    iput v5, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textDetailSize:F

    .line 39
    move-object/from16 v8, p8

    iput-object v8, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textDetailFont:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .param p2, "position"    # I

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;

    .line 95
    .local v0, "twoTextHolder":Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 96
    .local v1, "o":Ljava/lang/Object;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 97
    .local v2, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v4, "Text1"

    if-eqz v3, :cond_1

    .line 98
    move-object v3, v1

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "first":Ljava/lang/String;
    const-string v4, ""

    .line 108
    .local v4, "second":Ljava/lang/String;
    const-string v5, "Text2"

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    :cond_2
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v5, p2}, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->updateCardViewColor(Landroidx/cardview/widget/CardView;I)V

    .line 115
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .locals 20
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 44
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p1}, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->createCardView(Landroid/view/ViewGroup;)Landroidx/cardview/widget/CardView;

    move-result-object v7

    .line 45
    .local v7, "cardView":Landroidx/cardview/widget/CardView;
    invoke-virtual {v7}, Landroidx/cardview/widget/CardView;->getId()I

    move-result v8

    .line 48
    .local v8, "idCard":I
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 49
    .local v9, "textViewFirst":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v10

    .line 50
    .local v10, "idFirst":I
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setId(I)V

    .line 51
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v11, v0

    .line 54
    .local v11, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget v0, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textMainSize:F

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 56
    iget v0, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textMainColor:I

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v0, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v2, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textMainFont:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v9, v2, v3, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 60
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v12, v0

    .line 61
    .local v12, "textViewSecond":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v13

    .line 62
    .local v13, "idSecond":I
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setId(I)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v14, v0

    .line 66
    .local v14, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textDetailSize:F

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    iget-object v0, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v2, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textDetailFont:Ljava/lang/String;

    invoke-static {v0, v12, v2, v3, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 68
    iget v0, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->textDetailColor:I

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 72
    .local v15, "linearLayout2":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v5, v0

    .line 74
    .local v5, "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    const/4 v0, 0x1

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {v15, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, v6, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    .line 81
    .local v4, "linearLayout1":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v0

    .line 84
    .local v2, "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v7, v4}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 89
    new-instance v16, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v17, v2

    .end local v2    # "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    .local v17, "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    move-object v2, v7

    move v3, v8

    move-object/from16 v18, v4

    .end local v4    # "linearLayout1":Landroid/widget/LinearLayout;
    .local v18, "linearLayout1":Landroid/widget/LinearLayout;
    move v4, v10

    move-object/from16 v19, v5

    .end local v5    # "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    .local v19, "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter$TwoTextRvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;Landroid/view/View;III)V

    return-object v16
.end method
