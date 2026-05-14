.class public Lgnu/mapping/PropertyLocation;
.super Lgnu/mapping/Location;
.source "PropertyLocation.java"


# instance fields
.field pair:Lgnu/lists/Pair;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    return-void
.end method

.method public static getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 147
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/mapping/PropertyLocation;->getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 2
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .param p3, "env"    # Lgnu/mapping/Environment;

    .line 129
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-nez v0, :cond_1

    .line 131
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    goto :goto_0

    .line 134
    :cond_0
    sget-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p3, v0, p0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 137
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {p3, v0, p1, p2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPropertyList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "symbol"    # Ljava/lang/Object;

    .line 48
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    sget-object v1, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v0, v1, p0, v2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPropertyList(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 2
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "env"    # Lgnu/mapping/Environment;

    .line 38
    sget-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {p1, v0, p0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;
    .param p2, "dfault"    # Ljava/lang/Object;

    .line 262
    nop

    :goto_0
    instance-of v0, p0, Lgnu/lists/Pair;

    if-eqz v0, :cond_1

    .line 264
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    .line 265
    .local v0, "pair":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 266
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 267
    .end local v0    # "pair":Lgnu/lists/Pair;
    :cond_0
    goto :goto_0

    .line 268
    :cond_1
    return-object p2
.end method

.method public static plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 276
    move-object v0, p0

    .local v0, "p":Ljava/lang/Object;
    :goto_0
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_1

    .line 278
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    .line 279
    .local v1, "pair":Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    .line 280
    .local v2, "next":Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 282
    invoke-virtual {v2, p2}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 283
    return-object p0

    .line 285
    :cond_0
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 286
    .end local v1    # "pair":Lgnu/lists/Pair;
    .end local v2    # "next":Lgnu/lists/Pair;
    goto :goto_0

    .line 287
    .end local v0    # "p":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lgnu/lists/Pair;

    new-instance v1, Lgnu/lists/Pair;

    invoke-direct {v1, p2, p0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static plistRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "prev":Lgnu/lists/Pair;
    move-object v1, p0

    .local v1, "p":Ljava/lang/Object;
    :goto_0
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_2

    .line 298
    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    .line 299
    .local v2, "pair":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/lists/Pair;

    .line 300
    .local v3, "next":Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 301
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 303
    if-nez v0, :cond_0

    .line 304
    return-object v1

    .line 305
    :cond_0
    invoke-virtual {v0, v1}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 306
    return-object p0

    .line 308
    :cond_1
    move-object v0, v3

    .line 309
    .end local v2    # "pair":Lgnu/lists/Pair;
    .end local v3    # "next":Lgnu/lists/Pair;
    goto :goto_0

    .line 310
    .end local v1    # "p":Ljava/lang/Object;
    :cond_2
    return-object p0
.end method

.method public static putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 210
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/mapping/PropertyLocation;->putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V

    .line 211
    return-void
.end method

.method public static putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V
    .locals 6
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "env"    # Lgnu/mapping/Environment;

    .line 154
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-nez v0, :cond_1

    .line 156
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 157
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p0

    goto :goto_0

    .line 160
    :cond_0
    sget-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    invoke-virtual {p3, v0, p0}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    .line 161
    .local v0, "lloc":Lgnu/mapping/Location;
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lgnu/mapping/PropertyLocation;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 162
    return-void

    .line 165
    .end local v0    # "lloc":Lgnu/mapping/Location;
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {p3, v0, p1}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    .line 166
    .local v0, "loc":Lgnu/mapping/Location;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v1

    move-object v0, v1

    instance-of v1, v1, Lgnu/mapping/PropertyLocation;

    if-eqz v1, :cond_2

    .line 167
    move-object v1, v0

    check-cast v1, Lgnu/mapping/PropertyLocation;

    invoke-virtual {v1, p2}, Lgnu/mapping/PropertyLocation;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 170
    :cond_2
    sget-object v1, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    invoke-virtual {p3, v1, p0}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v1

    .line 171
    .local v1, "lloc":Lgnu/mapping/Location;
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    .local v2, "plist":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 194
    .local v3, "pair":Lgnu/lists/Pair;
    new-instance v4, Lgnu/lists/Pair;

    invoke-direct {v4, p2, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    .line 195
    new-instance v4, Lgnu/lists/Pair;

    invoke-direct {v4, p1, v3}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    .line 196
    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 197
    new-instance v4, Lgnu/mapping/PropertyLocation;

    invoke-direct {v4}, Lgnu/mapping/PropertyLocation;-><init>()V

    .line 199
    .local v4, "ploc":Lgnu/mapping/PropertyLocation;
    iput-object v3, v4, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    .line 200
    move-object v5, p0

    check-cast v5, Lgnu/mapping/Symbol;

    invoke-virtual {p3, v5, p1, v4}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 202
    .end local v1    # "lloc":Lgnu/mapping/Location;
    .end local v2    # "plist":Ljava/lang/Object;
    .end local v3    # "pair":Lgnu/lists/Pair;
    .end local v4    # "ploc":Lgnu/mapping/PropertyLocation;
    :goto_1
    return-void
.end method

.method public static removeProperty(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/Object;

    .line 254
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/mapping/PropertyLocation;->removeProperty(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Z

    move-result v0

    return v0
.end method

.method public static removeProperty(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)Z
    .locals 7
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/Object;
    .param p2, "env"    # Lgnu/mapping/Environment;

    .line 218
    sget-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    invoke-virtual {p2, v0, p0}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    .line 219
    .local v0, "ploc":Lgnu/mapping/Location;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 220
    return v1

    .line 221
    :cond_0
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v0, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 222
    .local v2, "plist":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/lists/Pair;

    if-nez v3, :cond_1

    .line 223
    return v1

    .line 224
    :cond_1
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;

    .line 225
    .local v3, "pair":Lgnu/lists/Pair;
    const/4 v4, 0x0

    .line 228
    .local v4, "prev":Lgnu/lists/Pair;
    :goto_0
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_4

    .line 229
    nop

    .line 236
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 237
    .local v1, "tail":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 239
    move-object v2, v1

    .line 240
    invoke-virtual {v0, v2}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {v4, v1}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 244
    :goto_1
    instance-of v5, p0, Lgnu/mapping/Symbol;

    if-eqz v5, :cond_3

    .line 245
    move-object v5, p0

    check-cast v5, Lgnu/mapping/Symbol;

    invoke-virtual {p2, v5, p1}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 230
    .end local v1    # "tail":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .line 231
    .local v5, "next":Ljava/lang/Object;
    instance-of v6, v5, Lgnu/lists/Pair;

    if-nez v6, :cond_5

    .line 232
    return v1

    .line 233
    :cond_5
    move-object v4, v3

    .line 234
    move-object v3, v5

    check-cast v3, Lgnu/lists/Pair;

    .line 235
    .end local v5    # "next":Ljava/lang/Object;
    goto :goto_0
.end method

.method public static setPropertyList(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "plist"    # Ljava/lang/Object;

    .line 115
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/mapping/PropertyLocation;->setPropertyList(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V

    .line 117
    return-void
.end method

.method public static setPropertyList(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V
    .locals 10
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "plist"    # Ljava/lang/Object;
    .param p2, "env"    # Lgnu/mapping/Environment;

    .line 60
    monitor-enter p2

    .line 62
    :try_start_0
    sget-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    invoke-virtual {p2, v0, p0}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v0

    .line 63
    .local v0, "lloc":Lgnu/mapping/Location;
    instance-of v1, p0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_4

    .line 65
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Symbol;

    .line 66
    .local v1, "sym":Lgnu/mapping/Symbol;
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-virtual {v0, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 67
    .local v2, "old":Ljava/lang/Object;
    move-object v3, v2

    .line 71
    .local v3, "p":Ljava/lang/Object;
    :goto_0
    instance-of v4, v3, Lgnu/lists/Pair;

    if-nez v4, :cond_2

    .line 72
    nop

    .line 80
    move-object v3, p1

    .line 83
    :goto_1
    instance-of v4, v3, Lgnu/lists/Pair;

    if-nez v4, :cond_0

    .line 84
    goto :goto_3

    .line 85
    :cond_0
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    .line 86
    .local v4, "pair":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 87
    .local v5, "property":Ljava/lang/Object;
    invoke-virtual {p2, v1, v5}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v6

    .line 89
    .local v6, "loc":Lgnu/mapping/Location;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object v7

    move-object v6, v7

    instance-of v7, v7, Lgnu/mapping/PropertyLocation;

    if-eqz v7, :cond_1

    .line 92
    move-object v7, v6

    check-cast v7, Lgnu/mapping/PropertyLocation;

    .local v7, "ploc":Lgnu/mapping/PropertyLocation;
    goto :goto_2

    .line 96
    .end local v7    # "ploc":Lgnu/mapping/PropertyLocation;
    :cond_1
    new-instance v7, Lgnu/mapping/PropertyLocation;

    invoke-direct {v7}, Lgnu/mapping/PropertyLocation;-><init>()V

    .line 97
    .restart local v7    # "ploc":Lgnu/mapping/PropertyLocation;
    invoke-virtual {p2, v1, v5, v7}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 99
    :goto_2
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/Pair;

    .line 100
    .local v8, "valuePair":Lgnu/lists/Pair;
    iput-object v8, v7, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    .line 102
    invoke-virtual {v8}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    .line 103
    .end local v4    # "pair":Lgnu/lists/Pair;
    .end local v5    # "property":Ljava/lang/Object;
    .end local v6    # "loc":Lgnu/mapping/Location;
    .end local v7    # "ploc":Lgnu/mapping/PropertyLocation;
    .end local v8    # "valuePair":Lgnu/lists/Pair;
    goto :goto_1

    .line 73
    :cond_2
    move-object v4, v3

    check-cast v4, Lgnu/lists/Pair;

    .line 74
    .restart local v4    # "pair":Lgnu/lists/Pair;
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 75
    .restart local v5    # "property":Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 76
    invoke-virtual {p2, v1, v5}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_3
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/Pair;

    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 78
    .end local v4    # "pair":Lgnu/lists/Pair;
    .end local v5    # "property":Ljava/lang/Object;
    goto :goto_0

    .line 105
    .end local v1    # "sym":Lgnu/mapping/Symbol;
    .end local v2    # "old":Ljava/lang/Object;
    .end local v3    # "p":Ljava/lang/Object;
    :cond_4
    :goto_3
    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 106
    .end local v0    # "lloc":Lgnu/mapping/Location;
    monitor-exit p2

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lgnu/mapping/PropertyLocation;->pair:Lgnu/lists/Pair;

    invoke-virtual {v0, p1}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 30
    return-void
.end method
