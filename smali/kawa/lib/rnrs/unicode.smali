.class public Lkawa/lib/rnrs/unicode;
.super Lgnu/expr/ModuleBody;
.source "unicode.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nunicode.scm\nScheme\n*S Scheme\n*F\n+ 1 unicode.scm\n/u2/home/jis/ai2-kawa/kawa/lib/rnrs/unicode.scm\n*L\n1#1,129:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/rnrs/unicode;

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

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final char$Mnalphabetic$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Gr$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnci$Ls$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mndowncase:Lgnu/expr/ModuleMethod;

.field public static final char$Mnfoldcase:Lgnu/expr/ModuleMethod;

.field public static final char$Mngeneral$Mncategory:Lgnu/expr/ModuleMethod;

.field public static final char$Mnlower$Mncase$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnnumeric$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mntitle$Mncase$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mntitlecase:Lgnu/expr/ModuleMethod;

.field public static final char$Mnupcase:Lgnu/expr/ModuleMethod;

.field public static final char$Mnupper$Mncase$Qu:Lgnu/expr/ModuleMethod;

.field public static final char$Mnwhitespace$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Gr$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Ls$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mndowncase:Lgnu/expr/ModuleMethod;

.field public static final string$Mnfoldcase:Lgnu/expr/ModuleMethod;

.field public static final string$Mnnormalize$Mnnfc:Lgnu/expr/ModuleMethod;

.field public static final string$Mnnormalize$Mnnfd:Lgnu/expr/ModuleMethod;

.field public static final string$Mnnormalize$Mnnfkc:Lgnu/expr/ModuleMethod;

.field public static final string$Mnnormalize$Mnnfkd:Lgnu/expr/ModuleMethod;

.field public static final string$Mntitlecase:Lgnu/expr/ModuleMethod;

.field public static final string$Mnupcase:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-normalize-nfkc"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-normalize-nfc"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-normalize-nfkd"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-normalize-nfd"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-ci>=?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-ci<=?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-ci>?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-ci<?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-ci=?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-foldcase"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-titlecase"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-downcase"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-upcase"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-general-category"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-ci>=?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-ci<=?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-ci>?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-ci<?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-ci=?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-foldcase"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-title-case?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-lower-case?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-upper-case?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-whitespace?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-numeric?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-alphabetic?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-titlecase"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-downcase"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "char-upcase"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/unicode;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/rnrs/unicode;

    invoke-direct {v0}, Lkawa/lib/rnrs/unicode;-><init>()V

    sput-object v0, Lkawa/lib/rnrs/unicode;->$instance:Lkawa/lib/rnrs/unicode;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/rnrs/unicode;->$instance:Lkawa/lib/rnrs/unicode;

    sget-object v2, Lkawa/lib/rnrs/unicode;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnupcase:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mndowncase:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mntitlecase:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnalphabetic$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnnumeric$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnwhitespace$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnupper$Mncase$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnlower$Mncase$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mntitle$Mncase$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnfoldcase:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/rnrs/unicode;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xb

    const/16 v5, 0x2002

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnci$Ls$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnci$Gr$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mnci$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x10

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->char$Mngeneral$Mncategory:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnupcase:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mndowncase:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x13

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mntitlecase:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnfoldcase:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit21:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnci$Ls$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnci$Gr$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x19

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit24:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnci$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit25:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnnormalize$Mnnfd:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnnormalize$Mnnfkd:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit27:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnnormalize$Mnnfc:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1d

    sget-object v3, Lkawa/lib/rnrs/unicode;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/unicode;->string$Mnnormalize$Mnnfkc:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/rnrs/unicode;->$instance:Lkawa/lib/rnrs/unicode;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static charDowncase(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 1
    .param p0, "ch"    # Lgnu/text/Char;

    .line 16
    nop

    .line 17
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public static charFoldcase(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 3
    .param p0, "ch"    # Lgnu/text/Char;

    .line 40
    nop

    .line 41
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 42
    .local v0, "val":I
    const/16 v2, 0x130

    .local v1, "x":Z
    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    if-eqz v1, :cond_1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_1
    const/16 v2, 0x131

    if-ne v0, v2, :cond_2

    .end local v1    # "x":Z
    :goto_1
    move-object v1, p0

    goto :goto_2

    .line 44
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v1

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    .end local v0    # "val":I
    :goto_2
    return-object v1
.end method

.method public static charGeneralCategory(Lgnu/text/Char;)Lgnu/mapping/Symbol;
    .locals 1
    .param p0, "ch"    # Lgnu/text/Char;

    .line 66
    nop

    .line 67
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Lgnu/kawa/functions/UnicodeUtils;->generalCategory(I)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static charTitlecase(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 1
    .param p0, "ch"    # Lgnu/text/Char;

    .line 19
    nop

    .line 20
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v0

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public static charUpcase(Lgnu/text/Char;)Lgnu/text/Char;
    .locals 1
    .param p0, "ch"    # Lgnu/text/Char;

    .line 13
    nop

    .line 14
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public static isCharAlphabetic(Lgnu/text/Char;)Z
    .locals 1
    .param p0, "ch"    # Lgnu/text/Char;

    .line 22
    nop

    .line 23
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public static isCharCi$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .param p0, "c1"    # Lgnu/text/Char;
    .param p1, "c2"    # Lgnu/text/Char;

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCharCi$Gr(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .param p0, "c1"    # Lgnu/text/Char;
    .param p1, "c2"    # Lgnu/text/Char;

    .line 56
    nop

    .line 57
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCharCi$Gr$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .param p0, "c1"    # Lgnu/text/Char;
    .param p1, "c2"    # Lgnu/text/Char;

    .line 62
    nop

    .line 63
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCharCi$Ls(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .param p0, "c1"    # Lgnu/text/Char;
    .param p1, "c2"    # Lgnu/text/Char;

    .line 53
    nop

    .line 54
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCharCi$Ls$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z
    .locals 2
    .param p0, "c1"    # Lgnu/text/Char;
    .param p1, "c2"    # Lgnu/text/Char;

    .line 59
    nop

    .line 60
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    invoke-virtual {p1}, Lgnu/text/Char;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCharLowerCase(Lgnu/text/Char;)Z
    .locals 1
    .param p0, "ch"    # Lgnu/text/Char;

    .line 34
    nop

    .line 35
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    return v0
.end method

.method public static isCharNumeric(Lgnu/text/Char;)Z
    .locals 1
    .param p0, "ch"    # Lgnu/text/Char;

    .line 25
    nop

    .line 26
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isCharTitleCase(Lgnu/text/Char;)Z
    .locals 1
    .param p0, "ch"    # Lgnu/text/Char;

    .line 37
    nop

    .line 38
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v0

    return v0
.end method

.method public static isCharUpperCase(Lgnu/text/Char;)Z
    .locals 1
    .param p0, "ch"    # Lgnu/text/Char;

    .line 31
    nop

    .line 32
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method public static isCharWhitespace(Lgnu/text/Char;)Z
    .locals 1
    .param p0, "ch"    # Lgnu/text/Char;

    .line 28
    nop

    .line 29
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Lgnu/kawa/functions/UnicodeUtils;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public static isStringCi$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .line 81
    nop

    .line 82
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStringCi$Gr(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .line 91
    nop

    .line 92
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStringCi$Gr$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .line 103
    nop

    .line 104
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStringCi$Ls(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .line 85
    nop

    .line 86
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStringCi$Ls$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "str1"    # Ljava/lang/CharSequence;
    .param p1, "str2"    # Ljava/lang/CharSequence;

    .line 97
    nop

    .line 98
    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static stringDowncase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 72
    nop

    .line 73
    new-instance v0, Lgnu/lists/FString;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static stringFoldcase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 78
    nop

    .line 79
    new-instance v0, Lgnu/lists/FString;

    invoke-static {p0}, Lgnu/kawa/functions/UnicodeUtils;->foldCase(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static stringNormalizeNfc(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 125
    nop

    .line 126
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unicode string normalization not available"

    invoke-static {v1, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static stringNormalizeNfd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 119
    nop

    .line 120
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unicode string normalization not available"

    invoke-static {v1, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static stringNormalizeNfkc(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 128
    nop

    .line 129
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unicode string normalization not available"

    invoke-static {v1, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static stringNormalizeNfkd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 122
    nop

    .line 123
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unicode string normalization not available"

    invoke-static {v1, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static stringTitlecase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 75
    nop

    .line 76
    new-instance v0, Lgnu/lists/FString;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lgnu/kawa/functions/UnicodeUtils;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static stringUpcase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 69
    nop

    .line 70
    new-instance v0, Lgnu/lists/FString;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 128
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringNormalizeNfkc(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-normalize-nfkc"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 125
    :pswitch_2
    :try_start_1
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringNormalizeNfc(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-normalize-nfc"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 122
    :pswitch_3
    :try_start_2
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringNormalizeNfkd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-normalize-nfkd"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 119
    :pswitch_4
    :try_start_3
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringNormalizeNfd(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-normalize-nfd"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 78
    :pswitch_5
    :try_start_4
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringFoldcase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-foldcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 75
    :pswitch_6
    :try_start_5
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringTitlecase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_5
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-titlecase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 72
    :pswitch_7
    :try_start_6
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringDowncase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_6
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-downcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 69
    :pswitch_8
    :try_start_7
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->stringUpcase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_7
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-upcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 66
    :pswitch_9
    :try_start_8
    check-cast p2, Lgnu/text/Char;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->charGeneralCategory(Lgnu/text/Char;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    :catch_8
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-general-category"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 40
    :pswitch_a
    :try_start_9
    check-cast p2, Lgnu/text/Char;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->charFoldcase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object p1

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-foldcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 37
    :pswitch_b
    :try_start_a
    check-cast p2, Lgnu/text/Char;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharTitleCase(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    :catch_a
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-title-case?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 34
    :pswitch_c
    :try_start_b
    check-cast p2, Lgnu/text/Char;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharLowerCase(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object p1

    :catch_b
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-lower-case?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 31
    :pswitch_d
    :try_start_c
    check-cast p2, Lgnu/text/Char;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharUpperCase(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object p1

    :catch_c
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-upper-case?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 28
    :pswitch_e
    :try_start_d
    check-cast p2, Lgnu/text/Char;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_d

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharWhitespace(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object p1

    :catch_d
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-whitespace?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 25
    :pswitch_f
    :try_start_e
    check-cast p2, Lgnu/text/Char;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_e

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object p1

    :catch_e
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-numeric?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 22
    :pswitch_10
    :try_start_f
    check-cast p2, Lgnu/text/Char;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_f

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->isCharAlphabetic(Lgnu/text/Char;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object p1

    :catch_f
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-alphabetic?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 19
    :pswitch_11
    :try_start_10
    check-cast p2, Lgnu/text/Char;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_10

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->charTitlecase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object p1

    return-object p1

    :catch_10
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-titlecase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 16
    :pswitch_12
    :try_start_11
    check-cast p2, Lgnu/text/Char;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_11

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->charDowncase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object p1

    return-object p1

    :catch_11
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-downcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 13
    :pswitch_13
    :try_start_12
    check-cast p2, Lgnu/text/Char;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_12

    invoke-static {p2}, Lkawa/lib/rnrs/unicode;->charUpcase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-upcase"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "string-ci>=?"

    const-string v4, "string-ci<=?"

    const-string v5, "string-ci>?"

    const-string v6, "string-ci<?"

    const-string v7, "string-ci=?"

    const-string v8, "char-ci>=?"

    const-string v9, "char-ci<=?"

    const-string v10, "char-ci>?"

    const-string v11, "char-ci<?"

    const-string v12, "char-ci=?"

    move-object/from16 v0, p1

    iget v13, v0, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v14, 0x2

    const/4 v15, 0x1

    packed-switch v13, :pswitch_data_0

    .line 103
    :pswitch_0
    invoke-super/range {p0 .. p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    :try_start_0
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isStringCi$Gr$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v3, v14, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v3, v15, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 97
    :pswitch_2
    :try_start_2
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isStringCi$Ls$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v0

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v4, v14, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_3
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v4, v15, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 91
    :pswitch_3
    :try_start_4
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isStringCi$Gr(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v0

    :catch_4
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v5, v14, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_5
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v5, v15, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 85
    :pswitch_4
    :try_start_6
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_6

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isStringCi$Ls(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v0

    :catch_6
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v6, v14, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_7
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v6, v15, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 81
    :pswitch_5
    :try_start_8
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_9

    :try_start_9
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_8

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isStringCi$Eq(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :catch_8
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v7, v14, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_9
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v7, v15, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 62
    :pswitch_6
    :try_start_a
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_b

    :try_start_b
    move-object v1, v2

    check-cast v1, Lgnu/text/Char;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_a

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isCharCi$Gr$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object v0

    :catch_a
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v8, v14, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_b
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v8, v15, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 59
    :pswitch_7
    :try_start_c
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_d

    :try_start_d
    move-object v1, v2

    check-cast v1, Lgnu/text/Char;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_c

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isCharCi$Ls$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    return-object v0

    :catch_c
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v9, v14, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_d
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v9, v15, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 56
    :pswitch_8
    :try_start_e
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_e} :catch_f

    :try_start_f
    move-object v1, v2

    check-cast v1, Lgnu/text/Char;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_f} :catch_e

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isCharCi$Gr(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object v0

    :catch_e
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v10, v14, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_f
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v10, v15, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 53
    :pswitch_9
    :try_start_10
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_10} :catch_11

    :try_start_11
    move-object v1, v2

    check-cast v1, Lgnu/text/Char;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_11} :catch_10

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isCharCi$Ls(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_8
    return-object v0

    :catch_10
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v11, v14, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_11
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v11, v15, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 50
    :pswitch_a
    :try_start_12
    move-object v0, v1

    check-cast v0, Lgnu/text/Char;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_12} :catch_13

    :try_start_13
    move-object v1, v2

    check-cast v1, Lgnu/text/Char;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_13} :catch_12

    invoke-static {v0, v1}, Lkawa/lib/rnrs/unicode;->isCharCi$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    return-object v0

    :catch_12
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v12, v14, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_13
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v12, v15, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
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

    .line 13
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 128
    :pswitch_1
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_0
    return v1

    .line 125
    :pswitch_2
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1
    return v1

    .line 122
    :pswitch_3
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2
    return v1

    .line 119
    :pswitch_4
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_3
    return v1

    .line 78
    :pswitch_5
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_4
    return v1

    .line 75
    :pswitch_6
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_5
    return v1

    .line 72
    :pswitch_7
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_6
    return v1

    .line 69
    :pswitch_8
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_7
    return v1

    .line 66
    :pswitch_9
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_8

    return v1

    :cond_8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 40
    :pswitch_a
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_9

    return v1

    :cond_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 37
    :pswitch_b
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_a

    return v1

    :cond_a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 34
    :pswitch_c
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_b

    return v1

    :cond_b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 31
    :pswitch_d
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_c

    return v1

    :cond_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 28
    :pswitch_e
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_d

    return v1

    :cond_d
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 25
    :pswitch_f
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_e

    return v1

    :cond_e
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 22
    :pswitch_10
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_f

    return v1

    :cond_f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 19
    :pswitch_11
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_10

    return v1

    :cond_10
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 16
    :pswitch_12
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_11

    return v1

    :cond_11
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 13
    :pswitch_13
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_12

    return v1

    :cond_12
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffe

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, -0xbffff

    packed-switch v0, :pswitch_data_0

    .line 50
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 103
    :pswitch_1
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_0
    return v1

    :cond_1
    return v4

    .line 97
    :pswitch_2
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_2

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2
    return v1

    :cond_3
    return v4

    .line 91
    :pswitch_3
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_4
    return v1

    :cond_5
    return v4

    .line 85
    :pswitch_4
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_6
    return v1

    :cond_7
    return v4

    .line 81
    :pswitch_5
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_8

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_8
    return v1

    :cond_9
    return v4

    .line 62
    :pswitch_6
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_a

    return v4

    :cond_a
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_b

    return v1

    :cond_b
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 59
    :pswitch_7
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_c

    return v4

    :cond_c
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_d

    return v1

    :cond_d
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 56
    :pswitch_8
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_e

    return v4

    :cond_e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_f

    return v1

    :cond_f
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 53
    :pswitch_9
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_10

    return v4

    :cond_10
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_11

    return v1

    :cond_11
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 50
    :pswitch_a
    instance-of v0, p2, Lgnu/text/Char;

    if-nez v0, :cond_12

    return v4

    :cond_12
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-nez p2, :cond_13

    return v1

    :cond_13
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 13
    nop

    .line 16
    nop

    .line 19
    nop

    .line 22
    nop

    .line 25
    nop

    .line 28
    nop

    .line 31
    nop

    .line 34
    nop

    .line 37
    nop

    .line 40
    nop

    .line 50
    nop

    .line 53
    nop

    .line 56
    nop

    .line 59
    nop

    .line 62
    nop

    .line 66
    nop

    .line 69
    nop

    .line 72
    nop

    .line 75
    nop

    .line 78
    nop

    .line 81
    nop

    .line 85
    nop

    .line 91
    nop

    .line 97
    nop

    .line 103
    nop

    .line 119
    nop

    .line 122
    nop

    .line 125
    nop

    .line 128
    return-void
.end method
