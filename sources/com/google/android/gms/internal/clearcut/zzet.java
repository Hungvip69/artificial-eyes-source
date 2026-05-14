package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
final class zzet {
    static String zzc(zzbb zzbbVar) {
        String str;
        zzeu zzeuVar = new zzeu(zzbbVar);
        StringBuilder sb = new StringBuilder(zzeuVar.size());
        for (int i = 0; i < zzeuVar.size(); i++) {
            int iZzj = zzeuVar.zzj(i);
            switch (iZzj) {
                case 7:
                    str = "\\a";
                    break;
                case 8:
                    str = "\\b";
                    break;
                case 9:
                    str = "\\t";
                    break;
                case 10:
                    str = "\\n";
                    break;
                case 11:
                    str = "\\v";
                    break;
                case 12:
                    str = "\\f";
                    break;
                case 13:
                    str = "\\r";
                    break;
                case 34:
                    str = "\\\"";
                    break;
                case 39:
                    str = "\\'";
                    break;
                case 92:
                    str = "\\\\";
                    break;
                default:
                    if (iZzj < 32 || iZzj > 126) {
                        sb.append('\\');
                        sb.append((char) (((iZzj >>> 6) & 3) + 48));
                        sb.append((char) (((iZzj >>> 3) & 7) + 48));
                        iZzj = (iZzj & 7) + 48;
                    }
                    sb.append((char) iZzj);
                    continue;
                    break;
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
