.class Lgnu/kawa/swingviews/ProcActionListener;
.super Ljava/lang/Object;
.source "SwingDisplay.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field proc:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 0
    .param p1, "proc"    # Lgnu/mapping/Procedure;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgnu/kawa/swingviews/ProcActionListener;->proc:Lgnu/mapping/Procedure;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 110
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/swingviews/ProcActionListener;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    nop

    .line 116
    return-void

    .line 112
    :catchall_0
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Lgnu/mapping/WrappedException;

    invoke-direct {v1, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
