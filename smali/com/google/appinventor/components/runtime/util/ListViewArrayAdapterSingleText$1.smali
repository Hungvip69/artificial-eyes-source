.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;
.super Landroid/widget/Filter;
.source "ListViewArrayAdapterSingleText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;-><init>(IILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    .line 38
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 41
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "filterQuery":Ljava/lang/String;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 44
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 49
    .local v3, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 50
    const-string v4, "Text1"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v3    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_1
    goto :goto_0

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 55
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    .line 45
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 46
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 57
    :goto_2
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "filterResults"    # Landroid/widget/Filter$FilterResults;

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fputfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;Ljava/util/List;)V

    .line 63
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetitemAdapter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 64
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetitemAdapter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterSingleText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
