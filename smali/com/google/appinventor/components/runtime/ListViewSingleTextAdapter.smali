.class public Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;
.super Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.source "ListViewSingleTextAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter$SingleTextRvViewHolder;
    }
.end annotation


# instance fields
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

    .line 30
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

    .line 31
    move-object v0, p1

    iput-object v0, v6, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 32
    move v1, p3

    iput v1, v6, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->textMainColor:I

    .line 33
    move v2, p4

    iput v2, v6, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->textMainSize:F

    .line 34
    move-object v3, p5

    iput-object v3, v6, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->textMainFont:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .param p2, "position"    # I

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter$SingleTextRvViewHolder;

    .line 65
    .local v0, "singleTextHolder":Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter$SingleTextRvViewHolder;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 66
    .local v1, "o":Ljava/lang/Object;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 67
    .local v2, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v4, "Text1"

    if-eqz v3, :cond_1

    .line 68
    move-object v3, v1

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "first":Ljava/lang/String;
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter$SingleTextRvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter$SingleTextRvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v4, p2}, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->updateCardViewColor(Landroidx/cardview/widget/CardView;I)V

    .line 80
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->createCardView(Landroid/view/ViewGroup;)Landroidx/cardview/widget/CardView;

    move-result-object v0

    .line 41
    .local v0, "cardView":Landroidx/cardview/widget/CardView;
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getId()I

    move-result v1

    .line 44
    .local v1, "idCard":I
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 45
    .local v2, "textViewFirst":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v3

    .line 46
    .local v3, "idFirst":I
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 47
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v4, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->textMainSize:F

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 50
    iget v6, p0, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->textMainColor:I

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->textMainFont:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v2, v7, v8, v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 52
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v6, "linearLayout1":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v7, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v7

    .line 54
    .local v5, "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    invoke-virtual {v0, v6}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 59
    new-instance v7, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter$SingleTextRvViewHolder;

    invoke-direct {v7, p0, v0, v1, v3}, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter$SingleTextRvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;Landroid/view/View;II)V

    return-object v7
.end method
