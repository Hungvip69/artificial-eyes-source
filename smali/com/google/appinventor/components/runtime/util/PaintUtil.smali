.class public Lcom/google/appinventor/components/runtime/util/PaintUtil;
.super Ljava/lang/Object;
.source "PaintUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changePaint(Landroid/graphics/Paint;I)V
    .locals 1
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "argb"    # I

    .line 30
    const v0, 0xffffff

    and-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 33
    return-void
.end method

.method public static changePaintTransparent(Landroid/graphics/Paint;)V
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 42
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 43
    return-void
.end method

.method public static hexStringToInt(Ljava/lang/String;)I
    .locals 6
    .param p0, "argb"    # Ljava/lang/String;

    .line 46
    move-object v0, p0

    .line 47
    .local v0, "unprefixed":Ljava/lang/String;
    const-string v1, "#x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "&H"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_1
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 52
    .local v1, "l":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 53
    const-wide/16 v3, 0x0

    add-long/2addr v1, v3

    .line 55
    :cond_2
    long-to-int v3, v1

    return v3
.end method
