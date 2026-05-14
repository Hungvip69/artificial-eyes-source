.class public final Lcom/google/android/gms/internal/vision/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# direct methods
.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/vision/zzdg;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    const-string p2, "face"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    const-string v1, "NativeLibraryLoader"

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 3
    const-string p2, "ica"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    const-string p2, "ocr"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    const-string p2, "barcode"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    new-array p0, v0, [Ljava/lang/Object;

    aput-object p1, p0, v2

    const-string p1, "Unrecognized engine: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return v2

    .line 6
    :cond_1
    :goto_0
    nop

    .line 7
    const-string p2, ".so"

    invoke-virtual {p0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    if-ne p2, v3, :cond_2

    .line 9
    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 10
    :cond_2
    nop

    .line 11
    const-string p2, "lib"

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 12
    if-nez p2, :cond_3

    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 14
    :cond_3
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/vision/zzr;->zza(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 15
    nop

    .line 18
    if-nez p2, :cond_4

    .line 19
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p0, v3, v0

    const-string p0, "%s engine not loaded with %s."

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_4
    return p2
.end method
