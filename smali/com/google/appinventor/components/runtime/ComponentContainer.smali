.class public interface abstract Lcom/google/appinventor/components/runtime/ComponentContainer;
.super Ljava/lang/Object;
.source "ComponentContainer.java"


# virtual methods
.method public abstract $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
.end method

.method public abstract $context()Landroid/app/Activity;
.end method

.method public abstract $form()Lcom/google/appinventor/components/runtime/Form;
.end method

.method public abstract Height()I
.end method

.method public abstract Width()I
.end method

.method public abstract getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
.end method

.method public abstract setChildNeedsLayout(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
.end method

.method public abstract setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
.end method
