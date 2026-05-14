.class Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;
.super Ljava/lang/Object;
.source "YailDictionary.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/YailDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DictIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;"
    }
.end annotation


# instance fields
.field final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 594
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;->it:Ljava/util/Iterator;

    .line 596
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5

    .line 605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 606
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 590
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;->next()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 612
    return-void
.end method
