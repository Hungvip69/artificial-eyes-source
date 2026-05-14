.class public Lgnu/bytecode/CpoolValue2;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolValue2.java"


# instance fields
.field tag:I

.field value:J


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "tag"    # I

    .line 14
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    iput p1, p0, Lgnu/bytecode/CpoolValue2;->tag:I

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;IIJ)V
    .locals 1
    .param p1, "cpool"    # Lgnu/bytecode/ConstantPool;
    .param p2, "tag"    # I
    .param p3, "hash"    # I
    .param p4, "value"    # J

    .line 18
    invoke-direct {p0, p1, p3}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 19
    iput p2, p0, Lgnu/bytecode/CpoolValue2;->tag:I

    .line 20
    iput-wide p4, p0, Lgnu/bytecode/CpoolValue2;->value:J

    .line 21
    iget v0, p1, Lgnu/bytecode/ConstantPool;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lgnu/bytecode/ConstantPool;->count:I

    .line 22
    return-void
.end method

.method static hashCode(J)I
    .locals 1
    .param p0, "val"    # J

    .line 31
    long-to-int v0, p0

    return v0
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .line 24
    iget v0, p0, Lgnu/bytecode/CpoolValue2;->tag:I

    return v0
.end method

.method public final getValue()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lgnu/bytecode/CpoolValue2;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 35
    iget v0, p0, Lgnu/bytecode/CpoolValue2;->hash:I

    if-nez v0, :cond_0

    .line 36
    iget-wide v0, p0, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v0, v1}, Lgnu/bytecode/CpoolValue2;->hashCode(J)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolValue2;->hash:I

    .line 37
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolValue2;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 6
    .param p1, "dst"    # Lgnu/bytecode/ClassTypeWriter;
    .param p2, "verbosity"    # I

    .line 48
    iget v0, p0, Lgnu/bytecode/CpoolValue2;->tag:I

    const/4 v1, 0x5

    const-string v2, "=0x"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 50
    if-lez p2, :cond_0

    .line 51
    const-string v0, "Long "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 52
    :cond_0
    iget-wide v0, p0, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-virtual {p1, v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(J)V

    .line 53
    if-le p2, v3, :cond_3

    iget-wide v0, p0, Lgnu/bytecode/CpoolValue2;->value:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_3

    .line 55
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 56
    iget-wide v0, p0, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    if-lez p2, :cond_2

    .line 62
    const-string v0, "Double "

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 63
    :cond_2
    iget-wide v0, p0, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(D)V

    .line 64
    if-le p2, v3, :cond_3

    .line 66
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 67
    iget-wide v0, p0, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 70
    :cond_3
    :goto_0
    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget v0, p0, Lgnu/bytecode/CpoolValue2;->tag:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 43
    iget-wide v0, p0, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 44
    return-void
.end method
