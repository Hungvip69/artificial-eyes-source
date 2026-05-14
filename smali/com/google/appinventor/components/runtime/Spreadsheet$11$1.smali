.class Lcom/google/appinventor/components/runtime/Spreadsheet$11$1;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$11;

.field final synthetic val$addedColumn:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$11;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$11;

    .line 1268
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$11;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11$1;->val$addedColumn:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$11;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$11;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$11$1;->val$addedColumn:I

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->FinishedAddColumn(I)V

    .line 1272
    return-void
.end method
