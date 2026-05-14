.class public Lgnu/commonlisp/lisp/PrimOps;
.super Lgnu/expr/ModuleBody;
.source "PrimOps.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrimOps.scm\nScheme\n*S Scheme\n*F\n+ 1 PrimOps.scm\n/u2/home/jis/ai2-kawa/gnu/commonlisp/lisp/PrimOps.scm\n*L\n5#1,155:5\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/commonlisp/lisp/PrimOps;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit30:Lgnu/mapping/SimpleSymbol;

.field static final Lit31:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final apply:Lgnu/expr/ModuleMethod;

.field public static final aref:Lgnu/expr/ModuleMethod;

.field public static final arrayp:Lgnu/expr/ModuleMethod;

.field public static final aset:Lgnu/expr/ModuleMethod;

.field public static final boundp:Lgnu/expr/ModuleMethod;

.field public static final car:Lgnu/expr/ModuleMethod;

.field public static final cdr:Lgnu/expr/ModuleMethod;

.field public static final char$Mnto$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final fillarray:Lgnu/expr/ModuleMethod;

.field public static final fset:Lgnu/expr/ModuleMethod;

.field public static final functionp:Lgnu/expr/ModuleMethod;

.field public static final get:Lgnu/expr/ModuleMethod;

.field public static final length:Lgnu/expr/ModuleMethod;

.field public static final make$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnget:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnmember:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnput:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnremprop:Lgnu/expr/ModuleMethod;

.field public static final put:Lgnu/expr/ModuleMethod;

.field public static final set:Lgnu/expr/ModuleMethod;

.field public static final setcar:Lgnu/expr/ModuleMethod;

.field public static final setcdr:Lgnu/expr/ModuleMethod;

.field public static final setplist:Lgnu/expr/ModuleMethod;

.field public static final stringp:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnname:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnplist:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnvalue:Lgnu/expr/ModuleMethod;

.field public static final symbolp:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "functionp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-to-string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "substring"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "stringp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "fillarray"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "aset"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "aref"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "arrayp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "length"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "apply"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "fset"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-function"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-value"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "put"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "get"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "plist-member"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "plist-remprop"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "plist-put"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "plist-get"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "setplist"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-plist"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-name"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbolp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "boundp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "setcdr"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "setcar"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "cdr"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "car"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "t"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/commonlisp/lisp/PrimOps;

    invoke-direct {v0}, Lgnu/commonlisp/lisp/PrimOps;-><init>()V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->$instance:Lgnu/commonlisp/lisp/PrimOps;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/commonlisp/lisp/PrimOps;->$instance:Lgnu/commonlisp/lisp/PrimOps;

    sget-object v2, Lgnu/commonlisp/lisp/PrimOps;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->car:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->cdr:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/commonlisp/lisp/PrimOps;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x3

    const/16 v5, 0x2002

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->setcar:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->setcdr:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->boundp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->symbolp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnplist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->setplist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/commonlisp/lisp/PrimOps;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xa

    const/16 v6, 0x3002

    invoke-direct {v0, v1, v3, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnget:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/commonlisp/lisp/PrimOps;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xc

    const/16 v7, 0x3003

    invoke-direct {v0, v1, v3, v2, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnput:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnremprop:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnmember:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->get:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->put:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnvalue:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->set:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->fset:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/commonlisp/lisp/PrimOps;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v3, -0xfff

    const/16 v8, 0x16

    invoke-direct {v0, v1, v8, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->apply:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->length:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->arrayp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x19

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit24:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->aref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->aset:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->fillarray:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->stringp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1d

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->make$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1e

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit29:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->substring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x20

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit30:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->char$Mnto$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x21

    sget-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit31:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->functionp:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/commonlisp/lisp/PrimOps;->$instance:Lgnu/commonlisp/lisp/PrimOps;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs apply(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "func"    # Ljava/lang/Object;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 110
    nop

    .line 111
    invoke-static {p0}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0}, Lgnu/commonlisp/lisp/PrimOps;->symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Procedure;

    :goto_0
    const/4 v1, 0x0

    sget-object v2, Lgnu/commonlisp/lisp/PrimOps;->apply:Lgnu/expr/ModuleMethod;

    invoke-static {p1, v1, v2}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static aref(Lgnu/lists/SimpleVector;I)Ljava/lang/Object;
    .locals 1
    .param p0, "array"    # Lgnu/lists/SimpleVector;
    .param p1, "k"    # I

    .line 123
    nop

    .line 126
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static arrayp(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 120
    nop

    .line 121
    instance-of v0, p0, Lgnu/lists/SimpleVector;

    return v0
.end method

.method public static aset(Lgnu/lists/SimpleVector;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "array"    # Lgnu/lists/SimpleVector;
    .param p1, "k"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 128
    nop

    .line 131
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-object p2
.end method

.method public static boundp(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "symbol"    # Ljava/lang/Object;

    .line 19
    nop

    .line 20
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->isBound(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static car(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 5
    nop

    .line 6
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static cdr(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 8
    nop

    .line 9
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static charToString(Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 3
    .param p0, "ch"    # Ljava/lang/Object;

    .line 155
    nop

    .line 156
    new-instance v0, Lgnu/lists/FString;

    const/4 v1, 0x1

    invoke-static {p0}, Lgnu/commonlisp/lang/CommonLisp;->asChar(Ljava/lang/Object;)C

    move-result v2

    invoke-direct {v0, v1, v2}, Lgnu/lists/FString;-><init>(IC)V

    return-object v0
.end method

.method public static fillarray(Lgnu/lists/SimpleVector;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "array"    # Lgnu/lists/SimpleVector;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 134
    nop

    .line 135
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->fill(Ljava/lang/Object;)V

    .line 136
    return-object p1
.end method

.method public static fset(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .line 105
    nop

    .line 106
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lgnu/commonlisp/lang/Symbols;->setFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static functionp(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 158
    nop

    .line 159
    instance-of v0, p0, Lgnu/mapping/Procedure;

    return v0
.end method

.method public static get(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, p1, v0}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "symbol"    # Lgnu/mapping/Symbol;
    .param p1, "property"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 62
    nop

    .line 63
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static length(Lgnu/lists/Sequence;)I
    .locals 1
    .param p0, "x"    # Lgnu/lists/Sequence;

    .line 117
    nop

    .line 118
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v0

    return v0
.end method

.method public static makeString(ILjava/lang/Object;)Lgnu/lists/FString;
    .locals 2
    .param p0, "count"    # I
    .param p1, "ch"    # Ljava/lang/Object;

    .line 143
    nop

    .line 144
    new-instance v0, Lgnu/lists/FString;

    invoke-static {p1}, Lgnu/commonlisp/lang/CommonLisp;->asChar(Ljava/lang/Object;)C

    move-result v1

    invoke-direct {v0, p0, v1}, Lgnu/lists/FString;-><init>(IC)V

    return-object v0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 47
    nop

    .line 48
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static plistMember(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;

    .line 56
    nop

    .line 57
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-static {p0, p1, v0}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_0

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit0:Lgnu/mapping/SimpleSymbol;

    :goto_0
    return-object v0
.end method

.method public static plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 50
    nop

    .line 51
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static plistRemprop(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;

    .line 53
    nop

    .line 54
    invoke-static {p0, p1}, Lgnu/mapping/PropertyLocation;->plistRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 65
    nop

    .line 66
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 80
    nop

    .line 81
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public static setcar(Lgnu/lists/Pair;Ljava/lang/Object;)V
    .locals 0
    .param p0, "p"    # Lgnu/lists/Pair;
    .param p1, "x"    # Ljava/lang/Object;

    .line 11
    nop

    .line 12
    invoke-static {p0, p1}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    return-void
.end method

.method public static setcdr(Lgnu/lists/Pair;Ljava/lang/Object;)V
    .locals 0
    .param p0, "p"    # Lgnu/lists/Pair;
    .param p1, "x"    # Ljava/lang/Object;

    .line 14
    nop

    .line 15
    invoke-static {p0, p1}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    return-void
.end method

.method public static setplist(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "plist"    # Ljava/lang/Object;

    .line 43
    nop

    .line 44
    invoke-static {p0, p1}, Lgnu/mapping/PropertyLocation;->setPropertyList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-object p1
.end method

.method public static stringp(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 140
    nop

    .line 141
    instance-of v0, p0, Ljava/lang/CharSequence;

    return v0
.end method

.method public static substring(Ljava/lang/CharSequence;Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, p1, v0}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object p0

    return-object p0
.end method

.method public static substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "from"    # Ljava/lang/Object;
    .param p2, "to"    # Ljava/lang/Object;

    .line 146
    nop

    .line 147
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p2, v0, :cond_0

    .line 148
    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 149
    sget-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    .line 150
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    sget-object v0, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 151
    sget-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_2

    .line 152
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 153
    :cond_2
    new-instance v0, Lgnu/lists/FString;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v2, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "symbol"    # Ljava/lang/Object;

    .line 97
    nop

    .line 98
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getFunctionBinding(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "symbol"    # Ljava/lang/Object;

    .line 27
    nop

    .line 28
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getPrintName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolPlist(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "symbol"    # Ljava/lang/Object;

    .line 40
    nop

    .line 41
    invoke-static {p0}, Lgnu/mapping/PropertyLocation;->getPropertyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "sym"    # Ljava/lang/Object;

    .line 73
    nop

    .line 74
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolp(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 24
    nop

    .line 25
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 158
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->functionp(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_0
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    return-object p1

    .line 155
    :sswitch_1
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->charToString(Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1

    .line 140
    :sswitch_2
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->stringp(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_1

    :cond_1
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_1
    return-object p1

    .line 120
    :sswitch_3
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->arrayp(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_2

    :cond_2
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_2
    return-object p1

    .line 117
    :sswitch_4
    :try_start_0
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->length(Lgnu/lists/Sequence;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "length"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 97
    :sswitch_5
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 73
    :sswitch_6
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 40
    :sswitch_7
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolPlist(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :sswitch_8
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :sswitch_9
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolp(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_3

    :cond_3
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_3
    return-object p1

    .line 19
    :sswitch_a
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->boundp(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_4

    :cond_4
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_4
    return-object p1

    .line 8
    :sswitch_b
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->cdr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :sswitch_c
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->car(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x12 -> :sswitch_6
        0x14 -> :sswitch_5
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1c -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "aref"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "substring"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 143
    :sswitch_1
    :try_start_1
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p1, p3}, Lgnu/commonlisp/lisp/PrimOps;->makeString(ILjava/lang/Object;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "make-string"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 134
    :sswitch_2
    :try_start_2
    check-cast p2, Lgnu/lists/SimpleVector;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->fillarray(Lgnu/lists/SimpleVector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "fillarray"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 123
    :sswitch_3
    :try_start_3
    check-cast p2, Lgnu/lists/SimpleVector;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_3

    invoke-static {p2, p1}, Lgnu/commonlisp/lisp/PrimOps;->aref(Lgnu/lists/SimpleVector;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 125
    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 124
    :catch_4
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 105
    :sswitch_4
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->fset(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 80
    :sswitch_5
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 62
    :sswitch_6
    :try_start_5
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_5
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "get"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 56
    :sswitch_7
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->plistMember(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :sswitch_8
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->plistRemprop(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 47
    :sswitch_9
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :sswitch_a
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->setplist(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :sswitch_b
    :try_start_6
    check-cast p2, Lgnu/lists/Pair;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->setcdr(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_6
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "setcdr"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 11
    :sswitch_c
    :try_start_7
    check-cast p2, Lgnu/lists/Pair;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->setcar(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_7
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "setcar"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_c
        0x4 -> :sswitch_b
        0x9 -> :sswitch_a
        0xa -> :sswitch_9
        0xd -> :sswitch_8
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x13 -> :sswitch_5
        0x15 -> :sswitch_4
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x1d -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "aset"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "substring"

    invoke-direct {p3, p1, p4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 128
    :sswitch_1
    :try_start_1
    check-cast p2, Lgnu/lists/SimpleVector;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {p2, p1, p4}, Lgnu/commonlisp/lisp/PrimOps;->aset(Lgnu/lists/SimpleVector;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 129
    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 128
    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 65
    :sswitch_2
    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 62
    :sswitch_3
    :try_start_3
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "get"

    invoke-direct {p3, p1, p4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 50
    :sswitch_4
    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 47
    :sswitch_5
    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xf -> :sswitch_3
        0x11 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 110
    const/4 p1, 0x0

    aget-object v0, p2, p1

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    new-array v1, p1, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    invoke-static {v0, v1}, Lgnu/commonlisp/lisp/PrimOps;->apply(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, p1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 158
    :sswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 155
    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 140
    :sswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 120
    :sswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 117
    :sswitch_4
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_0

    const p1, -0xbffff

    return p1

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 97
    :sswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 73
    :sswitch_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 40
    :sswitch_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 27
    :sswitch_8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 24
    :sswitch_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 19
    :sswitch_a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 8
    :sswitch_b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 5
    :sswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0x12 -> :sswitch_6
        0x14 -> :sswitch_5
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1c -> :sswitch_2
        0x20 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 146
    :sswitch_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_0
    return v1

    .line 143
    :sswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 134
    :sswitch_2
    instance-of v0, p2, Lgnu/lists/SimpleVector;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 123
    :sswitch_3
    instance-of v0, p2, Lgnu/lists/SimpleVector;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 105
    :sswitch_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 80
    :sswitch_5
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 62
    :sswitch_6
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_3

    return v1

    :cond_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 56
    :sswitch_7
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 53
    :sswitch_8
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 47
    :sswitch_9
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 43
    :sswitch_a
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 14
    :sswitch_b
    instance-of v0, p2, Lgnu/lists/Pair;

    if-nez v0, :cond_4

    return v1

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 11
    :sswitch_c
    instance-of v0, p2, Lgnu/lists/Pair;

    if-nez v0, :cond_5

    return v1

    :cond_5
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_c
        0x4 -> :sswitch_b
        0x9 -> :sswitch_a
        0xa -> :sswitch_9
        0xd -> :sswitch_8
        0xe -> :sswitch_7
        0xf -> :sswitch_6
        0x13 -> :sswitch_5
        0x15 -> :sswitch_4
        0x19 -> :sswitch_3
        0x1b -> :sswitch_2
        0x1d -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x3

    sparse-switch v0, :sswitch_data_0

    .line 47
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 146
    :sswitch_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_0
    return v1

    .line 128
    :sswitch_1
    instance-of v0, p2, Lgnu/lists/SimpleVector;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 65
    :sswitch_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 62
    :sswitch_3
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 50
    :sswitch_4
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 47
    :sswitch_5
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xf -> :sswitch_3
        0x11 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 110
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x5

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 5
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 8
    nop

    .line 11
    nop

    .line 14
    nop

    .line 19
    nop

    .line 24
    nop

    .line 27
    nop

    .line 40
    nop

    .line 43
    nop

    .line 47
    nop

    .line 50
    nop

    .line 53
    nop

    .line 56
    nop

    .line 62
    nop

    .line 65
    nop

    .line 73
    nop

    .line 80
    nop

    .line 97
    nop

    .line 105
    nop

    .line 110
    nop

    .line 117
    nop

    .line 120
    nop

    .line 123
    nop

    .line 128
    nop

    .line 134
    nop

    .line 140
    nop

    .line 143
    nop

    .line 146
    nop

    .line 155
    nop

    .line 158
    return-void
.end method
