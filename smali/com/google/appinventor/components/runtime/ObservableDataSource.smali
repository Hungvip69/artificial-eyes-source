.class public interface abstract Lcom/google/appinventor/components/runtime/ObservableDataSource;
.super Ljava/lang/Object;
.source "ObservableDataSource.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/DataSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/DataSource<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
.end method

.method public abstract notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
.end method
