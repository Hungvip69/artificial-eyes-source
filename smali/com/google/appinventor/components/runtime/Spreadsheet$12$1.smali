.class Lcom/google/appinventor/components/runtime/Spreadsheet$12$1;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$12;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$12;

    .line 1340
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$12$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$12$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$12;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$12;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->FinishedRemoveColumn()V

    .line 1344
    return-void
.end method
