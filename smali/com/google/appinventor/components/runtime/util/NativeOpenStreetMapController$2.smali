.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;
.super Lorg/osmdroid/tileprovider/tilesource/XYTileSource;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->getCustomTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "aZoomMinLevel"    # I
    .param p4, "aZoomMaxLevel"    # I
    .param p5, "aTileSizePixels"    # I
    .param p6, "aImageFilenameEnding"    # Ljava/lang/String;
    .param p7, "aBaseUrl"    # [Ljava/lang/String;

    .line 458
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
    .locals 3
    .param p1, "aTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .line 461
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$2;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{z}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{x}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{y}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 461
    return-object v0
.end method
