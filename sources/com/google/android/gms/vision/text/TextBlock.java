package com.google.android.gms.vision.text;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.SparseArray;
import com.google.android.gms.internal.vision.zzab;
import com.google.android.gms.internal.vision.zzah;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
/* JADX INFO: loaded from: classes.dex */
public class TextBlock implements Text {
    private zzah[] zza;
    private Point[] zzb;
    private List<Line> zzc;
    private String zzd;
    private Rect zze;

    TextBlock(SparseArray<zzah> sparseArray) {
        this.zza = new zzah[sparseArray.size()];
        for (int i = 0; i < this.zza.length; i++) {
            this.zza[i] = sparseArray.valueAt(i);
        }
    }

    @Override // com.google.android.gms.vision.text.Text
    public String getLanguage() {
        int iIntValue;
        if (this.zzd != null) {
            return this.zzd;
        }
        HashMap map = new HashMap();
        for (zzah zzahVar : this.zza) {
            if (!map.containsKey(zzahVar.zzd)) {
                iIntValue = 0;
            } else {
                iIntValue = ((Integer) map.get(zzahVar.zzd)).intValue();
            }
            map.put(zzahVar.zzd, Integer.valueOf(iIntValue + 1));
        }
        this.zzd = (String) ((Map.Entry) Collections.max(map.entrySet(), new zza(this))).getKey();
        if (this.zzd == null || this.zzd.isEmpty()) {
            this.zzd = "und";
        }
        return this.zzd;
    }

    @Override // com.google.android.gms.vision.text.Text
    public String getValue() {
        if (this.zza.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(this.zza[0].zzc);
        for (int i = 1; i < this.zza.length; i++) {
            sb.append("\n");
            sb.append(this.zza[i].zzc);
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.vision.text.Text
    public Point[] getCornerPoints() {
        if (this.zzb == null) {
            char c = 0;
            if (this.zza.length == 0) {
                this.zzb = new Point[0];
            } else {
                int iMax = Integer.MIN_VALUE;
                int iMax2 = Integer.MIN_VALUE;
                int iMin = Integer.MAX_VALUE;
                int iMin2 = Integer.MAX_VALUE;
                int i = 0;
                while (i < this.zza.length) {
                    zzab zzabVar = this.zza[i].zzb;
                    zzab zzabVar2 = this.zza[c].zzb;
                    int i2 = -zzabVar2.zza;
                    int i3 = -zzabVar2.zzb;
                    double dSin = Math.sin(Math.toRadians(zzabVar2.zze));
                    double dCos = Math.cos(Math.toRadians(zzabVar2.zze));
                    pointArr[0].offset(i2, i3);
                    double d = pointArr[0].x;
                    Double.isNaN(d);
                    double d2 = pointArr[0].y;
                    Double.isNaN(d2);
                    int i4 = (int) ((d * dCos) + (d2 * dSin));
                    double d3 = -pointArr[0].x;
                    Double.isNaN(d3);
                    double d4 = d3 * dSin;
                    double d5 = pointArr[0].y;
                    Double.isNaN(d5);
                    int i5 = (int) (d4 + (d5 * dCos));
                    pointArr[0].x = i4;
                    pointArr[0].y = i5;
                    Point[] pointArr = {new Point(zzabVar.zza, zzabVar.zzb), new Point(zzabVar.zzc + i4, i5), new Point(zzabVar.zzc + i4, zzabVar.zzd + i5), new Point(i4, i5 + zzabVar.zzd)};
                    iMax2 = iMax2;
                    for (int i6 = 0; i6 < 4; i6++) {
                        Point point = pointArr[i6];
                        iMin = Math.min(iMin, point.x);
                        iMax = Math.max(iMax, point.x);
                        iMin2 = Math.min(iMin2, point.y);
                        iMax2 = Math.max(iMax2, point.y);
                    }
                    i++;
                    c = 0;
                }
                int i7 = iMax2;
                zzab zzabVar3 = this.zza[0].zzb;
                int i8 = zzabVar3.zza;
                int i9 = zzabVar3.zzb;
                double dSin2 = Math.sin(Math.toRadians(zzabVar3.zze));
                double dCos2 = Math.cos(Math.toRadians(zzabVar3.zze));
                Point point2 = new Point(iMin, iMin2);
                Point point3 = new Point(iMax, iMin2);
                Point point4 = new Point(iMax, i7);
                Point point5 = new Point(iMin, i7);
                Point[] pointArr2 = {point2, point3, point4, point5};
                int i10 = 0;
                for (int i11 = 4; i10 < i11; i11 = 4) {
                    double d6 = pointArr2[i10].x;
                    Double.isNaN(d6);
                    double d7 = pointArr2[i10].y;
                    Double.isNaN(d7);
                    int i12 = (int) ((d6 * dCos2) - (d7 * dSin2));
                    double d8 = pointArr2[i10].x;
                    Double.isNaN(d8);
                    double d9 = pointArr2[i10].y;
                    Double.isNaN(d9);
                    pointArr2[i10].x = i12;
                    pointArr2[i10].y = (int) ((d8 * dSin2) + (d9 * dCos2));
                    pointArr2[i10].offset(i8, i9);
                    i10++;
                }
                this.zzb = pointArr2;
            }
        }
        return this.zzb;
    }

    @Override // com.google.android.gms.vision.text.Text
    public List<? extends Text> getComponents() {
        if (this.zza.length == 0) {
            return new ArrayList(0);
        }
        if (this.zzc == null) {
            this.zzc = new ArrayList(this.zza.length);
            for (zzah zzahVar : this.zza) {
                this.zzc.add(new Line(zzahVar));
            }
        }
        return this.zzc;
    }

    @Override // com.google.android.gms.vision.text.Text
    public Rect getBoundingBox() {
        if (this.zze == null) {
            this.zze = zzc.zza(this);
        }
        return this.zze;
    }
}
