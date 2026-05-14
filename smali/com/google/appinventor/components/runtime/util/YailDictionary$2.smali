.class Lcom/google/appinventor/components/runtime/util/YailDictionary$2;
.super Ljava/lang/Object;
.source "YailDictionary.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/YailDictionary$KeyTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/YailDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .line 50
    return-object p1
.end method
