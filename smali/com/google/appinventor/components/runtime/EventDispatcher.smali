.class public Lcom/google/appinventor/components/runtime/EventDispatcher;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;,
        Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final mapDispatchDelegateToEventRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/appinventor/components/runtime/HandlesEventDispatching;",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method private static varargs declared-synchronized delegateDispatchEvent(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z
    .locals 6
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .param p2, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/HandlesEventDispatching;",
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;",
            ">;",
            "Lcom/google/appinventor/components/runtime/Component;",
            "[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .local p1, "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    const-class v0, Lcom/google/appinventor/components/runtime/EventDispatcher;

    monitor-enter v0

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "dispatched":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    .line 237
    .local v3, "eventClosure":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->-$$Nest$fgetcomponentId(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->-$$Nest$fgeteventName(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, p2, v4, v5, p3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 245
    const/4 v1, 0x1

    .line 247
    .end local v3    # "eventClosure":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    :cond_0
    goto :goto_0

    .line 248
    :cond_1
    monitor-exit v0

    return v1

    .line 234
    .end local v1    # "dispatched":Z
    .end local p0    # "dispatchDelegate":Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .end local p1    # "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    .end local p2    # "component":Lcom/google/appinventor/components/runtime/Component;
    .end local p3    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static varargs declared-synchronized dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 3
    .param p0, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    const-class v0, Lcom/google/appinventor/components/runtime/EventDispatcher;

    monitor-enter v0

    .line 187
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchFallibleEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 187
    .end local p0    # "component":Lcom/google/appinventor/components/runtime/Component;
    .end local p1    # "eventName":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized dispatchFallibleEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "component"    # Lcom/google/appinventor/components/runtime/Component;
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    const-class v0, Lcom/google/appinventor/components/runtime/EventDispatcher;

    monitor-enter v0

    .line 203
    const/4 v1, 0x0

    .line 205
    .local v1, "dispatched":Z
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/OptionHelper;->optionListsFromValues(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object p2, v2

    .line 206
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/Component;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v2

    .line 207
    .local v2, "dispatchDelegate":Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    invoke-interface {v2, p0, p1}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v3

    .line 209
    .local v3, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->-$$Nest$fgeteventClosuresMap(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 210
    .local v4, "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 211
    invoke-static {v2, v4, p0, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->delegateDispatchEvent(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z

    move-result v5

    move v1, v5

    .line 213
    :cond_0
    if-nez v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v2, p0, p1, v5, p2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v2    # "dispatchDelegate":Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .end local v3    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .end local v4    # "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    :cond_2
    nop

    .line 218
    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    .line 202
    .end local v1    # "dispatched":Z
    .end local p0    # "component":Lcom/google/appinventor/components/runtime/Component;
    .end local p1    # "eventName":Ljava/lang/String;
    .end local p2    # "args":[Ljava/lang/Object;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 215
    .restart local v1    # "dispatched":Z
    .restart local p0    # "component":Lcom/google/appinventor/components/runtime/Component;
    .restart local p1    # "eventName":Ljava/lang/String;
    .restart local p2    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    monitor-exit v0

    return-object v2
.end method

.method private static getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .locals 2
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    .line 87
    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    .line 88
    .local v0, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    if-nez v0, :cond_0

    .line 89
    new-instance v1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;-><init>(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V

    move-object v0, v1

    .line 90
    sget-object v1, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    return-object v0
.end method

.method public static makeFullEventName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "componentId"    # Ljava/lang/String;
    .param p1, "eventName"    # Ljava/lang/String;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized registerEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;

    const-class v0, Lcom/google/appinventor/components/runtime/EventDispatcher;

    monitor-enter v0

    .line 111
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v1

    .line 112
    .local v1, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->-$$Nest$fgeteventClosuresMap(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 113
    .local v2, "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    if-nez v2, :cond_0

    .line 114
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v3, "newEventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    :goto_0
    new-instance v4, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure-IA;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->-$$Nest$fgeteventClosuresMap(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit v0

    return-void

    .line 110
    .end local v1    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .end local v2    # "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    .end local v3    # "newEventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    .end local p0    # "dispatchDelegate":Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .end local p1    # "componentId":Ljava/lang/String;
    .end local p2    # "eventName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeDispatchDelegate(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)V
    .locals 3
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    const-class v0, Lcom/google/appinventor/components/runtime/EventDispatcher;

    monitor-enter v0

    .line 173
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->removeEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v1

    .line 174
    .local v1, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    if-eqz v1, :cond_0

    .line 175
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->-$$Nest$fgeteventClosuresMap(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit v0

    return-void

    .line 172
    .end local v1    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .end local p0    # "dispatchDelegate":Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static removeEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .locals 1
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    .line 96
    sget-object v0, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    return-object v0
.end method

.method public static declared-synchronized unregisterAllEventsForDelegation()V
    .locals 4

    const-class v0, Lcom/google/appinventor/components/runtime/EventDispatcher;

    monitor-enter v0

    .line 160
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/EventDispatcher;->mapDispatchDelegateToEventRegistry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    .line 161
    .local v2, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->-$$Nest$fgeteventClosuresMap(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v2    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    goto :goto_0

    .line 163
    :cond_0
    monitor-exit v0

    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public static declared-synchronized unregisterEventForDelegation(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "dispatchDelegate"    # Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;

    const-class v0, Lcom/google/appinventor/components/runtime/EventDispatcher;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->getEventRegistry(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;

    move-result-object v1

    .line 136
    .local v1, "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->-$$Nest$fgeteventClosuresMap(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 137
    .local v2, "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 140
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 141
    .local v3, "updated":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    .line 142
    .local v5, "eventClosure":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->-$$Nest$fgetcomponentId(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v5    # "eventClosure":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    :goto_1
    goto :goto_0

    .line 151
    :cond_2
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;->-$$Nest$fgeteventClosuresMap(Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit v0

    return-void

    .line 138
    .end local v3    # "updated":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    .line 134
    .end local v1    # "er":Lcom/google/appinventor/components/runtime/EventDispatcher$EventRegistry;
    .end local v2    # "eventClosures":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;>;"
    .end local p0    # "dispatchDelegate":Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .end local p1    # "componentId":Ljava/lang/String;
    .end local p2    # "eventName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method
