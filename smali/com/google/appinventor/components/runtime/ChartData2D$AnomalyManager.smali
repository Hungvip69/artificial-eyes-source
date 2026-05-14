.class Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;
.super Ljava/lang/Object;
.source "ChartData2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ChartData2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnomalyManager"
.end annotation


# instance fields
.field indexes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field xValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->indexes:Ljava/util/Set;

    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->xValues:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->indexes:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->xValues:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{indexes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", xValues: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
