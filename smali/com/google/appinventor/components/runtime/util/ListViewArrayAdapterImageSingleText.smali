.class public Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;
.super Ljava/lang/Object;
.source "ListViewArrayAdapterImageSingleText.java"


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

.field private imageHeight:I

.field private imageWidth:I

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
.method static bridge synthetic -$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->currentItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/widget/Filter;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->filter:Landroid/widget/Filter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->filterCurrentItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemAdapter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/widget/ArrayAdapter;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextColor(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->textColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettextSize(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->textSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->filterCurrentItems:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateView(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->createView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(IIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
    .locals 1
    .param p1, "textSize"    # I
    .param p2, "textColor"    # I
    .param p3, "imageWidth"    # I
    .param p4, "imageHeight"    # I
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

    .line 35
    .local p6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->textSize:I

    .line 37
    iput p2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->textColor:I

    .line 38
    iput p3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->imageWidth:I

    .line 39
    iput p4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->imageHeight:I

    .line 40
    iput-object p5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 41
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->currentItems:Ljava/util/List;

    .line 42
    iput-object p6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->filterCurrentItems:Ljava/util/List;

    .line 44
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->filter:Landroid/widget/Filter;

    .line 76
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 6

    .line 84
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 86
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 87
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v2, "imageView":Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 89
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->imageWidth:I

    iget v5, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->imageHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 92
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setId(I)V

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
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

    .line 112
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->currentItems:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;-><init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->itemAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public setImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imagePath"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v1, ""

    if-eq p2, v1, :cond_0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Image"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method
