.class public abstract Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.super Ljava/lang/Object;
.source "AndroidNonvisibleComponent.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field protected componentName:Ljava/lang/String;

.field protected final form:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p1, "form"    # Lcom/google/appinventor/components/runtime/Form;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 29
    return-void
.end method


# virtual methods
.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object v0
.end method

.method public setComponentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "componentName"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;->componentName:Ljava/lang/String;

    .line 41
    return-void
.end method
