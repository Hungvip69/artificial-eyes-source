.class Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

.field final synthetic val$ret:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$18;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    .line 1993
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->val$ret:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1996
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->val$ret:Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mupdateColumns(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1997
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    .line 1998
    const-string v0, "RetriveSheet UIThread "

    const-string v1, "SPREADSHEET"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$colID:I

    if-ltz v0, :cond_4

    .line 2000
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$colID:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RetriveWithFilter: colID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2004
    .local v0, "return_rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2005
    .local v2, "return_data":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 2006
    .local v3, "rowNum":I
    :goto_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->val$ret:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 2007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading row row: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->val$ret:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2009
    .local v4, "sheet_row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read with Filter row: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget v6, v6, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$colID:I

    if-lt v5, v6, :cond_2

    .line 2012
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$colID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking field : |"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$exact:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$colID:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$exact:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$colID:I

    add-int/lit8 v5, v5, -0x1

    .line 2014
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->val$value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2016
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read with Filter check col: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2018
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2021
    :cond_2
    nop

    .end local v4    # "sheet_row":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v3, v3, 0x1

    .line 2022
    goto/16 :goto_0

    .line 2023
    :cond_3
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v4, v0, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotFilterResult(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2029
    .end local v0    # "return_rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "return_data":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "rowNum":I
    goto :goto_1

    .line 2024
    :catch_0
    move-exception v0

    .line 2026
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read with Filter Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 2028
    return-void

    .line 2031
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$18;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$18;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$18$2;->val$ret:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotSheetData(Ljava/util/List;)V

    .line 2033
    :goto_1
    return-void
.end method
