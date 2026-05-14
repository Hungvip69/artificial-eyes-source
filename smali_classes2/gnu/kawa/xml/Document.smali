.class public Lgnu/kawa/xml/Document;
.super Ljava/lang/Object;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/xml/Document$DocReference;
    }
.end annotation


# static fields
.field private static cache:Ljava/util/HashMap;

.field private static docMapLocation:Lgnu/mapping/ThreadLocation;

.field public static final document:Lgnu/kawa/xml/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lgnu/kawa/xml/Document;

    invoke-direct {v0}, Lgnu/kawa/xml/Document;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->document:Lgnu/kawa/xml/Document;

    .line 39
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "document-map"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static clearLocalCache()V
    .locals 2

    .line 61
    sget-object v0, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 62
    .local v0, "loc":Lgnu/mapping/Location;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static clearSoftCache()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method public static parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 3
    .param p0, "uri"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    .line 35
    .local v0, "tree":Lgnu/xml/NodeTree;
    invoke-static {p0, v0}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 36
    new-instance v1, Lgnu/kawa/xml/KDocument;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lgnu/kawa/xml/KDocument;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v1
.end method

.method public static parse(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/Object;
    .param p1, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 21
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 22
    .local v0, "messages":Lgnu/text/SourceMessages;
    instance-of v1, p1, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_0

    .line 23
    move-object v1, p1

    check-cast v1, Lgnu/lists/XConsumer;

    invoke-interface {v1, p0}, Lgnu/lists/XConsumer;->beginEntity(Ljava/lang/Object;)V

    .line 24
    :cond_0
    invoke-static {p0, v0, p1}, Lgnu/xml/XMLParser;->parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 25
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v1

    if-nez v1, :cond_2

    .line 28
    instance-of v1, p1, Lgnu/lists/XConsumer;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, p1

    check-cast v1, Lgnu/lists/XConsumer;

    invoke-interface {v1}, Lgnu/lists/XConsumer;->endEntity()V

    .line 30
    :cond_1
    return-void

    .line 26
    :cond_2
    new-instance v1, Lgnu/text/SyntaxException;

    const-string v2, "document function read invalid XML"

    invoke-direct {v1, v2, v0}, Lgnu/text/SyntaxException;-><init>(Ljava/lang/String;Lgnu/text/SourceMessages;)V

    throw v1
.end method

.method public static declared-synchronized parseCached(Lgnu/text/Path;)Lgnu/kawa/xml/KDocument;
    .locals 7
    .param p0, "uri"    # Lgnu/text/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-class v0, Lgnu/kawa/xml/Document;

    monitor-enter v0

    .line 85
    nop

    :goto_0
    :try_start_0
    sget-object v1, Lgnu/kawa/xml/Document$DocReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lgnu/kawa/xml/Document$DocReference;

    .line 86
    .local v1, "oldref":Lgnu/kawa/xml/Document$DocReference;
    if-nez v1, :cond_4

    .line 87
    nop

    .line 91
    .end local v1    # "oldref":Lgnu/kawa/xml/Document$DocReference;
    sget-object v1, Lgnu/kawa/xml/Document;->docMapLocation:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v1}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 92
    .local v1, "loc":Lgnu/mapping/Location;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 93
    .local v2, "map":Ljava/util/Hashtable;
    if-nez v2, :cond_0

    .line 95
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object v2, v3

    .line 96
    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 98
    :cond_0
    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/kawa/xml/KDocument;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .local v3, "doc":Lgnu/kawa/xml/KDocument;
    if-eqz v3, :cond_1

    .line 100
    monitor-exit v0

    return-object v3

    .line 102
    :cond_1
    :try_start_1
    sget-object v4, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/kawa/xml/Document$DocReference;

    .line 103
    .local v4, "ref":Lgnu/kawa/xml/Document$DocReference;
    if-eqz v4, :cond_3

    .line 105
    invoke-virtual {v4}, Lgnu/kawa/xml/Document$DocReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/kawa/xml/KDocument;

    move-object v3, v5

    .line 106
    if-nez v3, :cond_2

    .line 107
    sget-object v5, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    invoke-virtual {v5, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 110
    :cond_2
    invoke-virtual {v2, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    monitor-exit v0

    return-object v3

    .line 115
    :cond_3
    :goto_1
    :try_start_2
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v5

    move-object v3, v5

    .line 116
    invoke-virtual {v2, p0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v5, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    new-instance v6, Lgnu/kawa/xml/Document$DocReference;

    invoke-direct {v6, p0, v3}, Lgnu/kawa/xml/Document$DocReference;-><init>(Lgnu/text/Path;Lgnu/kawa/xml/KDocument;)V

    invoke-virtual {v5, p0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    monitor-exit v0

    return-object v3

    .line 88
    .end local v2    # "map":Ljava/util/Hashtable;
    .end local v3    # "doc":Lgnu/kawa/xml/KDocument;
    .end local v4    # "ref":Lgnu/kawa/xml/Document$DocReference;
    .local v1, "oldref":Lgnu/kawa/xml/Document$DocReference;
    :cond_4
    :try_start_3
    sget-object v2, Lgnu/kawa/xml/Document;->cache:Ljava/util/HashMap;

    iget-object v3, v1, Lgnu/kawa/xml/Document$DocReference;->key:Lgnu/text/Path;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    nop

    .end local v1    # "oldref":Lgnu/kawa/xml/Document$DocReference;
    goto :goto_0

    .line 84
    .end local p0    # "uri":Lgnu/text/Path;
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 1
    .param p0, "uri"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/xml/Document;->parseCached(Lgnu/text/Path;)Lgnu/kawa/xml/KDocument;

    move-result-object v0

    return-object v0
.end method
