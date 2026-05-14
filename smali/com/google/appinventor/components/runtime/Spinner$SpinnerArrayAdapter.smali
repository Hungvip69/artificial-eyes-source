.class Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpinnerArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private bold:Z

.field private defaultColorStateList:Landroid/content/res/ColorStateList;

.field private fontSize:F

.field private fontTypeface:Ljava/lang/String;

.field private italic:Z

.field private textAlignment:I

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I

    .line 487
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 488
    return-void
.end method

.method private decorate(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;

    .line 508
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->defaultColorStateList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->defaultColorStateList:Landroid/content/res/ColorStateList;

    .line 511
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->fontTypeface:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->bold:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->italic:Z

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 512
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->fontSize:F

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 513
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->textAlignment:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 515
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->textColor:I

    if-eqz v0, :cond_1

    .line 516
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->textColor:I

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->defaultColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 520
    :goto_0
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 499
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 500
    .local v0, "view":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->decorate(Landroid/widget/TextView;)V

    .line 501
    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .line 563
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->fontSize:F

    return v0
.end method

.method public getFontTypeface()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->fontTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    .line 523
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->textAlignment:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 555
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->textColor:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 492
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 493
    .local v0, "view":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->decorate(Landroid/widget/TextView;)V

    .line 494
    return-object v0
.end method

.method public isBold()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->bold:Z

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .line 547
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->italic:Z

    return v0
.end method

.method public setBold(Z)V
    .locals 0
    .param p1, "bold"    # Z

    .line 543
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->bold:Z

    .line 544
    return-void
.end method

.method public setFontSize(F)V
    .locals 0
    .param p1, "fontSize"    # F

    .line 567
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->fontSize:F

    .line 568
    return-void
.end method

.method public setFontTypeface(Ljava/lang/String;)V
    .locals 0
    .param p1, "fontTypeface"    # Ljava/lang/String;

    .line 535
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->fontTypeface:Ljava/lang/String;

    .line 536
    return-void
.end method

.method public setItalic(Z)V
    .locals 0
    .param p1, "italic"    # Z

    .line 551
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->italic:Z

    .line 552
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 0
    .param p1, "textAlignment"    # I

    .line 527
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->textAlignment:I

    .line 528
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .line 559
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->textColor:I

    .line 560
    return-void
.end method
