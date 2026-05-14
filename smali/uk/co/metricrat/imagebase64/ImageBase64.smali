.class public Luk/co/metricrat/imagebase64/ImageBase64;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ImageBase64.java"


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 19
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 21
    return-void
.end method


# virtual methods
.method public AfterImageBase64(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called after the image is converted. The text argument `imageBase64Data` is the base64 string of the image"
    .end annotation

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterImageBase64"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public GetImageAsBase64(Lcom/google/appinventor/components/runtime/Image;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Image and returns base64 string"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Image;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 27
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Luk/co/metricrat/imagebase64/ImageBase64;->bitMapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Luk/co/metricrat/imagebase64/ImageBase64;->AfterImageBase64(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public SetImageFromBase64(Lcom/google/appinventor/components/runtime/Image;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set Image component with image from base64 string"
    .end annotation

    .line 47
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Image;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 48
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 49
    array-length v1, p2

    invoke-static {p2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    return-void
.end method

.method public UriEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Encodes the given text value so that it can be used in a URL"
    .end annotation

    .line 58
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "UTF-8 is unsupported?"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const-string p1, ""

    return-object p1
.end method

.method public bitMapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 37
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
