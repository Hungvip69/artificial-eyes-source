.class public Lgnu/kawa/slib/srfi69;
.super Lgnu/expr/ModuleBody;
.source "srfi69.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi69.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi69.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm\n*L\n25#1,162:25\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/srfi69;

.field static final Lit0:Lgnu/math/IntNum;

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

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final alist$Mn$Grhash$Mntable:Lgnu/expr/ModuleMethod;

.field public static final hash:Lgnu/expr/ModuleMethod;

.field public static final hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mn$Gralist:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mncopy:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mndelete$Ex:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnexists$Qu:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnfold:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnkeys:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnmerge$Ex:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnref:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnref$Sldefault:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnset$Ex:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnsize:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnupdate$Ex$Sldefault:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnvalues:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnwalk:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Qu:Lgnu/mapping/Location;

.field static final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field public static final make$Mnhash$Mntable:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

.field public static final string$Mnhash:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-values"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-keys"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-merge!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-copy"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table->alist"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "alist->hash-table"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-fold"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-walk"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-update!/default"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-update!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-ref/default"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-ref"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-hash-table"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-hash-function"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-equivalence-function"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-by-identity"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-ci-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v0, 0x40

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lgnu/kawa/slib/srfi69;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi69;-><init>()V

    sput-object v0, Lgnu/kawa/slib/srfi69;->$instance:Lgnu/kawa/slib/srfi69;

    .line 38
    const-string v0, "hashtable$Qu"

    const-string v1, "kawa.lib.rnrs.hashtables"

    invoke-static {v1, v0}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Qu:Lgnu/mapping/Location;

    const-string v0, "hashtable$Mnsize"

    invoke-static {v1, v0}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnsize:Lgnu/mapping/Location;

    const-string v0, "hashtable$Mnset$Ex"

    invoke-static {v1, v0}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnset$Ex:Lgnu/mapping/Location;

    const-string v0, "hashtable$Mndelete$Ex"

    invoke-static {v1, v0}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mndelete$Ex:Lgnu/mapping/Location;

    const-string v0, "hashtable$Mncontains$Qu"

    invoke-static {v1, v0}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnexists$Qu:Lgnu/mapping/Location;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/srfi69;->$instance:Lgnu/kawa/slib/srfi69;

    sget-object v2, Lgnu/kawa/slib/srfi69;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/4 v3, 0x1

    const/16 v4, 0x2001

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->string$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi69;->Lit5:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x9

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v3, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi69;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x3000

    const/16 v5, 0xb

    invoke-direct {v0, v1, v5, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->make$Mnhash$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi69;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x3002

    const/16 v5, 0xf

    invoke-direct {v0, v1, v5, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi69;->Lit9:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x11

    const/16 v5, 0x3003

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnref$Sldefault:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi69;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x4003

    const/16 v6, 0x12

    invoke-direct {v0, v1, v6, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi69;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x4004

    const/16 v6, 0x14

    invoke-direct {v0, v1, v6, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnupdate$Ex$Sldefault:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi69;->Lit12:Lgnu/mapping/SimpleSymbol;

    const/16 v3, 0x15

    const/16 v6, 0x2002

    invoke-direct {v0, v1, v3, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnwalk:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnfold:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm:166"

    const-string v7, "source-location"

    invoke-virtual {v0, v7, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v2, Lgnu/kawa/slib/srfi69;->Lit14:Lgnu/mapping/SimpleSymbol;

    const/16 v8, 0x4001

    const/16 v9, 0x18

    invoke-direct {v0, v1, v9, v2, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->alist$Mn$Grhash$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v8, Lgnu/kawa/slib/srfi69;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v8, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mn$Gralist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1d

    sget-object v8, Lgnu/kawa/slib/srfi69;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v8, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mncopy:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1e

    sget-object v8, Lgnu/kawa/slib/srfi69;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v8, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnmerge$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm:183"

    invoke-virtual {v0, v7, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x20

    sget-object v6, Lgnu/kawa/slib/srfi69;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v6, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnkeys:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm:186"

    invoke-virtual {v0, v7, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x22

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnvalues:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/srfi69;->$instance:Lgnu/kawa/slib/srfi69;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    sget-object v0, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    invoke-static {p1}, Lgnu/kawa/slib/srfi69;->appropriateHashFunctionFor(Ljava/lang/Object;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    move-object v1, p0

    check-cast v1, Lgnu/lists/LList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit0:Lgnu/math/IntNum;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v1, v2, v0

    invoke-static {v2}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0

    .line 161
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v1, "length"

    invoke-direct {p2, p1, v1, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 7
    .param p0, "alist"    # Ljava/lang/Object;
    .param p1, "comparison"    # Ljava/lang/Object;
    .param p2, "hash"    # Ljava/lang/Object;
    .param p3, "size"    # Ljava/lang/Object;

    .line 156
    const-string v0, "make-hash-table"

    .line 162
    :try_start_0
    move-object v1, p1

    check-cast v1, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    move-object v2, p2

    check-cast v2, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    move-object v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {v1, v2, v0}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 163
    .local v0, "hash$Mntable":Lkawa/lib/kawa/hashtable$HashTable;
    nop

    .line 167
    move-object v2, p0

    .local v2, "arg0":Ljava/lang/Object;
    :goto_0
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_0

    .line 168
    .end local v2    # "arg0":Ljava/lang/Object;
    nop

    .end local v0    # "hash$Mntable":Lkawa/lib/kawa/hashtable$HashTable;
    return-object v0

    .line 167
    .restart local v0    # "hash$Mntable":Lkawa/lib/kawa/hashtable$HashTable;
    .restart local v2    # "arg0":Ljava/lang/Object;
    :cond_0
    :try_start_3
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    .local v1, "arg0":Lgnu/lists/Pair;
    move-object v1, v3

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 164
    nop

    .line 165
    .local v3, "elem":Ljava/lang/Object;
    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 166
    invoke-virtual {v4, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/srfi69;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v3    # "elem":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 163
    .end local v0    # "hash$Mntable":Lkawa/lib/kawa/hashtable$HashTable;
    .end local v1    # "arg0":Lgnu/lists/Pair;
    .end local v2    # "arg0":Ljava/lang/Object;
    .end local p0    # "alist":Ljava/lang/Object;
    .end local p1    # "comparison":Ljava/lang/Object;
    .end local p2    # "hash":Ljava/lang/Object;
    .end local p3    # "size":Ljava/lang/Object;
    :catch_0
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "arg0"

    const/4 p3, -0x2

    invoke-direct {p1, p0, p2, p3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 162
    :catch_1
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p2, 0x2

    invoke-direct {p1, p0, v0, p2, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p3, 0x1

    invoke-direct {p1, p0, v0, p3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v0, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method static appropriateHashFunctionFor(Ljava/lang/Object;)Lgnu/mapping/Procedure;
    .locals 4

    .line 86
    nop

    .line 87
    sget-object v0, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lgnu/kawa/slib/srfi69;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v3, :cond_3

    :goto_2
    check-cast v0, Lgnu/mapping/Procedure;

    goto :goto_7

    .line 88
    :cond_3
    sget-object v0, Lkawa/lib/strings;->string$Eq$Qu:Lgnu/expr/ModuleMethod;

    if-ne p0, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    sget-object v0, Lgnu/kawa/slib/srfi69;->string$Mnhash:Lgnu/expr/ModuleMethod;

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    :goto_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v3, :cond_7

    goto :goto_2

    .line 89
    :cond_7
    sget-object v0, Lkawa/lib/rnrs/unicode;->string$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    if-ne p0, v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_9

    sget-object p0, Lgnu/kawa/slib/srfi69;->string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_a
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    :goto_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v0, :cond_b

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Procedure;

    goto :goto_7

    :cond_b
    sget-object v0, Lgnu/kawa/slib/srfi69;->hash:Lgnu/expr/ModuleMethod;

    :goto_7
    return-object v0
.end method

.method public static hash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->hash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 64
    nop

    .line 65
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .local v0, "h":I
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "h":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .restart local v0    # "h":I
    :goto_0
    move v0, v1

    .line 66
    if-nez p1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_1
    return-object v1
.end method

.method public static hashByIdentity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->hashByIdentity(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hashByIdentity(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 68
    nop

    .line 69
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    .line 70
    .local v0, "h":I
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_0
    return-object v1
.end method

.method public static hashTable$To$Alist(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .locals 1
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 170
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->toAlist()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 2
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 173
    nop

    .line 174
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V

    return-object v0
.end method

.method public static hashTableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;
    .locals 1
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 78
    nop

    .line 80
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public static hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "acc"    # Ljava/lang/Object;

    .line 151
    invoke-virtual {p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;->fold(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;
    .locals 1
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 82
    nop

    .line 84
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public static hashTableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .locals 2
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 182
    nop

    .line 183
    sget-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, v0, v1}, Lgnu/kawa/slib/srfi69;->hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableMerge$Ex(Lkawa/lib/kawa/hashtable$HashTable;Lkawa/lib/kawa/hashtable$HashTable;)V
    .locals 0
    .param p0, "hash$Mntable1"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "hash$Mntable2"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 176
    nop

    .line 179
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->putAll(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 180
    return-void
.end method

.method public static hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/srfi69;->hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 116
    nop

    .line 119
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 120
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_1

    .line 121
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v1, :cond_0

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 122
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "hash-table-ref: no value associated with"

    invoke-static {v2, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "node":Lgnu/kawa/util/HashNode;
    :goto_1
    return-object v1
.end method

.method public static hashTableRef$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "function"    # Ljava/lang/Object;
    .param p3, "thunk"    # Ljava/lang/Object;

    .line 129
    nop

    .line 131
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 132
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_1

    .line 134
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v1, :cond_0

    .line 135
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v2, p3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "hash-table-update!: no value exists for key"

    invoke-static {v2, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    goto :goto_1

    :cond_1
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 137
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/util/HashNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "node":Lgnu/kawa/util/HashNode;
    :goto_1
    return-void
.end method

.method public static hashTableUpdate$Ex$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "function"    # Ljava/lang/Object;
    .param p3, "default"    # Ljava/lang/Object;

    .line 139
    nop

    .line 140
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 141
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 142
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_0

    .line 143
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 144
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/util/HashNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "node":Lgnu/kawa/util/HashNode;
    :goto_0
    return-void
.end method

.method public static hashTableValues(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .locals 2
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 185
    nop

    .line 186
    sget-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, v0, v1}, Lgnu/kawa/slib/srfi69;->hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableWalk(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;)V
    .locals 0
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "proc"    # Lgnu/mapping/Procedure;

    .line 146
    nop

    .line 149
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->walk(Lgnu/mapping/Procedure;)V

    return-void
.end method

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x"    # Ljava/lang/Object;

    .line 166
    return-object p0
.end method

.method static lambda2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "acc"    # Ljava/lang/Object;

    .line 183
    invoke-static {p0, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0
.end method

.method static lambda3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "acc"    # Ljava/lang/Object;

    .line 186
    invoke-static {p1, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static makeHashTable()Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    sget-object v0, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    invoke-static {v0}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeHashTable(Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 2

    invoke-static {p0}, Lgnu/kawa/slib/srfi69;->appropriateHashFunctionFor(Ljava/lang/Object;)Lgnu/mapping/Procedure;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {p0, v0, v1}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    const/16 v0, 0x40

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1
    .param p0, "comparison"    # Lgnu/mapping/Procedure;
    .param p1, "hash"    # Lgnu/mapping/Procedure;
    .param p2, "size"    # I

    .line 94
    nop

    .line 100
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    invoke-direct {v0, p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static stringCiHash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->stringCiHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static stringCiHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .param p0, "s"    # Ljava/lang/Object;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 52
    nop

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 58
    .local v0, "h":I
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_0
    return-object v1
.end method

.method public static stringHash(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->stringHash(Ljava/lang/CharSequence;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static stringHash(Ljava/lang/CharSequence;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 48
    nop

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 50
    .local v0, "h":I
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_0
    return-object v1
.end method

.method static symbolHash(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->symbolHash(Lgnu/mapping/Symbol;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static symbolHash(Lgnu/mapping/Symbol;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .param p0, "s"    # Lgnu/mapping/Symbol;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 60
    nop

    .line 61
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 62
    .local v0, "h":I
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_0
    return-object v1
.end method

.method static vectorHash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->vectorHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static vectorHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 74
    .local v0, "h":I
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_0
    return-object v1
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 94
    invoke-static {}, Lgnu/kawa/slib/srfi69;->makeHashTable()Lkawa/lib/kawa/hashtable$HashTable;

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

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 185
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableValues(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-values"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 182
    :sswitch_1
    :try_start_1
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-keys"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 173
    :sswitch_2
    :try_start_2
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-copy"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 170
    :sswitch_3
    :try_start_3
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTable$To$Alist(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table->alist"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 156
    :sswitch_4
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 166
    :sswitch_5
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 94
    :sswitch_6
    :try_start_4
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 95
    :catch_4
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-hash-table"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 82
    :sswitch_7
    :try_start_5
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;

    move-result-object p1

    return-object p1

    :catch_5
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-hash-function"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 78
    :sswitch_8
    :try_start_6
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;

    move-result-object p1

    return-object p1

    :catch_6
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-equivalence-function"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 68
    :sswitch_9
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashByIdentity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 64
    :sswitch_a
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :sswitch_b
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->stringCiHash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :sswitch_c
    :try_start_7
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->stringHash(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_7
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-hash"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x3 -> :sswitch_b
        0x5 -> :sswitch_a
        0x7 -> :sswitch_9
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0x17 -> :sswitch_5
        0x18 -> :sswitch_4
        0x1c -> :sswitch_3
        0x1d -> :sswitch_2
        0x20 -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "hash-table-merge!"

    const-string v1, "hash-table-walk"

    const-string v2, "make-hash-table"

    const-string v3, "string-hash"

    iget v4, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    sparse-switch v4, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p3, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->hashTableMerge$Ex(Lkawa/lib/kawa/hashtable$HashTable;Lkawa/lib/kawa/hashtable$HashTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 177
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 176
    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 156
    :sswitch_1
    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 146
    :sswitch_2
    :try_start_2
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->hashTableWalk(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 147
    :catch_2
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 146
    :catch_3
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 116
    :sswitch_3
    :try_start_4
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "hash-table-ref"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 94
    :sswitch_4
    :try_start_5
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_5

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 96
    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 95
    :catch_6
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 68
    :sswitch_5
    :try_start_7
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2, p1}, Lgnu/kawa/slib/srfi69;->hashByIdentity(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_7
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "hash-by-identity"

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 64
    :sswitch_6
    :try_start_8
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    invoke-static {p2, p1}, Lgnu/kawa/slib/srfi69;->hash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_8
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "hash"

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 52
    :sswitch_7
    :try_start_9
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {p2, p1}, Lgnu/kawa/slib/srfi69;->stringCiHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_9
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "string-ci-hash"

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 48
    :sswitch_8
    :try_start_a
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_b

    :try_start_b
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_a

    invoke-static {p2, p1}, Lgnu/kawa/slib/srfi69;->stringHash(Ljava/lang/CharSequence;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_a
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_b
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v3, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_7
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0xb -> :sswitch_4
        0xf -> :sswitch_3
        0x15 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "hash-table-fold"

    const-string v1, "make-hash-table"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->lambda3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    return-object p1

    .line 183
    :sswitch_1
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->lambda2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    return-object p1

    .line 156
    :sswitch_2
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 151
    :sswitch_3
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 152
    :catch_0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 151
    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 129
    :sswitch_4
    :try_start_2
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_2
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hash-table-update!"

    invoke-direct {p3, p1, p4, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 125
    :sswitch_5
    :try_start_3
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableRef$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hash-table-ref/default"

    invoke-direct {p3, p1, p4, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 116
    :sswitch_6
    :try_start_4
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_4
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hash-table-ref"

    invoke-direct {p3, p1, p4, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 94
    :sswitch_7
    :try_start_5
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_7

    :try_start_6
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_5

    invoke-static {p2, p3, p1}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 98
    :catch_5
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v1, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 96
    :catch_6
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 95
    :catch_7
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_7
        0xf -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x16 -> :sswitch_3
        0x18 -> :sswitch_2
        0x1f -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 156
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_0
    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 139
    :sswitch_1
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hash-table-update!/default"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 129
    :sswitch_2
    :try_start_1
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_1
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hash-table-update!"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_2
        0x14 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 94
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
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 185
    :sswitch_0
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 182
    :sswitch_1
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 173
    :sswitch_2
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 170
    :sswitch_3
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_3

    return v1

    :cond_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 156
    :sswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 166
    :sswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 94
    :sswitch_6
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_4

    return v1

    :cond_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 82
    :sswitch_7
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_5

    return v1

    :cond_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 78
    :sswitch_8
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_6

    return v1

    :cond_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 68
    :sswitch_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 64
    :sswitch_a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 52
    :sswitch_b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 48
    :sswitch_c
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_7
    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x3 -> :sswitch_b
        0x5 -> :sswitch_a
        0x7 -> :sswitch_9
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0x17 -> :sswitch_5
        0x18 -> :sswitch_4
        0x1c -> :sswitch_3
        0x1d -> :sswitch_2
        0x20 -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const v2, -0xbfffe

    const/4 v3, 0x0

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 176
    :sswitch_0
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez p2, :cond_1

    return v2

    :cond_1
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 156
    :sswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 146
    :sswitch_2
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_2

    return v1

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_3

    return v2

    :cond_3
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 116
    :sswitch_3
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_4

    return v1

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 94
    :sswitch_4
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_5

    return v1

    :cond_5
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_6

    return v2

    :cond_6
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 68
    :sswitch_5
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    if-eqz p2, :cond_7

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_7
    return v2

    .line 64
    :sswitch_6
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    if-eqz p2, :cond_8

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_8
    return v2

    .line 52
    :sswitch_7
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    if-eqz p2, :cond_9

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_9
    return v2

    .line 48
    :sswitch_8
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    if-eqz p2, :cond_a

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_a
    return v2

    :cond_b
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_7
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0xb -> :sswitch_4
        0xf -> :sswitch_3
        0x15 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffe

    const v2, -0xbffff

    const/4 v3, 0x0

    const/4 v4, 0x3

    sparse-switch v0, :sswitch_data_0

    .line 94
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 186
    :sswitch_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 183
    :sswitch_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 156
    :sswitch_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 151
    :sswitch_3
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    return v2

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_1

    return v1

    :cond_1
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 129
    :sswitch_4
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_2

    return v2

    :cond_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 125
    :sswitch_5
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_3

    return v2

    :cond_3
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 116
    :sswitch_6
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_4

    return v2

    :cond_4
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 94
    :sswitch_7
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_5

    return v2

    :cond_5
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_6

    return v1

    :cond_6
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_7
        0xf -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x16 -> :sswitch_3
        0x18 -> :sswitch_2
        0x1f -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x4

    sparse-switch v0, :sswitch_data_0

    .line 129
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 156
    :sswitch_0
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 139
    :sswitch_1
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 129
    :sswitch_2
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_2
        0x14 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 25
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 27
    nop

    .line 28
    nop

    .line 37
    nop

    .line 38
    nop

    .line 46
    nop

    .line 48
    nop

    .line 52
    nop

    .line 60
    nop

    .line 64
    nop

    .line 68
    nop

    .line 72
    nop

    .line 76
    nop

    .line 78
    nop

    .line 82
    nop

    .line 86
    nop

    .line 94
    nop

    .line 116
    nop

    .line 125
    nop

    .line 129
    nop

    .line 139
    nop

    .line 146
    nop

    .line 151
    nop

    .line 156
    nop

    .line 170
    nop

    .line 173
    nop

    .line 176
    nop

    .line 182
    nop

    .line 185
    return-void
.end method
