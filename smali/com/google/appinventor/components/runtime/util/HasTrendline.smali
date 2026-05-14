.class public interface abstract Lcom/google/appinventor/components/runtime/util/HasTrendline;
.super Ljava/lang/Object;
.source "HasTrendline.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getColor()I
.end method

.method public abstract getDashPathEffect()Landroid/graphics/DashPathEffect;
.end method

.method public abstract getLineWidth()F
.end method

.method public abstract getPoints(FFI)[F
.end method

.method public abstract isVisible()Z
.end method
