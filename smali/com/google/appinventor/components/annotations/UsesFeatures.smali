.class public interface abstract annotation Lcom/google/appinventor/components/annotations/UsesFeatures;
.super Ljava/lang/Object;
.source "UsesFeatures.java"

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
.method public abstract features()[Lcom/google/appinventor/components/annotations/androidmanifest/FeatureElement;
.end method
