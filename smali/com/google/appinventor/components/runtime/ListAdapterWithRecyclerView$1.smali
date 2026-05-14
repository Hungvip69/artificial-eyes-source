.class Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;
.super Landroid/widget/Filter;
.source "ListAdapterWithRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 41
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 44
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->lastQuery:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 46
    .local v0, "results":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v1, "filteredList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalPositions:Ljava/util/List;

    .line 48
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->lastQuery:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->lastQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 52
    :cond_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 53
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 55
    .local v3, "item":Ljava/lang/Object;
    instance-of v4, v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v4, :cond_3

    .line 56
    move-object v4, v3

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v5, "Text1"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    move-object v4, v3

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v6, "Text2"

    invoke-virtual {v4, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, "o":Ljava/lang/Object;
    move-object v6, v3

    check-cast v6, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v6, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "filterString":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .end local v4    # "o":Ljava/lang/Object;
    :cond_1
    goto :goto_1

    .line 63
    .end local v5    # "filterString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "filterString":Ljava/lang/String;
    goto :goto_1

    .line 66
    .end local v5    # "filterString":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    .restart local v5    # "filterString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->lastQuery:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 69
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalPositions:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v3    # "item":Ljava/lang/Object;
    .end local v5    # "filterString":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v2    # "index":I
    :cond_5
    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalItems:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 50
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->originalItems:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 74
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 75
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 76
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "filterResults"    # Landroid/widget/Filter$FilterResults;

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clearSelections()V

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->notifyDataSetChanged()V

    .line 87
    return-void
.end method
