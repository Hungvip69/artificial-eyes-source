.class public Lkawa/lib/misc;
.super Lgnu/expr/ModuleBody;
.source "misc.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmisc.scm\nScheme\n*S Scheme\n*F\n+ 1 misc.scm\n/u2/home/jis/ai2-kawa/kawa/lib/misc.scm\n*L\n1#1,132:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/misc;

.field static final Lit0:Lgnu/math/IntNum;

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

.field static final Lit2:Lgnu/expr/Keyword;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final add$Mnprocedure$Mnproperties:Lgnu/expr/ModuleMethod;

.field public static final base$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final boolean$Qu:Lgnu/expr/ModuleMethod;

.field public static final dynamic$Mnwind:Lgnu/expr/ModuleMethod;

.field public static final environment$Mnbound$Qu:Lgnu/expr/ModuleMethod;

.field public static final error:Lgnu/expr/ModuleMethod;

.field public static final force:Lgnu/expr/ModuleMethod;

.field public static final gentemp:Lgnu/expr/ModuleMethod;

.field public static final interaction$Mnenvironment:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field public static final namespace$Mnprefix:Lgnu/expr/ModuleMethod;

.field public static final namespace$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final null$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public static final procedure$Mnproperty:Lgnu/expr/GenericProc;

.field static final procedure$Mnproperty$Fn3:Lgnu/expr/ModuleMethod;

.field public static final procedure$Qu:Lgnu/expr/ModuleMethod;

.field public static final scheme$Mnimplementation$Mnversion:Lgnu/expr/ModuleMethod;

.field public static final scheme$Mnreport$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public static final set$Mnprocedure$Mnproperty$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mn$Grsymbol:Lgnu/expr/ModuleMethod;

.field public static final symbol$Eq$Qu:Lgnu/expr/GenericProc;

.field public static final symbol$Mn$Grstring:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnlocal$Mnname:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnnamespace:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnnamespace$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnprefix:Lgnu/expr/ModuleMethod;

.field public static final symbol$Qu:Lgnu/expr/ModuleMethod;

.field public static final values:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-procedure-properties"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "gentemp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "base-uri"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "force"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "dynamic-wind"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "procedure-property"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "set-procedure-property!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "scheme-implementation-version"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "interaction-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "scheme-report-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "null-environment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "environment-bound?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "values"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "procedure?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string->symbol"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "namespace-prefix"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "namespace-uri"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-prefix"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-namespace-uri"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-namespace"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-local-name"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol->string"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "boolean?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "misc-error"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit3:Lgnu/mapping/SimpleSymbol;

    const-string v0, "setter"

    invoke-static {v0}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v0

    sput-object v0, Lkawa/lib/misc;->Lit2:Lgnu/expr/Keyword;

    const/4 v0, 0x5

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lkawa/lib/misc;->Lit1:Lgnu/math/IntNum;

    const/4 v1, 0x4

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    sput-object v2, Lkawa/lib/misc;->Lit0:Lgnu/math/IntNum;

    new-instance v2, Lkawa/lib/misc;

    invoke-direct {v2}, Lkawa/lib/misc;-><init>()V

    sput-object v2, Lkawa/lib/misc;->$instance:Lkawa/lib/misc;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v3, Lkawa/lib/misc;->$instance:Lkawa/lib/misc;

    sget-object v4, Lkawa/lib/misc;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x3

    const/16 v6, 0x1001

    invoke-direct {v2, v3, v5, v4, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/misc;->boolean$Qu:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    sget-object v4, Lkawa/lib/misc;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v2, v3, v1, v4, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/misc;->symbol$Qu:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/misc;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v1, v3, v0, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc;->symbol$Mn$Grstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v4, 0x2002

    invoke-direct {v0, v3, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/u2/home/jis/ai2-kawa/kawa/lib/misc.scm:25"

    const-string v5, "source-location"

    invoke-virtual {v0, v5, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lkawa/lib/misc;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x7

    const/16 v7, -0xffe

    invoke-direct {v0, v3, v1, v2, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "/u2/home/jis/ai2-kawa/kawa/lib/misc.scm:27"

    invoke-virtual {v0, v5, v1}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lkawa/lib/misc;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8

    sget-object v2, Lkawa/lib/misc;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->symbol$Mnlocal$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9

    sget-object v2, Lkawa/lib/misc;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->symbol$Mnnamespace:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa

    sget-object v2, Lkawa/lib/misc;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->symbol$Mnnamespace$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb

    sget-object v2, Lkawa/lib/misc;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->symbol$Mnprefix:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    sget-object v2, Lkawa/lib/misc;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->namespace$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    sget-object v2, Lkawa/lib/misc;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->namespace$Mnprefix:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    sget-object v2, Lkawa/lib/misc;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->string$Mn$Grsymbol:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xf

    sget-object v2, Lkawa/lib/misc;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->procedure$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/misc;->Lit15:Lgnu/mapping/SimpleSymbol;

    const/16 v2, -0x1000

    const/16 v5, 0x10

    invoke-direct {v0, v3, v5, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x11

    sget-object v2, Lkawa/lib/misc;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->environment$Mnbound$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/misc;->Lit17:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x12

    const/16 v4, 0x1000

    invoke-direct {v0, v3, v2, v1, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->null$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x14

    sget-object v2, Lkawa/lib/misc;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->scheme$Mnreport$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/misc;->Lit19:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x15

    const/4 v5, 0x0

    invoke-direct {v0, v3, v2, v1, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->interaction$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x16

    sget-object v2, Lkawa/lib/misc;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->scheme$Mnimplementation$Mnversion:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/misc;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x17

    const/16 v7, 0x3003

    invoke-direct {v0, v3, v2, v1, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->set$Mnprocedure$Mnproperty$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/misc;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x3002

    const/16 v8, 0x18

    invoke-direct {v0, v3, v8, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->procedure$Mnproperty$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1a

    sget-object v2, Lkawa/lib/misc;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->dynamic$Mnwind:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1b

    sget-object v2, Lkawa/lib/misc;->Lit24:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->force:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/misc;->Lit25:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x1c

    const/16 v6, -0xfff

    invoke-direct {v0, v3, v2, v1, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->error:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1d

    sget-object v2, Lkawa/lib/misc;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->base$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1f

    sget-object v2, Lkawa/lib/misc;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->gentemp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x20

    sget-object v2, Lkawa/lib/misc;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v3, v1, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->add$Mnprocedure$Mnproperties:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/misc;->$instance:Lkawa/lib/misc;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs addProcedureProperties(Lgnu/expr/GenericProc;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "proc"    # Lgnu/expr/GenericProc;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 129
    nop

    .line 132
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    return-void
.end method

.method public static baseUri()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkawa/lib/misc;->baseUri(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static baseUri(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "node"    # Ljava/lang/Object;

    .line 111
    nop

    .line 112
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 113
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v1

    .local v0, "uri":Lgnu/text/Path;
    goto :goto_0

    .line 114
    .end local v0    # "uri":Lgnu/text/Path;
    :cond_0
    move-object v1, p0

    check-cast v1, Lgnu/kawa/xml/KNode;

    invoke-virtual {v1}, Lgnu/kawa/xml/KNode;->baseURI()Lgnu/text/Path;

    move-result-object v1

    .restart local v0    # "uri":Lgnu/text/Path;
    :goto_0
    move-object v0, v1

    .line 115
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "uri":Lgnu/text/Path;
    :cond_1
    return-object v0
.end method

.method public static dynamicWind(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "before"    # Ljava/lang/Object;
    .param p1, "thunk"    # Ljava/lang/Object;
    .param p2, "after"    # Ljava/lang/Object;

    .line 92
    nop

    .line 93
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :try_start_0
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-object v0

    :catchall_0
    move-exception v0

    .line 96
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    throw v0
.end method

.method public static error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 103
    .local v0, "args":Lgnu/lists/LList;
    new-instance v1, Lkawa/lib/misc$frame;

    invoke-direct {v1}, Lkawa/lib/misc$frame;-><init>()V

    iput-object p0, v1, Lkawa/lib/misc$frame;->msg:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 104
    iget-object v2, v1, Lkawa/lib/misc$frame;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-static {v2}, Lkawa/lib/ports;->callWithOutputString(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lkawa/lib/misc$frame;->msg:Ljava/lang/Object;

    .line 105
    nop

    .line 108
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v2, "result":Ljava/lang/Object;
    move-object v3, v0

    .local v3, "arg0":Ljava/lang/Object;
    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v5, :cond_0

    .line 107
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "arg0":Ljava/lang/Object;
    invoke-static {v2}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v0

    .line 109
    sget-object v2, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v3, Lkawa/standard/throw_name;->throwName:Lkawa/standard/throw_name;

    sget-object v4, Lkawa/lib/misc;->Lit3:Lgnu/mapping/SimpleSymbol;

    iget-object v1, v1, Lkawa/lib/misc$frame;->msg:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v1, v0}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 108
    .restart local v2    # "result":Ljava/lang/Object;
    .restart local v3    # "arg0":Ljava/lang/Object;
    :cond_0
    :try_start_0
    move-object v5, v3

    check-cast v5, Lgnu/lists/Pair;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, "arg0":Lgnu/lists/Pair;
    move-object v4, v5

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 106
    nop

    .local v6, "arg":Ljava/lang/Object;
    new-instance v7, Lkawa/lib/misc$frame0;

    invoke-direct {v7}, Lkawa/lib/misc$frame0;-><init>()V

    iput-object v6, v7, Lkawa/lib/misc$frame0;->arg:Ljava/lang/Object;

    .line 107
    iget-object v7, v7, Lkawa/lib/misc$frame0;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    invoke-static {v7}, Lkawa/lib/ports;->callWithOutputString(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "arg":Ljava/lang/Object;
    invoke-static {v6, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    move-object v3, v5

    goto :goto_0

    .line 109
    .end local v0    # "args":Lgnu/lists/LList;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "arg0":Ljava/lang/Object;
    .end local v4    # "arg0":Lgnu/lists/Pair;
    .end local p0    # "msg":Ljava/lang/Object;
    .end local p1    # "argsArray":[Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string v0, "arg0"

    const/4 v1, -0x2

    invoke-direct {p1, p0, v0, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static force(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .line 98
    nop

    .line 99
    invoke-static {p0}, Lkawa/lang/Promise;->force(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static gentemp()Lgnu/mapping/Symbol;
    .locals 1

    .line 126
    nop

    .line 127
    invoke-static {}, Lgnu/expr/Symbols;->gentemp()Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    return-object v0
.end method

.method public static interactionEnvironment()Lgnu/mapping/Environment;
    .locals 1

    .line 76
    nop

    .line 77
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method

.method public static isBoolean(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "x"    # Ljava/lang/Object;

    .line 15
    nop

    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p0, v0, :cond_0

    move v0, v3

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    const/4 v3, 0x0

    .local v0, "x":Z
    :goto_0
    move v0, v3

    if-eqz v0, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .end local v0    # "x":Z
    :goto_1
    return v1
.end method

.method public static isEnvironmentBound(Lgnu/mapping/Environment;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "sym"    # Ljava/lang/Object;

    .line 59
    nop

    .line 61
    invoke-static {p1}, Lgnu/kawa/lispexpr/LispLanguage;->langSymbolToSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v0

    return v0
.end method

.method public static isProcedure(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 52
    nop

    .line 53
    instance-of v0, p0, Lgnu/mapping/Procedure;

    const/4 v1, 0x0

    .local v0, "x":Z
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lgnu/kawa/lispexpr/LangObjType;

    move v0, v1

    .end local v0    # "x":Z
    :goto_0
    return v0
.end method

.method public static isSymbol(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 18
    nop

    .line 19
    instance-of v0, p0, Lgnu/mapping/Symbol;

    return v0
.end method

.method static lambda1(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z
    .locals 1
    .param p0, "s1"    # Lgnu/mapping/Symbol;
    .param p1, "s2"    # Lgnu/mapping/Symbol;

    .line 25
    nop

    .line 26
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    return v0
.end method

.method static lambda2$V(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;[Ljava/lang/Object;)Z
    .locals 2

    .line 27
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object p2

    .line 28
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 29
    sget-object v1, Lkawa/lib/misc;->symbol$Eq$Qu:Lgnu/expr/GenericProc;

    invoke-virtual {p0, v1, p1, p2}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move p0, v0

    .line 28
    :cond_1
    return p0
.end method

.method public static namespacePrefix(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "ns"    # Lgnu/mapping/Namespace;

    .line 46
    nop

    .line 47
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static namespaceUri(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "ns"    # Lgnu/mapping/Namespace;

    .line 43
    nop

    .line 44
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nullEnvironment()Lgnu/mapping/Environment;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkawa/lib/misc;->nullEnvironment(Ljava/lang/Object;)Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method

.method public static nullEnvironment(Ljava/lang/Object;)Lgnu/mapping/Environment;
    .locals 1
    .param p0, "version"    # Ljava/lang/Object;

    .line 67
    nop

    .line 68
    sget-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public static procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/misc;->procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 88
    nop

    .line 89
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static schemeImplementationVersion()Ljava/lang/String;
    .locals 1

    .line 79
    nop

    .line 80
    invoke-static {}, Lkawa/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static schemeReportEnvironment(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "version"    # Ljava/lang/Object;

    .line 70
    nop

    .line 71
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lkawa/lib/misc;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    .line 72
    sget-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    goto :goto_0

    :cond_0
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 71
    sget-object v1, Lkawa/lib/misc;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1

    .line 73
    sget-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "scheme-report-environment version must be 4 or 5"

    invoke-static {v1, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static setProcedureProperty$Ex(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 82
    nop

    .line 83
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 49
    nop

    .line 50
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    return-object v0
.end method

.method public static symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 21
    nop

    .line 22
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static symbolLocalName(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 31
    nop

    .line 32
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static symbolNamespace(Lgnu/mapping/Symbol;)Lgnu/mapping/Namespace;
    .locals 1
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 34
    nop

    .line 35
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static symbolNamespaceUri(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 37
    nop

    .line 38
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static symbolPrefix(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 40
    nop

    .line 41
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs values([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "args"    # [Ljava/lang/Object;

    .line 55
    nop

    .line 56
    invoke-static {p0}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 126
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-static {}, Lkawa/lib/misc;->gentemp()Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    .line 111
    :sswitch_1
    invoke-static {}, Lkawa/lib/misc;->baseUri()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 79
    :sswitch_2
    invoke-static {}, Lkawa/lib/misc;->schemeImplementationVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :sswitch_3
    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object p1

    return-object p1

    .line 67
    :sswitch_4
    invoke-static {}, Lkawa/lib/misc;->nullEnvironment()Lgnu/mapping/Environment;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x1d -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 111
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p2}, Lkawa/lib/misc;->baseUri(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 98
    :pswitch_2
    invoke-static {p2}, Lkawa/lib/misc;->force(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_3
    invoke-static {p2}, Lkawa/lib/misc;->schemeReportEnvironment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_4
    invoke-static {p2}, Lkawa/lib/misc;->nullEnvironment(Ljava/lang/Object;)Lgnu/mapping/Environment;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_5
    invoke-static {p2}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 49
    :pswitch_6
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string->symbol"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 46
    :pswitch_7
    :try_start_1
    check-cast p2, Lgnu/mapping/Namespace;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lkawa/lib/misc;->namespacePrefix(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "namespace-prefix"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 43
    :pswitch_8
    :try_start_2
    check-cast p2, Lgnu/mapping/Namespace;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lkawa/lib/misc;->namespaceUri(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "namespace-uri"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 40
    :pswitch_9
    :try_start_3
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2}, Lkawa/lib/misc;->symbolPrefix(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol-prefix"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 37
    :pswitch_a
    :try_start_4
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2}, Lkawa/lib/misc;->symbolNamespaceUri(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol-namespace-uri"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 34
    :pswitch_b
    :try_start_5
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2}, Lkawa/lib/misc;->symbolNamespace(Lgnu/mapping/Symbol;)Lgnu/mapping/Namespace;

    move-result-object p1

    return-object p1

    :catch_5
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol-namespace"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 31
    :pswitch_c
    :try_start_6
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2}, Lkawa/lib/misc;->symbolLocalName(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_6
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol-local-name"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 21
    :pswitch_d
    :try_start_7
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_7
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol->string"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 18
    :pswitch_e
    invoke-static {p2}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1

    .line 15
    :pswitch_f
    invoke-static {p2}, Lkawa/lib/misc;->isBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "lambda"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 88
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3}, Lkawa/lib/misc;->procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "procedure-property"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 59
    :sswitch_1
    :try_start_1
    check-cast p2, Lgnu/mapping/Environment;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3}, Lkawa/lib/misc;->isEnvironmentBound(Lgnu/mapping/Environment;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "environment-bound?"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :sswitch_2
    :try_start_2
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    check-cast p3, Lgnu/mapping/Symbol;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {p2, p3}, Lkawa/lib/misc;->lambda1(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1

    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x11 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 92
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p2, p3, p4}, Lkawa/lib/misc;->dynamicWind(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_2
    :try_start_0
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4}, Lkawa/lib/misc;->procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "procedure-property"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 82
    :pswitch_3
    :try_start_1
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3, p4}, Lkawa/lib/misc;->setProcedureProperty$Ex(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "set-procedure-property!"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "lambda"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    aget-object p1, p2, v2

    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/expr/GenericProc;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    array-length p1, p2

    sub-int/2addr p1, v3

    new-array v1, p1, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    invoke-static {v0, v1}, Lkawa/lib/misc;->addProcedureProperties(Lgnu/expr/GenericProc;[Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_0
    add-int/lit8 v2, p1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, p1

    goto :goto_0

    .line 130
    :catch_0
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "add-procedure-properties"

    invoke-direct {v0, p2, v1, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 103
    :sswitch_1
    aget-object p1, p2, v2

    array-length v0, p2

    sub-int/2addr v0, v3

    new-array v1, v0, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    invoke-static {p1, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 55
    :sswitch_2
    invoke-static {p2}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :sswitch_3
    aget-object p1, p2, v2

    :try_start_1
    check-cast p1, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    aget-object v1, p2, v3

    const/4 v2, 0x2

    :try_start_2
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    array-length v0, p2

    sub-int/2addr v0, v2

    new-array v4, v0, [Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_3

    invoke-static {p1, v3, v4}, Lkawa/lib/misc;->lambda2$V(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p1

    :cond_3
    add-int/lit8 v1, v0, 0x2

    aget-object v1, p2, v1

    aput-object v1, v4, v0

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p2, v0, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0x10 -> :sswitch_2
        0x1c -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 67
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 126
    :sswitch_0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 111
    :sswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 79
    :sswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 76
    :sswitch_3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 67
    :sswitch_4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x1d -> :sswitch_1
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 15
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 111
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 98
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 70
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 67
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 52
    :pswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 49
    :pswitch_6
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_0
    return v1

    .line 46
    :pswitch_7
    instance-of v0, p2, Lgnu/mapping/Namespace;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 43
    :pswitch_8
    instance-of v0, p2, Lgnu/mapping/Namespace;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 40
    :pswitch_9
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_3

    return v1

    :cond_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 37
    :pswitch_a
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_4

    return v1

    :cond_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 34
    :pswitch_b
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_5

    return v1

    :cond_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 31
    :pswitch_c
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 21
    :pswitch_d
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_7

    return v1

    :cond_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 18
    :pswitch_e
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 15
    :pswitch_f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, -0xbffff

    sparse-switch v0, :sswitch_data_0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 88
    :sswitch_0
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    return v3

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 59
    :sswitch_1
    instance-of v0, p2, Lgnu/mapping/Environment;

    if-nez v0, :cond_1

    return v3

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 25
    :sswitch_2
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_2

    return v3

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Symbol;

    if-nez p2, :cond_3

    const p1, -0xbfffe

    return p1

    :cond_3
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_2
        0x11 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_0

    .line 82
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 92
    :pswitch_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 88
    :pswitch_2
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 82
    :pswitch_3
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    sparse-switch v0, :sswitch_data_0

    .line 27
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 129
    :sswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 103
    :sswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 55
    :sswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 27
    :sswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0x10 -> :sswitch_2
        0x1c -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 7
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 15
    nop

    .line 18
    nop

    .line 21
    nop

    .line 24
    new-instance v1, Lgnu/expr/GenericProc;

    const-string v2, "symbol=?"

    invoke-direct {v1, v2}, Lgnu/expr/GenericProc;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkawa/lib/misc;->symbol$Eq$Qu:Lgnu/expr/GenericProc;

    sget-object v1, Lkawa/lib/misc;->symbol$Eq$Qu:Lgnu/expr/GenericProc;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/misc;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lkawa/lib/misc;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 31
    nop

    .line 34
    nop

    .line 37
    nop

    .line 40
    nop

    .line 43
    nop

    .line 46
    nop

    .line 49
    nop

    .line 52
    nop

    .line 55
    nop

    .line 59
    nop

    .line 67
    nop

    .line 70
    nop

    .line 76
    nop

    .line 79
    nop

    .line 82
    nop

    .line 85
    new-instance v1, Lgnu/expr/GenericProc;

    const-string v3, "procedure-property"

    invoke-direct {v1, v3}, Lgnu/expr/GenericProc;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkawa/lib/misc;->procedure$Mnproperty:Lgnu/expr/GenericProc;

    sget-object v1, Lkawa/lib/misc;->procedure$Mnproperty:Lgnu/expr/GenericProc;

    .line 88
    const/4 v3, 0x0

    .line 90
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/misc;->Lit2:Lgnu/expr/Keyword;

    aput-object v4, v3, v5

    sget-object v4, Lkawa/lib/misc;->set$Mnprocedure$Mnproperty$Ex:Lgnu/expr/ModuleMethod;

    aput-object v4, v3, v6

    sget-object v4, Lkawa/lib/misc;->procedure$Mnproperty$Fn3:Lgnu/expr/ModuleMethod;

    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 92
    nop

    .line 98
    nop

    .line 103
    nop

    .line 111
    nop

    .line 126
    nop

    .line 129
    return-void
.end method
