.class public Lkawa/lib/files;
.super Lgnu/expr/ModuleBody;
.source "files.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nfiles.scm\nScheme\n*S Scheme\n*F\n+ 1 files.scm\n/u2/home/jis/ai2-kawa/kawa/lib/files.scm\n*L\n1#1,129:1\n*E\n"
.end annotation


# static fields
.field public static final $Mn$Grpathname:Lgnu/expr/ModuleMethod;

.field public static final $Pcfile$Mnseparator:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lkawa/lib/files;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

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

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final URI$Qu:Lgnu/expr/ModuleMethod;

.field public static final absolute$Mnpath$Qu:Lgnu/expr/ModuleMethod;

.field public static final copy$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final create$Mndirectory:Lgnu/expr/ModuleMethod;

.field public static final delete$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final directory$Mnfiles:Lgnu/expr/ModuleMethod;

.field public static final file$Mndirectory$Qu:Lgnu/expr/ModuleMethod;

.field public static final file$Mnexists$Qu:Lgnu/expr/ModuleMethod;

.field public static final file$Mnreadable$Qu:Lgnu/expr/ModuleMethod;

.field public static final file$Mnwritable$Qu:Lgnu/expr/ModuleMethod;

.field public static final filepath$Qu:Lgnu/expr/ModuleMethod;

.field public static final make$Mntemporary$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final path$Mnauthority:Lgnu/expr/ModuleMethod;

.field public static final path$Mndirectory:Lgnu/expr/ModuleMethod;

.field public static final path$Mnextension:Lgnu/expr/ModuleMethod;

.field public static final path$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final path$Mnfragment:Lgnu/expr/ModuleMethod;

.field public static final path$Mnhost:Lgnu/expr/ModuleMethod;

.field public static final path$Mnlast:Lgnu/expr/ModuleMethod;

.field public static final path$Mnparent:Lgnu/expr/ModuleMethod;

.field public static final path$Mnport:Lgnu/expr/ModuleMethod;

.field public static final path$Mnquery:Lgnu/expr/ModuleMethod;

.field public static final path$Mnscheme:Lgnu/expr/ModuleMethod;

.field public static final path$Mnuser$Mninfo:Lgnu/expr/ModuleMethod;

.field public static final path$Qu:Lgnu/expr/ModuleMethod;

.field public static final rename$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final resolve$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final system$Mntmpdir:Lgnu/expr/ModuleMethod;


# direct methods
.method public static $PcFileSeparator()Ljava/lang/String;
    .locals 1

    .line 109
    nop

    .line 110
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $To$Pathname(Ljava/lang/Object;)Lgnu/text/Path;
    .locals 1
    .param p0, "filename"    # Ljava/lang/Object;

    .line 106
    nop

    .line 107
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-temporary-file"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "resolve-uri"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "system-tmpdir"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "%file-separator"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "->pathname"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "directory-files"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "create-directory"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "copy-file"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "rename-file"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "delete-file"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "file-writable?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "file-readable?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "file-directory?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "file-exists?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-fragment"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-query"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-port"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-extension"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-last"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-parent"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-directory"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-file"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-host"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-user-info"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-authority"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path-scheme"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "absolute-path?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "URI?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "filepath?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "path?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/files;

    invoke-direct {v0}, Lkawa/lib/files;-><init>()V

    sput-object v0, Lkawa/lib/files;->$instance:Lkawa/lib/files;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/files;->$instance:Lkawa/lib/files;

    sget-object v2, Lkawa/lib/files;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lkawa/lib/files;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->filepath$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/files;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->URI$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lkawa/lib/files;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->absolute$Mnpath$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lkawa/lib/files;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnscheme:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lkawa/lib/files;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnauthority:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lkawa/lib/files;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnuser$Mninfo:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lkawa/lib/files;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnhost:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/files;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lkawa/lib/files;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mndirectory:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lkawa/lib/files;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnparent:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lkawa/lib/files;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnlast:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lkawa/lib/files;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnextension:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lkawa/lib/files;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnport:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lkawa/lib/files;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnquery:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    sget-object v3, Lkawa/lib/files;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnfragment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    sget-object v3, Lkawa/lib/files;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->file$Mnexists$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lkawa/lib/files;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->file$Mndirectory$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    sget-object v3, Lkawa/lib/files;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->file$Mnreadable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lkawa/lib/files;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->file$Mnwritable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    sget-object v3, Lkawa/lib/files;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->delete$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/files;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x16

    const/16 v5, 0x2002

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->rename$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    sget-object v3, Lkawa/lib/files;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->copy$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    sget-object v3, Lkawa/lib/files;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->create$Mndirectory:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x19

    sget-object v3, Lkawa/lib/files;->Lit24:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->directory$Mnfiles:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    sget-object v3, Lkawa/lib/files;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->$Mn$Grpathname:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/files;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->$Pcfile$Mnseparator:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v3, Lkawa/lib/files;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->system$Mntmpdir:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1d

    sget-object v3, Lkawa/lib/files;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->resolve$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/files;->Lit29:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x1000

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->make$Mntemporary$Mnfile:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/files;->$instance:Lkawa/lib/files;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static URI$Qu(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/Object;

    .line 11
    nop

    .line 12
    instance-of v0, p0, Lgnu/text/URIPath;

    return v0
.end method

.method public static copyFile(Lgnu/text/Path;Lgnu/text/Path;)V
    .locals 4
    .param p0, "from"    # Lgnu/text/Path;
    .param p1, "to"    # Lgnu/text/Path;

    .line 84
    nop

    .line 85
    invoke-static {p0}, Lkawa/lib/ports;->openInputFile(Lgnu/text/Path;)Lgnu/mapping/InPort;

    move-result-object v0

    .line 86
    invoke-static {p1}, Lkawa/lib/ports;->openOutputFile(Lgnu/text/Path;)Lgnu/mapping/OutPort;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 87
    .local v0, "in":Lgnu/mapping/InPort;
    .local v1, "out":Lgnu/mapping/OutPort;
    sget-object v2, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "ch":Ljava/lang/Object;
    :goto_0
    invoke-static {v2}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    invoke-static {v2, v1}, Lkawa/lib/ports;->writeChar(Ljava/lang/Object;Lgnu/mapping/OutPort;)V

    .line 87
    sget-object v3, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    invoke-virtual {v3, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v1}, Lkawa/lib/ports;->closeOutputPort(Lgnu/mapping/OutPort;)Ljava/lang/Object;

    .line 90
    invoke-static {v0}, Lkawa/lib/ports;->closeInputPort(Lgnu/mapping/InPort;)Ljava/lang/Object;

    return-void
.end method

.method public static createDirectory(Lgnu/text/FilePath;)Z
    .locals 1
    .param p0, "dirname"    # Lgnu/text/FilePath;

    .line 94
    nop

    .line 95
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    return v0
.end method

.method public static deleteFile(Lgnu/text/FilePath;)V
    .locals 4
    .param p0, "file"    # Lgnu/text/FilePath;

    .line 76
    nop

    .line 77
    invoke-virtual {p0}, Lgnu/text/FilePath;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cannot delete ~a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v3, v1}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static directoryFiles(Lgnu/text/FilePath;)Ljava/lang/Object;
    .locals 2
    .param p0, "dir"    # Lgnu/text/FilePath;

    .line 98
    nop

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 100
    .local v0, "files":[Ljava/lang/String;
    if-nez v0, :cond_1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 101
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v1

    .end local v0    # "files":[Ljava/lang/String;
    :goto_1
    return-object v1
.end method

.method public static isAbsolutePath(Lgnu/text/Path;)Z
    .locals 1
    .param p0, "path"    # Lgnu/text/Path;

    .line 13
    nop

    .line 14
    invoke-virtual {p0}, Lgnu/text/Path;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public static isFileDirectory(Lgnu/text/Path;)Z
    .locals 1
    .param p0, "file"    # Lgnu/text/Path;

    .line 64
    nop

    .line 65
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public static isFileExists(Lgnu/text/Path;)Z
    .locals 1
    .param p0, "file"    # Lgnu/text/Path;

    .line 61
    nop

    .line 62
    invoke-virtual {p0}, Lgnu/text/Path;->exists()Z

    move-result v0

    return v0
.end method

.method public static isFileReadable(Lgnu/text/FilePath;)Z
    .locals 1
    .param p0, "file"    # Lgnu/text/FilePath;

    .line 67
    nop

    .line 68
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public static isFileWritable(Lgnu/text/FilePath;)Z
    .locals 1
    .param p0, "file"    # Lgnu/text/FilePath;

    .line 70
    nop

    .line 71
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public static isFilepath(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/Object;

    .line 9
    nop

    .line 10
    instance-of v0, p0, Lgnu/text/FilePath;

    return v0
.end method

.method public static isPath(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/Object;

    .line 7
    nop

    .line 8
    instance-of v0, p0, Lgnu/text/Path;

    return v0
.end method

.method public static makeTemporaryFile()Lgnu/text/FilePath;
    .locals 1

    const-string v0, "kawa~d.tmp"

    invoke-static {v0}, Lkawa/lib/files;->makeTemporaryFile(Ljava/lang/CharSequence;)Lgnu/text/FilePath;

    move-result-object v0

    return-object v0
.end method

.method public static makeTemporaryFile(Ljava/lang/CharSequence;)Lgnu/text/FilePath;
    .locals 1
    .param p0, "fmt"    # Ljava/lang/CharSequence;

    .line 127
    nop

    .line 129
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/functions/FileUtils;->createTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    return-object v0
.end method

.method public static pathAuthority(Lgnu/text/Path;)Ljava/lang/Object;
    .locals 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 18
    nop

    .line 19
    invoke-virtual {p0}, Lgnu/text/Path;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static pathDirectory(Lgnu/text/Path;)Ljava/lang/Object;
    .locals 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 29
    nop

    .line 30
    invoke-virtual {p0}, Lgnu/text/Path;->getDirectory()Lgnu/text/Path;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    .local v0, "s":Lgnu/text/Path;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/text/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "s":Lgnu/text/Path;
    :goto_0
    return-object v1
.end method

.method public static pathExtension(Lgnu/text/Path;)Ljava/lang/Object;
    .locals 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 38
    nop

    .line 39
    invoke-virtual {p0}, Lgnu/text/Path;->getExtension()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static pathFile(Lgnu/text/Path;)Ljava/lang/Object;
    .locals 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 26
    nop

    .line 27
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static pathFragment(Lgnu/text/Path;)Ljava/lang/Object;
    .locals 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 46
    nop

    .line 47
    invoke-virtual {p0}, Lgnu/text/Path;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static pathHost(Lgnu/text/Path;)Ljava/lang/String;
    .locals 1
    .param p0, "p"    # Lgnu/text/Path;

    .line 24
    nop

    .line 25
    invoke-virtual {p0}, Lgnu/text/Path;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pathLast(Lgnu/text/Path;)Ljava/lang/Object;
    .locals 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 35
    nop

    .line 36
    invoke-virtual {p0}, Lgnu/text/Path;->getLast()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static pathParent(Lgnu/text/Path;)Ljava/lang/Object;
    .locals 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 32
    nop

    .line 33
    invoke-virtual {p0}, Lgnu/text/Path;->getParent()Lgnu/text/Path;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    .local v0, "s":Lgnu/text/Path;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/text/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "s":Lgnu/text/Path;
    :goto_0
    return-object v1
.end method

.method public static pathPort(Lgnu/text/Path;)I
    .locals 1
    .param p0, "p"    # Lgnu/text/Path;

    .line 41
    nop

    .line 42
    invoke-virtual {p0}, Lgnu/text/Path;->getPort()I

    move-result v0

    return v0
.end method

.method public static pathQuery(Lgnu/text/Path;)Ljava/lang/Object;
    .locals 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 43
    nop

    .line 44
    invoke-virtual {p0}, Lgnu/text/Path;->getQuery()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static pathScheme(Lgnu/text/Path;)Ljava/lang/Object;
    .locals 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 15
    nop

    .line 16
    invoke-virtual {p0}, Lgnu/text/Path;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 17
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static pathUserInfo(Lgnu/text/Path;)Ljava/lang/Object;
    .locals 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 21
    nop

    .line 22
    invoke-virtual {p0}, Lgnu/text/Path;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static renameFile(Lgnu/text/FilePath;Lgnu/text/FilePath;)Z
    .locals 2
    .param p0, "oldname"    # Lgnu/text/FilePath;
    .param p1, "newname"    # Lgnu/text/FilePath;

    .line 81
    nop

    .line 82
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static resolveUri(Lgnu/text/Path;Lgnu/text/Path;)Lgnu/text/Path;
    .locals 1
    .param p0, "uri"    # Lgnu/text/Path;
    .param p1, "base"    # Lgnu/text/Path;

    .line 123
    nop

    .line 124
    invoke-virtual {p1, p0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public static systemTmpdir()Ljava/lang/String;
    .locals 3

    .line 112
    nop

    .line 113
    nop

    .line 114
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 115
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    invoke-static {}, Lkawa/lib/files;->$PcFileSeparator()Ljava/lang/String;

    move-result-object v2

    .local v1, "sep":Ljava/lang/String;
    move-object v1, v2

    .line 118
    const-string v2, "\\"

    invoke-static {v1, v2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "C:\\temp"

    goto :goto_0

    :cond_1
    const-string v2, "/tmp"

    :goto_0
    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "sep":Ljava/lang/String;
    :goto_1
    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :pswitch_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {}, Lkawa/lib/files;->makeTemporaryFile()Lgnu/text/FilePath;

    move-result-object p1

    return-object p1

    .line 112
    :pswitch_2
    invoke-static {}, Lkawa/lib/files;->systemTmpdir()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :pswitch_3
    invoke-static {}, Lkawa/lib/files;->$PcFileSeparator()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 127
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/files;->makeTemporaryFile(Ljava/lang/CharSequence;)Lgnu/text/FilePath;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-temporary-file"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 106
    :pswitch_2
    invoke-static {p2}, Lkawa/lib/files;->$To$Pathname(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1

    return-object p1

    .line 98
    :pswitch_3
    :try_start_1
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p1}, Lkawa/lib/files;->directoryFiles(Lgnu/text/FilePath;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "directory-files"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 94
    :pswitch_4
    :try_start_2
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p1}, Lkawa/lib/files;->createDirectory(Lgnu/text/FilePath;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "create-directory"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 76
    :pswitch_5
    :try_start_3
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p1}, Lkawa/lib/files;->deleteFile(Lgnu/text/FilePath;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "delete-file"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 70
    :pswitch_6
    :try_start_4
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p1}, Lkawa/lib/files;->isFileWritable(Lgnu/text/FilePath;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1

    :catch_4
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "file-writable?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 67
    :pswitch_7
    :try_start_5
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p1}, Lkawa/lib/files;->isFileReadable(Lgnu/text/FilePath;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p1

    :catch_5
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "file-readable?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 64
    :pswitch_8
    :try_start_6
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p1}, Lkawa/lib/files;->isFileDirectory(Lgnu/text/Path;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p1

    :catch_6
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "file-directory?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 61
    :pswitch_9
    :try_start_7
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p1}, Lkawa/lib/files;->isFileExists(Lgnu/text/Path;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object p1

    :catch_7
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "file-exists?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 46
    :pswitch_a
    :try_start_8
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    invoke-static {p1}, Lkawa/lib/files;->pathFragment(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_8
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-fragment"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 43
    :pswitch_b
    :try_start_9
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {p1}, Lkawa/lib/files;->pathQuery(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-query"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 41
    :pswitch_c
    :try_start_a
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    invoke-static {p1}, Lkawa/lib/files;->pathPort(Lgnu/text/Path;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_a
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-port"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 38
    :pswitch_d
    :try_start_b
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    invoke-static {p1}, Lkawa/lib/files;->pathExtension(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_b
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-extension"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 35
    :pswitch_e
    :try_start_c
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    invoke-static {p1}, Lkawa/lib/files;->pathLast(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_c
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-last"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 32
    :pswitch_f
    :try_start_d
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    invoke-static {p1}, Lkawa/lib/files;->pathParent(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_d
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-parent"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 29
    :pswitch_10
    :try_start_e
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_e

    invoke-static {p1}, Lkawa/lib/files;->pathDirectory(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_e
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-directory"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 26
    :pswitch_11
    :try_start_f
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_f

    invoke-static {p1}, Lkawa/lib/files;->pathFile(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_f
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-file"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 24
    :pswitch_12
    :try_start_10
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_10

    invoke-static {p1}, Lkawa/lib/files;->pathHost(Lgnu/text/Path;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_10
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-host"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 21
    :pswitch_13
    :try_start_11
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_11

    invoke-static {p1}, Lkawa/lib/files;->pathUserInfo(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_11
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-user-info"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 18
    :pswitch_14
    :try_start_12
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_12

    invoke-static {p1}, Lkawa/lib/files;->pathAuthority(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-authority"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 15
    :pswitch_15
    :try_start_13
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_13} :catch_13

    invoke-static {p1}, Lkawa/lib/files;->pathScheme(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_13
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-scheme"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 13
    :pswitch_16
    :try_start_14
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_14} :catch_14

    invoke-static {p1}, Lkawa/lib/files;->isAbsolutePath(Lgnu/text/Path;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object p1

    :catch_14
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "absolute-path?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 11
    :pswitch_17
    invoke-static {p2}, Lkawa/lib/files;->URI$Qu(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    return-object p1

    .line 9
    :pswitch_18
    invoke-static {p2}, Lkawa/lib/files;->isFilepath(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object p1

    .line 7
    :pswitch_19
    invoke-static {p2}, Lkawa/lib/files;->isPath(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_8
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "resolve-uri"

    const-string v1, "copy-file"

    const-string v2, "rename-file"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 123
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p1, p2}, Lkawa/lib/files;->resolveUri(Lgnu/text/Path;Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object p1

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

    .line 84
    :sswitch_1
    :try_start_2
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-static {p3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {p1, p2}, Lkawa/lib/files;->copyFile(Lgnu/text/Path;Lgnu/text/Path;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

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

    .line 81
    :sswitch_2
    :try_start_4
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    invoke-static {p3}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p2
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    invoke-static {p1, p2}, Lkawa/lib/files;->renameFile(Lgnu/text/FilePath;Lgnu/text/FilePath;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_2
        0x17 -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 109
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 127
    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 112
    :pswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 109
    :pswitch_3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 7
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 127
    :pswitch_1
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_0
    return v1

    .line 106
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 98
    :pswitch_3
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1
    return v1

    .line 94
    :pswitch_4
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2
    return v1

    .line 76
    :pswitch_5
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_3
    return v1

    .line 70
    :pswitch_6
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_4
    return v1

    .line 67
    :pswitch_7
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_5
    return v1

    .line 64
    :pswitch_8
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_6

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_6
    return v1

    .line 61
    :pswitch_9
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_7

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_7
    return v1

    .line 46
    :pswitch_a
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_8
    return v1

    .line 43
    :pswitch_b
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_9
    return v1

    .line 41
    :pswitch_c
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_a

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_a
    return v1

    .line 38
    :pswitch_d
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_b

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_b
    return v1

    .line 35
    :pswitch_e
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_c

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_c
    return v1

    .line 32
    :pswitch_f
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_d

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_d
    return v1

    .line 29
    :pswitch_10
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_e
    return v1

    .line 26
    :pswitch_11
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_f

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_f
    return v1

    .line 24
    :pswitch_12
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_10

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_10
    return v1

    .line 21
    :pswitch_13
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_11

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_11
    return v1

    .line 18
    :pswitch_14
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_12

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_12
    return v1

    .line 15
    :pswitch_15
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_13

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_13
    return v1

    .line 13
    :pswitch_16
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_14

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_14
    return v1

    .line 11
    :pswitch_17
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 9
    :pswitch_18
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 7
    :pswitch_19
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, -0xbfffe

    const v4, -0xbffff

    sparse-switch v0, :sswitch_data_0

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 123
    :sswitch_0
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p2

    if-eqz p2, :cond_0

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_0
    return v3

    :cond_1
    return v4

    .line 84
    :sswitch_1
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p2

    if-eqz p2, :cond_2

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_2
    return v3

    :cond_3
    return v4

    .line 81
    :sswitch_2
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_5

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p2

    if-eqz p2, :cond_4

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_4
    return v3

    :cond_5
    return v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_2
        0x17 -> :sswitch_1
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 7
    nop

    .line 9
    nop

    .line 11
    nop

    .line 13
    nop

    .line 15
    nop

    .line 18
    nop

    .line 21
    nop

    .line 24
    nop

    .line 26
    nop

    .line 29
    nop

    .line 32
    nop

    .line 35
    nop

    .line 38
    nop

    .line 41
    nop

    .line 43
    nop

    .line 46
    nop

    .line 61
    nop

    .line 64
    nop

    .line 67
    nop

    .line 70
    nop

    .line 76
    nop

    .line 81
    nop

    .line 84
    nop

    .line 94
    nop

    .line 98
    nop

    .line 106
    nop

    .line 109
    nop

    .line 112
    nop

    .line 123
    nop

    .line 127
    return-void
.end method
