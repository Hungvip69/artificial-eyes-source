.class public Lgnu/kawa/xml/UntypedAtomic;
.super Ljava/lang/Object;
.source "UntypedAtomic.java"


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;

    .line 30
    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lgnu/kawa/xml/UntypedAtomic;

    iget-object v1, v1, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 25
    iget-object v0, p0, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lgnu/kawa/xml/UntypedAtomic;->text:Ljava/lang/String;

    return-object v0
.end method
