.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;
.super Landroid/widget/ArrayAdapter;
.source "ListViewArrayAdapterTwoText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->createAdapter()Landroid/widget/ArrayAdapter;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I

    .line 77
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->-$$Nest$fgetfilter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, "text1":Landroid/widget/TextView;
    const v2, 0x1020015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    .local v2, "text2":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 86
    .local v3, "row":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v4, "Text1"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "val1":Ljava/lang/String;
    const-string v5, "Text2"

    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "val2":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->-$$Nest$fgettextColor(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->-$$Nest$fgetdetailTextColor(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->-$$Nest$fgettextSize(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 96
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;->-$$Nest$fgetdetailTextSize(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterTwoText;)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 98
    return-object v0
.end method
