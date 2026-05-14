.class public Lgnu/kawa/slib/readtable;
.super Lgnu/expr/ModuleBody;
.source "readtable.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nreadtable.scm\nScheme\n*S Scheme\n*F\n+ 1 readtable.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/readtable.scm\n*L\n1#1,83:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/readtable;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field public static final current$Mnreadtable:Lgnu/expr/ModuleMethod;

.field public static final define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

.field public static final get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

.field public static final make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final readtable$Qu:Lgnu/expr/ModuleMethod;

.field public static final set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "define-reader-ctor"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "get-dispatch-macro-table"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set-dispatch-macro-character"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-dispatch-macro-character"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set-macro-character"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "readtable?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "current-readtable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/kawa/slib/readtable;

    invoke-direct {v0}, Lgnu/kawa/slib/readtable;-><init>()V

    sput-object v0, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    sget-object v2, Lgnu/kawa/slib/readtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->current$Mnreadtable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/readtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1001

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->readtable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/readtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x4002

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/readtable;->Lit3:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x3001

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/readtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x4003

    const/16 v4, 0x9

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/readtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xb

    const/16 v4, 0x3002

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lgnu/kawa/slib/readtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/readtable;->define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static currentReadtable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 1

    .line 1
    nop

    .line 2
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    return-object v0
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 1
    .param p0, "key"    # Lgnu/mapping/Symbol;
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 82
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0, p1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/mapping/Procedure;)V

    return-void
.end method

.method public static getDispatchMacroTable(CC)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 3
    .param p0, "disp$Mnchar"    # C
    .param p1, "sub$Mnchar"    # C
    .param p2, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 74
    nop

    .line 77
    nop

    .line 78
    invoke-virtual {p2, p0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 77
    .local v1, "disp$Mnentry":Lgnu/kawa/lispexpr/ReaderDispatch;
    nop

    .line 79
    invoke-virtual {v1, p1}, Lgnu/kawa/lispexpr/ReaderDispatch;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v2

    .local v0, "sub$Mnentry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v0, v2

    .line 80
    if-nez v0, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v2

    .end local v0    # "sub$Mnentry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .end local v1    # "disp$Mnentry":Lgnu/kawa/lispexpr/ReaderDispatch;
    :cond_0
    return-object v0

    .line 78
    .end local p0    # "disp$Mnchar":C
    .end local p1    # "sub$Mnchar":C
    .end local p2    # "readtable":Lgnu/kawa/lispexpr/ReadTable;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "disp-entry"

    const/4 v1, -0x2

    invoke-direct {p1, p0, p2, v1, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static isReadtable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 5
    nop

    .line 6
    instance-of v0, p0, Lgnu/kawa/lispexpr/ReadTable;

    return v0
.end method

.method public static makeDispatchMacroCharacter(C)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZ)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V
    .locals 1
    .param p0, "char"    # C
    .param p1, "non$Mnterminating"    # Z
    .param p2, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 57
    nop

    .line 62
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatch;

    invoke-direct {v0, p1}, Lgnu/kawa/lispexpr/ReaderDispatch;-><init>(Z)V

    invoke-virtual {p2, p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V
    .locals 3
    .param p0, "disp$Mnchar"    # C
    .param p1, "sub$Mnchar"    # C
    .param p2, "function"    # Ljava/lang/Object;
    .param p3, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 65
    nop

    .line 69
    nop

    .line 70
    invoke-virtual {p3, p0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    :try_start_0
    check-cast v0, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 71
    .local v0, "entry":Lgnu/kawa/lispexpr/ReaderDispatch;
    new-instance v1, Lgnu/kawa/lispexpr/ReaderDispatchMacro;

    :try_start_1
    move-object v2, p2

    check-cast v2, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-direct {v1, v2}, Lgnu/kawa/lispexpr/ReaderDispatchMacro;-><init>(Lgnu/mapping/Procedure;)V

    invoke-virtual {v0, p1, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .end local v0    # "entry":Lgnu/kawa/lispexpr/ReaderDispatch;
    return-void

    .line 72
    .end local p0    # "disp$Mnchar":C
    .end local p1    # "sub$Mnchar":C
    .end local p2    # "function":Ljava/lang/Object;
    .end local p3    # "readtable":Lgnu/kawa/lispexpr/ReadTable;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p3, "gnu.kawa.lispexpr.ReaderDispatchMacro.<init>(gnu.mapping.Procedure)"

    const/4 v0, 0x1

    invoke-direct {p1, p0, p3, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 70
    :catch_1
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "entry"

    const/4 p3, -0x2

    invoke-direct {p1, p0, p2, p3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static setMacroCharacter(CLjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;Z)V
    .locals 1

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V
    .locals 2
    .param p0, "char"    # C
    .param p1, "function"    # Ljava/lang/Object;
    .param p2, "non$Mnterminating"    # Z
    .param p3, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 25
    nop

    .line 30
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMacro;

    :try_start_0
    move-object v1, p1

    check-cast v1, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v0, v1, p2}, Lgnu/kawa/lispexpr/ReaderMacro;-><init>(Lgnu/mapping/Procedure;Z)V

    invoke-virtual {p3, p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void

    .line 31
    .end local p0    # "char":C
    .end local p1    # "function":Ljava/lang/Object;
    .end local p2    # "non$Mnterminating":Z
    .end local p3    # "readtable":Lgnu/kawa/lispexpr/ReadTable;
    :catch_0
    move-exception p0

    new-instance p2, Lgnu/mapping/WrongType;

    const-string p3, "gnu.kawa.lispexpr.ReaderMacro.<init>(gnu.mapping.Procedure,boolean)"

    const/4 v0, 0x1

    invoke-direct {p2, p0, p3, v0, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 57
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(C)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 58
    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "make-dispatch-macro-character"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 5
    :sswitch_1
    invoke-static {p2}, Lgnu/kawa/slib/readtable;->isReadtable(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "define-reader-ctor"

    const-string v1, "get-dispatch-macro-table"

    const-string v2, "make-dispatch-macro-character"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 74
    :sswitch_1
    :try_start_2
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {p1, p2}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CC)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 75
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 57
    :sswitch_2
    :try_start_4
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    if-eq p3, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {p1, v5}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 60
    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 58
    :catch_5
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :sswitch_3
    :try_start_6
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p1, p3}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_6
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "set-macro-character"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_2
        0xb -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const-string v0, "set-dispatch-macro-character"

    const-string v1, "set-macro-character"

    const-string v2, "define-reader-ctor"

    const-string v3, "get-dispatch-macro-table"

    const-string v4, "make-dispatch-macro-character"

    iget v5, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v5, :sswitch_data_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 83
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 82
    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v8, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 74
    :sswitch_1
    :try_start_3
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3

    invoke-static {p1, p2, p4}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 76
    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 75
    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v8, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v3, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 65
    :sswitch_2
    :try_start_6
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_6

    invoke-static {p1, p2, p4}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 66
    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v8, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_7
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 57
    :sswitch_3
    :try_start_8
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_a

    :try_start_9
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    if-eq p3, p2, :cond_0

    const/4 v6, 0x1

    :cond_0
    :try_start_a
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_8

    invoke-static {p1, v6, p4}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 61
    :catch_8
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 60
    :catch_9
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v8, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 58
    :catch_a
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v4, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :sswitch_4
    :try_start_b
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_c

    :try_start_c
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_b

    if-eq p4, p2, :cond_1

    const/4 v6, 0x1

    :cond_1
    invoke-static {p1, p3, v6}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 28
    :catch_b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 25
    :catch_c
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x6 -> :sswitch_3
        0x9 -> :sswitch_2
        0xb -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "set-dispatch-macro-character"

    const-string v1, "set-macro-character"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 65
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast p5, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {p1, p2, p4, p5}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 68
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 66
    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :sswitch_1
    :try_start_3
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    if-eq p4, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_5
    check-cast p5, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3

    invoke-static {p1, p3, v4, p5}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 29
    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v3, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 28
    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v1, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 25
    :catch_5
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 5
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 57
    :sswitch_0
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_0
    const p1, -0xbffff

    return p1

    .line 5
    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffe

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, -0xbffff

    sparse-switch v0, :sswitch_data_0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 82
    :sswitch_0
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    return v4

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_1

    return v1

    :cond_1
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 74
    :sswitch_1
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_3

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_2

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2
    return v1

    :cond_3
    return v4

    .line 57
    :sswitch_2
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_4

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_4
    return v4

    .line 25
    :sswitch_3
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_5

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_5
    return v4

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_2
        0xb -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffd

    const v2, -0xbfffe

    const/4 v3, 0x0

    const/4 v4, 0x3

    const v5, -0xbffff

    sparse-switch v0, :sswitch_data_0

    .line 25
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 82
    :sswitch_0
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    return v5

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_1

    return v2

    :cond_1
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_2

    return v1

    :cond_2
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 74
    :sswitch_1
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_5

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_4

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_3

    return v1

    :cond_3
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_4
    return v2

    :cond_5
    return v5

    .line 65
    :sswitch_2
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_7

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_6

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_6
    return v2

    :cond_7
    return v5

    .line 57
    :sswitch_3
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_9

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_8

    return v1

    :cond_8
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_9
    return v5

    .line 25
    :sswitch_4
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_a

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_a
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x6 -> :sswitch_3
        0x9 -> :sswitch_2
        0xb -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffc

    const/4 v2, 0x0

    const/4 v3, 0x4

    const v4, -0xbffff

    sparse-switch v0, :sswitch_data_0

    .line 25
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 65
    :sswitch_0
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_2

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_1

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of p2, p5, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_0

    return v1

    :cond_0
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1
    const p1, -0xbfffe

    return p1

    :cond_2
    return v4

    .line 25
    :sswitch_1
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_4

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of p2, p5, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_3

    return v1

    :cond_3
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_4
    return v4

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 5
    nop

    .line 25
    nop

    .line 57
    nop

    .line 65
    nop

    .line 74
    nop

    .line 82
    return-void
.end method
