.class public Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;
.super Ljava/lang/Object;
.source "CompositeFileOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/CompositeFileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileOperand"
.end annotation


# instance fields
.field private final file:Ljava/lang/String;

.field private final mode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;


# direct methods
.method static bridge synthetic -$$Nest$fgetfile(Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;->file:Ljava/lang/String;

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;->file:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;->mode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 22
    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lcom/google/appinventor/components/runtime/util/FileAccessMode;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CompositeFileOperation$FileOperand;->mode:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    return-object v0
.end method
