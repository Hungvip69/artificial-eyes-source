.class Lcom/google/appinventor/components/runtime/PieChartView$3;
.super Ljava/lang/Object;
.source "PieChartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PieChartView;->removeLegendEntries(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PieChartView;

.field final synthetic val$entriesCopy:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PieChartView;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/PieChartView;

    .line 414
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PieChartView$3;->this$0:Lcom/google/appinventor/components/runtime/PieChartView;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/PieChartView$3;->val$entriesCopy:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView$3;->this$0:Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PieChartView;->-$$Nest$fgetlegendEntries(Lcom/google/appinventor/components/runtime/PieChartView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView$3;->val$entriesCopy:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 419
    return-void
.end method
