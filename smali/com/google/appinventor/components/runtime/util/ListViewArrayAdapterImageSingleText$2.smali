.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;
.super Landroid/widget/ArrayAdapter;
.source "ListViewArrayAdapterImageSingleText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->createAdapter()Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I

    .line 112
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetfilter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$mcreateView(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 118
    .local v1, "image":Landroid/widget/ImageView;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, "text1":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 121
    .local v3, "row":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v4, "Image"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "imageVal":Ljava/lang/String;
    const-string v5, "Text1"

    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "val1":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-virtual {v6, v1, v4}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgettextColor(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgettextSize(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 129
    return-object v0
.end method
