.class public Lgnu/kawa/slib/condition;
.super Ljava/lang/RuntimeException;
.source "conditions.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nconditions.scm\nScheme\n*S Scheme\n*F\n+ 1 conditions.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/conditions.scm\n*L\n107#1,2:107\n*E\n"
.end annotation


# instance fields
.field public type$Mnfield$Mnalist:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    move-object v0, p0

    .line 108
    .local v0, "this":Lgnu/kawa/slib/condition;
    .local p1, "type$Mnfield$Mnalist":Ljava/lang/Object;
    iput-object p1, v0, Lgnu/kawa/slib/condition;->type$Mnfield$Mnalist:Ljava/lang/Object;

    return-void
.end method
