.class public final Lcom/google/appinventor/components/runtime/TextBox;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;
.source "TextBox.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A box for the user to enter text.  The initial or user-entered text value is in the <code>Text</code> property.  If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p><p>The <code>MultiLine</code> property determines if the text can havemore than one line.  For a single line text box, the keyboard will closeautomatically when the user presses the Done key.  To close the keyboard for multiline text boxes, the app should use  the HideKeyboard method or  rely on the user to press the Back key.</p><p>The <code> NumbersOnly</code> property restricts the keyboard to acceptnumeric input only.</p><p>Other properties affect the appearance of the text box (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be used (<code>Enabled</code>).</p><p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p><p>If the text entered by the user should not be displayed, use <code>PasswordTextBox</code> instead.</p>"
    iconName = "images/textbox.png"
    version = 0xe
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private acceptsNumbersOnly:Z

.field private multiLine:Z

.field private readOnly:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 114
    new-instance v0, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBox;->NumbersOnly(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBox;->MultiLine(Z)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBox;->ReadOnly(Z)V

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 128
    return-void
.end method


# virtual methods
.method public HideKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard.  Only multiline text boxes need this. Single line text boxes close the keyboard when the users presses the Done key."
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 183
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 185
    return-void
.end method

.method public MultiLine(Z)V
    .locals 2
    .param p1, "multiLine"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 216
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->multiLine:Z

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 218
    return-void
.end method

.method public MultiLine()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this text box accepts multiple lines of input, which are entered using the return key.  For single line text boxes there is a Done key instead of a return key, and pressing Done hides the keyboard.  The app should call the HideKeyboard method to hide the keyboard for a mutiline text box."
    .end annotation

    .line 201
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->multiLine:Z

    return v0
.end method

.method public NumbersOnly(Z)V
    .locals 2
    .param p1, "acceptsNumbersOnly"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, then this text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const v1, 0x20001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 171
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->acceptsNumbersOnly:Z

    .line 172
    return-void
.end method

.method public NumbersOnly()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .line 144
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->acceptsNumbersOnly:Z

    return v0
.end method

.method public ReadOnly(Z)V
    .locals 2
    .param p1, "readOnly"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 238
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->readOnly:Z

    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 240
    return-void
.end method

.method public ReadOnly()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the %type% is read-only. By default, this is false."
    .end annotation

    .line 225
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->readOnly:Z

    return v0
.end method
