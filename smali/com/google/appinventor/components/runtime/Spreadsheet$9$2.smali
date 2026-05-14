.class Lcom/google/appinventor/components/runtime/Spreadsheet$9$2;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$9;

.field final synthetic val$ret:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$9;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$9;

    .line 1103
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$9;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9$2;->val$ret:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$9;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$9;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$9$2;->val$ret:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotColumnData(Ljava/util/List;)V

    .line 1107
    return-void
.end method
