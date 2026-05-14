.class public Lgnu/kawa/swingviews/SwingPaintable;
.super Ljavax/swing/JPanel;
.source "SwingPaintable.java"


# instance fields
.field dim:Ljava/awt/Dimension;

.field paintable:Lgnu/kawa/models/Paintable;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Paintable;)V
    .locals 4
    .param p1, "paintable"    # Lgnu/kawa/models/Paintable;

    .line 15
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/kawa/swingviews/SwingPaintable;->paintable:Lgnu/kawa/models/Paintable;

    .line 18
    invoke-interface {p1}, Lgnu/kawa/models/Paintable;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    .line 19
    .local v0, "rect":Ljava/awt/geom/Rectangle2D;
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 20
    .local v1, "h":I
    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 21
    .local v2, "w":I
    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v2, v1}, Ljava/awt/Dimension;-><init>(II)V

    iput-object v3, p0, Lgnu/kawa/swingviews/SwingPaintable;->dim:Ljava/awt/Dimension;

    .line 22
    return-void
.end method


# virtual methods
.method public getPreferredSize()Ljava/awt/Dimension;
    .locals 1

    .line 32
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingPaintable;->dim:Ljava/awt/Dimension;

    return-object v0
.end method

.method public paint(Ljava/awt/Graphics;)V
    .locals 2
    .param p1, "g"    # Ljava/awt/Graphics;

    .line 27
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingPaintable;->paintable:Lgnu/kawa/models/Paintable;

    move-object v1, p1

    check-cast v1, Ljava/awt/Graphics2D;

    invoke-interface {v0, v1}, Lgnu/kawa/models/Paintable;->paint(Ljava/awt/Graphics2D;)V

    .line 28
    return-void
.end method
