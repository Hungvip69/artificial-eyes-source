.class final Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
.super Ljava/lang/Object;
.source "EventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventClosure"
.end annotation


# instance fields
.field private final componentId:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcomponentId(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventName(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "componentId"    # Ljava/lang/String;
    .param p2, "eventName"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 34
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 35
    return v0

    .line 37
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    .line 43
    .local v2, "that":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 44
    return v1

    .line 46
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 47
    return v1

    .line 50
    :cond_3
    return v0

    .line 38
    .end local v2    # "that":Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
