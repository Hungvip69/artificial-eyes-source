.class public Lcom/google/appinventor/components/runtime/RelativeLayout;
.super Ljava/lang/Object;
.source "RelativeLayout.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# instance fields
.field private final componentsToAdd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/AndroidViewComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final layoutManager:Landroid/widget/RelativeLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetcomponentsToAdd(Lcom/google/appinventor/components/runtime/RelativeLayout;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->componentsToAdd:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddComponent(Lcom/google/appinventor/components/runtime/RelativeLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/RelativeLayout;->addComponent(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredEmptyWidth"    # Ljava/lang/Integer;
    .param p3, "preferredEmptyHeight"    # Ljava/lang/Integer;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->componentsToAdd:Ljava/util/List;

    .line 39
    if-nez p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RelativeLayout - preferredEmptyWidth and preferredEmptyHeight must be either both null or both not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->handler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/google/appinventor/components/runtime/RelativeLayout$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/RelativeLayout$1;-><init>(Lcom/google/appinventor/components/runtime/RelativeLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->layoutManager:Landroid/widget/RelativeLayout;

    .line 91
    return-void
.end method

.method private addComponent(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 6
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 170
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Left()I

    move-result v0

    .line 171
    .local v0, "x":I
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Top()I

    move-result v1

    .line 172
    .local v1, "y":I
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 176
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    .local v3, "newParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 179
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->layoutManager:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 173
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "newParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/RelativeLayout;->addComponentLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 181
    :goto_1
    return-void
.end method

.method private addComponentLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->componentsToAdd:Ljava/util/List;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->componentsToAdd:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->componentsToAdd:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/RelativeLayout$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/RelativeLayout$2;-><init>(Lcom/google/appinventor/components/runtime/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->componentsToAdd:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_0
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 3
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 120
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/RelativeLayout;->addComponentLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 123
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->layoutManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->layoutManager:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/RelativeLayout;->layoutManager:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public updateComponentPosition(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 5
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 131
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Left()I

    move-result v0

    .line 132
    .local v0, "x":I
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Top()I

    move-result v1

    .line 133
    .local v1, "y":I
    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    .line 137
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 138
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 139
    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 141
    return-void

    .line 134
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_0
    return-void
.end method
