.class Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
.super Ljava/lang/Object;
.source "Huff.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Symbol"
.end annotation


# instance fields
.field public back:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

.field public final integer:I

.field public next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

.field public one:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

.field public weight:J

.field public zero:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "integer"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->integer:I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->next:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 91
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->back:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 92
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->one:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 93
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->zero:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 94
    return-void
.end method


# virtual methods
.method public postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z
    .locals 8
    .param p1, "pm"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;

    .line 97
    const/4 v0, 0x1

    .line 98
    .local v0, "result":Z
    move-object v1, p1

    check-cast v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 100
    .local v1, "that":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->integer:I

    iget v3, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->integer:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_8

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    iget-wide v5, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->weight:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->back:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->back:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eq v2, v3, :cond_3

    .line 104
    return v4

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->zero:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 107
    .local v2, "zero":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->one:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    .line 108
    .local v3, "one":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    if-nez v2, :cond_4

    .line 109
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->zero:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    if-eqz v5, :cond_5

    .line 110
    return v4

    .line 113
    :cond_4
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->zero:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result v0

    .line 115
    :cond_5
    if-nez v3, :cond_6

    .line 116
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->one:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    if-eqz v5, :cond_7

    .line 117
    return v4

    .line 120
    :cond_6
    iget-object v4, v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->one:Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;->postMortem(Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/PostMortem;)Z

    move-result v0

    .line 122
    :cond_7
    return v0

    .line 101
    .end local v2    # "zero":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    .end local v3    # "one":Lcom/google/appinventor/components/runtime/repackaged/org/json/zip/Huff$Symbol;
    :cond_8
    :goto_2
    return v4
.end method
