package com.google.android.gms.internal.vision;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzi' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
public class zzml {
    public static final zzml zza = new zzml("DOUBLE", 0, zzmo.DOUBLE, 1);
    public static final zzml zzb = new zzml("FLOAT", 1, zzmo.FLOAT, 5);
    public static final zzml zzc = new zzml("INT64", 2, zzmo.LONG, 0);
    public static final zzml zzd = new zzml("UINT64", 3, zzmo.LONG, 0);
    public static final zzml zze = new zzml("INT32", 4, zzmo.INT, 0);
    public static final zzml zzf = new zzml("FIXED64", 5, zzmo.LONG, 1);
    public static final zzml zzg = new zzml("FIXED32", 6, zzmo.INT, 5);
    public static final zzml zzh = new zzml("BOOL", 7, zzmo.BOOLEAN, 0);
    public static final zzml zzi;
    public static final zzml zzj;
    public static final zzml zzk;
    public static final zzml zzl;
    public static final zzml zzm;
    public static final zzml zzn;
    public static final zzml zzo;
    public static final zzml zzp;
    public static final zzml zzq;
    public static final zzml zzr;
    private static final /* synthetic */ zzml[] zzu;
    private final zzmo zzs;
    private final int zzt;

    public static zzml[] values() {
        return (zzml[]) zzu.clone();
    }

    private zzml(String str, int i, zzmo zzmoVar, int i2) {
        this.zzs = zzmoVar;
        this.zzt = i2;
    }

    public final zzmo zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }

    /* synthetic */ zzml(String str, int i, zzmo zzmoVar, int i2, zzmi zzmiVar) {
        this(str, i, zzmoVar, i2);
    }

    static {
        final int i = 2;
        final int i2 = 3;
        final zzmo zzmoVar = zzmo.STRING;
        final String str = "STRING";
        final int i3 = 8;
        zzi = new zzml(str, i3, zzmoVar, i) { // from class: com.google.android.gms.internal.vision.zzmk
            {
                int i4 = 2;
                zzmi zzmiVar = null;
                int i5 = 8;
            }
        };
        final zzmo zzmoVar2 = zzmo.MESSAGE;
        final String str2 = "GROUP";
        final int i4 = 9;
        zzj = new zzml(str2, i4, zzmoVar2, i2) { // from class: com.google.android.gms.internal.vision.zzmn
            {
                int i5 = 3;
                zzmi zzmiVar = null;
                int i6 = 9;
            }
        };
        final zzmo zzmoVar3 = zzmo.MESSAGE;
        final String str3 = "MESSAGE";
        final int i5 = 10;
        zzk = new zzml(str3, i5, zzmoVar3, i) { // from class: com.google.android.gms.internal.vision.zzmm
            {
                int i6 = 2;
                zzmi zzmiVar = null;
                int i7 = 10;
            }
        };
        final zzmo zzmoVar4 = zzmo.BYTE_STRING;
        final String str4 = "BYTES";
        final int i6 = 11;
        zzl = new zzml(str4, i6, zzmoVar4, i) { // from class: com.google.android.gms.internal.vision.zzmp
            {
                int i7 = 2;
                zzmi zzmiVar = null;
                int i8 = 11;
            }
        };
        zzm = new zzml("UINT32", 12, zzmo.INT, 0);
        zzn = new zzml("ENUM", 13, zzmo.ENUM, 0);
        zzo = new zzml("SFIXED32", 14, zzmo.INT, 5);
        zzp = new zzml("SFIXED64", 15, zzmo.LONG, 1);
        zzq = new zzml("SINT32", 16, zzmo.INT, 0);
        zzr = new zzml("SINT64", 17, zzmo.LONG, 0);
        zzu = new zzml[]{zza, zzb, zzc, zzd, zze, zzf, zzg, zzh, zzi, zzj, zzk, zzl, zzm, zzn, zzo, zzp, zzq, zzr};
    }
}
