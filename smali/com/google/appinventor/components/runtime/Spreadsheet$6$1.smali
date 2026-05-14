.class Lcom/google/appinventor/components/runtime/Spreadsheet$6$1;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$6;

.field final synthetic val$sheetNamesList:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$6;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$6;

    .line 826
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$6;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6$1;->val$sheetNamesList:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$6;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$6;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$6$1;->val$sheetNamesList:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotSheetList(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 830
    return-void
.end method
