.class public final Lcom/google/appinventor/components/runtime/PasswordTextBox;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;
.source "PasswordTextBox.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A box for entering passwords.  This is the same as the ordinary <code>TextBox</code> component except this does not display the characters typed by the user.</p><p>The value of the text in the box can be found or set through the <code>Text</code> property. If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p> <p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p>"
    iconName = "images/passwordtextbox.png"
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private acceptsNumbersOnly:Z

.field private passwordVisible:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 65
    new-instance v0, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->PasswordVisible(Z)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->NumbersOnly(Z)V

    .line 79
    return-void
.end method

.method private setPasswordInputType(ZZ)V
    .locals 5
    .param p1, "acceptsNumbersOnly"    # Z
    .param p2, "passwordVisible"    # Z

    .line 134
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 136
    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 138
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 140
    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 143
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->view:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->FontTypeface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->FontBold()Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->FontItalic()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 144
    return-void
.end method


# virtual methods
.method public NumbersOnly(Z)V
    .locals 1
    .param p1, "acceptsNumbersOnly"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, then this password text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .line 129
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->acceptsNumbersOnly:Z

    .line 130
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->passwordVisible:Z

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->setPasswordInputType(ZZ)V

    .line 131
    return-void
.end method

.method public NumbersOnly()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this password text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->acceptsNumbersOnly:Z

    return v0
.end method

.method public PasswordVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Visibility of password."
    .end annotation

    .line 83
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->passwordVisible:Z

    .line 84
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->acceptsNumbersOnly:Z

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/PasswordTextBox;->setPasswordInputType(ZZ)V

    .line 85
    return-void
.end method

.method public PasswordVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Visibility of password."
    .end annotation

    .line 94
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PasswordTextBox;->passwordVisible:Z

    return v0
.end method
