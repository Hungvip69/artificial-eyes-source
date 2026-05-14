.class Lkawa/ReplEditorKit$1;
.super Ljava/lang/Object;
.source "ReplPane.java"

# interfaces
.implements Ljavax/swing/text/ViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplEditorKit;-><init>(Lkawa/ReplPane;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkawa/ReplEditorKit;

.field final synthetic val$pane:Lkawa/ReplPane;


# direct methods
.method constructor <init>(Lkawa/ReplEditorKit;Lkawa/ReplPane;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lkawa/ReplEditorKit$1;->this$0:Lkawa/ReplEditorKit;

    iput-object p2, p0, Lkawa/ReplEditorKit$1;->val$pane:Lkawa/ReplPane;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljavax/swing/text/Element;)Ljavax/swing/text/View;
    .locals 4
    .param p1, "elem"    # Ljavax/swing/text/Element;

    .line 187
    invoke-interface {p1}, Ljavax/swing/text/Element;->getName()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "kind":Ljava/lang/String;
    const-string v1, "Viewable"

    if-ne v0, v1, :cond_0

    .line 190
    new-instance v1, Lkawa/ReplEditorKit$1$1;

    invoke-direct {v1, p0, p1}, Lkawa/ReplEditorKit$1$1;-><init>(Lkawa/ReplEditorKit$1;Ljavax/swing/text/Element;)V

    return-object v1

    .line 216
    :cond_0
    const-string v1, "Paintable"

    if-ne v0, v1, :cond_1

    .line 218
    invoke-interface {p1}, Ljavax/swing/text/Element;->getAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v1

    .line 219
    .local v1, "attr":Ljavax/swing/text/AttributeSet;
    new-instance v2, Lkawa/PaintableView;

    sget-object v3, Lkawa/ReplPane;->PaintableAttribute:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljavax/swing/text/AttributeSet;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/models/Paintable;

    invoke-direct {v2, p1, v3}, Lkawa/PaintableView;-><init>(Ljavax/swing/text/Element;Lgnu/kawa/models/Paintable;)V

    return-object v2

    .line 221
    .end local v1    # "attr":Ljavax/swing/text/AttributeSet;
    :cond_1
    iget-object v1, p0, Lkawa/ReplEditorKit$1;->this$0:Lkawa/ReplEditorKit;

    iget-object v1, v1, Lkawa/ReplEditorKit;->styledFactory:Ljavax/swing/text/ViewFactory;

    invoke-interface {v1, p1}, Ljavax/swing/text/ViewFactory;->create(Ljavax/swing/text/Element;)Ljavax/swing/text/View;

    move-result-object v1

    return-object v1
.end method
