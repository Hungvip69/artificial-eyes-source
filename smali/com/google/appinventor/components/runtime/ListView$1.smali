.class Lcom/google/appinventor/components/runtime/ListView$1;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ListView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ListView;

    .line 191
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$1;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .line 206
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 201
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$1;->this$0:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListView;->-$$Nest$fgetlistAdapterWithRecyclerView(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method
