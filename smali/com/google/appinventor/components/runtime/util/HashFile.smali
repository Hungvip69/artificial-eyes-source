.class public Lcom/google/appinventor/components/runtime/util/HashFile;
.super Ljava/lang/Object;
.source "HashFile.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "timestamp"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/util/Date;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/util/HashFile;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public formatTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "timestamp"    # Ljava/util/Date;

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 96
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->fileName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->hash:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTimestampInDb(Ljava/util/Date;)V
    .locals 1
    .param p1, "time"    # Ljava/util/Date;

    .line 80
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/HashFile;->timestamp:Ljava/lang/String;

    .line 81
    return-void
.end method
