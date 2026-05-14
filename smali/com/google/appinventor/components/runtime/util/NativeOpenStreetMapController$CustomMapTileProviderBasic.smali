.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;
.super Lorg/osmdroid/tileprovider/MapTileProviderBasic;
.source "NativeOpenStreetMapController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomMapTileProviderBasic"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p3, "cacheWriter"    # Lorg/osmdroid/tileprovider/modules/IFilesystemCache;

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/osmdroid/tileprovider/modules/MapTileSqlCacheProvider;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;->mTileProviderList:Ljava/util/List;

    new-instance v2, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$CustomMapTileProviderBasic;->mRegisterReceiver:Lorg/osmdroid/tileprovider/IRegisterReceiver;

    invoke-direct {v2, v3, p2}, Lorg/osmdroid/tileprovider/modules/MapTileFilesystemProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
