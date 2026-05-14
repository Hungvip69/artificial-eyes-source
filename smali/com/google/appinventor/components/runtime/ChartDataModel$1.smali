.class Lcom/google/appinventor/components/runtime/ChartDataModel$1;
.super Lcom/github/mikephil/charting/formatter/ValueFormatter;
.source "ChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ChartDataModel;->setChartValueType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ChartDataModel;

.field final synthetic val$valueType:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ChartDataModel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ChartDataModel;

    .line 115
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel$1;, "Lcom/google/appinventor/components/runtime/ChartDataModel$1;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel$1;->this$0:Lcom/google/appinventor/components/runtime/ChartDataModel;

    iput p2, p0, Lcom/google/appinventor/components/runtime/ChartDataModel$1;->val$valueType:I

    invoke-direct {p0}, Lcom/github/mikephil/charting/formatter/ValueFormatter;-><init>()V

    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # F

    .line 118
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel$1;, "Lcom/google/appinventor/components/runtime/ChartDataModel$1;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel$1;->val$valueType:I

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getFormattedValue(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    float-to-int v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
