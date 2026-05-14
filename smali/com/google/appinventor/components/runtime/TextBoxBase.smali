.class public abstract Lcom/google/appinventor/components/runtime/TextBoxBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "TextBoxBase.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/google/appinventor/components/runtime/AccessibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private backgroundColor:I

.field private bold:Z

.field private defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

.field private fontTypeface:Ljava/lang/String;

.field private hint:Ljava/lang/String;

.field private hintColor:I

.field private hintColorDefault:I

.field private isBigText:Z

.field private isHighContrast:Z

.field private italic:Z

.field private lastText:Ljava/lang/String;

.field private textAlignment:I

.field private textColor:I

.field protected final view:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V
    .locals 7
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "textview"    # Landroid/widget/EditText;

    .line 93
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hintColor:I

    .line 75
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->isHighContrast:Z

    .line 78
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->isBigText:Z

    .line 81
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->lastText:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    .line 95
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCurrentHintTextColor()I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hintColorDefault:I

    .line 101
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 102
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/EclairUtil;->disableSuggestions(Landroid/widget/EditText;)V

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 108
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 118
    const/16 v2, 0xa0

    invoke-interface {p1, p0, v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextAlignment(I)V

    .line 128
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Enabled(Z)V

    .line 129
    const-string v2, "0"

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:Ljava/lang/String;

    .line 130
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 131
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/TextBoxBase;->FontSize(F)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Hint(Ljava/lang/String;)V

    .line 133
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->isHighContrast:Z

    if-nez v2, :cond_2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hintColorDefault:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1

    .line 134
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 140
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Text(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextColor(I)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->BackgroundColor(I)V

    .line 146
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The background color of the input box.  You can choose a color by name in the Designer or in the Blocks Editor.  The default background color is \'default\' (shaded 3-D look)."
    .end annotation

    .line 238
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 255
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    .line 256
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 259
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->isHighContrast:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 260
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    .line 265
    :goto_1
    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    .line 293
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the user can enter text into the %type%.  By default, this is true."
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 4
    .param p1, "bold"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 322
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    .line 323
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 324
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the font for the text should be bold.  By default, it is not."
        userVisible = false
    .end annotation

    .line 308
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 4
    .param p1, "italic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 352
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 354
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should appear in italics.  By default, it does not."
        userVisible = false
    .end annotation

    .line 339
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size for the text.  By default, it is 14.0 points."
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 2
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 378
    const/high16 v0, 0x41600000    # 14.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->BigDefaultText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 383
    :goto_0
    return-void
.end method

.method public FontTypeface()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font for the text.  The value can be changed in the Designer."
        userVisible = false
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public FontTypeface(Ljava/lang/String;)V
    .locals 5
    .param p1, "typeface"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 417
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->bold:Z

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->italic:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 419
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the %type% is selected for input, such as by the user touching it."
    .end annotation

    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotFocus"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text that should appear faintly in the %type% to provide a hint as to what the user should enter.  This can only be seen if the Text property is empty."
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hint:Ljava/lang/String;

    return-object v0
.end method

.method public Hint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hint:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 450
    return-void
.end method

.method public HintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the color of the hint of the %type%."
    .end annotation

    .line 456
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hintColor:I

    return v0
.end method

.method public HintColor(I)V
    .locals 2
    .param p1, "hintColor"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF888888"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 462
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hintColor:I

    .line 463
    if-eqz p1, :cond_0

    .line 464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1

    .line 466
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->isHighContrast:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hintColorDefault:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1

    .line 467
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 472
    :goto_1
    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the %type% is no longer selected for input, such as if the user touches a different text box."
    .end annotation

    .line 170
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LostFocus"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public MoveCursorTo(I)V
    .locals 3
    .param p1, "position"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Repositions the cursor of the %type% before the character at the given 1-indexed position. If the given position is larger than the length of the %type%, the cursor will be moved to the end of the text; and if the given position is smaller or equal to 1, the cursor will be moved to the start."
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 546
    .local v0, "len":I
    if-le p1, v0, :cond_0

    .line 547
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 548
    :cond_0
    const/4 v1, 0x1

    if-gt p1, v1, :cond_1

    .line 549
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 553
    :goto_0
    return-void
.end method

.method public MoveCursorToEnd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Repositions the cursor to the end of the %type%\'s text."
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->MoveCursorTo(I)V

    .line 558
    return-void
.end method

.method public MoveCursorToStart()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Repositions the cursor to the start of the %type%\'s text."
    .end annotation

    .line 562
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->MoveCursorTo(I)V

    .line 563
    return-void
.end method

.method public RequestFocus()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the %type% active."
    .end annotation

    .line 571
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 572
    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text in the %type%, which can be set by the programmer in the Designer or Blocks Editor, or it can be entered by the user (unless the <code>Enabled</code> property is false)."
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should be left justified, centered, or right justified.  By default, text is left justified."
        userVisible = false
    .end annotation

    .line 203
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 221
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textAlignment:I

    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 223
    return-void
.end method

.method public TextChanged()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the text of the %type% is changed, either by the user or the program."
    .end annotation

    .line 175
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TextChanged"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color for the text.  You can choose a color by name in the Designer or in the Blocks Editor.  The default text color is black."
    .end annotation

    .line 515
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 3
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 528
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

    .line 529
    if-eqz p1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 532
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->isHighContrast:Z

    const/4 v1, -0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->HighContrast()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/high16 v1, -0x1000000

    :goto_0
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 533
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 539
    :goto_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 585
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 589
    return-void
.end method

.method public getHighContrast()Z
    .locals 1

    .line 635
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->isHighContrast:Z

    return v0
.end method

.method public getLargeFont()Z
    .locals 1

    .line 651
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->isBigText:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "previouslyFocused"    # Landroid/view/View;
    .param p2, "gainFocus"    # Z

    .line 594
    if-eqz p2, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->GotFocus()V

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->LostFocus()V

    .line 604
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 577
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->lastText:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextChanged()V

    .line 580
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->lastText:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public setHighContrast(Z)V
    .locals 4
    .param p1, "isHighContrast"    # Z

    .line 609
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    const/high16 v1, -0x1000000

    if-nez v0, :cond_1

    .line 610
    if-eqz p1, :cond_0

    .line 611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->defaultTextBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 619
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

    if-nez v0, :cond_4

    .line 620
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 621
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 622
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    goto :goto_1

    .line 626
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, -0x1

    :cond_3
    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 627
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hintColorDefault:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 631
    :cond_4
    :goto_1
    return-void
.end method

.method public setLargeFont(Z)V
    .locals 6
    .param p1, "isLargeFont"    # Z

    .line 640
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    const/high16 v4, 0x41600000    # 14.0f

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    .line 641
    :cond_0
    if-eqz p1, :cond_1

    .line 642
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 647
    :cond_2
    :goto_0
    return-void
.end method
