.class public Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;
.super Ljava/lang/Object;
.source "ListViewArrayAdapterSingleText.java"


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private currentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

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
.method static bridge synthetic -$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->currentItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/Filter;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->filter:Landroid/widget/Filter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->filterCurrentItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemAdapter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextColor(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->textColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextSize(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->textSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->filterCurrentItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
    .locals 1
    .param p1, "textSize"    # I
    .param p2, "textColor"    # I
    .param p3, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->textSize:I

    .line 33
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->textColor:I

    .line 34
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 35
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->currentItems:Ljava/util/List;

    .line 36
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->filterCurrentItems:Ljava/util/List;

    .line 38
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->filter:Landroid/widget/Filter;

    .line 71
    return-void
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

    .line 74
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090003

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->currentItems:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method
