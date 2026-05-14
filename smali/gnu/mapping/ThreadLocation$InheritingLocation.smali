.class public Lgnu/mapping/ThreadLocation$InheritingLocation;
.super Ljava/lang/InheritableThreadLocal;
.source "ThreadLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mapping/ThreadLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InheritingLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal<",
        "Lgnu/mapping/NamedLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lgnu/mapping/ThreadLocation;


# direct methods
.method public constructor <init>(Lgnu/mapping/ThreadLocation;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected childValue(Lgnu/mapping/NamedLocation;)Lgnu/mapping/SharedLocation;
    .locals 6
    .param p1, "parentValue"    # Lgnu/mapping/NamedLocation;

    .line 160
    iget-object v0, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v0, v0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    if-ne v0, v1, :cond_2

    .line 162
    if-nez p1, :cond_0

    .line 163
    iget-object v0, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Lgnu/mapping/SharedLocation;

    .line 164
    :cond_0
    move-object v0, p1

    .line 165
    .local v0, "nloc":Lgnu/mapping/NamedLocation;
    iget-object v1, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 167
    new-instance v1, Lgnu/mapping/SharedLocation;

    iget-object v4, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v4, v4, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    iget-object v5, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v5, v5, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    invoke-direct {v1, v4, v5, v3}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    .line 168
    .local v1, "sloc":Lgnu/mapping/SharedLocation;
    iget-object v4, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v4, v1, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 169
    iput-object v1, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 170
    iput-object v2, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 171
    move-object v0, v1

    .line 173
    .end local v1    # "sloc":Lgnu/mapping/SharedLocation;
    :cond_1
    new-instance v1, Lgnu/mapping/SharedLocation;

    iget-object v4, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v4, v4, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    iget-object v5, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v5, v5, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    invoke-direct {v1, v4, v5, v3}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    .line 174
    .restart local v1    # "sloc":Lgnu/mapping/SharedLocation;
    iput-object v2, v1, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 175
    iput-object v0, v1, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    .line 176
    return-object v1

    .line 161
    .end local v0    # "nloc":Lgnu/mapping/NamedLocation;
    .end local v1    # "sloc":Lgnu/mapping/SharedLocation;
    :cond_2
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method

.method protected bridge synthetic childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 155
    move-object v0, p1

    check-cast v0, Lgnu/mapping/NamedLocation;

    invoke-virtual {p0, v0}, Lgnu/mapping/ThreadLocation$InheritingLocation;->childValue(Lgnu/mapping/NamedLocation;)Lgnu/mapping/SharedLocation;

    move-result-object v0

    return-object v0
.end method
