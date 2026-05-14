.class public abstract Lcom/google/android/gms/vision/face/internal/client/zzg;
.super Lcom/google/android/gms/internal/vision/zza;
.source "com.google.android.gms:play-services-vision@@20.1.3"

# interfaces
.implements Lcom/google/android/gms/vision/face/internal/client/zzh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zza;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final zza(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    const/4 p4, 0x1

    packed-switch p1, :pswitch_data_0

    .line 32
    const/4 p1, 0x0

    return p1

    .line 10
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/vision/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/vision/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v10, p1

    check-cast v10, Lcom/google/android/gms/internal/vision/zzs;

    .line 20
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;IIIIIILcom/google/android/gms/internal/vision/zzs;)[Lcom/google/android/gms/vision/face/internal/client/FaceParcel;

    move-result-object p1

    .line 21
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 22
    invoke-virtual {p3, p1, p4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 23
    goto :goto_0

    .line 29
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zza()V

    .line 30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 31
    goto :goto_0

    .line 24
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zza(I)Z

    move-result p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-static {p3, p1}, Lcom/google/android/gms/internal/vision/zzd;->zza(Landroid/os/Parcel;Z)V

    .line 28
    goto :goto_0

    .line 4
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/vision/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/vision/zzd;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/vision/zzs;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/vision/face/internal/client/zzg;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/vision/zzs;)[Lcom/google/android/gms/vision/face/internal/client/FaceParcel;

    move-result-object p1

    .line 7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-virtual {p3, p1, p4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 9
    nop

    .line 33
    :goto_0
    return p4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
