.class public final Lcom/google/appinventor/components/runtime/ListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ListView.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>This is a visible component that displays a list of text and image elements.</p> <p>Simple lists of strings may be set using the ElementsFromString property. More complex lists of elements containing multiple strings and/or images can be created using the ListData and ListViewLayout properties. </p>"
    iconName = "images/listView.png"
    nonVisible = false
    version = 0xa
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "recyclerview.jar",
        "recyclerview.aar",
        "cardview.jar",
        "cardview.aar",
        "dynamicanimation.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field private static final DEFAULT_DIVIDER_SIZE:I = 0x0

.field private static final DEFAULT_ENABLED:Z = false

.field private static final DEFAULT_IMAGE_WIDTH:I = 0xc8

.field private static final DEFAULT_MARGINS_SIZE:I = 0x0

.field private static final DEFAULT_RADIUS:I = 0x0

.field private static final DEFAULT_TEXT_SIZE:F = 22.0f

.field protected static final LOG_TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private backgroundColor:I

.field private bounceEdgeEffectFactory:Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory;

.field private bounceEffect:Z

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private detailTextColor:I

.field private dividerColor:I

.field private dividerPaint:Landroid/graphics/Paint;

.field private dividerSize:I

.field private edgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

.field private elementColor:I

.field private fontSizeDetail:F

.field private fontSizeMain:F

.field private fontTypeDetail:Ljava/lang/String;

.field private fontTypeface:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private imageHeight:I

.field private imageWidth:I

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private layout:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final linearLayout:Landroid/widget/LinearLayout;

.field private listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

.field private final listLayout:Landroid/widget/LinearLayout;

.field private margins:I

.field private multiSelect:Z

.field private orientation:I

.field private propertyValue:Ljava/lang/String;

.field private radius:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selection:Ljava/lang/String;

.field private selectionColor:I

.field private selectionDetailText:Ljava/lang/String;

.field private selectionIndex:I

.field private showFilter:Z

.field private textColor:I

.field private txtSearchBox:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fgetdividerPaint(Lcom/google/appinventor/components/runtime/ListView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdividerSize(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapterWithRecyclerView(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmargins(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->margins:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetorientation(Lcom/google/appinventor/components/runtime/ListView;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    return p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 148
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 94
    const-string v0, "Uninitialized"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 102
    const v1, 0xffffff

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListView;->elementColor:I

    .line 149
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    .line 152
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    .line 153
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    .line 155
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    .line 157
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 159
    .local v1, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 162
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 164
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->listLayout:Landroid/widget/LinearLayout;

    .line 165
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 166
    .local v4, "paramsList":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->listLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->listLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    iput v3, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    .line 170
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerSize:I

    .line 171
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->margins:I

    .line 173
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->edgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    .line 174
    new-instance v5, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory;

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory;-><init>()V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->bounceEdgeEffectFactory:Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory;

    .line 176
    new-instance v5, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    .line 177
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 178
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v5, -0x2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setWidth(I)V

    .line 179
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 180
    const-string v2, "Search list..."

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->HintText(Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 185
    :cond_0
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v2

    const/high16 v6, -0x1000000

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 187
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    new-instance v7, Lcom/google/appinventor/components/runtime/ListView$1;

    invoke-direct {v7, p0}, Lcom/google/appinventor/components/runtime/ListView$1;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    if-eqz v2, :cond_2

    .line 210
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 219
    :goto_0
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/ListView;->BackgroundColor(I)V

    .line 220
    const v2, -0x333334

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->SelectionColor(I)V

    .line 221
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->TextColor(I)V

    .line 222
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->TextColorDetail(I)V

    .line 223
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/ListView;->DividerColor(I)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->DividerThickness(I)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->ElementMarginsWidth(I)V

    .line 226
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    .line 227
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontSizeDetail(F)V

    .line 228
    const-string v2, "0"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontTypeface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontTypefaceDetail(Ljava/lang/String;)V

    .line 231
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ImageWidth(I)V

    .line 232
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ImageHeight(I)V

    .line 233
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->ElementCornerRadius(I)V

    .line 234
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->MultiSelect(Z)V

    .line 235
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->BounceEdgeEffect(Z)V

    .line 236
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ElementsFromString(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ListData(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->listLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->listLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 243
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 244
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/ListView;->Width(I)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->ListViewLayout(I)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 248
    return-void
.end method

.method private setDivider()V
    .locals 4

    .line 1308
    new-instance v0, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    .line 1309
    .local v0, "dividerDecoration":Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;->removeLayoutChangeListener()V

    .line 1310
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1311
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v2

    .line 1312
    .local v2, "decoration":Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    instance-of v3, v2, Lcom/google/appinventor/components/runtime/ListView$DividerItemDecoration;

    if-eqz v3, :cond_0

    .line 1313
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    .line 1314
    goto :goto_1

    .line 1310
    .end local v2    # "decoration":Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1317
    .end local v1    # "i":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1318
    return-void
.end method


# virtual methods
.method public AddItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mainText"    # Ljava/lang/String;
    .param p2, "detailText"    # Ljava/lang/String;
    .param p3, "imageName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add new Item to list at the end."
    .end annotation

    .line 1171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1173
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v1, :cond_1

    .line 1174
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v2, "Text1"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ListView;->CreateElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1177
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1180
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1182
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 1183
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    if-nez v0, :cond_3

    .line 1184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1186
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/ListView;->CreateElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1189
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->updateAdapterData()V

    .line 1190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyItemChanged(I)V

    .line 1191
    return-void
.end method

.method public AddItemAtIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "mainText"    # Ljava/lang/String;
    .param p3, "detailText"    # Ljava/lang/String;
    .param p4, "imageName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add new Item to list at a given index."
    .end annotation

    .line 1212
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_5

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    if-le p1, v2, :cond_0

    goto :goto_2

    .line 1217
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1218
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1219
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v1, :cond_2

    .line 1220
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v2, "Text1"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1221
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/ListView;->CreateElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1223
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1226
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1228
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    goto :goto_1

    .line 1229
    :cond_3
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    if-nez v0, :cond_4

    .line 1230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1232
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/ListView;->CreateElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1235
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->updateAdapterData()V

    .line 1236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyItemInserted(I)V

    .line 1237
    return-void

    .line 1213
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    .line 1214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    .line 1213
    const-string v0, "AddItemAtIndex"

    const/16 v3, 0x11f9

    invoke-virtual {v2, p0, v0, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1215
    return-void
.end method

.method public AddItems(Ljava/util/List;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add new Items to list at the end."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1198
    .local p1, "itemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1200
    .local v0, "positionStart":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1201
    .local v1, "itemCount":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1202
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->updateAdapterData()V

    .line 1203
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v2, v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyItemRangeChanged(II)V

    .line 1205
    .end local v0    # "positionStart":I
    .end local v1    # "itemCount":I
    :cond_0
    return-void
.end method

.method public AddItemsAtIndex(ILcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "itemsList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add new Items to list at specific index."
    .end annotation

    .line 1244
    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 1249
    :cond_0
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1250
    add-int/lit8 v0, p1, -0x1

    .line 1251
    .local v0, "positionStart":I
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    .line 1252
    .local v1, "itemCount":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v2, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1253
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->updateAdapterData()V

    .line 1254
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v2, v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyItemRangeChanged(II)V

    .line 1256
    .end local v0    # "positionStart":I
    .end local v1    # "itemCount":I
    :cond_1
    return-void

    .line 1245
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 1246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1245
    const-string v2, "AddItemsAtIndex"

    const/16 v3, 0x11f9

    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1247
    return-void
.end method

.method public AfterPicking()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property."
    .end annotation

    .line 491
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterPicking"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 492
    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .line 506
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 522
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 523
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 524
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 525
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 526
    return-void
.end method

.method public BounceEdgeEffect(Z)V
    .locals 2
    .param p1, "bounce"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1143
    if-eqz p1, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->bounceEdgeEffectFactory:Lcom/google/appinventor/components/runtime/ListBounceEdgeEffectFactory;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    goto :goto_0

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->edgeEffectFactory:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    .line 1148
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->bounceEffect:Z

    .line 1149
    return-void
.end method

.method public BounceEdgeEffect()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The effect of bounce from the edge after scrolling the list to the end.  True will enable the bounce effect, false will disable it."
    .end annotation

    .line 1130
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->bounceEffect:Z

    return v0
.end method

.method public CreateElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 2
    .param p1, "mainText"    # Ljava/lang/String;
    .param p2, "detailText"    # Ljava/lang/String;
    .param p3, "imageName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a ListView entry. MainText is required. DetailText and ImageName are optional."
    .end annotation

    .line 988
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 989
    .local v0, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v1, "Text1"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    const-string v1, "Text2"

    invoke-virtual {v0, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string v1, "Image"

    invoke-virtual {v0, v1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    return-object v0
.end method

.method public DividerColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the list view divider."
    .end annotation

    .line 1022
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    return v0
.end method

.method public DividerColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1038
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerColor:I

    .line 1039
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerPaint:Landroid/graphics/Paint;

    .line 1040
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1041
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setDivider()V

    .line 1042
    return-void
.end method

.method public DividerThickness()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The thickness of the element divider in the list view. If the thickness is 0, the divider is not visible."
    .end annotation

    .line 1053
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerSize:I

    return v0
.end method

.method public DividerThickness(I)V
    .locals 0
    .param p1, "size"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1066
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->dividerSize:I

    .line 1067
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setDivider()V

    .line 1068
    return-void
.end method

.method public ElementColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .line 540
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->elementColor:I

    return v0
.end method

.method public ElementColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 556
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->elementColor:I

    .line 557
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 558
    return-void
.end method

.method public ElementCornerRadius()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The radius of the rounded corners of a list view element."
    .end annotation

    .line 1104
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->radius:I

    return v0
.end method

.method public ElementCornerRadius(I)V
    .locals 0
    .param p1, "radius"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1116
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->radius:I

    .line 1117
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 1118
    return-void
.end method

.method public ElementMarginsWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The margins width of the list view element. If margins width > 0, then the divider is not displayed."
    .end annotation

    .line 1079
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->margins:I

    return v0
.end method

.method public ElementMarginsWidth(I)V
    .locals 0
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1092
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->margins:I

    .line 1093
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ListView;->setDivider()V

    .line 1094
    return-void
.end method

.method public Elements()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "List of elements to show in the ListView. Depending on the ListView, this may be a list of strings or a list of 3-element sub-lists containing Text, Description, and Image file name."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    return-object v0
.end method

.method public Elements(Ljava/util/List;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 337
    .local p1, "itemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    .line 338
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->updateAdapterData()V

    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyDataSetChanged()V

    .line 340
    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemstring"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The TextView elements specified as a string with the stringItems separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsListFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    .line 369
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->updateAdapterData()V

    .line 370
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyDataSetChanged()V

    .line 371
    return-void
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size of the main text."
    .end annotation

    .line 680
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .param p1, "fontSize"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "22.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 692
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 695
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    goto :goto_1

    .line 693
    :cond_1
    :goto_0
    const v0, 0x4479c000    # 999.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    .line 696
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 697
    return-void
.end method

.method public FontSizeDetail()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size of the detail text."
    .end annotation

    .line 707
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    return v0
.end method

.method public FontSizeDetail(F)V
    .locals 1
    .param p1, "fontSize"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 719
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    goto :goto_1

    .line 720
    :cond_1
    :goto_0
    const v0, 0x4479c000    # 999.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    .line 723
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 724
    return-void
.end method

.method public FontTypeface()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public FontTypeface(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeface"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 754
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    .line 755
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 756
    return-void
.end method

.method public FontTypefaceDetail()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    return-object v0
.end method

.method public FontTypefaceDetail(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeface"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 786
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    .line 787
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 788
    return-void
.end method

.method public GetDetailText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Detail Text of a ListView element."
    .end annotation

    .line 1002
    const-string v0, "Text2"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetImageName(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the filename of the image of a ListView element that has been uploaded to Media."
    .end annotation

    .line 1007
    const-string v0, "Image"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetMainText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .locals 1
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Main Text of a ListView element."
    .end annotation

    .line 997
    const-string v0, "Text1"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    .line 264
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 265
    const/4 p1, -0x2

    .line 267
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 268
    return-void
.end method

.method public HintText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public HintText(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Search list..."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets hint on the filter bar."
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->hint:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method

.method public ImageHeight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image height of ListView elements."
    .end annotation

    .line 822
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    return v0
.end method

.method public ImageHeight(I)V
    .locals 0
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 834
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    .line 835
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 836
    return-void
.end method

.method public ImageWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Image width of ListView elements."
    .end annotation

    .line 798
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    return v0
.end method

.method public ImageWidth(I)V
    .locals 0
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 810
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    .line 811
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 812
    return-void
.end method

.method public ListData()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->propertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public ListData(Ljava/lang/String;)V
    .locals 9
    .param p1, "propertyValue"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "ListViewAddData"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 950
    const-string v0, "Image"

    const-string v1, "Text2"

    const-string v2, "Text1"

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->propertyValue:Ljava/lang/String;

    .line 951
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "[]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 953
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 957
    .local v3, "arr":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 959
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 960
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 961
    .local v5, "jsonItem":Lorg/json/JSONObject;
    new-instance v6, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 962
    .local v6, "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 963
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v8

    :goto_1
    invoke-virtual {v6, v1, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 966
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    nop

    .line 965
    :goto_2
    invoke-virtual {v6, v0, v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 959
    .end local v5    # "jsonItem":Lorg/json/JSONObject;
    .end local v6    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 973
    .end local v3    # "arr":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_3
    goto :goto_3

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "ListView"

    const-string v2, "Malformed JSON in ListView.ListData"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "ListView.ListData"

    invoke-virtual {v1, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 974
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->updateAdapterData()V

    .line 975
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyDataSetChanged()V

    .line 977
    :cond_4
    return-void
.end method

.method public ListViewLayout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Selecting the text and image layout in the ListView element."
    .end annotation

    .line 846
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    return v0
.end method

.method public ListViewLayout(I)V
    .locals 0
    .param p1, "value"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/LayoutType;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "ListViewLayout"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 858
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    .line 859
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 860
    return-void
.end method

.method public MultiSelect(Z)V
    .locals 1
    .param p1, "multi"    # Z

    .line 887
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    if-lez v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clearSelections()V

    .line 889
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyDataSetChanged()V

    .line 891
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->multiSelect:Z

    .line 892
    return-void
.end method

.method public MultiSelect()Z
    .locals 1

    .line 873
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->multiSelect:Z

    return v0
.end method

.method public Orientation()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the layout\'s orientation (vertical, horizontal)."
    .end annotation

    .line 903
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    return v0
.end method

.method public Orientation(I)V
    .locals 2
    .param p1, "orientation"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ListOrientation;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "recyclerview_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 918
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    .line 919
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    goto :goto_0

    .line 922
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 924
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 925
    return-void
.end method

.method public Refresh()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reload the ListView to reflect any changes in the data."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1449
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 1450
    return-void
.end method

.method public RemoveItemAtIndex(I)V
    .locals 4
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes Item from list at a given index."
    .end annotation

    .line 1156
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1162
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->updateAdapterData()V

    .line 1163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyItemRemoved(I)V

    .line 1164
    return-void

    .line 1157
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 1158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1157
    const-string v2, "RemoveItemAtIndex"

    const/16 v3, 0x11f9

    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1159
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text value of the most recently selected item in the ListView."
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 440
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 443
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 444
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 445
    .local v1, "item":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 446
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v4, "Text1"

    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 448
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 449
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 450
    const-string v3, "Text2"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 449
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 451
    goto :goto_2

    .line 454
    :cond_0
    iput v3, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 455
    const-string v2, "Not Found"

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    goto :goto_1

    .line 457
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 459
    goto :goto_2

    .line 461
    :cond_2
    iput v3, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    goto :goto_1

    .line 464
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 466
    goto :goto_2

    .line 468
    :cond_4
    iput v3, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 443
    .end local v1    # "item":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    .end local v0    # "i":I
    :cond_5
    :goto_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 473
    :cond_6
    return-void
.end method

.method public SelectionColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the item when it is selected."
    .end annotation

    .line 573
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    return v0
.end method

.method public SelectionColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 590
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    .line 591
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 592
    return-void
.end method

.method public SelectionDetailText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the secondary text of the selected row in the ListView."
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    return-object v0
.end method

.method public SelectionIndex()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1. If no item is selected, the value will be 0. If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .line 385
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 3
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 396
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 397
    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 399
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v1, :cond_1

    .line 400
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v2, "Text1"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 402
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 403
    const-string v2, "Text2"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 402
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 410
    :goto_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/ListView;->multiSelect:Z

    if-eqz v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->changeSelections(I)V

    goto :goto_1

    .line 413
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->toggleSelection(I)V

    .line 415
    .end local v0    # "o":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 416
    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clearSelections()V

    .line 418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyDataSetChanged()V

    .line 420
    :goto_2
    return-void
.end method

.method public ShowFilterBar(Z)V
    .locals 2
    .param p1, "showFilter"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 309
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 310
    if-eqz p1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 315
    :goto_0
    return-void
.end method

.method public ShowFilterBar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "List filter bar, allows to search the list for relevant items. True will display the bar, False will hide it."
    .end annotation

    .line 327
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    return v0
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the main text of ListView elements."
    .end annotation

    .line 606
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 622
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    .line 623
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 624
    return-void
.end method

.method public TextColorDetail()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the detail text of ListView elements. "
    .end annotation

    .line 634
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    return v0
.end method

.method public TextColorDetail(I)V
    .locals 0
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 647
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    .line 648
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 649
    return-void
.end method

.method public TextSize()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 657
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public TextSize(I)V
    .locals 1
    .param p1, "textSize"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    .line 667
    const/16 p1, 0x3e7

    .line 669
    :cond_0
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    .line 670
    return-void
.end method

.method public Width(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    .line 293
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 294
    const/4 p1, -0x2

    .line 296
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 297
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setAdapterData()V
    .locals 30

    .line 1262
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 1289
    :pswitch_0
    new-instance v1, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    iget v5, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    iget v6, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    iget-object v7, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    iget v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->elementColor:I

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->radius:I

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    iget v15, v0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    move-object v2, v1

    invoke-direct/range {v2 .. v15}, Lcom/google/appinventor/components/runtime/ListViewImageTopTwoTextAdapter;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;IFLjava/lang/String;IIIII)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListView;->setListAdapter(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    goto/16 :goto_0

    .line 1284
    :pswitch_1
    new-instance v1, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    iget v5, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    iget-object v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->elementColor:I

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->radius:I

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v27, v12

    move/from16 v28, v13

    move/from16 v29, v14

    invoke-direct/range {v16 .. v29}, Lcom/google/appinventor/components/runtime/ListViewImageTwoTextVerticalAdapter;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;IFLjava/lang/String;IIIII)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListView;->setListAdapter(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    .line 1287
    goto/16 :goto_0

    .line 1279
    :pswitch_2
    new-instance v1, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    iget v5, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    iget-object v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->elementColor:I

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->radius:I

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v15 .. v28}, Lcom/google/appinventor/components/runtime/ListViewImageSingleTextAdapter;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;IFLjava/lang/String;IIIII)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListView;->setListAdapter(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    .line 1282
    goto/16 :goto_0

    .line 1274
    :pswitch_3
    new-instance v1, Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    iget v5, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    iget-object v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->elementColor:I

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->radius:I

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v15 .. v28}, Lcom/google/appinventor/components/runtime/ListViewTwoTextLinearAdapter;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;IFLjava/lang/String;IIIII)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListView;->setListAdapter(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    .line 1277
    goto/16 :goto_0

    .line 1269
    :pswitch_4
    new-instance v1, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    iget v5, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    iget-object v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->elementColor:I

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->radius:I

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v15 .. v28}, Lcom/google/appinventor/components/runtime/ListViewTwoTextAdapter;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;IFLjava/lang/String;IIIII)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListView;->setListAdapter(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    .line 1272
    goto :goto_0

    .line 1264
    :pswitch_5
    new-instance v1, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    iget v5, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    iget-object v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->elementColor:I

    iget v11, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    iget v12, v0, Lcom/google/appinventor/components/runtime/ListView;->radius:I

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move/from16 v28, v14

    invoke-direct/range {v15 .. v28}, Lcom/google/appinventor/components/runtime/ListViewSingleTextAdapter;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;IFLjava/lang/String;IIIII)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListView;->setListAdapter(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    .line 1267
    nop

    .line 1294
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setListAdapter(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V
    .locals 2
    .param p1, "adapter"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 1321
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 1322
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    new-instance v1, Lcom/google/appinventor/components/runtime/ListView$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ListView$2;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V

    .line 1329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1330
    return-void
.end method

.method public updateAdapterData()V
    .locals 2

    .line 1300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 1301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->updateData(Ljava/util/List;)V

    .line 1302
    return-void
.end method
