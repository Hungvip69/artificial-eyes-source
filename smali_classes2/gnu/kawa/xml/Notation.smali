.class public Lgnu/kawa/xml/Notation;
.super Ljava/lang/Object;
.source "Notation.java"


# instance fields
.field qname:Lgnu/mapping/Symbol;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lgnu/kawa/xml/Notation;Lgnu/kawa/xml/Notation;)Z
    .locals 2
    .param p1, "n1"    # Lgnu/kawa/xml/Notation;
    .param p2, "n2"    # Lgnu/kawa/xml/Notation;

    .line 10
    iget-object v0, p1, Lgnu/kawa/xml/Notation;->qname:Lgnu/mapping/Symbol;

    iget-object v1, p2, Lgnu/kawa/xml/Notation;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v1}, Lgnu/mapping/Symbol;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 15
    instance-of v0, p1, Lgnu/kawa/xml/Notation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/Notation;

    invoke-virtual {p0, p0, v0}, Lgnu/kawa/xml/Notation;->equals(Lgnu/kawa/xml/Notation;Lgnu/kawa/xml/Notation;)Z

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

    .line 20
    iget-object v0, p0, Lgnu/kawa/xml/Notation;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    return v0
.end method
