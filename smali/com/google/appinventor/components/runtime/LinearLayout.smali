.class public final Lcom/google/appinventor/components/runtime/LinearLayout;
.super Ljava/lang/Object;
.source "LinearLayout.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final layoutManager:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "preferredEmptyWidth"    # Ljava/lang/Integer;
    .param p4, "preferredEmptyHeight"    # Ljava/lang/Integer;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LinearLayout - preferredEmptyWidth and preferredEmptyHeight must be either both null or both not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/appinventor/components/runtime/LinearLayout$1;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/appinventor/components/runtime/LinearLayout$1;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    .line 98
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 99
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    nop

    .line 97
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    return-void
.end method


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setBaselineAligned(Z)V
    .locals 1
    .param p1, "baselineAligned"    # Z

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 117
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->layoutManager:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 121
    return-void
.end method
