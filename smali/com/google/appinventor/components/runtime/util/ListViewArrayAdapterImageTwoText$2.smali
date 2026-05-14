.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;
.super Landroid/widget/ArrayAdapter;
.source "ListViewArrayAdapterImageTwoText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->createAdapter()Landroid/widget/ArrayAdapter;
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
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I

    .line 121
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetfilter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/Filter;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$mcreateView(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/view/View;

    move-result-object v0

    .line 126
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 127
    .local v1, "image":Landroid/widget/ImageView;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 128
    .local v2, "text1":Landroid/widget/TextView;
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, "text2":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 131
    .local v4, "row":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v5, "Image"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "imageVal":Ljava/lang/String;
    const-string v6, "Text1"

    invoke-virtual {v4, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "val1":Ljava/lang/String;
    const-string v7, "Text2"

    invoke-virtual {v4, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "val2":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-virtual {v8, v1, v5}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->setImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgettextColor(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetdetailTextColor(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgettextSize(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 143
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$2;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetdetailTextSize(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    return-object v0
.end method
