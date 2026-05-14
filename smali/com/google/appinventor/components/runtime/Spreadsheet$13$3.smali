.class Lcom/google/appinventor/components/runtime/Spreadsheet$13$3;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$13;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$13;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$13;

    .line 1470
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13$3;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$13;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13$3;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1473
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13$3;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$13;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$13;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$13$3;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotCellData(Ljava/lang/String;)V

    .line 1474
    return-void
.end method
