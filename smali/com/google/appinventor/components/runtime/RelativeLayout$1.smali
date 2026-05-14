.class Lcom/google/appinventor/components/runtime/RelativeLayout$1;
.super Landroid/widget/RelativeLayout;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/RelativeLayout;-><init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/RelativeLayout;

.field final synthetic val$preferredEmptyHeight:Ljava/lang/Integer;

.field final synthetic val$preferredEmptyWidth:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/RelativeLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/RelativeLayout;
    .param p2, "context"    # Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->this$0:Lcom/google/appinventor/components/runtime/RelativeLayout;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->val$preferredEmptyWidth:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->val$preferredEmptyHeight:Ljava/lang/Integer;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getSize(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "preferredSize"    # I

    .line 73
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 74
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 76
    .local v1, "specSize":I
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 78
    move v2, v1

    .local v2, "result":I
    goto :goto_0

    .line 81
    .end local v2    # "result":I
    :cond_0
    move v2, p2

    .line 82
    .restart local v2    # "result":I
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_1

    .line 84
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 88
    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->val$preferredEmptyWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->val$preferredEmptyHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 64
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->val$preferredEmptyWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->getSize(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->val$preferredEmptyHeight:Ljava/lang/Integer;

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->getSize(II)I

    move-result v1

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/RelativeLayout$1;->setMeasuredDimension(II)V

    .line 69
    return-void

    .line 57
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 58
    return-void
.end method
