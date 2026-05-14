package com.google.appinventor.components.runtime.util;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.media.ExifInterface;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.net.Uri;
import android.os.Build;
import android.provider.Contacts;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.VideoView;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.ReplForm;
import com.google.appinventor.components.runtime.errors.PermissionException;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class MediaUtil {
    private static final String LOG_TAG = "MediaUtil";
    private static final Map<String, File> tempFileMap = new HashMap();
    private static ConcurrentHashMap<String, String> pathCache = new ConcurrentHashMap<>(2);

    private enum MediaSource {
        ASSET,
        REPL_ASSET,
        SDCARD,
        FILE_URL,
        URL,
        CONTENT_URI,
        CONTACT_URI,
        PRIVATE_DATA
    }

    private MediaUtil() {
    }

    static String fileUrlToFilePath(String mediaPath) throws IOException {
        try {
            return new File(new URL(mediaPath).toURI()).getAbsolutePath();
        } catch (IllegalArgumentException e) {
            throw new IOException("Unable to determine file path of file url " + mediaPath);
        } catch (Exception e2) {
            throw new IOException("Unable to determine file path of file url " + mediaPath);
        }
    }

    private static MediaSource determineMediaSource(Form form, String mediaPath) {
        if (mediaPath.startsWith(QUtil.getExternalStoragePath(form)) || mediaPath.startsWith("/sdcard/")) {
            return MediaSource.SDCARD;
        }
        if (mediaPath.startsWith("content://contacts/")) {
            return MediaSource.CONTACT_URI;
        }
        if (mediaPath.startsWith("content://")) {
            return MediaSource.CONTENT_URI;
        }
        if (mediaPath.startsWith("/data/")) {
            return MediaSource.PRIVATE_DATA;
        }
        try {
            URL url = new URL(mediaPath);
            if (mediaPath.startsWith("file:")) {
                if (url.getPath().startsWith("/android_asset/")) {
                    return MediaSource.ASSET;
                }
                return MediaSource.FILE_URL;
            }
            return MediaSource.URL;
        } catch (MalformedURLException e) {
            if (form instanceof ReplForm) {
                if (((ReplForm) form).isAssetsLoaded()) {
                    return MediaSource.REPL_ASSET;
                }
                return MediaSource.ASSET;
            }
            return MediaSource.ASSET;
        }
    }

    @Deprecated
    public static boolean isExternalFileUrl(String mediaPath) {
        Log.w(LOG_TAG, "Calling deprecated version of isExternalFileUrl", new IllegalAccessException());
        return mediaPath.startsWith(new StringBuilder().append("file://").append(QUtil.getExternalStoragePath(Form.getActiveForm())).toString()) || mediaPath.startsWith("file:///sdcard/");
    }

    public static boolean isExternalFileUrl(Context context, String mediaPath) {
        if (Build.VERSION.SDK_INT >= 29) {
            return false;
        }
        return mediaPath.startsWith(new StringBuilder().append("file://").append(QUtil.getExternalStorageDir(context)).toString()) || mediaPath.startsWith("file:///sdcard");
    }

    @Deprecated
    public static boolean isExternalFile(String mediaPath) {
        Log.w(LOG_TAG, "Calling deprecated version of isExternalFile", new IllegalAccessException());
        return mediaPath.startsWith(QUtil.getExternalStoragePath(Form.getActiveForm())) || mediaPath.startsWith("/sdcard/") || isExternalFileUrl(Form.getActiveForm(), mediaPath);
    }

    public static boolean isExternalFile(Context context, String mediaPath) {
        if (Build.VERSION.SDK_INT >= 29) {
            return false;
        }
        return mediaPath.startsWith(QUtil.getExternalStoragePath(context)) || mediaPath.startsWith("/sdcard/") || isExternalFileUrl(context, mediaPath);
    }

    private static String findCaseinsensitivePath(Form form, String mediaPath) throws IOException {
        if (!pathCache.containsKey(mediaPath)) {
            String newPath = findCaseinsensitivePathWithoutCache(form, mediaPath);
            if (newPath == null) {
                return null;
            }
            pathCache.put(mediaPath, newPath);
        }
        return pathCache.get(mediaPath);
    }

    private static String findCaseinsensitivePathWithoutCache(Form form, String mediaPath) throws IOException {
        String[] mediaPathlist = form.getAssets().list("");
        int l = Array.getLength(mediaPathlist);
        for (int i = 0; i < l; i++) {
            String temp = mediaPathlist[i];
            if (temp.equalsIgnoreCase(mediaPath)) {
                return temp;
            }
        }
        return null;
    }

    private static InputStream getAssetsIgnoreCaseInputStream(Form form, String mediaPath) throws IOException {
        try {
            return form.getAssets().open(mediaPath);
        } catch (IOException e) {
            String path = findCaseinsensitivePath(form, mediaPath);
            if (path == null) {
                throw e;
            }
            return form.getAssets().open(path);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream openMedia(Form form, String mediaPath, MediaSource mediaSource) throws IOException {
        InputStream is;
        switch (mediaSource) {
            case ASSET:
                if (mediaPath.startsWith("file:")) {
                    mediaPath = mediaPath.substring(mediaPath.indexOf("/android_asset/") + "/android_asset/".length());
                }
                return getAssetsIgnoreCaseInputStream(form, mediaPath);
            case PRIVATE_DATA:
                return new FileInputStream(mediaPath);
            case REPL_ASSET:
                if (RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                try {
                    return new FileInputStream(new File(URI.create(form.getAssetPath(mediaPath))));
                } catch (Exception e) {
                    if (SdkLevel.getLevel() < 9) {
                        Log.d(LOG_TAG, "Error in REPL_ASSET Fetching: " + Log.getStackTraceString(e));
                        FroyoUtil.throwIOException(e);
                    } else {
                        throw new IOException(e);
                    }
                    break;
                }
            case SDCARD:
                if (RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                return new FileInputStream(mediaPath);
            case FILE_URL:
                if (isExternalFileUrl(form, mediaPath) && RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                    break;
                }
            case URL:
                return new URL(mediaPath).openStream();
            case CONTENT_URI:
                return form.getContentResolver().openInputStream(Uri.parse(mediaPath));
            case CONTACT_URI:
                if (SdkLevel.getLevel() >= 12) {
                    is = HoneycombMR1Util.openContactPhotoInputStreamHelper(form.getContentResolver(), Uri.parse(mediaPath));
                } else {
                    is = Contacts.People.openContactPhotoInputStream(form.getContentResolver(), Uri.parse(mediaPath));
                }
                if (is != null) {
                    return is;
                }
                throw new IOException("Unable to open contact photo " + mediaPath + ".");
            default:
                throw new IOException("Unable to open media " + mediaPath + ".");
        }
    }

    public static InputStream openMedia(Form form, String mediaPath) throws IOException {
        return openMedia(form, mediaPath, determineMediaSource(form, mediaPath));
    }

    public static File copyMediaToTempFile(Form form, String mediaPath) throws IOException {
        MediaSource mediaSource = determineMediaSource(form, mediaPath);
        return copyMediaToTempFile(form, mediaPath, mediaSource);
    }

    private static File copyMediaToTempFile(Form form, String mediaPath, MediaSource mediaSource) throws IOException {
        InputStream in = openMedia(form, mediaPath, mediaSource);
        File file = null;
        try {
            try {
                file = File.createTempFile("AI_Media_", null);
                file.deleteOnExit();
                FileUtil.writeStreamToFile(in, file.getAbsolutePath());
                return file;
            } catch (IOException e) {
                if (file == null) {
                    Log.e(LOG_TAG, "Could not copy media " + mediaPath + " to temp file.");
                } else {
                    Log.e(LOG_TAG, "Could not copy media " + mediaPath + " to temp file " + file.getAbsolutePath());
                    file.delete();
                }
                throw e;
            }
        } finally {
            in.close();
        }
    }

    private static File cacheMediaTempFile(Form form, String mediaPath, MediaSource mediaSource) throws IOException {
        File tempFile = tempFileMap.get(mediaPath);
        if (tempFile == null || !tempFile.exists()) {
            Log.i(LOG_TAG, "Copying media " + mediaPath + " to temp file...");
            File tempFile2 = copyMediaToTempFile(form, mediaPath, mediaSource);
            Log.i(LOG_TAG, "Finished copying media " + mediaPath + " to temp file " + tempFile2.getAbsolutePath());
            tempFileMap.put(mediaPath, tempFile2);
            return tempFile2;
        }
        return tempFile;
    }

    public static BitmapDrawable getBitmapDrawable(Form form, String mediaPath) throws IOException {
        if (mediaPath == null || mediaPath.length() == 0) {
            return null;
        }
        final Synchronizer<BitmapDrawable> syncer = new Synchronizer<>();
        AsyncCallbackPair<BitmapDrawable> continuation = new AsyncCallbackPair<BitmapDrawable>() { // from class: com.google.appinventor.components.runtime.util.MediaUtil.1
            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onFailure(String message) {
                syncer.error(message);
            }

            @Override // com.google.appinventor.components.runtime.util.AsyncCallbackPair
            public void onSuccess(BitmapDrawable result) {
                syncer.wakeup(result);
            }
        };
        getBitmapDrawableAsync(form, mediaPath, continuation);
        syncer.waitfor();
        BitmapDrawable result = syncer.getResult();
        if (result == null) {
            String error = syncer.getError();
            if (error.startsWith("PERMISSION_DENIED:")) {
                throw new PermissionException(error.split(":")[1]);
            }
            throw new IOException(error);
        }
        return result;
    }

    public static void getBitmapDrawableAsync(Form form, String mediaPath, AsyncCallbackPair<BitmapDrawable> continuation) {
        getBitmapDrawableAsync(form, mediaPath, -1, -1, continuation);
    }

    public static void getBitmapDrawableAsync(final Form form, final String mediaPath, final int desiredWidth, final int desiredHeight, final AsyncCallbackPair<BitmapDrawable> continuation) {
        if (mediaPath == null || mediaPath.length() == 0) {
            continuation.onSuccess(null);
            return;
        }
        final MediaSource mediaSource = determineMediaSource(form, mediaPath);
        Runnable loadImage = new Runnable() { // from class: com.google.appinventor.components.runtime.util.MediaUtil.2
            /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() throws java.lang.Throwable {
                /*
                    Method dump skipped, instruction units count: 623
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.util.MediaUtil.AnonymousClass2.run():void");
            }
        };
        AsynchUtil.runAsynchronously(loadImage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap decodeStream(InputStream is, Rect outPadding, BitmapFactory.Options opts) {
        return BitmapFactory.decodeStream(new FlushedInputStream(is), outPadding, opts);
    }

    private static class FlushedInputStream extends FilterInputStream {
        public FlushedInputStream(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long n) throws IOException {
            long totalBytesSkipped = 0;
            while (totalBytesSkipped < n) {
                long bytesSkipped = this.in.skip(n - totalBytesSkipped);
                if (bytesSkipped == 0) {
                    if (read() < 0) {
                        break;
                    }
                    bytesSkipped = 1;
                }
                totalBytesSkipped += bytesSkipped;
            }
            return totalBytesSkipped;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static BitmapFactory.Options getBitmapOptions(Form form, InputStream is, String mediaPath) {
        int maxWidth;
        int maxHeight;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        decodeStream(is, null, options);
        int imageWidth = options.outWidth;
        int imageHeight = options.outHeight;
        Display display = ((WindowManager) form.getSystemService("window")).getDefaultDisplay();
        if (Form.getCompatibilityMode()) {
            maxWidth = 720;
            maxHeight = 840;
        } else {
            int maxWidth2 = display.getWidth();
            maxWidth = (int) (maxWidth2 / form.deviceDensity());
            maxHeight = (int) (display.getHeight() / form.deviceDensity());
        }
        int sampleSize = 1;
        while (imageWidth / sampleSize > maxWidth && imageHeight / sampleSize > maxHeight) {
            sampleSize *= 2;
        }
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        Log.d(LOG_TAG, "getBitmapOptions: sampleSize = " + sampleSize + " mediaPath = " + mediaPath + " maxWidth = " + maxWidth + " maxHeight = " + maxHeight + " display width = " + display.getWidth() + " display height = " + display.getHeight());
        options2.inSampleSize = sampleSize;
        return options2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getExifOrientation(ByteArrayInputStream bis) {
        ExifInterface exif;
        File tempFile = null;
        try {
            try {
                if (Build.VERSION.SDK_INT >= 24) {
                    exif = new ExifInterface(bis);
                } else {
                    tempFile = File.createTempFile("exif_", null);
                    FileOutputStream fos = new FileOutputStream(tempFile);
                    try {
                        byte[] buffer = new byte[4096];
                        while (true) {
                            int len = bis.read(buffer);
                            if (len == -1) {
                                break;
                            }
                            fos.write(buffer, 0, len);
                        }
                        fos.close();
                        exif = new ExifInterface(tempFile.getAbsolutePath());
                    } catch (Throwable th) {
                        fos.close();
                        throw th;
                    }
                }
                int attributeInt = exif.getAttributeInt("Orientation", 0);
                bis.reset();
                if (tempFile != null) {
                    tempFile.delete();
                }
                return attributeInt;
            } catch (IOException e) {
                Log.w(LOG_TAG, "Failed to read EXIF orientation", e);
                bis.reset();
                if (0 != 0) {
                    tempFile.delete();
                }
                return 0;
            }
        } catch (Throwable th2) {
            bis.reset();
            if (0 != 0) {
                tempFile.delete();
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap applyExifRotation(Bitmap bitmap, int orientation) {
        if (bitmap == null) {
            return null;
        }
        Matrix matrix = new Matrix();
        switch (orientation) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                break;
            case 3:
                matrix.setRotate(180.0f);
                break;
            case 4:
                matrix.setScale(1.0f, -1.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                break;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                break;
            default:
                return bitmap;
        }
        try {
            Bitmap oriented = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            bitmap.recycle();
            return oriented;
        } catch (OutOfMemoryError e) {
            Log.w(LOG_TAG, "Out of memory applying EXIF rotation; returning original bitmap", e);
            return bitmap;
        }
    }

    private static AssetFileDescriptor getAssetsIgnoreCaseAfd(Form form, String mediaPath) throws IOException {
        try {
            return form.getAssets().openFd(mediaPath);
        } catch (IOException e) {
            String path = findCaseinsensitivePath(form, mediaPath);
            if (path == null) {
                throw e;
            }
            return form.getAssets().openFd(path);
        }
    }

    public static int loadSoundPool(SoundPool soundPool, Form form, String mediaPath) throws IOException {
        MediaSource mediaSource = determineMediaSource(form, mediaPath);
        switch (mediaSource) {
            case ASSET:
                return soundPool.load(getAssetsIgnoreCaseAfd(form, mediaPath), 1);
            case PRIVATE_DATA:
            default:
                throw new IOException("Unable to load audio " + mediaPath + ".");
            case REPL_ASSET:
                if (RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                return soundPool.load(fileUrlToFilePath(form.getAssetPath(mediaPath)), 1);
            case SDCARD:
                if (RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_AUDIO");
                }
                return soundPool.load(mediaPath, 1);
            case FILE_URL:
                if (isExternalFileUrl(form, mediaPath) || RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_AUDIO");
                }
                return soundPool.load(fileUrlToFilePath(mediaPath), 1);
            case URL:
            case CONTENT_URI:
                File tempFile = cacheMediaTempFile(form, mediaPath, mediaSource);
                return soundPool.load(tempFile.getAbsolutePath(), 1);
            case CONTACT_URI:
                throw new IOException("Unable to load audio for contact " + mediaPath + ".");
        }
    }

    public static void loadMediaPlayer(MediaPlayer mediaPlayer, Form form, String mediaPath) throws IOException {
        MediaSource mediaSource = determineMediaSource(form, mediaPath);
        switch (mediaSource) {
            case ASSET:
                AssetFileDescriptor afd = getAssetsIgnoreCaseAfd(form, mediaPath);
                try {
                    FileDescriptor fd = afd.getFileDescriptor();
                    long offset = afd.getStartOffset();
                    long length = afd.getLength();
                    mediaPlayer.setDataSource(fd, offset, length);
                    return;
                } finally {
                    afd.close();
                }
            case PRIVATE_DATA:
            default:
                throw new IOException("Unable to load audio or video " + mediaPath + ".");
            case REPL_ASSET:
                if (RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                mediaPlayer.setDataSource(fileUrlToFilePath(form.getAssetPath(mediaPath)));
                return;
            case SDCARD:
                if (RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_AUDIO");
                }
                mediaPlayer.setDataSource(mediaPath);
                return;
            case FILE_URL:
                if (isExternalFileUrl(form, mediaPath) || RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_AUDIO");
                }
                mediaPlayer.setDataSource(fileUrlToFilePath(mediaPath));
                return;
            case URL:
                mediaPlayer.setDataSource(mediaPath);
                return;
            case CONTENT_URI:
                mediaPlayer.setDataSource(form, Uri.parse(mediaPath));
                return;
            case CONTACT_URI:
                throw new IOException("Unable to load audio or video for contact " + mediaPath + ".");
        }
    }

    public static void loadVideoView(VideoView videoView, Form form, String mediaPath) throws IOException {
        MediaSource mediaSource = determineMediaSource(form, mediaPath);
        switch (mediaSource) {
            case ASSET:
            case URL:
                File tempFile = cacheMediaTempFile(form, mediaPath, mediaSource);
                videoView.setVideoPath(tempFile.getAbsolutePath());
                return;
            case PRIVATE_DATA:
            default:
                throw new IOException("Unable to load video " + mediaPath + ".");
            case REPL_ASSET:
                if (RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission("android.permission.READ_EXTERNAL_STORAGE");
                }
                videoView.setVideoPath(fileUrlToFilePath(form.getAssetPath(mediaPath)));
                return;
            case SDCARD:
                if (RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_VIDEO");
                }
                videoView.setVideoPath(mediaPath);
                return;
            case FILE_URL:
                if (isExternalFileUrl(form, mediaPath) || RUtil.needsFilePermission(form, mediaPath, null)) {
                    form.assertPermission(Build.VERSION.SDK_INT < 33 ? "android.permission.READ_EXTERNAL_STORAGE" : "android.permission.READ_MEDIA_VIDEO");
                }
                videoView.setVideoPath(fileUrlToFilePath(mediaPath));
                return;
            case CONTENT_URI:
                videoView.setVideoURI(Uri.parse(mediaPath));
                return;
            case CONTACT_URI:
                throw new IOException("Unable to load video for contact " + mediaPath + ".");
        }
    }
}
