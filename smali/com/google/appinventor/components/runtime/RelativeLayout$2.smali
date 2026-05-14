.class Lcom/google/appinventor/components/runtime/RelativeLayout$2;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/RelativeLayout;->addComponentLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/RelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/RelativeLayout;

    .line 152
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$2;->this$0:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$2;->this$0:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/RelativeLayout;->-$$Nest$fgetcomponentsToAdd(Lcom/google/appinventor/components/runtime/RelativeLayout;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 155
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$2;->this$0:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/RelativeLayout;->-$$Nest$fgetcomponentsToAdd(Lcom/google/appinventor/components/runtime/RelativeLayout;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 156
    .local v1, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/AndroidViewComponent;>;"
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$2;->this$0:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/RelativeLayout;->-$$Nest$fgetcomponentsToAdd(Lcom/google/appinventor/components/runtime/RelativeLayout;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 157
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 158
    .local v3, "component":Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/RelativeLayout$2;->this$0:Lcom/google/appinventor/components/runtime/RelativeLayout;

    invoke-static {v4, v3}, Lcom/google/appinventor/components/runtime/RelativeLayout;->-$$Nest$maddComponent(Lcom/google/appinventor/components/runtime/RelativeLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 159
    .end local v3    # "component":Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    goto :goto_0

    .line 160
    .end local v1    # "copy":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/AndroidViewComponent;>;"
    :cond_0
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
