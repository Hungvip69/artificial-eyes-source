.class public Lcom/google/appinventor/components/runtime/TableArrangement;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "TableArrangement.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A formatting element in which to place components that should be displayed in tabular form.</p>"
    iconName = "images/table.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private allChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/app/Activity;

.field private final viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 71
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->allChildren:Ljava/util/List;

    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->context:Landroid/app/Activity;

    .line 74
    new-instance v0, Lcom/google/appinventor/components/runtime/TableLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->context:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/runtime/TableLayout;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    .line 76
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 77
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 1
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->allChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public Columns()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/TableLayout;->getNumColumns()I

    move-result v0

    return v0
.end method

.method public Columns(I)V
    .locals 1
    .param p1, "numColumns"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->setNumColumns(I)V

    .line 99
    return-void
.end method

.method public Rows()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/TableLayout;->getNumRows()I

    move-result v0

    return v0
.end method

.method public Rows(I)V
    .locals 1
    .param p1, "numRows"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->setNumRows(I)V

    .line 121
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/appinventor/components/runtime/Component;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->allChildren:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->viewLayout:Lcom/google/appinventor/components/runtime/TableLayout;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/TableLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .line 170
    const/16 v0, -0x3e8

    if-gt p2, v0, :cond_1

    .line 171
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v1

    .line 173
    .local v1, "cHeight":I
    if-le v1, v0, :cond_0

    if-gtz v1, :cond_0

    .line 175
    const/4 p2, -0x1

    goto :goto_0

    .line 177
    :cond_0
    add-int/lit16 v0, p2, 0x3e8

    neg-int v0, v0

    mul-int v0, v0, v1

    div-int/lit8 p2, v0, 0x64

    .line 181
    .end local v1    # "cHeight":I
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 183
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForTableLayout(Landroid/view/View;I)V

    .line 185
    return-void
.end method

.method public setChildNeedsLayout(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 190
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 4
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .line 149
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TableArrangment.setChildWidth: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " component = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    const/16 v0, -0x3e8

    if-gt p2, v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableArrangement;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v1

    .line 154
    .local v1, "cWidth":I
    if-le v1, v0, :cond_0

    if-gtz v1, :cond_0

    .line 156
    const/4 p2, -0x1

    goto :goto_0

    .line 158
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%%TableArrangement.setChildWidth(): width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " child = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    add-int/lit16 v0, p2, 0x3e8

    neg-int v0, v0

    mul-int v0, v0, v1

    div-int/lit8 p2, v0, 0x64

    .line 163
    .end local v1    # "cWidth":I
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 165
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForTableLayout(Landroid/view/View;I)V

    .line 166
    return-void
.end method
