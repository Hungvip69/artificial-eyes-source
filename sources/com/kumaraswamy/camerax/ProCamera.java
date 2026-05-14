package com.kumaraswamy.camerax;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.util.Size;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.AndroidViewComponent;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.util.Ev3Constants;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kawa.lang.SyntaxForms;

/* JADX INFO: loaded from: classes.dex */
@UsesPermissions(permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE, android.permission.CAMERA")
@DesignerComponent(category = ComponentCategory.EXTENSION, description = "Pro custom camera developed by Kumaraswamy B G", iconName = "data:image/png;base64,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", nonVisible = SyntaxForms.DEBUGGING, version = 1)
@SimpleObject(external = SyntaxForms.DEBUGGING)
public class ProCamera extends AndroidNonvisibleComponent implements View.OnTouchListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final SparseIntArray ORIENTATIONS;
    private final Activity activity;
    private CameraCaptureSession cameraCaptureSessions;
    private CameraDevice cameraDevice;
    private String cameraID;
    private AutoFitTextureView cameraLayout;
    private int cameraStyle;
    private int cameraType;
    private FrameLayout cameraView;
    final CameraCaptureSession.CaptureCallback captureListener;
    private CaptureRequest.Builder captureRequestBuilder;
    private float currentZoom;
    private boolean enhance;
    private int faceDetectMode;
    private float finger_spacing;
    private boolean flashMode;
    private boolean gestureZoom;
    private boolean hasZoomSupport;
    private String imageDestination;
    private Size imageDimension;
    private float maxZoom;
    private int noiseReductionMode;
    private final Rect rectCrop;
    private Rect rectSensor;
    private final CameraDevice.StateCallback stateCallback;
    private final TextureView.SurfaceTextureListener surfaceTextureListener;
    private View view;
    private boolean visible;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        ORIENTATIONS = sparseIntArray;
        sparseIntArray.append(0, 0);
        ORIENTATIONS.append(1, 90);
        ORIENTATIONS.append(2, 180);
        ORIENTATIONS.append(3, 270);
    }

    public ProCamera(ComponentContainer container) {
        super(container.$form());
        this.cameraType = 0;
        this.noiseReductionMode = 0;
        this.cameraStyle = 0;
        this.faceDetectMode = 0;
        this.flashMode = false;
        this.enhance = false;
        this.hasZoomSupport = false;
        this.visible = true;
        this.gestureZoom = false;
        this.rectCrop = new Rect();
        this.finger_spacing = 0.0f;
        this.surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.kumaraswamy.camerax.ProCamera.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int height, int width) {
                ProCamera.this.configureTransform(height, width);
                ProCamera.this.openCamera();
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i1) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
        this.stateCallback = new CameraDevice.StateCallback() { // from class: com.kumaraswamy.camerax.ProCamera.2
            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice camera) {
                ProCamera.this.cameraDevice = camera;
                ProCamera.this.createCameraPreview();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice camera) {
                ProCamera.this.cameraDevice.close();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice camera, int error) {
                ProCamera.this.cameraDevice.close();
                ProCamera.this.cameraDevice = null;
            }
        };
        this.captureListener = new CameraCaptureSession.CaptureCallback() { // from class: com.kumaraswamy.camerax.ProCamera.3
            @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
            public void onCaptureCompleted(CameraCaptureSession session, CaptureRequest request, TotalCaptureResult result) {
                super.onCaptureCompleted(session, request, result);
                ProCamera.this.createCameraPreview();
                int res = ((Integer) result.get(CaptureResult.CONTROL_AF_STATE)).intValue();
                if (res == 4) {
                    ProCamera.this.FocusLocked();
                } else if (res == 5) {
                    ProCamera.this.FocusUnlocked();
                }
            }
        };
        this.activity = container.$context();
    }

    @SimpleProperty
    public float Zoom() {
        return this.currentZoom;
    }

    @SimpleFunction
    public void AddComponent(AndroidViewComponent component) {
        View v = component.getView();
        if (v.getParent() != null) {
            ((ViewGroup) v.getParent()).removeView(v);
        }
        FrameLayout componentLayout = new FrameLayout(this.activity);
        componentLayout.addView(v);
        this.cameraView.addView(componentLayout);
    }

    @SimpleFunction(description = "Initialize camera in an arrangement")
    public void Initialize(AndroidViewComponent component, int cameraType) {
        this.cameraType = cameraType;
        View view = component.getView();
        this.view = view;
        this.cameraView = (FrameLayout) view;
        removeView(this.cameraView);
        FrameLayout frameLayout = this.cameraView;
        AutoFitTextureView autoFitTextureView = new AutoFitTextureView(this.activity);
        this.cameraLayout = autoFitTextureView;
        frameLayout.addView(autoFitTextureView);
        this.cameraLayout.setSurfaceTextureListener(this.surfaceTextureListener);
        FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(-1, -1, 17);
        this.cameraLayout.setLayoutParams(params);
        this.cameraLayout.setOnTouchListener(this);
        Visible(this.visible);
    }

    private void removeView(FrameLayout cameraView) {
        if (this.cameraLayout != null && this.cameraLayout.getVisibility() == 0) {
            cameraView.removeView(this.cameraLayout);
        }
    }

    @SimpleProperty(description = "Zoom by touch gesture")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void PinchToZoom(boolean condition) {
        this.gestureZoom = condition;
    }

    @SimpleProperty
    public boolean PinchToZoom() {
        return this.gestureZoom;
    }

    @SimpleEvent(description = "Event fired when custom camera layout is initialized")
    public void Initialized() {
        EventDispatcher.dispatchEvent(this, "Initialized", new Object[0]);
    }

    @SimpleEvent(description = "Event fired when custom camera failed to initialize")
    public void InitializeFailed() {
        EventDispatcher.dispatchEvent(this, "InitializeFailed", new Object[0]);
    }

    @SimpleEvent(description = "Event fired when saved photo")
    public void SavedPhoto() {
        EventDispatcher.dispatchEvent(this, "SavedPhoto", new Object[0]);
    }

    @SimpleEvent(description = "Event fired when refreshed camera")
    public void RefreshedCamera() {
        EventDispatcher.dispatchEvent(this, "RefreshedCamera", new Object[0]);
    }

    @SimpleEvent(description = "Event fired when zoom changed")
    public void ZoomChanged() {
        EventDispatcher.dispatchEvent(this, "ZoomChanged", new Object[0]);
    }

    @SimpleEvent(description = "Event fired when zoom is being done on the camera layout")
    public void ZoomByPinch(boolean zoomTypeIncrease) {
        EventDispatcher.dispatchEvent(this, "ZoomByGesture", Boolean.valueOf(zoomTypeIncrease));
    }

    @SimpleEvent(description = "Event fired when focus locked")
    public void FocusLocked() {
        EventDispatcher.dispatchEvent(this, "FocusLocked", new Object[0]);
    }

    @SimpleEvent(description = "Event fired when focus unlocked")
    public void FocusUnlocked() {
        EventDispatcher.dispatchEvent(this, "FocusUnlocked", new Object[0]);
    }

    @SimpleEvent(description = "Event fired when camera layout is touched")
    public void Touched() {
        EventDispatcher.dispatchEvent(this, "Touched", new Object[0]);
    }

    @SimpleProperty
    public int CameraTypeFront() {
        return 0;
    }

    @SimpleProperty
    public int CameraTypeRear() {
        return 1;
    }

    @SimpleProperty
    public int CurrentCameraType() {
        return this.cameraType;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Flash(boolean condition) {
        this.flashMode = condition;
    }

    @SimpleProperty
    public boolean Flash() {
        return this.flashMode;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enhance(boolean condition) {
        this.enhance = condition;
    }

    @SimpleProperty
    public boolean Enhance() {
        return this.enhance;
    }

    @SimpleProperty
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTAREA)
    public void Output(String output) {
        this.imageDestination = output;
    }

    @SimpleProperty
    public String Output() {
        return this.imageDestination == null ? "" : this.imageDestination;
    }

    @SimpleProperty
    public int DefaultFilter() {
        return 0;
    }

    @SimpleProperty
    public int MonoFilter() {
        return 1;
    }

    @SimpleProperty
    public int NegativeFilter() {
        return 2;
    }

    @SimpleProperty
    public int SepiaFilter() {
        return 4;
    }

    @SimpleProperty
    public int PosterizeFilter() {
        return 5;
    }

    @SimpleProperty
    public int SolarizeFilter() {
        return 3;
    }

    @SimpleProperty
    public int WhiteboardFilter() {
        return 6;
    }

    @SimpleProperty
    public int AquaFilter() {
        return 8;
    }

    @SimpleProperty
    public int BlackboardFilter() {
        return 7;
    }

    @SimpleProperty
    public int CameraFilter() {
        return this.cameraStyle;
    }

    @SimpleProperty(description = "Set noise reduction mode")
    public void NoiseReductionMode(int mode) {
        this.noiseReductionMode = mode;
    }

    @SimpleProperty
    public int NoiseReductionMode() {
        return this.noiseReductionMode;
    }

    @SimpleProperty
    public int NoiseReductionDefault() {
        return 0;
    }

    @SimpleProperty
    public int NoiseReductionFast() {
        return 1;
    }

    @SimpleProperty
    public int NoiseReductionHighQuality() {
        return 2;
    }

    @SimpleProperty
    public int NoiseReductionMinimal() {
        return 3;
    }

    @SimpleProperty
    public int NoiseReductionNoShutterLag() {
        return 4;
    }

    @SimpleProperty(description = "Set the camera style type")
    public void CameraFilter(int filter) {
        this.cameraStyle = filter;
    }

    @SimpleFunction(description = "Take a picture")
    public void TakePicture() {
        takePicture();
    }

    @SimpleProperty
    public void FaceFocusMode(int mode) {
        this.faceDetectMode = mode;
    }

    @SimpleProperty
    public int FaceFocusMode() {
        return this.faceDetectMode;
    }

    @SimpleProperty
    public int FaceFocusModeDefault() {
        return 0;
    }

    @SimpleProperty
    public int FaceFocusModeSimple() {
        return 1;
    }

    @SimpleProperty
    public int FaceFocusModeHigh() {
        return 2;
    }

    @SimpleFunction(description = "Take preview photo")
    public void TakePreviewPicture() throws IllegalAccessException, InvocationTargetException {
        if (this.cameraLayout == null) {
            return;
        }
        try {
            FileOutputStream stream = new FileOutputStream(this.imageDestination);
            try {
                this.cameraLayout.getBitmap().compress(Bitmap.CompressFormat.JPEG, 100, stream);
                SavedPhoto();
                stream.close();
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @SimpleFunction(description = "Set zoom, make sure the values are in limit")
    public void Zoom(float zoomRatio) {
        if (this.hasZoomSupport && this.captureRequestBuilder != null && this.cameraCaptureSessions != null) {
            setZoom(this.captureRequestBuilder, zoomRatio, false);
        }
    }

    public void setZoom(CaptureRequest.Builder builder, float zoom, boolean isCapture) {
        float newZoom = Math.max(zoom, Math.min(1.0f, this.maxZoom));
        int centerX = this.rectSensor.width() / 2;
        int centerY = this.rectSensor.height() / 2;
        int deltaX = (int) ((this.rectSensor.width() * 0.5f) / newZoom);
        int deltaY = (int) ((this.rectSensor.height() * 0.5f) / newZoom);
        this.rectCrop.set(centerX - deltaX, centerY - deltaY, centerX + deltaX, centerY + deltaY);
        builder.set(CaptureRequest.SCALER_CROP_REGION, this.rectCrop);
        if (!isCapture) {
            try {
                this.cameraCaptureSessions.setRepeatingRequest(builder.build(), null, null);
                ZoomChanged();
            } catch (CameraAccessException e) {
                e.printStackTrace();
            }
        }
        this.currentZoom = zoom;
    }

    @SimpleFunction(description = "Locks the camera focus")
    public void LockFocus() {
        if (this.captureRequestBuilder == null) {
            return;
        }
        this.captureRequestBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
        try {
            this.cameraCaptureSessions.capture(this.captureRequestBuilder.build(), this.captureListener, null);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
    }

    @SimpleFunction(description = "Check if the camera is active")
    public boolean CameraActive() {
        return this.cameraLayout != null && this.cameraLayout.isAvailable();
    }

    @SimpleFunction(description = "Unlocks the camera focus")
    public void UnlockFocus() {
        if (this.captureRequestBuilder == null) {
            return;
        }
        this.captureRequestBuilder.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
        try {
            this.cameraCaptureSessions.capture(this.captureRequestBuilder.build(), this.captureListener, null);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
    }

    @SimpleProperty
    public float MaxZoom() throws CameraAccessException {
        zoomSettings();
        return this.maxZoom;
    }

    @SimpleProperty(description = "Set whether camera view should be visible")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Visible(boolean visible) {
        if (this.cameraView != null) {
            this.cameraView.setVisibility(visible ? 0 : 4);
        }
        this.visible = visible;
    }

    @SimpleProperty
    public boolean Visible() {
        return this.visible;
    }

    @SimpleFunction(description = "Set focus distance")
    public void Focus(float distance) throws CameraAccessException {
        if (this.captureRequestBuilder == null) {
            return;
        }
        CameraManager cameraManager = (CameraManager) this.activity.getSystemService("camera");
        CameraCharacteristics characteristics = null;
        try {
            characteristics = cameraManager.getCameraCharacteristics(this.cameraID);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
        float minimumLens = ((Float) characteristics.get(CameraCharacteristics.LENS_INFO_MINIMUM_FOCUS_DISTANCE)).floatValue();
        float num = (distance * minimumLens) / 100.0f;
        this.captureRequestBuilder.set(CaptureRequest.CONTROL_AF_MODE, 0);
        this.captureRequestBuilder.set(CaptureRequest.LENS_FOCUS_DISTANCE, Float.valueOf(num));
        RefreshCamera();
    }

    private void zoomSettings() throws CameraAccessException {
        CameraManager manager = (CameraManager) this.activity.getSystemService("camera");
        CameraCharacteristics characteristics = null;
        try {
            characteristics = manager.getCameraCharacteristics(this.cameraID);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
        this.rectSensor = (Rect) characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        this.maxZoom = 1.0f;
        this.hasZoomSupport = false;
        Float value = (Float) characteristics.get(CameraCharacteristics.SCALER_AVAILABLE_MAX_DIGITAL_ZOOM);
        this.maxZoom = (value == null || value.floatValue() < 1.0f) ? 1.0f : value.floatValue();
        this.hasZoomSupport = Float.compare(this.maxZoom, 1.0f) > 0;
    }

    @SimpleFunction(description = "Refreshes camera")
    public void RefreshCamera() {
        if (this.cameraLayout == null || this.cameraDevice == null || this.captureRequestBuilder == null) {
            return;
        }
        this.captureRequestBuilder.set(CaptureRequest.FLASH_MODE, Integer.valueOf(this.flashMode ? 2 : 0));
        this.captureRequestBuilder.set(CaptureRequest.CONTROL_EFFECT_MODE, Integer.valueOf(this.cameraStyle));
        this.captureRequestBuilder.set(CaptureRequest.NOISE_REDUCTION_MODE, Integer.valueOf(this.noiseReductionMode));
        this.captureRequestBuilder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, Integer.valueOf(this.faceDetectMode));
        updatePreview();
        RefreshedCamera();
    }

    @SimpleFunction(description = "Check if supported on the device")
    public boolean IsSupported() {
        return Build.VERSION.SDK_INT >= 21;
    }

    @SimpleFunction(description = "Reset camera")
    public void ResetCamera() {
        try {
            if (this.cameraDevice != null) {
                this.cameraDevice.close();
                this.cameraDevice = null;
            }
        } catch (Exception e) {
            Log.e("Custom Camera Error", e.getMessage());
        }
        removeView((FrameLayout) this.view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openCamera() {
        CameraManager cameraManager = (CameraManager) this.activity.getSystemService("camera");
        try {
            this.cameraID = cameraManager.getCameraIdList()[this.cameraType];
            CameraCharacteristics characteristics = cameraManager.getCameraCharacteristics(this.cameraID);
            StreamConfigurationMap configurationMap = (StreamConfigurationMap) characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            this.imageDimension = configurationMap.getOutputSizes(SurfaceTexture.class)[0];
            cameraManager.openCamera(this.cameraID, this.stateCallback, (Handler) null);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void configureTransform(int viewWidth, int viewHeight) {
        if (this.cameraLayout == null || this.imageDimension == null) {
            return;
        }
        int rotation = this.activity.getWindowManager().getDefaultDisplay().getRotation();
        Matrix matrix = new Matrix();
        RectF viewRect = new RectF(0.0f, 0.0f, viewWidth, viewHeight);
        RectF bufferRect = new RectF(0.0f, 0.0f, this.imageDimension.getHeight(), this.imageDimension.getWidth());
        float centerX = viewRect.centerX();
        float centerY = viewRect.centerY();
        if (1 == rotation || 3 == rotation) {
            bufferRect.offset(centerX - bufferRect.centerX(), centerY - bufferRect.centerY());
            matrix.setRectToRect(viewRect, bufferRect, Matrix.ScaleToFit.FILL);
            float scale = Math.max(viewHeight / this.imageDimension.getHeight(), viewWidth / this.imageDimension.getWidth());
            matrix.postScale(scale, scale, centerX, centerY);
            matrix.postRotate((rotation - 2) * 90, centerX, centerY);
        } else if (2 == rotation) {
            matrix.postRotate(180.0f, centerX, centerY);
        }
        this.cameraLayout.setTransform(matrix);
    }

    protected void createCameraPreview() {
        try {
            SurfaceTexture surfaceTexture = this.cameraLayout.getSurfaceTexture();
            surfaceTexture.setDefaultBufferSize(this.imageDimension.getWidth(), this.imageDimension.getHeight());
            Surface previewSurface = new Surface(surfaceTexture);
            CaptureRequest.Builder builderCreateCaptureRequest = this.cameraDevice.createCaptureRequest(1);
            this.captureRequestBuilder = builderCreateCaptureRequest;
            builderCreateCaptureRequest.addTarget(previewSurface);
            int i = 2;
            if (this.enhance) {
                this.captureRequestBuilder.set(CaptureRequest.EDGE_MODE, 2);
                this.captureRequestBuilder.set(CaptureRequest.SHADING_MODE, 2);
                this.captureRequestBuilder.set(CaptureRequest.TONEMAP_MODE, 2);
                this.captureRequestBuilder.set(CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE, 2);
                this.captureRequestBuilder.set(CaptureRequest.COLOR_CORRECTION_MODE, 2);
                this.captureRequestBuilder.set(CaptureRequest.HOT_PIXEL_MODE, 2);
                this.captureRequestBuilder.set(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE, 1);
            }
            this.captureRequestBuilder.set(CaptureRequest.JPEG_QUALITY, Byte.valueOf(Ev3Constants.Opcode.JR_LT8));
            CaptureRequest.Builder builder = this.captureRequestBuilder;
            CaptureRequest.Key key = CaptureRequest.FLASH_MODE;
            if (!this.flashMode) {
                i = 0;
            }
            builder.set(key, Integer.valueOf(i));
            this.captureRequestBuilder.set(CaptureRequest.CONTROL_EFFECT_MODE, Integer.valueOf(this.cameraStyle));
            this.captureRequestBuilder.set(CaptureRequest.NOISE_REDUCTION_MODE, Integer.valueOf(this.noiseReductionMode));
            this.captureRequestBuilder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, Integer.valueOf(this.faceDetectMode));
            this.cameraDevice.createCaptureSession(Collections.singletonList(previewSurface), new CameraCaptureSession.StateCallback() { // from class: com.kumaraswamy.camerax.ProCamera.4
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(CameraCaptureSession cameraCaptureSession) {
                    if (ProCamera.this.cameraDevice != null) {
                        ProCamera.this.cameraCaptureSessions = cameraCaptureSession;
                        Log.e("Camera Zoom", String.valueOf(ProCamera.this.MaxZoom()));
                        ProCamera.this.Initialized();
                        ProCamera.this.updatePreview();
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
                    ProCamera.this.InitializeFailed();
                }
            }, null);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
    }

    protected void updatePreview() {
        this.captureRequestBuilder.set(CaptureRequest.CONTROL_MODE, 1);
        try {
            this.cameraCaptureSessions.setRepeatingRequest(this.captureRequestBuilder.build(), null, null);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
    }

    protected void takePicture() {
        if (this.cameraDevice == null) {
            return;
        }
        CameraManager manager = (CameraManager) this.activity.getSystemService("camera");
        try {
            CameraCharacteristics characteristics = manager.getCameraCharacteristics(this.cameraDevice.getId());
            Size[] jpegSizes = null;
            if (characteristics != null) {
                jpegSizes = ((StreamConfigurationMap) characteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)).getOutputSizes(256);
            }
            int width = 640;
            int height = 480;
            if (jpegSizes != null && jpegSizes.length > 0) {
                width = jpegSizes[0].getWidth();
                height = jpegSizes[0].getHeight();
            }
            ImageReader reader = ImageReader.newInstance(width, height, 256, 1);
            List<Surface> outputSurfaces = new ArrayList<>(2);
            outputSurfaces.add(reader.getSurface());
            outputSurfaces.add(new Surface(this.cameraLayout.getSurfaceTexture()));
            final CaptureRequest.Builder captureBuilder = this.cameraDevice.createCaptureRequest(2);
            captureBuilder.addTarget(reader.getSurface());
            if (this.enhance) {
                captureBuilder.set(CaptureRequest.EDGE_MODE, 2);
                captureBuilder.set(CaptureRequest.SHADING_MODE, 2);
                captureBuilder.set(CaptureRequest.TONEMAP_MODE, 2);
                captureBuilder.set(CaptureRequest.COLOR_CORRECTION_ABERRATION_MODE, 2);
                captureBuilder.set(CaptureRequest.COLOR_CORRECTION_MODE, 2);
                captureBuilder.set(CaptureRequest.HOT_PIXEL_MODE, 2);
                captureBuilder.set(CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE, 1);
            }
            captureBuilder.set(CaptureRequest.JPEG_QUALITY, Byte.valueOf(Ev3Constants.Opcode.JR_LT8));
            captureBuilder.set(CaptureRequest.FLASH_MODE, Integer.valueOf(this.flashMode ? 2 : 0));
            captureBuilder.set(CaptureRequest.CONTROL_EFFECT_MODE, Integer.valueOf(this.cameraStyle));
            captureBuilder.set(CaptureRequest.NOISE_REDUCTION_MODE, Integer.valueOf(this.noiseReductionMode));
            captureBuilder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, Integer.valueOf(this.faceDetectMode));
            setZoom(captureBuilder, this.currentZoom, true);
            ImageReader.OnImageAvailableListener readerListener = new ImageReader.OnImageAvailableListener() { // from class: com.kumaraswamy.camerax.ProCamera.5
                @Override // android.media.ImageReader.OnImageAvailableListener
                public void onImageAvailable(ImageReader reader2) {
                    Image image = null;
                    try {
                        image = reader2.acquireLatestImage();
                        ByteBuffer buffer = image.getPlanes()[0].getBuffer();
                        byte[] bytes = new byte[buffer.capacity()];
                        buffer.get(bytes);
                        ProCamera.this.writeBytes(bytes);
                    } finally {
                        if (image != null) {
                            image.close();
                        }
                    }
                }
            };
            reader.setOnImageAvailableListener(readerListener, null);
            this.cameraDevice.createCaptureSession(outputSurfaces, new CameraCaptureSession.StateCallback() { // from class: com.kumaraswamy.camerax.ProCamera.6
                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigured(CameraCaptureSession session) {
                    try {
                        session.capture(captureBuilder.build(), ProCamera.this.captureListener, null);
                    } catch (CameraAccessException e) {
                        e.printStackTrace();
                    }
                }

                @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
                public void onConfigureFailed(CameraCaptureSession session) throws IllegalAccessException, InvocationTargetException {
                    ProCamera.this.createCameraPreview();
                    ProCamera.this.TakePreviewPicture();
                }
            }, null);
        } catch (CameraAccessException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeBytes(byte[] data) throws IllegalAccessException, InvocationTargetException {
        try {
            FileOutputStream stream = new FileOutputStream(this.imageDestination);
            try {
                stream.write(data);
                SavedPhoto();
                stream.close();
            } finally {
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent event) {
        if (event.getPointerCount() > 1 && this.gestureZoom) {
            float x = event.getX(0) - event.getX(1);
            float y = event.getY(0) - event.getY(1);
            float current_finger_spacing = (float) Math.sqrt((x * x) + (y * y));
            if (this.finger_spacing != 0.0f) {
                if (current_finger_spacing > this.finger_spacing && this.maxZoom > this.currentZoom) {
                    double d = this.currentZoom;
                    Double.isNaN(d);
                    this.currentZoom = (float) (d + 0.1d);
                    ZoomByPinch(true);
                } else if (current_finger_spacing < this.finger_spacing && this.currentZoom > 1.0f) {
                    double d2 = this.currentZoom;
                    Double.isNaN(d2);
                    this.currentZoom = (float) (d2 - 0.1d);
                    ZoomByPinch(false);
                }
                setZoom(this.captureRequestBuilder, this.currentZoom, false);
            }
            this.finger_spacing = current_finger_spacing;
        } else if (event.getAction() == 1) {
            Touched();
        }
        return true;
    }
}
