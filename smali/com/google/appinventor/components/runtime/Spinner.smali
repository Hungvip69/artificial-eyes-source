.class public final Lcom/google/appinventor/components/runtime/Spinner;
.super Lcom/google/appinventor/components/runtime/TouchComponent;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A spinner component that displays a pop-up with a list of elements. These elements can be set in the Designer or Blocks Editor by setting the<code>ElementsFromString</code> property to a string-separated concatenation (for example, <em>choice 1, choice 2, choice 3</em>) or by setting the <code>Elements</code> property to a List in the Blocks editor. Spinners are created with the first item already selected. So selecting  it does not generate an After Picking event. Consequently it\'s useful to make the  first Spinner item be a non-choice like \"Select from below...\". </p>"
    iconName = "images/spinner.png"
    nonVisible = false
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/TouchComponent<",
        "Landroid/widget/Spinner;",
        ">;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

.field private items:Lcom/google/appinventor/components/runtime/util/YailList;

.field private oldAdapterCount:I

.field private oldSelectionIndex:I

.field private savedHeight:I

.field private savedWidth:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 66
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TouchComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 59
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 71
    nop

    .line 74
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/HoneycombUtil;->makeSpinner(Landroid/content/Context;)Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    .line 79
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    const v1, 0x1090012

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->setDropDownViewResource(I)V

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->initToggle()V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->TextAlignment(I)V

    .line 86
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->FontTypeface(Ljava/lang/String;)V

    .line 87
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->FontSize(F)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->TextColor(I)V

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->FontBold(Z)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->FontItalic(Z)V

    .line 92
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->Prompt(Ljava/lang/String;)V

    .line 93
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->Width(I)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->Height(I)V

    .line 95
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldSelectionIndex:I

    .line 96
    return-void
.end method

.method private setAdapterData([Ljava/lang/String;)V
    .locals 4
    .param p1, "theItems"    # [Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldAdapterCount:I

    .line 180
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->clear()V

    .line 181
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 182
    .local v2, "theItem":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->add(Ljava/lang/Object;)V

    .line 181
    .end local v2    # "theItem":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public AfterSelecting(Ljava/lang/String;)V
    .locals 2
    .param p1, "selection"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event called after the user selects an item from the dropdown list."
    .end annotation

    .line 266
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "AfterSelecting"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 267
    return-void
.end method

.method public DisplayDropdown()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Displays the dropdown list for selection, same action as when the user clicks on the spinner."
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 259
    return-void
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "returns a list of text elements to be picked from."
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "itemList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Adds the passed text element to the Spinner list"
    .end annotation

    .line 158
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 161
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 163
    :cond_1
    :goto_0
    const-string v0, "Spinner"

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 164
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->setAdapterData([Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemstring"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the Spinner list to the elements passed in the comma-separated string"
    .end annotation

    .line 175
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 176
    return-void
.end method

.method public FontBold(Z)V
    .locals 1
    .param p1, "bold"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->setBold(Z)V

    .line 349
    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, spinner text is displayed in bold."
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->isBold()Z

    move-result v0

    return v0
.end method

.method public FontItalic(Z)V
    .locals 1
    .param p1, "italic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->setItalic(Z)V

    .line 377
    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set, spinner text is displayed in italics."
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->isItalic()Z

    move-result v0

    return v0
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Point size for spinner text."
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->getFontSize()F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->setFontSize(F)V

    .line 402
    return-void
.end method

.method public FontTypeface()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Font family for spinner text."
        userVisible = false
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->getFontTypeface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FontTypeface(Ljava/lang/String;)V
    .locals 1
    .param p1, "typeface"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->setFontTypeface(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public Height(I)V
    .locals 1
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 226
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->savedHeight:I

    .line 227
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/TouchComponent;->Height(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public HeightPercent(I)V
    .locals 1
    .param p1, "pCent"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 235
    rsub-int v0, p1, -0x3e8

    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->savedHeight:I

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/TouchComponent;->HeightPercent(I)V

    .line 239
    :cond_0
    return-void
.end method

.method public Prompt()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text with the current title for the Spinner window"
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Prompt(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the Spinner window prompt to the given title"
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the current selected item in the spinner "
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the selected item in the spinner"
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 115
    return-void
.end method

.method public SelectionIndex()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1. If no item is selected, the value will be 0."
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    return v0
.end method

.method public SelectionIndex(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the spinner selection to the element at the given index.If an attempt is made to set this to a number less than 1 or greater than the number of items in the Spinner, SelectionIndex will be set to 0, and Selection will be set to empty."
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex()I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldSelectionIndex:I

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->items:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 139
    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Left, center, or right."
        userVisible = false
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->getTextAlignment()I

    move-result v0

    return v0
.end method

.method public TextAlignment(I)V
    .locals 1
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->setTextAlignment(I)V

    .line 321
    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Color for spinner text."
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->getTextColor()I

    move-result v0

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->setTextColor(I)V

    .line 462
    return-void
.end method

.method public Visible(Z)V
    .locals 2
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 244
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 246
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->savedWidth:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->Width(I)V

    .line 247
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->savedHeight:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->Height(I)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 250
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1, p0, v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 253
    :goto_0
    return-void
.end method

.method public Width(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 208
    iput p1, p0, Lcom/google/appinventor/components/runtime/Spinner;->savedWidth:I

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/TouchComponent;->Width(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public WidthPercent(I)V
    .locals 1
    .param p1, "pCent"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 217
    rsub-int v0, p1, -0x3e8

    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->savedWidth:I

    .line 218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/TouchComponent;->WidthPercent(I)V

    .line 221
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 276
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldAdapterCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldSelectionIndex:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldAdapterCount:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    .line 277
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldSelectionIndex:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 278
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->adapter:Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spinner$SpinnerArrayAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->oldAdapterCount:I

    goto :goto_0

    .line 281
    :cond_2
    add-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->SelectionIndex(I)V

    .line 282
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Spinner;->Selection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Spinner;->AfterSelecting(Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 287
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 288
    return-void
.end method
