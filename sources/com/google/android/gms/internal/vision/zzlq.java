package com.google.android.gms.internal.vision;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlq {
    static String zza(zzht zzhtVar) {
        zzlt zzltVar = new zzlt(zzhtVar);
        StringBuilder sb = new StringBuilder(zzltVar.zza());
        for (int i = 0; i < zzltVar.zza(); i++) {
            byte bZza = zzltVar.zza(i);
            switch (bZza) {
                case 7:
                    sb.append("\\a");
                    break;
                case 8:
                    sb.append("\\b");
                    break;
                case 9:
                    sb.append("\\t");
                    break;
                case 10:
                    sb.append("\\n");
                    break;
                case 11:
                    sb.append("\\v");
                    break;
                case 12:
                    sb.append("\\f");
                    break;
                case 13:
                    sb.append("\\r");
                    break;
                case 34:
                    sb.append("\\\"");
                    break;
                case 39:
                    sb.append("\\'");
                    break;
                case 92:
                    sb.append("\\\\");
                    break;
                default:
                    if (bZza < 32 || bZza > 126) {
                        sb.append('\\');
                        sb.append((char) (((bZza >>> 6) & 3) + 48));
                        sb.append((char) (((bZza >>> 3) & 7) + 48));
                        sb.append((char) ((bZza & 7) + 48));
                    } else {
                        sb.append((char) bZza);
                    }
                    break;
            }
        }
        return sb.toString();
    }
}
