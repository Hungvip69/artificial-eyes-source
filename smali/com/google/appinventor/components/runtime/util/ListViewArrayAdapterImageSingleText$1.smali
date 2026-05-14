.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;
.super Landroid/widget/Filter;
.source "ListViewArrayAdapterImageSingleText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;-><init>(IIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    .line 44
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 5
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 47
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "filterQuery":Ljava/lang/String;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 50
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 55
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

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

    .line 56
    .local v3, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v4, "Text1"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v3    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_1
    goto :goto_0

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 62
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_2

    .line 51
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 52
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 64
    :goto_2
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "filterResults"    # Landroid/widget/Filter$FilterResults;

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fputfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;Ljava/util/List;)V

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetitemAdapter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 72
    .local v1, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;->-$$Nest$fgetitemAdapter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageSingleText;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 73
    .end local v1    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method
