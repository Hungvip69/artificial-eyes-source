package com.google.android.gms.internal.vision;

import android.content.ContentResolver;
import android.content.Context;
import android.util.Log;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzbi<T> {
    private static final Object zza = new Object();

    @Nullable
    private static volatile zzbr zzb = null;
    private static volatile boolean zzc = false;
    private static final AtomicReference<Collection<zzbi<?>>> zzd = new AtomicReference<>();
    private static zzbs zze = new zzbs(zzbk.zza);
    private static final AtomicInteger zzi = new AtomicInteger();
    private final zzbo zzf;
    private final String zzg;
    private final T zzh;
    private volatile int zzj;
    private volatile T zzk;
    private final boolean zzl;

    @Deprecated
    public static void zza(final Context context) {
        synchronized (zza) {
            zzbr zzbrVar = zzb;
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
            if (zzbrVar == null || zzbrVar.zza() != context) {
                zzau.zzb();
                zzbq.zza();
                zzbd.zza();
                zzb = new zzav(context, zzdi.zza(new zzdf(context) { // from class: com.google.android.gms.internal.vision.zzbl
                    private final Context zza;

                    {
                        this.zza = context;
                    }

                    @Override // com.google.android.gms.internal.vision.zzdf
                    public final Object zza() {
                        return zzbi.zzc(this.zza);
                    }
                }));
                zzi.incrementAndGet();
            }
        }
    }

    abstract T zza(Object obj);

    public static void zzb(Context context) {
        if (zzb != null) {
            return;
        }
        synchronized (zza) {
            if (zzb == null) {
                zza(context);
            }
        }
    }

    static void zza() {
        zzi.incrementAndGet();
    }

    private zzbi(zzbo zzboVar, String str, T t, boolean z) {
        this.zzj = -1;
        if (zzboVar.zza == null && zzboVar.zzb == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (zzboVar.zza != null && zzboVar.zzb != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.zzf = zzboVar;
        this.zzg = str;
        this.zzh = t;
        this.zzl = z;
    }

    private final String zza(String str) {
        if (str != null && str.isEmpty()) {
            return this.zzg;
        }
        String strValueOf = String.valueOf(str);
        String strValueOf2 = String.valueOf(this.zzg);
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    public final String zzb() {
        return zza(this.zzf.zzd);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0051 A[Catch: all -> 0x008e, TryCatch #0 {, blocks: (B:8:0x001d, B:10:0x0022, B:14:0x0029, B:16:0x0035, B:29:0x0053, B:31:0x0065, B:33:0x007f, B:34:0x0082, B:36:0x0088, B:19:0x003c, B:28:0x0051, B:22:0x0043, B:25:0x004a, B:37:0x008c), top: B:44:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065 A[Catch: all -> 0x008e, TryCatch #0 {, blocks: (B:8:0x001d, B:10:0x0022, B:14:0x0029, B:16:0x0035, B:29:0x0053, B:31:0x0065, B:33:0x007f, B:34:0x0082, B:36:0x0088, B:19:0x003c, B:28:0x0051, B:22:0x0043, B:25:0x004a, B:37:0x008c), top: B:44:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final T zzc() {
        /*
            r6 = this;
            boolean r0 = r6.zzl
            if (r0 != 0) goto L12
            com.google.android.gms.internal.vision.zzbs r0 = com.google.android.gms.internal.vision.zzbi.zze
            java.lang.String r1 = r6.zzg
            boolean r0 = r0.zza(r1)
            java.lang.String r1 = "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error."
            com.google.android.gms.internal.vision.zzde.zzb(r0, r1)
        L12:
            java.util.concurrent.atomic.AtomicInteger r0 = com.google.android.gms.internal.vision.zzbi.zzi
            int r0 = r0.get()
            int r1 = r6.zzj
            if (r1 >= r0) goto L91
            monitor-enter(r6)
            int r1 = r6.zzj     // Catch: java.lang.Throwable -> L8e
            if (r1 >= r0) goto L8c
        L22:
            com.google.android.gms.internal.vision.zzbr r1 = com.google.android.gms.internal.vision.zzbi.zzb     // Catch: java.lang.Throwable -> L8e
            if (r1 == 0) goto L28
            r2 = 1
            goto L29
        L28:
            r2 = 0
        L29:
            java.lang.String r3 = "Must call PhenotypeFlag.init() first"
            com.google.android.gms.internal.vision.zzde.zzb(r2, r3)     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.vision.zzbo r2 = r6.zzf     // Catch: java.lang.Throwable -> L8e
            boolean r2 = r2.zzf     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L43
            java.lang.Object r2 = r6.zzb(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L3c
            goto L53
        L3c:
            java.lang.Object r2 = r6.zza(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L51
            goto L53
        L43:
            java.lang.Object r2 = r6.zza(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L4a
            goto L53
        L4a:
            java.lang.Object r2 = r6.zzb(r1)     // Catch: java.lang.Throwable -> L8e
            if (r2 == 0) goto L51
            goto L53
        L51:
            T r2 = r6.zzh     // Catch: java.lang.Throwable -> L8e
        L53:
            com.google.android.gms.internal.vision.zzdf r1 = r1.zzb()     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r1 = r1.zza()     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.vision.zzcy r1 = (com.google.android.gms.internal.vision.zzcy) r1     // Catch: java.lang.Throwable -> L8e
            boolean r3 = r1.zza()     // Catch: java.lang.Throwable -> L8e
            if (r3 == 0) goto L87
        L65:
            java.lang.Object r1 = r1.zzb()     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.vision.zzbe r1 = (com.google.android.gms.internal.vision.zzbe) r1     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.vision.zzbo r2 = r6.zzf     // Catch: java.lang.Throwable -> L8e
            android.net.Uri r2 = r2.zzb     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.vision.zzbo r3 = r6.zzf     // Catch: java.lang.Throwable -> L8e
            java.lang.String r3 = r3.zza     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.vision.zzbo r4 = r6.zzf     // Catch: java.lang.Throwable -> L8e
            java.lang.String r4 = r4.zzd     // Catch: java.lang.Throwable -> L8e
            java.lang.String r5 = r6.zzg     // Catch: java.lang.Throwable -> L8e
            java.lang.String r1 = r1.zza(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L8e
            if (r1 != 0) goto L82
            T r2 = r6.zzh     // Catch: java.lang.Throwable -> L8e
            goto L88
        L82:
            java.lang.Object r2 = r6.zza(r1)     // Catch: java.lang.Throwable -> L8e
            goto L88
        L87:
        L88:
            r6.zzk = r2     // Catch: java.lang.Throwable -> L8e
            r6.zzj = r0     // Catch: java.lang.Throwable -> L8e
        L8c:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L8e
            goto L91
        L8e:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L8e
            throw r0
        L91:
            T r0 = r6.zzk
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzbi.zzc():java.lang.Object");
    }

    @Nullable
    private final T zza(zzbr zzbrVar) {
        zzay zzayVarZza;
        Object objZza;
        boolean z = false;
        if (!this.zzf.zzg) {
            String str = (String) zzbd.zza(zzbrVar.zza()).zza("gms:phenotype:phenotype_flag:debug_bypass_phenotype");
            if (str != null && zzaq.zzb.matcher(str).matches()) {
                z = true;
            }
        }
        if (!z) {
            if (this.zzf.zzb != null) {
                if (!zzbg.zza(zzbrVar.zza(), this.zzf.zzb)) {
                    zzayVarZza = null;
                } else if (this.zzf.zzh) {
                    ContentResolver contentResolver = zzbrVar.zza().getContentResolver();
                    String lastPathSegment = this.zzf.zzb.getLastPathSegment();
                    String packageName = zzbrVar.zza().getPackageName();
                    zzayVarZza = zzau.zza(contentResolver, zzbj.zza(new StringBuilder(String.valueOf(lastPathSegment).length() + 1 + String.valueOf(packageName).length()).append(lastPathSegment).append("#").append(packageName).toString()));
                } else {
                    zzayVarZza = zzau.zza(zzbrVar.zza().getContentResolver(), this.zzf.zzb);
                }
            } else {
                zzayVarZza = zzbq.zza(zzbrVar.zza(), this.zzf.zza);
            }
            if (zzayVarZza != null && (objZza = zzayVarZza.zza(zzb())) != null) {
                return zza(objZza);
            }
        } else if (Log.isLoggable("PhenotypeFlag", 3)) {
            String strValueOf = String.valueOf(zzb());
            Log.d("PhenotypeFlag", strValueOf.length() != 0 ? "Bypass reading Phenotype values for flag: ".concat(strValueOf) : new String("Bypass reading Phenotype values for flag: "));
        }
        return null;
    }

    @Nullable
    private final T zzb(zzbr zzbrVar) {
        if (!this.zzf.zze && (this.zzf.zzi == null || this.zzf.zzi.zza(zzbrVar.zza()).booleanValue())) {
            Object objZza = zzbd.zza(zzbrVar.zza()).zza(this.zzf.zze ? null : zza(this.zzf.zzc));
            if (objZza != null) {
                return zza(objZza);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> zzbi<T> zzb(zzbo zzboVar, String str, T t, zzbp<T> zzbpVar, boolean z) {
        return new zzbm(zzboVar, str, t, true, zzbpVar);
    }

    static final /* synthetic */ zzcy zzc(Context context) {
        new zzbh();
        return zzbh.zza(context);
    }

    static final /* synthetic */ boolean zzd() {
        return true;
    }

    /* synthetic */ zzbi(zzbo zzboVar, String str, Object obj, boolean z, zzbn zzbnVar) {
        this(zzboVar, str, obj, z);
    }
}
