package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import com.google.android.gms.internal.vision.zzab;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
/* JADX INFO: loaded from: classes2.dex */
final class zzc {
    static Rect zza(Text text) {
        int iMin = Integer.MAX_VALUE;
        int iMin2 = Integer.MAX_VALUE;
        int iMax = Integer.MIN_VALUE;
        int iMax2 = Integer.MIN_VALUE;
        for (Point point : text.getCornerPoints()) {
            iMin = Math.min(iMin, point.x);
            iMax = Math.max(iMax, point.x);
            iMin2 = Math.min(iMin2, point.y);
            iMax2 = Math.max(iMax2, point.y);
        }
        return new Rect(iMin, iMin2, iMax, iMax2);
    }

    static Point[] zza(zzab zzabVar) {
        Point[] pointArr = new Point[4];
        double dSin = Math.sin(Math.toRadians(zzabVar.zze));
        double dCos = Math.cos(Math.toRadians(zzabVar.zze));
        pointArr[0] = new Point(zzabVar.zza, zzabVar.zzb);
        double d = zzabVar.zza;
        double d2 = zzabVar.zzc;
        Double.isNaN(d2);
        Double.isNaN(d);
        double d3 = zzabVar.zzb;
        double d4 = zzabVar.zzc;
        Double.isNaN(d4);
        Double.isNaN(d3);
        pointArr[1] = new Point((int) (d + (d2 * dCos)), (int) (d3 + (d4 * dSin)));
        double d5 = pointArr[1].x;
        double d6 = zzabVar.zzd;
        Double.isNaN(d6);
        Double.isNaN(d5);
        int i = (int) (d5 - (d6 * dSin));
        double d7 = pointArr[1].y;
        double d8 = zzabVar.zzd;
        Double.isNaN(d8);
        Double.isNaN(d7);
        pointArr[2] = new Point(i, (int) (d7 + (d8 * dCos)));
        pointArr[3] = new Point(pointArr[0].x + (pointArr[2].x - pointArr[1].x), pointArr[0].y + (pointArr[2].y - pointArr[1].y));
        return pointArr;
    }
}
