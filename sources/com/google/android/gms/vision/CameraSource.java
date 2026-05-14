package com.google.android.gms.vision;

import android.content.Context;
import android.graphics.ImageFormat;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.SystemClock;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import com.google.android.gms.common.images.Size;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.vision.Frame;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
/* JADX INFO: loaded from: classes.dex */
public class CameraSource {
    public static final int CAMERA_FACING_BACK = 0;
    public static final int CAMERA_FACING_FRONT = 1;
    private Context zza;
    private final Object zzb;

    @Nullable
    private Camera zzc;
    private int zzd;
    private int zze;
    private Size zzf;
    private float zzg;
    private int zzh;
    private int zzi;
    private boolean zzj;

    @Nullable
    private String zzk;

    @Nullable
    private SurfaceTexture zzl;

    @Nullable
    private Thread zzm;
    private zza zzn;
    private final IdentityHashMap<byte[], ByteBuffer> zzo;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    /* JADX INFO: loaded from: classes2.dex */
    public interface PictureCallback {
        void onPictureTaken(byte[] bArr);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    /* JADX INFO: loaded from: classes2.dex */
    public interface ShutterCallback {
        void onShutter();
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    /* JADX INFO: loaded from: classes2.dex */
    private class zzb implements Camera.PreviewCallback {
        private zzb() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public final void onPreviewFrame(byte[] bArr, Camera camera) {
            CameraSource.this.zzn.zza(bArr, camera);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    private class zzc implements Camera.PictureCallback {

        @Nullable
        private PictureCallback zza;

        private zzc() {
        }

        @Override // android.hardware.Camera.PictureCallback
        public final void onPictureTaken(byte[] bArr, Camera camera) {
            if (this.zza != null) {
                this.zza.onPictureTaken(bArr);
            }
            synchronized (CameraSource.this.zzb) {
                if (CameraSource.this.zzc != null) {
                    CameraSource.this.zzc.startPreview();
                }
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    private static class zzd implements Camera.ShutterCallback {

        @Nullable
        private ShutterCallback zza;

        private zzd() {
        }

        @Override // android.hardware.Camera.ShutterCallback
        public final void onShutter() {
            if (this.zza != null) {
                this.zza.onShutter();
            }
        }
    }

    public void release() {
        synchronized (this.zzb) {
            stop();
            this.zzn.zza();
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    static class zze {
        private Size zza;
        private Size zzb;

        public zze(Camera.Size size, @Nullable Camera.Size size2) {
            this.zza = new Size(size.width, size.height);
            if (size2 != null) {
                this.zzb = new Size(size2.width, size2.height);
            }
        }

        public final Size zza() {
            return this.zza;
        }

        @Nullable
        public final Size zzb() {
            return this.zzb;
        }
    }

    public CameraSource start() throws IOException {
        synchronized (this.zzb) {
            if (this.zzc != null) {
                return this;
            }
            this.zzc = zza();
            this.zzl = new SurfaceTexture(100);
            this.zzc.setPreviewTexture(this.zzl);
            this.zzc.startPreview();
            this.zzm = new Thread(this.zzn);
            this.zzm.setName("gms.vision.CameraSource");
            this.zzn.zza(true);
            if (this.zzm != null) {
                this.zzm.start();
            }
            return this;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    private class zza implements Runnable {

        @Nullable
        private Detector<?> zza;
        private long zze;

        @Nullable
        private ByteBuffer zzg;
        private long zzb = SystemClock.elapsedRealtime();
        private final Object zzc = new Object();
        private boolean zzd = true;
        private int zzf = 0;

        zza(Detector<?> detector) {
            this.zza = detector;
        }

        final void zza() {
            if (this.zza != null) {
                this.zza.release();
                this.zza = null;
            }
        }

        final void zza(boolean z) {
            synchronized (this.zzc) {
                this.zzd = z;
                this.zzc.notifyAll();
            }
        }

        final void zza(byte[] bArr, Camera camera) {
            synchronized (this.zzc) {
                if (this.zzg != null) {
                    camera.addCallbackBuffer(this.zzg.array());
                    this.zzg = null;
                }
                if (!CameraSource.this.zzo.containsKey(bArr)) {
                    Log.d("CameraSource", "Skipping frame. Could not find ByteBuffer associated with the image data from the camera.");
                    return;
                }
                this.zze = SystemClock.elapsedRealtime() - this.zzb;
                this.zzf++;
                this.zzg = (ByteBuffer) CameraSource.this.zzo.get(bArr);
                this.zzc.notifyAll();
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            Frame frameBuild;
            ByteBuffer byteBuffer;
            while (true) {
                synchronized (this.zzc) {
                    while (this.zzd && this.zzg == null) {
                        try {
                            this.zzc.wait();
                        } catch (InterruptedException e) {
                            Log.d("CameraSource", "Frame processing loop terminated.", e);
                            return;
                        }
                    }
                    if (!this.zzd) {
                        return;
                    }
                    frameBuild = new Frame.Builder().setImageData((ByteBuffer) Preconditions.checkNotNull(this.zzg), CameraSource.this.zzf.getWidth(), CameraSource.this.zzf.getHeight(), 17).setId(this.zzf).setTimestampMillis(this.zze).setRotation(CameraSource.this.zze).build();
                    byteBuffer = this.zzg;
                    this.zzg = null;
                }
                try {
                    ((Detector) Preconditions.checkNotNull(this.zza)).receiveFrame(frameBuild);
                } catch (Exception e2) {
                    Log.e("CameraSource", "Exception thrown from receiver.", e2);
                } finally {
                    ((Camera) Preconditions.checkNotNull(CameraSource.this.zzc)).addCallbackBuffer(((ByteBuffer) Preconditions.checkNotNull(byteBuffer)).array());
                }
            }
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-vision-common@@19.1.3 */
    /* JADX INFO: loaded from: classes2.dex */
    public static class Builder {
        private final Detector<?> zza;
        private CameraSource zzb = new CameraSource();

        public Builder(Context context, Detector<?> detector) {
            if (context == null) {
                throw new IllegalArgumentException("No context supplied.");
            }
            if (detector == null) {
                throw new IllegalArgumentException("No detector supplied.");
            }
            this.zza = detector;
            this.zzb.zza = context;
        }

        public Builder setRequestedFps(float f) {
            if (f <= 0.0f) {
                throw new IllegalArgumentException(new StringBuilder(28).append("Invalid fps: ").append(f).toString());
            }
            this.zzb.zzg = f;
            return this;
        }

        public Builder setRequestedPreviewSize(int i, int i2) {
            if (i <= 0 || i > 1000000 || i2 <= 0 || i2 > 1000000) {
                throw new IllegalArgumentException(new StringBuilder(45).append("Invalid preview size: ").append(i).append("x").append(i2).toString());
            }
            this.zzb.zzh = i;
            this.zzb.zzi = i2;
            return this;
        }

        public Builder setFacing(int i) {
            if (i != 0 && i != 1) {
                throw new IllegalArgumentException(new StringBuilder(27).append("Invalid camera: ").append(i).toString());
            }
            this.zzb.zzd = i;
            return this;
        }

        public Builder setAutoFocusEnabled(boolean z) {
            this.zzb.zzj = z;
            return this;
        }

        public Builder setFocusMode(String str) {
            if (str.equals("continuous-video") || str.equals("continuous-picture")) {
                this.zzb.zzk = str;
            } else {
                Log.w("CameraSource", String.format("FocusMode %s is not supported for now.", str));
                this.zzb.zzk = null;
            }
            return this;
        }

        public CameraSource build() {
            CameraSource cameraSource = this.zzb;
            CameraSource cameraSource2 = this.zzb;
            cameraSource2.getClass();
            cameraSource.zzn = cameraSource2.new zza(this.zza);
            return this.zzb;
        }
    }

    public CameraSource start(SurfaceHolder surfaceHolder) throws IOException {
        synchronized (this.zzb) {
            if (this.zzc != null) {
                return this;
            }
            this.zzc = zza();
            this.zzc.setPreviewDisplay(surfaceHolder);
            this.zzc.startPreview();
            this.zzm = new Thread(this.zzn);
            this.zzn.zza(true);
            if (this.zzm != null) {
                this.zzm.start();
            }
            return this;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0022 A[Catch: all -> 0x0074, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:7:0x000e, B:11:0x001c, B:12:0x001e, B:14:0x0022, B:15:0x002c, B:19:0x0060, B:18:0x003a, B:20:0x006d, B:21:0x0072, B:10:0x0015), top: B:28:0x0003, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006d A[Catch: all -> 0x0074, TryCatch #1 {, blocks: (B:4:0x0003, B:7:0x000e, B:11:0x001c, B:12:0x001e, B:14:0x0022, B:15:0x002c, B:19:0x0060, B:18:0x003a, B:20:0x006d, B:21:0x0072, B:10:0x0015), top: B:28:0x0003, inners: #0, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void stop() {
        /*
            r6 = this;
            java.lang.Object r0 = r6.zzb
            monitor-enter(r0)
            com.google.android.gms.vision.CameraSource$zza r1 = r6.zzn     // Catch: java.lang.Throwable -> L74
            r2 = 0
            r1.zza(r2)     // Catch: java.lang.Throwable -> L74
            java.lang.Thread r1 = r6.zzm     // Catch: java.lang.Throwable -> L74
            r2 = 0
            if (r1 == 0) goto L1e
            java.lang.Thread r1 = r6.zzm     // Catch: java.lang.InterruptedException -> L14 java.lang.Throwable -> L74
            r1.join()     // Catch: java.lang.InterruptedException -> L14 java.lang.Throwable -> L74
            goto L1c
        L14:
            r1 = move-exception
            java.lang.String r1 = "CameraSource"
            java.lang.String r3 = "Frame processing thread interrupted on release."
            android.util.Log.d(r1, r3)     // Catch: java.lang.Throwable -> L74
        L1c:
            r6.zzm = r2     // Catch: java.lang.Throwable -> L74
        L1e:
            android.hardware.Camera r1 = r6.zzc     // Catch: java.lang.Throwable -> L74
            if (r1 == 0) goto L6d
            android.hardware.Camera r1 = r6.zzc     // Catch: java.lang.Throwable -> L74
            r1.stopPreview()     // Catch: java.lang.Throwable -> L74
            android.hardware.Camera r1 = r6.zzc     // Catch: java.lang.Throwable -> L74
            r1.setPreviewCallbackWithBuffer(r2)     // Catch: java.lang.Throwable -> L74
            android.hardware.Camera r1 = r6.zzc     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L74
            r1.setPreviewTexture(r2)     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L74
            r6.zzl = r2     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L74
            android.hardware.Camera r1 = r6.zzc     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L74
            r1.setPreviewDisplay(r2)     // Catch: java.lang.Exception -> L39 java.lang.Throwable -> L74
            goto L60
        L39:
            r1 = move-exception
            java.lang.String r3 = "CameraSource"
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L74
            java.lang.String r4 = java.lang.String.valueOf(r1)     // Catch: java.lang.Throwable -> L74
            int r4 = r4.length()     // Catch: java.lang.Throwable -> L74
            int r4 = r4 + 32
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L74
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L74
            java.lang.String r4 = "Failed to clear camera preview: "
            java.lang.StringBuilder r4 = r5.append(r4)     // Catch: java.lang.Throwable -> L74
            java.lang.StringBuilder r1 = r4.append(r1)     // Catch: java.lang.Throwable -> L74
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L74
            android.util.Log.e(r3, r1)     // Catch: java.lang.Throwable -> L74
        L60:
            android.hardware.Camera r1 = r6.zzc     // Catch: java.lang.Throwable -> L74
            java.lang.Object r1 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r1)     // Catch: java.lang.Throwable -> L74
            android.hardware.Camera r1 = (android.hardware.Camera) r1     // Catch: java.lang.Throwable -> L74
            r1.release()     // Catch: java.lang.Throwable -> L74
            r6.zzc = r2     // Catch: java.lang.Throwable -> L74
        L6d:
            java.util.IdentityHashMap<byte[], java.nio.ByteBuffer> r1 = r6.zzo     // Catch: java.lang.Throwable -> L74
            r1.clear()     // Catch: java.lang.Throwable -> L74
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L74
            return
        L74:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L74
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.vision.CameraSource.stop():void");
    }

    public Size getPreviewSize() {
        return this.zzf;
    }

    public int getCameraFacing() {
        return this.zzd;
    }

    public void takePicture(@Nullable ShutterCallback shutterCallback, @Nullable PictureCallback pictureCallback) {
        synchronized (this.zzb) {
            if (this.zzc != null) {
                zzd zzdVar = new zzd();
                zzdVar.zza = shutterCallback;
                zzc zzcVar = new zzc();
                zzcVar.zza = pictureCallback;
                this.zzc.takePicture(zzdVar, null, null, zzcVar);
            }
        }
    }

    private CameraSource() {
        this.zzb = new Object();
        this.zzd = 0;
        this.zzg = 30.0f;
        this.zzh = 1024;
        this.zzi = 768;
        this.zzj = false;
        this.zzo = new IdentityHashMap<>();
    }

    private final Camera zza() throws IOException {
        int i;
        int i2;
        int i3;
        int i4 = this.zzd;
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        int i5 = 0;
        while (true) {
            if (i5 < Camera.getNumberOfCameras()) {
                Camera.getCameraInfo(i5, cameraInfo);
                if (cameraInfo.facing == i4) {
                    break;
                }
                i5++;
            } else {
                i5 = -1;
                break;
            }
        }
        if (i5 == -1) {
            throw new IOException("Could not find requested camera.");
        }
        Camera cameraOpen = Camera.open(i5);
        int i6 = this.zzh;
        int i7 = this.zzi;
        Camera.Parameters parameters = cameraOpen.getParameters();
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        List<Camera.Size> supportedPictureSizes = parameters.getSupportedPictureSizes();
        ArrayList arrayList = new ArrayList();
        for (Camera.Size size : supportedPreviewSizes) {
            float f = size.width / size.height;
            Iterator<Camera.Size> it = supportedPictureSizes.iterator();
            while (true) {
                if (it.hasNext()) {
                    Camera.Size next = it.next();
                    if (Math.abs(f - (next.width / next.height)) < 0.01f) {
                        arrayList.add(new zze(size, next));
                        break;
                    }
                }
            }
        }
        if (arrayList.size() == 0) {
            Log.w("CameraSource", "No preview sizes have a corresponding same-aspect-ratio picture size");
            Iterator<Camera.Size> it2 = supportedPreviewSizes.iterator();
            while (it2.hasNext()) {
                arrayList.add(new zze(it2.next(), null));
            }
        }
        int size2 = arrayList.size();
        int i8 = Integer.MAX_VALUE;
        zze zzeVar = null;
        int i9 = 0;
        int i10 = Integer.MAX_VALUE;
        while (i9 < size2) {
            Object obj = arrayList.get(i9);
            i9++;
            zze zzeVar2 = (zze) obj;
            Size sizeZza = zzeVar2.zza();
            int iAbs = Math.abs(sizeZza.getWidth() - i6) + Math.abs(sizeZza.getHeight() - i7);
            if (iAbs < i10) {
                zzeVar = zzeVar2;
                i10 = iAbs;
            }
        }
        zze zzeVar3 = (zze) Preconditions.checkNotNull(zzeVar);
        if (zzeVar3 == null) {
            throw new IOException("Could not find suitable preview size.");
        }
        Size sizeZzb = zzeVar3.zzb();
        this.zzf = zzeVar3.zza();
        int i11 = (int) (this.zzg * 1000.0f);
        int[] iArr = null;
        for (int[] iArr2 : cameraOpen.getParameters().getSupportedPreviewFpsRange()) {
            int iAbs2 = Math.abs(i11 - iArr2[0]) + Math.abs(i11 - iArr2[1]);
            if (iAbs2 < i8) {
                iArr = iArr2;
                i8 = iAbs2;
            }
        }
        int[] iArr3 = (int[]) Preconditions.checkNotNull(iArr);
        if (iArr3 == null) {
            throw new IOException("Could not find suitable preview frames per second range.");
        }
        Camera.Parameters parameters2 = cameraOpen.getParameters();
        if (sizeZzb != null) {
            parameters2.setPictureSize(sizeZzb.getWidth(), sizeZzb.getHeight());
        }
        parameters2.setPreviewSize(this.zzf.getWidth(), this.zzf.getHeight());
        parameters2.setPreviewFpsRange(iArr3[0], iArr3[1]);
        parameters2.setPreviewFormat(17);
        int rotation = ((WindowManager) Preconditions.checkNotNull((WindowManager) this.zza.getSystemService("window"))).getDefaultDisplay().getRotation();
        switch (rotation) {
            case 0:
                i = 0;
                break;
            case 1:
                i = 90;
                break;
            case 2:
                i = 180;
                break;
            case 3:
                i = 270;
                break;
            default:
                Log.e("CameraSource", new StringBuilder(31).append("Bad rotation value: ").append(rotation).toString());
                i = 0;
                break;
        }
        Camera.CameraInfo cameraInfo2 = new Camera.CameraInfo();
        Camera.getCameraInfo(i5, cameraInfo2);
        if (cameraInfo2.facing == 1) {
            i2 = (cameraInfo2.orientation + i) % 360;
            i3 = (360 - i2) % 360;
        } else {
            i2 = ((cameraInfo2.orientation - i) + 360) % 360;
            i3 = i2;
        }
        this.zze = i2 / 90;
        cameraOpen.setDisplayOrientation(i3);
        parameters2.setRotation(i2);
        if (this.zzk != null) {
            if (parameters2.getSupportedFocusModes().contains(this.zzk)) {
                parameters2.setFocusMode((String) Preconditions.checkNotNull(this.zzk));
            } else {
                Log.w("CameraSource", String.format("FocusMode %s is not supported on this device.", this.zzk));
                this.zzk = null;
            }
        }
        if (this.zzk == null && this.zzj) {
            if (parameters2.getSupportedFocusModes().contains("continuous-video")) {
                parameters2.setFocusMode("continuous-video");
                this.zzk = "continuous-video";
            } else {
                Log.i("CameraSource", "Camera auto focus is not supported on this device.");
            }
        }
        cameraOpen.setParameters(parameters2);
        cameraOpen.setPreviewCallbackWithBuffer(new zzb());
        cameraOpen.addCallbackBuffer(zza(this.zzf));
        cameraOpen.addCallbackBuffer(zza(this.zzf));
        cameraOpen.addCallbackBuffer(zza(this.zzf));
        cameraOpen.addCallbackBuffer(zza(this.zzf));
        return cameraOpen;
    }

    private final byte[] zza(Size size) {
        double height = ((long) size.getHeight()) * ((long) size.getWidth()) * ((long) ImageFormat.getBitsPerPixel(17));
        Double.isNaN(height);
        byte[] bArr = new byte[((int) Math.ceil(height / 8.0d)) + 1];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        if (!byteBufferWrap.hasArray() || byteBufferWrap.array() != bArr) {
            throw new IllegalStateException("Failed to create valid buffer for camera source.");
        }
        this.zzo.put(bArr, byteBufferWrap);
        return bArr;
    }
}
