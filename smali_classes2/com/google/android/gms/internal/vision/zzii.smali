.class public abstract Lcom/google/android/gms/internal/vision/zzii;
.super Lcom/google/android/gms/internal/vision/zzhq;
.source "com.google.android.gms:play-services-vision-common@@19.1.3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzii$zza;,
        Lcom/google/android/gms/internal/vision/zzii$zzb;
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Z


# instance fields
.field zza:Lcom/google/android/gms/internal/vision/zzil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    const-class v0, Lcom/google/android/gms/internal/vision/zzii;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/zzii;->zzb:Ljava/util/logging/Logger;

    .line 256
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzma;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/vision/zzii;->zzc:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzhq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/vision/zzik;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzii;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/vision/zzjt;)I
    .locals 1

    .line 114
    nop

    .line 115
    nop

    .line 116
    shl-int/lit8 p0, p0, 0x3

    .line 117
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 118
    nop

    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzjt;->zzb()I

    move-result p1

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 121
    add-int/2addr p0, v0

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/vision/zzjt;)I
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjt;->zzb()I

    move-result p0

    .line 206
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 207
    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I
    .locals 2

    .line 217
    check-cast p0, Lcom/google/android/gms/internal/vision/zzhf;

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzhf;->zzi()I

    move-result v0

    .line 219
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 220
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/vision/zzlc;->zzb(Ljava/lang/Object;)I

    move-result v0

    .line 221
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzhf;->zzb(I)V

    .line 222
    :cond_0
    nop

    .line 223
    nop

    .line 224
    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    add-int/2addr p0, v0

    .line 225
    return p0
.end method

.method public static zza([B)Lcom/google/android/gms/internal/vision/zzii;
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/vision/zzii$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/vision/zzii$zza;-><init>([BII)V

    .line 3
    return-object v1
.end method

.method public static zzb(D)I
    .locals 0

    .line 194
    const/16 p0, 0x8

    return p0
.end method

.method public static zzb(F)I
    .locals 0

    .line 193
    const/4 p0, 0x4

    return p0
.end method

.method public static zzb(ID)I
    .locals 0

    .line 84
    nop

    .line 85
    nop

    .line 86
    shl-int/lit8 p0, p0, 0x3

    .line 87
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 88
    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzb(IF)I
    .locals 0

    .line 79
    nop

    .line 80
    nop

    .line 81
    shl-int/lit8 p0, p0, 0x3

    .line 82
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 83
    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/vision/zzjt;)I
    .locals 2

    .line 149
    nop

    .line 150
    nop

    .line 151
    nop

    .line 152
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v0

    .line 153
    shl-int/lit8 v0, v0, 0x1

    .line 154
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 155
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zza(ILcom/google/android/gms/internal/vision/zzjt;)I

    move-result p0

    add-int/2addr v0, p0

    .line 156
    return v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/vision/zzkk;)I
    .locals 2

    .line 127
    nop

    .line 128
    nop

    .line 129
    nop

    .line 130
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v0

    .line 131
    shl-int/lit8 v0, v0, 0x1

    .line 132
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 133
    nop

    .line 134
    nop

    .line 135
    nop

    .line 136
    nop

    .line 137
    const/16 p0, 0x18

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 138
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzii;->zzb(Lcom/google/android/gms/internal/vision/zzkk;)I

    move-result p1

    add-int/2addr p0, p1

    .line 139
    add-int/2addr v0, p0

    .line 140
    return v0
.end method

.method static zzb(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I
    .locals 0

    .line 122
    nop

    .line 123
    nop

    .line 124
    shl-int/lit8 p0, p0, 0x3

    .line 125
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 126
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zza(Lcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(ILjava/lang/String;)I
    .locals 0

    .line 101
    nop

    .line 102
    nop

    .line 103
    shl-int/lit8 p0, p0, 0x3

    .line 104
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 105
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzii;->zzb(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(IZ)I
    .locals 0

    .line 89
    nop

    .line 90
    nop

    .line 91
    shl-int/lit8 p0, p0, 0x3

    .line 92
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 93
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/vision/zzht;)I
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result p0

    .line 209
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 210
    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/vision/zzkk;)I
    .locals 1

    .line 214
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzkk;->zzm()I

    move-result p0

    .line 215
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 216
    return v0
.end method

.method public static zzb(Ljava/lang/String;)I
    .locals 1

    .line 197
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzmd;->zza(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzmg; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    sget-object v0, Lcom/google/android/gms/internal/vision/zzjf;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 201
    array-length p0, p0

    .line 202
    :goto_0
    nop

    .line 203
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 204
    return v0
.end method

.method public static zzb(Z)I
    .locals 0

    .line 195
    const/4 p0, 0x1

    return p0
.end method

.method public static zzb([B)I
    .locals 1

    .line 211
    array-length p0, p0

    .line 212
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    .line 213
    return v0
.end method

.method public static zzc(ILcom/google/android/gms/internal/vision/zzht;)I
    .locals 1

    .line 106
    nop

    .line 107
    nop

    .line 108
    shl-int/lit8 p0, p0, 0x3

    .line 109
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 110
    nop

    .line 111
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzht;->zza()I

    move-result p1

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 113
    add-int/2addr p0, v0

    return p0
.end method

.method static zzc(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    nop

    .line 240
    nop

    .line 241
    shl-int/lit8 p0, p0, 0x3

    .line 242
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 243
    shl-int/lit8 p0, p0, 0x1

    .line 244
    check-cast p1, Lcom/google/android/gms/internal/vision/zzhf;

    .line 245
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzhf;->zzi()I

    move-result v0

    .line 246
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 247
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/vision/zzlc;->zzb(Ljava/lang/Object;)I

    move-result v0

    .line 248
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzhf;->zzb(I)V

    .line 249
    :cond_0
    nop

    .line 250
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/vision/zzkk;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/zzkk;->zzm()I

    move-result p0

    return p0
.end method

.method static synthetic zzc()Z
    .locals 1

    .line 254
    sget-boolean v0, Lcom/google/android/gms/internal/vision/zzii;->zzc:Z

    return v0
.end method

.method public static zzd(IJ)I
    .locals 0

    .line 50
    nop

    .line 51
    nop

    .line 52
    shl-int/lit8 p0, p0, 0x3

    .line 53
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 54
    nop

    .line 55
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zze(J)I

    move-result p1

    .line 56
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/vision/zzht;)I
    .locals 2

    .line 141
    nop

    .line 142
    nop

    .line 143
    nop

    .line 144
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result v0

    .line 145
    shl-int/lit8 v0, v0, 0x1

    .line 146
    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(II)I

    move-result p0

    add-int/2addr v0, p0

    .line 147
    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zzc(ILcom/google/android/gms/internal/vision/zzht;)I

    move-result p0

    add-int/2addr v0, p0

    .line 148
    return v0
.end method

.method public static zzd(J)I
    .locals 0

    .line 175
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zze(J)I

    move-result p0

    return p0
.end method

.method public static zze(I)I
    .locals 0

    .line 157
    nop

    .line 158
    shl-int/lit8 p0, p0, 0x3

    .line 159
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    return p0
.end method

.method public static zze(IJ)I
    .locals 0

    .line 57
    nop

    .line 58
    nop

    .line 59
    shl-int/lit8 p0, p0, 0x3

    .line 60
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 61
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zze(J)I
    .locals 6

    .line 176
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 177
    const/4 p0, 0x1

    return p0

    .line 178
    :cond_0
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    .line 179
    const/16 p0, 0xa

    return p0

    .line 180
    :cond_1
    nop

    .line 181
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 182
    nop

    .line 183
    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    .line 181
    :cond_2
    const/4 v0, 0x2

    .line 184
    :goto_0
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    .line 185
    add-int/lit8 v0, v0, 0x2

    .line 186
    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    .line 187
    :cond_3
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_4

    .line 188
    add-int/lit8 v0, v0, 0x1

    .line 189
    :cond_4
    return v0
.end method

.method public static zzf(I)I
    .locals 0

    .line 160
    if-ltz p0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    return p0

    .line 162
    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzf(II)I
    .locals 0

    .line 23
    nop

    .line 24
    nop

    .line 25
    shl-int/lit8 p0, p0, 0x3

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzii;->zzf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzf(IJ)I
    .locals 0

    .line 62
    nop

    .line 63
    nop

    .line 64
    shl-int/lit8 p0, p0, 0x3

    .line 65
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 66
    nop

    .line 67
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zzi(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zze(J)I

    move-result p1

    .line 68
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzf(J)I
    .locals 0

    .line 190
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zzi(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zze(J)I

    move-result p0

    return p0
.end method

.method public static zzg(I)I
    .locals 1

    .line 163
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    .line 164
    const/4 p0, 0x1

    return p0

    .line 165
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    .line 166
    const/4 p0, 0x2

    return p0

    .line 167
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    .line 168
    const/4 p0, 0x3

    return p0

    .line 169
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    .line 170
    const/4 p0, 0x4

    return p0

    .line 171
    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzg(II)I
    .locals 0

    .line 28
    nop

    .line 29
    nop

    .line 30
    shl-int/lit8 p0, p0, 0x3

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(IJ)I
    .locals 0

    .line 69
    nop

    .line 70
    nop

    .line 71
    shl-int/lit8 p0, p0, 0x3

    .line 72
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 73
    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzg(J)I
    .locals 0

    .line 191
    const/16 p0, 0x8

    return p0
.end method

.method public static zzh(I)I
    .locals 0

    .line 172
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzm(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    return p0
.end method

.method public static zzh(II)I
    .locals 0

    .line 33
    nop

    .line 34
    nop

    .line 35
    shl-int/lit8 p0, p0, 0x3

    .line 36
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 37
    nop

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzii;->zzm(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p1

    .line 39
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzh(IJ)I
    .locals 0

    .line 74
    nop

    .line 75
    nop

    .line 76
    shl-int/lit8 p0, p0, 0x3

    .line 77
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 78
    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzh(J)I
    .locals 0

    .line 192
    const/16 p0, 0x8

    return p0
.end method

.method public static zzi(I)I
    .locals 0

    .line 173
    const/4 p0, 0x4

    return p0
.end method

.method public static zzi(II)I
    .locals 0

    .line 40
    nop

    .line 41
    nop

    .line 42
    shl-int/lit8 p0, p0, 0x3

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 44
    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static zzi(J)J
    .locals 3

    .line 227
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzj(I)I
    .locals 0

    .line 174
    const/4 p0, 0x4

    return p0
.end method

.method public static zzj(II)I
    .locals 0

    .line 45
    nop

    .line 46
    nop

    .line 47
    shl-int/lit8 p0, p0, 0x3

    .line 48
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 49
    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzk(I)I
    .locals 0

    .line 196
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzf(I)I

    move-result p0

    return p0
.end method

.method public static zzk(II)I
    .locals 0

    .line 94
    nop

    .line 95
    nop

    .line 96
    shl-int/lit8 p0, p0, 0x3

    .line 97
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    .line 98
    nop

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzii;->zzf(I)I

    move-result p1

    .line 100
    add-int/2addr p0, p1

    return p0
.end method

.method public static zzl(I)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    invoke-static {p0}, Lcom/google/android/gms/internal/vision/zzii;->zzg(I)I

    move-result p0

    return p0
.end method

.method private static zzm(I)I
    .locals 1

    .line 226
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zza(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zzc(J)V

    .line 20
    return-void
.end method

.method public final zza(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zzd(I)V

    .line 18
    return-void
.end method

.method public abstract zza(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zza(ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->zzc(IJ)V

    .line 12
    return-void
.end method

.method public final zza(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zze(II)V

    .line 10
    return-void
.end method

.method public abstract zza(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/vision/zzht;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILcom/google/android/gms/internal/vision/zzkk;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract zza(ILcom/google/android/gms/internal/vision/zzkk;Lcom/google/android/gms/internal/vision/zzlc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vision/zzht;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vision/zzkk;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zza(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/vision/zzmg;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    sget-object v0, Lcom/google/android/gms/internal/vision/zzii;->zzb:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    const-string v2, "com.google.protobuf.CodedOutputStream"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    sget-object p2, Lcom/google/android/gms/internal/vision/zzjf;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 233
    :try_start_0
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    .line 234
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/vision/zzhq;->zza([BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/vision/zzii$zzb; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    return-void

    .line 238
    :catch_0
    move-exception p1

    throw p1

    .line 236
    :catch_1
    move-exception p1

    .line 237
    new-instance p2, Lcom/google/android/gms/internal/vision/zzii$zzb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/vision/zzii$zzb;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zza(B)V

    .line 22
    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzii;->zza()I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract zzb(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzb(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->zzi(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzii;->zza(IJ)V

    .line 8
    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/vision/zzht;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzb(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zzi(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zza(J)V

    .line 16
    return-void
.end method

.method abstract zzb([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzc(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzii;->zzm(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzii;->zzb(I)V

    .line 14
    return-void
.end method

.method public abstract zzc(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzc(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract zzd(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final zzd(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/vision/zzii;->zzm(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzii;->zzc(II)V

    .line 6
    return-void
.end method

.method public abstract zze(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
