.class public Lkawa/lib/rnrs/hashtables;
.super Lgnu/expr/ModuleBody;
.source "hashtables.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nhashtables.scm\nScheme\n*S Scheme\n*F\n+ 1 hashtables.scm\n/u2/home/jis/ai2-kawa/kawa/lib/rnrs/hashtables.scm\n*L\n1#1,115:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/rnrs/hashtables;

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

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final equal$Mnhash:Lgnu/expr/ModuleMethod;

.field static final hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

.field static final hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnclear$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mncontains$Qu:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mncopy:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mndelete$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnentries:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnkeys:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnmutable$Qu:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnref:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnset$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnsize:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Qu:Lgnu/expr/ModuleMethod;

.field public static final make$Mneq$Mnhashtable:Lgnu/expr/ModuleMethod;

.field public static final make$Mneqv$Mnhashtable:Lgnu/expr/ModuleMethod;

.field public static final make$Mnhashtable:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

.field public static final string$Mnhash:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnhash:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-ci-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "equal-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-mutable?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-hash-function"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-equivalence-function"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-entries"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-keys"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-clear!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-copy"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-update!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-contains?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-delete!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-set!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-ref"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable-size"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hashtable?"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-hashtable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-eqv-hashtable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-eq-hashtable"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-for-eqv"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-by-identity"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lkawa/lib/rnrs/hashtables;

    invoke-direct {v0}, Lkawa/lib/rnrs/hashtables;-><init>()V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->$instance:Lkawa/lib/rnrs/hashtables;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/rnrs/hashtables;->$instance:Lkawa/lib/rnrs/hashtables;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->Lit0:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x1

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x3

    const/16 v5, 0x1000

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->make$Mneq$Mnhashtable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->make$Mneqv$Mnhashtable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x3002

    const/4 v5, 0x7

    invoke-direct {v0, v1, v5, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->make$Mnhashtable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnsize:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xb

    const/16 v5, 0x3003

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xc

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnset$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0xd

    const/16 v5, 0x2002

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mndelete$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mncontains$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x4004

    const/16 v5, 0xf

    invoke-direct {v0, v1, v5, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x10

    const/16 v5, 0x2001

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mncopy:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnclear$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnkeys:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnentries:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnmutable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x19

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->equal$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->string$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit21:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v3, Lkawa/lib/rnrs/hashtables;->Lit22:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->symbol$Mnhash:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/rnrs/hashtables;->$instance:Lkawa/lib/rnrs/hashtables;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static equalHash(Ljava/lang/Object;)I
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;

    .line 101
    nop

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method static hashByIdentity(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 15
    nop

    .line 16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static hashForEqv(Ljava/lang/Object;)I
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 18
    nop

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;)V
    .locals 1

    const/16 v0, 0x40

    invoke-static {p0, v0}, Lkawa/lib/rnrs/hashtables;->hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;I)V

    return-void
.end method

.method public static hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;I)V
    .locals 0
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "k"    # I

    .line 73
    nop

    .line 77
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 78
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->clear()V

    return-void
.end method

.method public static hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/rnrs/hashtables;->hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;Z)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;Z)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "mutable"    # Z

    .line 69
    nop

    .line 71
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    invoke-direct {v0, p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V

    return-object v0
.end method

.method public static hashtableDelete$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)V
    .locals 0
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;

    .line 54
    nop

    .line 55
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 56
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static hashtableEntries(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .locals 5
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 83
    nop

    .line 84
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->entriesVectorPair()Lgnu/lists/Pair;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    .local v0, "pair":Lgnu/lists/Pair;
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pair":Lgnu/lists/Pair;
    return-object v0
.end method

.method public static hashtableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;
    .locals 1
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 87
    nop

    .line 88
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public static hashtableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .locals 4
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 90
    nop

    .line 91
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 92
    .local v0, "hasher":Ljava/lang/Object;
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v3, Lkawa/lib/rnrs/hashtables;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2, v0, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v1, "x":Ljava/lang/Object;
    move-object v1, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_0
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 93
    sget-object v3, Lkawa/lib/rnrs/hashtables;->hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2, v0, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1

    .end local v1    # "x":Ljava/lang/Object;
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_1

    .line 92
    :cond_1
    nop

    .end local v0    # "hasher":Ljava/lang/Object;
    :goto_1
    return-object v0
.end method

.method public static hashtableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/lists/FVector;
    .locals 1
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 80
    nop

    .line 81
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->keysVector()Lgnu/lists/FVector;

    move-result-object v0

    return-object v0
.end method

.method public static hashtableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 44
    nop

    .line 45
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 46
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "node":Lgnu/kawa/util/HashNode;
    :goto_0
    return-object v1
.end method

.method public static hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 50
    nop

    .line 51
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 52
    invoke-virtual {p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static hashtableSize(Lkawa/lib/kawa/hashtable$HashTable;)I
    .locals 1
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 41
    nop

    .line 42
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->size()I

    move-result v0

    return v0
.end method

.method public static hashtableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "proc"    # Lgnu/mapping/Procedure;
    .param p3, "default"    # Ljava/lang/Object;

    .line 61
    nop

    .line 63
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 64
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p2, p3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/util/HashNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "node":Lgnu/kawa/util/HashNode;
    :goto_0
    return-object v1
.end method

.method public static isHashtable(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 38
    nop

    .line 39
    instance-of v0, p0, Lkawa/lib/kawa/hashtable$HashTable;

    return v0
.end method

.method public static isHashtableContains(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;

    .line 58
    nop

    .line 59
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public static isHashtableMutable(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .locals 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 97
    nop

    .line 98
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-boolean v1, p0, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static makeEqHashtable()Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    sget v0, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-static {v0}, Lkawa/lib/rnrs/hashtables;->makeEqHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeEqHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 4
    .param p0, "k"    # I

    .line 21
    nop

    .line 24
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    sget-object v1, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    sget v3, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-direct {v0, v1, v2, v3}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static makeEqvHashtable()Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    sget v0, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-static {v0}, Lkawa/lib/rnrs/hashtables;->makeEqvHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeEqvHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 4
    .param p0, "k"    # I

    .line 26
    nop

    .line 29
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

    sget v3, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-direct {v0, v1, v2, v3}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    sget v0, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-static {p0, p1, v0}, Lkawa/lib/rnrs/hashtables;->makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1
    .param p0, "comparison"    # Lgnu/mapping/Procedure;
    .param p1, "hash"    # Lgnu/mapping/Procedure;
    .param p2, "size"    # I

    .line 31
    nop

    .line 36
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    invoke-direct {v0, p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static stringCiHash(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 107
    nop

    .line 112
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static stringHash(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 104
    nop

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static symbolHash(Lgnu/mapping/Symbol;)I
    .locals 1
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 114
    nop

    .line 115
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    return v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 26
    :pswitch_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {}, Lkawa/lib/rnrs/hashtables;->makeEqvHashtable()Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2
    invoke-static {}, Lkawa/lib/rnrs/hashtables;->makeEqHashtable()Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
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

    .line 114
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->symbolHash(Lgnu/mapping/Symbol;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol-hash"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 107
    :pswitch_2
    :try_start_1
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->stringCiHash(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-ci-hash"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 104
    :pswitch_3
    :try_start_2
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->stringHash(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-hash"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 101
    :pswitch_4
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->equalHash(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 97
    :pswitch_5
    :try_start_3
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->isHashtableMutable(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-mutable?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 90
    :pswitch_6
    :try_start_4
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-hash-function"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 87
    :pswitch_7
    :try_start_5
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;

    move-result-object p1

    return-object p1

    :catch_5
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-equivalence-function"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 83
    :pswitch_8
    :try_start_6
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableEntries(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_6
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-entries"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 80
    :pswitch_9
    :try_start_7
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/lists/FVector;

    move-result-object p1

    return-object p1

    :catch_7
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-keys"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 73
    :pswitch_a
    :try_start_8
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 74
    :catch_8
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-clear!"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 69
    :pswitch_b
    :try_start_9
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    :catch_9
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-copy"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 41
    :pswitch_c
    :try_start_a
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableSize(Lkawa/lib/kawa/hashtable$HashTable;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_a
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-size"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 38
    :pswitch_d
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->isHashtable(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1

    .line 26
    :pswitch_e
    :try_start_b
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    invoke-static {p1}, Lkawa/lib/rnrs/hashtables;->makeEqvHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 27
    :catch_b
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-eqv-hashtable"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 21
    :pswitch_f
    :try_start_c
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_c

    invoke-static {p1}, Lkawa/lib/rnrs/hashtables;->makeEqHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 22
    :catch_c
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-eq-hashtable"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 18
    :pswitch_10
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashForEqv(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_11
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashByIdentity(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const-string v0, "hashtable-clear!"

    const-string v1, "hashtable-copy"

    const-string v2, "make-hashtable"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p1}, Lkawa/lib/rnrs/hashtables;->hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;I)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 75
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 74
    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 69
    :sswitch_1
    :try_start_2
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {p2, v5}, Lkawa/lib/rnrs/hashtables;->hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;Z)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

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

    .line 58
    :sswitch_2
    :try_start_4
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2, p3}, Lkawa/lib/rnrs/hashtables;->isHashtableContains(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Z

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

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "hashtable-contains?"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 54
    :sswitch_3
    :try_start_5
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2, p3}, Lkawa/lib/rnrs/hashtables;->hashtableDelete$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_5
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "hashtable-delete!"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 31
    :sswitch_4
    :try_start_6
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_6

    invoke-static {p2, p3}, Lkawa/lib/rnrs/hashtables;->makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 33
    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 32
    :catch_7
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_4
        0xd -> :sswitch_3
        0xe -> :sswitch_2
        0x10 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "make-hashtable"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hashtable-set!"

    invoke-direct {p3, p1, p4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 44
    :sswitch_1
    :try_start_1
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3, p4}, Lkawa/lib/rnrs/hashtables;->hashtableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hashtable-ref"

    invoke-direct {p3, p1, p4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 31
    :sswitch_2
    :try_start_2
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    invoke-static {p2, p3, p1}, Lkawa/lib/rnrs/hashtables;->makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 34
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v0, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 33
    :catch_3
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 32
    :catch_4
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "hashtable-update!"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_0

    .line 61
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p4, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3, p4, p5}, Lkawa/lib/rnrs/hashtables;->hashtableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 62
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v0, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 61
    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, 0x1

    invoke-direct {p3, p1, v0, p4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_0
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 21
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 26
    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 21
    :pswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
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

    .line 15
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 114
    :pswitch_1
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 107
    :pswitch_2
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1
    return v1

    .line 104
    :pswitch_3
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2
    return v1

    .line 101
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 97
    :pswitch_5
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_3

    return v1

    :cond_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 90
    :pswitch_6
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_4

    return v1

    :cond_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 87
    :pswitch_7
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_5

    return v1

    :cond_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 83
    :pswitch_8
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 80
    :pswitch_9
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_7

    return v1

    :cond_7
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 73
    :pswitch_a
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_8

    return v1

    :cond_8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 69
    :pswitch_b
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_9

    return v1

    :cond_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 41
    :pswitch_c
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_a

    return v1

    :cond_a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 38
    :pswitch_d
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 26
    :pswitch_e
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 21
    :pswitch_f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 18
    :pswitch_10
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 15
    :pswitch_11
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
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

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 73
    :sswitch_0
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    return v3

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 69
    :sswitch_1
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_1

    return v3

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 58
    :sswitch_2
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_2

    return v3

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 54
    :sswitch_3
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_3

    return v3

    :cond_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 31
    :sswitch_4
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_4

    return v3

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_5

    const p1, -0xbfffe

    return p1

    :cond_5
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_4
        0xd -> :sswitch_3
        0xe -> :sswitch_2
        0x10 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const v3, -0xbffff

    sparse-switch v0, :sswitch_data_0

    .line 31
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 50
    :sswitch_0
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    return v3

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 44
    :sswitch_1
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_1

    return v3

    :cond_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 31
    :sswitch_2
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_2

    return v3

    :cond_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_3

    const p1, -0xbfffe

    return p1

    :cond_3
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 61
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    const p1, -0xbffff

    return p1

    :cond_0
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/mapping/Procedure;

    if-nez p2, :cond_1

    const p1, -0xbfffd

    return p1

    :cond_1
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x4

    iput p1, p6, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
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

    .line 26
    nop

    .line 31
    nop

    .line 38
    nop

    .line 41
    nop

    .line 44
    nop

    .line 50
    nop

    .line 54
    nop

    .line 58
    nop

    .line 61
    nop

    .line 69
    nop

    .line 73
    nop

    .line 80
    nop

    .line 83
    nop

    .line 87
    nop

    .line 90
    nop

    .line 97
    nop

    .line 101
    nop

    .line 104
    nop

    .line 107
    nop

    .line 114
    return-void
.end method
