.class public interface abstract annotation Lcom/google/appinventor/components/annotations/UsesXmls;
.super Ljava/lang/Object;
.source "UsesXmls.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract xmls()[Lcom/google/appinventor/components/annotations/XmlElement;
.end method
