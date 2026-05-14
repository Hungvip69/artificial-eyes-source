.class public Lcom/kabby/Recy/Recy;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = ""
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "play-services-base-17.0.0.jar, play-services-basement-17.0.0.jar, play-services-clearcut-17.0.0.jar, play-services-flags-17.0.0.jar, play-services-phenotype-17.0.0.jar, play-services-tasks-17.0.0.jar, play-services-vision-20.1.3.jar, play-services-vision-common-19.1.3.jar"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private blockCornerPoints:[Landroid/graphics/Point;

.field private blockFrame:Landroid/graphics/Rect;

.field private canvas:Landroid/graphics/Canvas;

.field private context:Landroid/content/Context;

.field private filey:Ljava/lang/String;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private textRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "No File Name Passed"

    iput-object v0, p0, Lcom/kabby/Recy/Recy;->filey:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/kabby/Recy/Recy;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/kabby/Recy/Recy;->activity:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/kabby/Recy/Recy;->context:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;

    iget-object v0, p0, Lcom/kabby/Recy/Recy;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->build()Lcom/google/android/gms/vision/text/TextRecognizer;

    move-result-object p1

    iput-object p1, p0, Lcom/kabby/Recy/Recy;->textRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    return-void
.end method


# virtual methods
.method public Focus(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-object v0, p0, Lcom/kabby/Recy/Recy;->textRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/text/TextRecognizer;->setFocus(I)Z

    return-void
.end method

.method public IsOperational()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    iget-object v0, p0, Lcom/kabby/Recy/Recy;->textRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->isOperational()Z

    move-result v0

    return v0
.end method

.method public ProcessImageFromAssets(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/kabby/Recy/Recy;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    iget-object v0, p0, Lcom/kabby/Recy/Recy;->textRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/text/TextRecognizer;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/text/TextBlock;

    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getCornerPoints()[Landroid/graphics/Point;

    move-result-object v4

    iput-object v4, p0, Lcom/kabby/Recy/Recy;->blockCornerPoints:[Landroid/graphics/Point;

    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/kabby/Recy/Recy;->blockFrame:Landroid/graphics/Rect;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/kabby/Recy/Recy;->TextRecognized(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kabby/Recy/Recy;->TextRecognizationError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public ProcessImageFromPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;

    iget-object v1, p0, Lcom/kabby/Recy/Recy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->build()Lcom/google/android/gms/vision/text/TextRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/kabby/Recy/Recy;->textRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    new-instance v0, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    iget-object v0, p0, Lcom/kabby/Recy/Recy;->textRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/text/TextRecognizer;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/text/TextBlock;

    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getCornerPoints()[Landroid/graphics/Point;

    move-result-object v4

    iput-object v4, p0, Lcom/kabby/Recy/Recy;->blockCornerPoints:[Landroid/graphics/Point;

    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/kabby/Recy/Recy;->blockFrame:Landroid/graphics/Rect;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/kabby/Recy/Recy;->TextRecognized(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kabby/Recy/Recy;->TextRecognizationError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public ProcessImageFromUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/kabby/Recy/Recy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;

    iget-object v1, p0, Lcom/kabby/Recy/Recy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->build()Lcom/google/android/gms/vision/text/TextRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/kabby/Recy/Recy;->textRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    new-instance v0, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/Frame$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/vision/Frame$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Frame$Builder;->build()Lcom/google/android/gms/vision/Frame;

    move-result-object p1

    iget-object v0, p0, Lcom/kabby/Recy/Recy;->textRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/vision/text/TextRecognizer;->detect(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/text/TextBlock;

    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getCornerPoints()[Landroid/graphics/Point;

    move-result-object v4

    iput-object v4, p0, Lcom/kabby/Recy/Recy;->blockCornerPoints:[Landroid/graphics/Point;

    invoke-virtual {v2}, Lcom/google/android/gms/vision/text/TextBlock;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/kabby/Recy/Recy;->blockFrame:Landroid/graphics/Rect;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/kabby/Recy/Recy;->TextRecognized(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kabby/Recy/Recy;->TextRecognizationError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public Release()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    iget-object v0, p0, Lcom/kabby/Recy/Recy;->textRecognizer:Lcom/google/android/gms/vision/text/TextRecognizer;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->release()V

    return-void
.end method

.method public TextRecognizationError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TextRecognizationError"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TextRecognized(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "TextRecognized"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
