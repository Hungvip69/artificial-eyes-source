.class public abstract Lgnu/bytecode/CpoolEntry;
.super Ljava/lang/Object;
.source "CpoolEntry.java"


# instance fields
.field hash:I

.field public index:I

.field next:Lgnu/bytecode/CpoolEntry;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ConstantPool;I)V
    .locals 6
    .param p1, "cpool"    # Lgnu/bytecode/ConstantPool;
    .param p2, "h"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p2, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    .line 55
    iget-boolean v0, p1, Lgnu/bytecode/ConstantPool;->locked:Z

    if-nez v0, :cond_5

    .line 57
    iget v0, p1, Lgnu/bytecode/ConstantPool;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lgnu/bytecode/ConstantPool;->count:I

    iput v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    .line 60
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-nez v0, :cond_0

    .line 61
    const/16 v0, 0x3c

    new-array v0, v0, [Lgnu/bytecode/CpoolEntry;

    iput-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    goto :goto_1

    .line 62
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    iget-object v1, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 64
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v0, v0

    .line 65
    .local v0, "old_size":I
    iget-object v1, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 66
    .local v1, "new_size":I
    new-array v2, v1, [Lgnu/bytecode/CpoolEntry;

    .line 67
    .local v2, "new_pool":[Lgnu/bytecode/CpoolEntry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 68
    iget-object v4, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v4, v4, v3

    aput-object v4, v2, v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "i":I
    :cond_1
    iput-object v2, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 73
    .end local v0    # "old_size":I
    .end local v1    # "new_size":I
    .end local v2    # "new_pool":[Lgnu/bytecode/CpoolEntry;
    :cond_2
    :goto_1
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-eqz v0, :cond_3

    iget v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    int-to-double v0, v0

    iget-object v2, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v2, v2

    int-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_4

    .line 74
    :cond_3
    invoke-virtual {p1}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 77
    :cond_4
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    iget v1, p0, Lgnu/bytecode/CpoolEntry;->index:I

    aput-object p0, v0, v1

    .line 79
    invoke-virtual {p0, p1}, Lgnu/bytecode/CpoolEntry;->add_hashed(Lgnu/bytecode/ConstantPool;)V

    .line 80
    return-void

    .line 56
    :cond_5
    new-instance v0, Ljava/lang/Error;

    const-string v1, "adding new entry to locked contant pool"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method add_hashed(Lgnu/bytecode/ConstantPool;)V
    .locals 3
    .param p1, "cpool"    # Lgnu/bytecode/ConstantPool;

    .line 44
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    .line 45
    .local v0, "hashTab":[Lgnu/bytecode/CpoolEntry;
    iget v1, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 46
    .local v1, "index":I
    aget-object v2, v0, v1

    iput-object v2, p0, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    .line 47
    aput-object p0, v0, v1

    .line 48
    return-void
.end method

.method public getIndex()I
    .locals 1

    .line 26
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    return v0
.end method

.method public abstract getTag()I
.end method

.method public hashCode()I
    .locals 1

    .line 34
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    return v0
.end method

.method public abstract print(Lgnu/bytecode/ClassTypeWriter;I)V
.end method

.method abstract write(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
