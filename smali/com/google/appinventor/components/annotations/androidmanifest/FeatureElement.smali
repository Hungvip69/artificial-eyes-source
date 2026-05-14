.class public interface abstract annotation Lcom/google/appinventor/components/annotations/androidmanifest/FeatureElement;
.super Ljava/lang/Object;
.source "FeatureElement.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/FeatureElement;
        glEsVersion = -0x1
        required = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract glEsVersion()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract required()Z
.end method
