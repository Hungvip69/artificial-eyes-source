.class public Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;
.super Ljava/lang/Object;
.source "ListViewArrayAdapterTwoTextLinear.java"


# static fields
.field private static container:Lcom/google/appinventor/components/runtime/ComponentContainer;


# instance fields
.field private currentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private detailTextColor:I

.field private detailTextSize:I

.field private final filter:Landroid/widget/Filter;

.field private filterCurrentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private itemAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private textColor:I

.field private textSize:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->currentItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdetailTextColor(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->detailTextColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdetailTextSize(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->detailTextSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfilter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/widget/Filter;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->filter:Landroid/widget/Filter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->filterCurrentItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemAdapter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextColor(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->textColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextSize(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->textSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->filterCurrentItems:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateView(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->createView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(IIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
    .locals 1
    .param p1, "textSize"    # I
    .param p2, "detailTextSize"    # I
    .param p3, "textColor"    # I
    .param p4, "detailTextColor"    # I
    .param p5, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->textSize:I

    .line 36
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->detailTextSize:I

    .line 37
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->textColor:I

    .line 38
    iput p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->detailTextColor:I

    .line 39
    sput-object p5, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 40
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->currentItems:Ljava/util/List;

    .line 41
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->filterCurrentItems:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$1;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->filter:Landroid/widget/Filter;

    .line 74
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 9

    .line 82
    new-instance v0, Landroid/widget/LinearLayout;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 87
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    new-instance v1, Landroid/widget/TextView;

    sget-object v4, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v1, "textView1":Landroid/widget/TextView;
    const/16 v4, 0xa

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 91
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setId(I)V

    .line 94
    new-instance v6, Landroid/widget/TextView;

    sget-object v8, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v8}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 95
    .local v6, "textView2":Landroid/widget/TextView;
    invoke-virtual {v6, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    const/4 v4, 0x5

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 97
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setId(I)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 101
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public createAdapter()Landroid/widget/ArrayAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->currentItems:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear$2;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->itemAdapter:Landroid/widget/ArrayAdapter;

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoTextLinear;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method
