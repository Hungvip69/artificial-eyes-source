.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;
.super Landroid/widget/ArrayAdapter;
.source "ListViewArrayAdapterSingleText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->createAdapter()Landroid/widget/ArrayAdapter;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I

    .line 75
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetfilter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    .local v1, "text1":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 83
    .local v2, "row":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v3, "Text1"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "val1":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgettextColor(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgettextSize(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    return-object v0
.end method
