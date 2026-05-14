.class public Lkawa/ReplPane;
.super Ljavax/swing/JTextPane;
.source "ReplPane.java"

# interfaces
.implements Ljava/awt/event/KeyListener;


# static fields
.field public static final PaintableAttribute:Ljava/lang/Object;

.field public static final PaintableElementName:Ljava/lang/String; = "Paintable"

.field public static final ViewableAttribute:Ljava/lang/Object;

.field public static final ViewableElementName:Ljava/lang/String; = "Viewable"


# instance fields
.field document:Lkawa/ReplDocument;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/String;

    const-string v1, "Viewable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/ReplPane;->ViewableAttribute:Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/String;

    const-string v1, "Paintable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkawa/ReplPane;->PaintableAttribute:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkawa/ReplDocument;)V
    .locals 2
    .param p1, "document"    # Lkawa/ReplDocument;

    .line 37
    invoke-direct {p0, p1}, Ljavax/swing/JTextPane;-><init>(Ljavax/swing/text/StyledDocument;)V

    .line 38
    iput-object p1, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    .line 39
    iput-object p0, p1, Lkawa/ReplDocument;->pane:Ljavax/swing/JTextPane;

    .line 40
    iget v0, p1, Lkawa/ReplDocument;->paneCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lkawa/ReplDocument;->paneCount:I

    .line 42
    invoke-virtual {p0, p0}, Lkawa/ReplPane;->addKeyListener(Ljava/awt/event/KeyListener;)V

    .line 43
    invoke-virtual {p0, p1}, Lkawa/ReplPane;->addFocusListener(Ljava/awt/event/FocusListener;)V

    .line 45
    invoke-virtual {p0}, Lkawa/ReplPane;->getEditorKit()Ljavax/swing/text/EditorKit;

    move-result-object v0

    .line 46
    .local v0, "kit":Ljavax/swing/text/EditorKit;
    iget v1, p1, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {p0, v1}, Lkawa/ReplPane;->setCaretPosition(I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected createDefaultEditorKit()Ljavax/swing/text/EditorKit;
    .locals 1

    .line 50
    new-instance v0, Lkawa/ReplEditorKit;

    invoke-direct {v0, p0}, Lkawa/ReplEditorKit;-><init>(Lkawa/ReplPane;)V

    return-object v0
.end method

.method enter()V
    .locals 10

    .line 91
    invoke-virtual {p0}, Lkawa/ReplPane;->getCaretPosition()I

    move-result v0

    .line 92
    .local v0, "pos":I
    iget-object v1, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v1, v1, Lkawa/ReplDocument;->content:Lgnu/kawa/swingviews/SwingContent;

    iget-object v1, v1, Lgnu/kawa/swingviews/SwingContent;->buffer:Lgnu/lists/CharBuffer;

    .line 93
    .local v1, "b":Lgnu/lists/CharBuffer;
    invoke-virtual {v1}, Lgnu/lists/CharBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 94
    .local v2, "len":I
    iget-object v3, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    const/4 v4, -0x1

    iput v4, v3, Lkawa/ReplDocument;->endMark:I

    .line 95
    iget-object v3, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v3, v3, Lkawa/ReplDocument;->outputMark:I

    const/16 v4, 0xa

    if-lt v0, v3, :cond_3

    .line 97
    invoke-virtual {v1, v4, v0}, Lgnu/lists/CharBuffer;->indexOf(II)I

    move-result v3

    .line 98
    .local v3, "lineAfterCaret":I
    if-ne v3, v2, :cond_1

    .line 100
    iget-object v5, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v5, v5, Lkawa/ReplDocument;->outputMark:I

    if-le v2, v5, :cond_0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v5}, Lgnu/lists/CharBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_0

    .line 101
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v4, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    const-string v5, "\n"

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Lkawa/ReplDocument;->insertString(ILjava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 105
    :cond_1
    :goto_0
    iget-object v4, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iput v3, v4, Lkawa/ReplDocument;->endMark:I

    .line 111
    iget-object v4, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v5, v4, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    monitor-enter v5

    .line 113
    :try_start_0
    iget-object v4, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v4, v4, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    if-gt v0, v3, :cond_2

    .line 116
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Lkawa/ReplPane;->setCaretPosition(I)V

    .line 117
    .end local v3    # "lineAfterCaret":I
    :cond_2
    goto :goto_3

    .line 114
    .restart local v3    # "lineAfterCaret":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 120
    .end local v3    # "lineAfterCaret":I
    :cond_3
    const/4 v3, 0x0

    if-nez v0, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v1, v4, v5}, Lgnu/lists/CharBuffer;->lastIndexOf(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 121
    .local v5, "lineBefore":I
    :goto_1
    iget-object v6, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    invoke-virtual {v6, v5}, Lkawa/ReplDocument;->getCharacterElement(I)Ljavax/swing/text/Element;

    move-result-object v6

    .line 122
    .local v6, "el":Ljavax/swing/text/Element;
    invoke-virtual {v1, v4, v0}, Lgnu/lists/CharBuffer;->indexOf(II)I

    move-result v7

    .line 124
    .local v7, "lineAfter":I
    invoke-interface {v6}, Ljavax/swing/text/Element;->getAttributes()Ljavax/swing/text/AttributeSet;

    move-result-object v8

    sget-object v9, Lkawa/ReplDocument;->promptStyle:Ljavax/swing/text/Style;

    invoke-interface {v8, v9}, Ljavax/swing/text/AttributeSet;->isEqual(Ljavax/swing/text/AttributeSet;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 125
    invoke-interface {v6}, Ljavax/swing/text/Element;->getEndOffset()I

    move-result v5

    .line 127
    :cond_5
    if-gez v7, :cond_6

    .line 128
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v2}, Lgnu/lists/CharBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "str":Ljava/lang/String;
    goto :goto_2

    .line 130
    .end local v4    # "str":Ljava/lang/String;
    :cond_6
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v5, v4}, Lgnu/lists/CharBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 131
    .restart local v4    # "str":Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v8, v8, Lkawa/ReplDocument;->outputMark:I

    invoke-virtual {p0, v8}, Lkawa/ReplPane;->setCaretPosition(I)V

    .line 132
    iget-object v8, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    sget-object v9, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    invoke-virtual {v8, v4, v9}, Lkawa/ReplDocument;->write(Ljava/lang/String;Ljavax/swing/text/AttributeSet;)V

    .line 134
    iget-object v8, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v8, v8, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    if-eqz v8, :cond_7

    .line 135
    iget-object v8, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v8, v8, Lkawa/ReplDocument;->in_r:Lgnu/text/QueueReader;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v4, v3, v9}, Lgnu/text/QueueReader;->append(Ljava/lang/CharSequence;II)Lgnu/text/QueueReader;

    .line 138
    .end local v4    # "str":Ljava/lang/String;
    .end local v5    # "lineBefore":I
    .end local v6    # "el":Ljavax/swing/text/Element;
    .end local v7    # "lineAfter":I
    :cond_7
    :goto_3
    return-void
.end method

.method public getInputAttributes()Ljavax/swing/text/MutableAttributeSet;
    .locals 1

    .line 142
    sget-object v0, Lkawa/ReplDocument;->inputStyle:Ljavax/swing/text/Style;

    return-object v0
.end method

.method public getStderr()Lgnu/mapping/OutPort;
    .locals 1

    .line 163
    iget-object v0, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v0, v0, Lkawa/ReplDocument;->err_stream:Lkawa/ReplPaneOutPort;

    return-object v0
.end method

.method public getStdout()Lgnu/mapping/OutPort;
    .locals 1

    .line 160
    iget-object v0, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget-object v0, v0, Lkawa/ReplDocument;->out_stream:Lkawa/ReplPaneOutPort;

    return-object v0
.end method

.method public keyPressed(Ljava/awt/event/KeyEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .line 146
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->getKeyCode()I

    move-result v0

    .line 147
    .local v0, "code":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lkawa/ReplPane;->enter()V

    .line 150
    invoke-virtual {p1}, Ljava/awt/event/KeyEvent;->consume()V

    .line 152
    :cond_0
    return-void
.end method

.method public keyReleased(Ljava/awt/event/KeyEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .line 154
    return-void
.end method

.method public keyTyped(Ljava/awt/event/KeyEvent;)V
    .locals 0
    .param p1, "e"    # Ljava/awt/event/KeyEvent;

    .line 157
    return-void
.end method

.method public removeNotify()V
    .locals 2

    .line 59
    invoke-super {p0}, Ljavax/swing/JTextPane;->removeNotify()V

    .line 60
    iget-object v0, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    iget v1, v0, Lkawa/ReplDocument;->paneCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lkawa/ReplDocument;->paneCount:I

    if-nez v1, :cond_0

    .line 61
    iget-object v0, p0, Lkawa/ReplPane;->document:Lkawa/ReplDocument;

    invoke-virtual {v0}, Lkawa/ReplDocument;->close()V

    .line 62
    :cond_0
    return-void
.end method
