.class Lcom/google/appinventor/components/runtime/Spreadsheet$5$1;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$5;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$5;

    .line 778
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$5;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$5$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$5;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$5;->val$sheetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->FinishedDeleteSheet(Ljava/lang/String;)V

    .line 782
    return-void
.end method
