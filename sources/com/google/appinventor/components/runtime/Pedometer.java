package com.google.appinventor.components.runtime;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import java.util.HashSet;
import java.util.Set;
import kawa.lang.SyntaxForms;

/* JADX INFO: loaded from: classes.dex */
@DesignerComponent(category = ComponentCategory.SENSORS, description = "A Component that acts like a Pedometer. It senses motion via the Accelerometer and attempts to determine if a step has been taken. Using a configurable stride length, it can estimate the distance traveled as well. ", iconName = "images/pedometer.png", nonVisible = SyntaxForms.DEBUGGING, version = 3)
@SimpleObject
public class Pedometer extends AndroidNonvisibleComponent implements Component, SensorEventListener, Deleteable, RealTimeDataSource<String, Float> {
    private static final int INTERVAL_VARIATION = 250;
    private static final int NUM_INTERVALS = 2;
    private static final float PEAK_VALLEY_RANGE = 40.0f;
    private static final String PREFS_NAME = "PedometerPrefs";
    private static final float STRIDE_LENGTH = 0.73f;
    private static final String TAG = "Pedometer";
    private static final int WIN_SIZE = 100;
    private int avgPos;
    private float[] avgWindow;
    private final Context context;
    private Set<DataSourceChangeListener> dataSourceObservers;
    private boolean foundNonStep;
    private boolean foundValley;
    private int intervalPos;
    private float lastValley;
    private float[] lastValues;
    private int numStepsRaw;
    private int numStepsWithFilter;
    private boolean pedometerPaused;
    private long prevStopClockTime;
    private final SensorManager sensorManager;
    private boolean startPeaking;
    private long startTime;
    private long[] stepInterval;
    private long stepTimestamp;
    private int stopDetectionTimeout;
    private float strideLength;
    private float totalDistance;
    private int winPos;

    public Pedometer(ComponentContainer container) {
        super(container.$form());
        this.stopDetectionTimeout = 2000;
        this.winPos = 0;
        this.intervalPos = 0;
        this.numStepsWithFilter = 0;
        this.numStepsRaw = 0;
        this.lastValley = 0.0f;
        this.lastValues = new float[100];
        this.strideLength = STRIDE_LENGTH;
        this.totalDistance = 0.0f;
        this.stepInterval = new long[2];
        this.stepTimestamp = 0L;
        this.startTime = 0L;
        this.prevStopClockTime = 0L;
        this.foundValley = false;
        this.startPeaking = false;
        this.foundNonStep = true;
        this.pedometerPaused = true;
        this.avgWindow = new float[10];
        this.avgPos = 0;
        this.dataSourceObservers = new HashSet();
        this.context = container.$context();
        this.winPos = 0;
        this.startPeaking = false;
        this.numStepsWithFilter = 0;
        this.numStepsRaw = 0;
        this.foundValley = true;
        this.lastValley = 0.0f;
        this.sensorManager = (SensorManager) this.context.getSystemService("sensor");
        SharedPreferences settings = this.context.getSharedPreferences(PREFS_NAME, 0);
        this.strideLength = settings.getFloat("Pedometer.stridelength", STRIDE_LENGTH);
        this.totalDistance = settings.getFloat("Pedometer.distance", 0.0f);
        this.numStepsRaw = settings.getInt("Pedometer.prevStepCount", 0);
        this.prevStopClockTime = settings.getLong("Pedometer.clockTime", 0L);
        this.numStepsWithFilter = this.numStepsRaw;
        this.startTime = System.currentTimeMillis();
        Log.d(TAG, "Pedometer Created");
    }

    @SimpleFunction(description = "Start counting steps")
    public void Start() {
        if (this.pedometerPaused) {
            this.pedometerPaused = false;
            this.sensorManager.registerListener(this, this.sensorManager.getSensorList(1).get(0), 0);
            this.startTime = System.currentTimeMillis();
        }
    }

    @SimpleFunction(description = "Stop counting steps")
    public void Stop() {
        if (!this.pedometerPaused) {
            this.pedometerPaused = true;
            this.sensorManager.unregisterListener(this);
            Log.d(TAG, "Unregistered listener on pause");
            this.prevStopClockTime += System.currentTimeMillis() - this.startTime;
        }
    }

    @SimpleFunction(description = "Resets the step counter, distance measure and time running.")
    public void Reset() {
        this.numStepsWithFilter = 0;
        this.numStepsRaw = 0;
        this.totalDistance = 0.0f;
        this.prevStopClockTime = 0L;
        this.startTime = System.currentTimeMillis();
    }

    @SimpleFunction(description = "Resumes counting, synonym of Start.")
    @Deprecated
    public void Resume() {
        Start();
    }

    @SimpleFunction(description = "Pause counting of steps and distance.")
    @Deprecated
    public void Pause() {
        Stop();
    }

    @SimpleFunction(description = "Saves the pedometer state to the phone. Permits permits accumulation of steps and distance between invocations of an App that uses the pedometer. Different Apps will have their own saved state.")
    public void Save() {
        SharedPreferences settings = this.context.getSharedPreferences(PREFS_NAME, 0);
        SharedPreferences.Editor editor = settings.edit();
        editor.putFloat("Pedometer.stridelength", this.strideLength);
        editor.putFloat("Pedometer.distance", this.totalDistance);
        editor.putInt("Pedometer.prevStepCount", this.numStepsRaw);
        if (this.pedometerPaused) {
            editor.putLong("Pedometer.clockTime", this.prevStopClockTime);
        } else {
            editor.putLong("Pedometer.clockTime", this.prevStopClockTime + (System.currentTimeMillis() - this.startTime));
        }
        editor.putLong("Pedometer.closeTime", System.currentTimeMillis());
        editor.commit();
        Log.d(TAG, "Pedometer state saved.");
    }

    @SimpleEvent(description = "This event is run when a raw step is detected.")
    public void SimpleStep(int simpleSteps, float distance) {
        notifyDataObservers("SimpleSteps", (Object) Integer.valueOf(simpleSteps));
        notifyDataObservers("Distance", (Object) Float.valueOf(distance));
        EventDispatcher.dispatchEvent(this, "SimpleStep", Integer.valueOf(simpleSteps), Float.valueOf(distance));
    }

    @SimpleEvent(description = "This event is run when a walking step is detected. A walking step is a step that appears to be involved in forward motion.")
    public void WalkStep(int walkSteps, float distance) {
        notifyDataObservers("WalkSteps", (Object) Integer.valueOf(walkSteps));
        notifyDataObservers("Distance", (Object) Float.valueOf(distance));
        EventDispatcher.dispatchEvent(this, "WalkStep", Integer.valueOf(walkSteps), Float.valueOf(distance));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the average stride length in meters.")
    @DesignerProperty(defaultValue = "0.73", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void StrideLength(float length) {
        this.strideLength = length;
    }

    @SimpleProperty
    public float StrideLength() {
        return this.strideLength;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The duration in milliseconds of idleness (no steps detected) after which to go into a \"stopped\" state")
    @DesignerProperty(defaultValue = "2000", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void StopDetectionTimeout(int timeout) {
        this.stopDetectionTimeout = timeout;
    }

    @SimpleProperty
    public int StopDetectionTimeout() {
        return this.stopDetectionTimeout;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The approximate distance traveled in meters.")
    public float Distance() {
        return this.totalDistance;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Time elapsed in milliseconds since the pedometer was started.")
    public long ElapsedTime() {
        if (this.pedometerPaused) {
            return this.prevStopClockTime;
        }
        return this.prevStopClockTime + (System.currentTimeMillis() - this.startTime);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The number of simple steps taken since the pedometer has started.")
    public int SimpleSteps() {
        return this.numStepsRaw;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "the number of walk steps taken since the pedometer has started.")
    public int WalkSteps() {
        return this.numStepsWithFilter;
    }

    private boolean areStepsEquallySpaced() {
        float avg = 0.0f;
        int num = 0;
        for (long interval : this.stepInterval) {
            if (interval > 0) {
                num++;
                avg += interval;
            }
        }
        float avg2 = avg / num;
        int length = this.stepInterval.length;
        for (int i = 0; i < length; i++) {
            if (Math.abs(r2[i] - avg2) > 250.0f) {
                return false;
            }
        }
        return true;
    }

    private boolean isPeak() {
        int mid = (this.winPos + 50) % 100;
        for (int i = 0; i < 100; i++) {
            if (i != mid && this.lastValues[i] > this.lastValues[mid]) {
                return false;
            }
        }
        return true;
    }

    private boolean isValley() {
        int mid = (this.winPos + 50) % 100;
        for (int i = 0; i < 100; i++) {
            if (i != mid && this.lastValues[i] < this.lastValues[mid]) {
                return false;
            }
        }
        return true;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
        Log.d(TAG, "Accelerometer accuracy changed.");
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        if (event.sensor.getType() != 1) {
            return;
        }
        float[] values = event.values;
        float magnitude = 0.0f;
        for (float v : values) {
            magnitude += v * v;
        }
        int mid = (this.winPos + 50) % 100;
        if (this.startPeaking && isPeak() && this.foundValley && this.lastValues[mid] - this.lastValley > PEAK_VALLEY_RANGE) {
            long timestamp = System.currentTimeMillis();
            this.stepInterval[this.intervalPos] = timestamp - this.stepTimestamp;
            this.intervalPos = (this.intervalPos + 1) % 2;
            this.stepTimestamp = timestamp;
            if (areStepsEquallySpaced()) {
                if (this.foundNonStep) {
                    this.numStepsWithFilter += 2;
                    this.totalDistance += this.strideLength * 2.0f;
                    this.foundNonStep = false;
                }
                this.numStepsWithFilter++;
                WalkStep(this.numStepsWithFilter, this.totalDistance);
                this.totalDistance += this.strideLength;
            } else {
                this.foundNonStep = true;
            }
            this.numStepsRaw++;
            SimpleStep(this.numStepsRaw, this.totalDistance);
            this.foundValley = false;
        }
        if (this.startPeaking && isValley()) {
            this.foundValley = true;
            this.lastValley = this.lastValues[mid];
        }
        this.avgWindow[this.avgPos] = magnitude;
        this.avgPos = (this.avgPos + 1) % this.avgWindow.length;
        this.lastValues[this.winPos] = 0.0f;
        for (float m : this.avgWindow) {
            float[] fArr = this.lastValues;
            int i = this.winPos;
            fArr[i] = fArr[i] + m;
        }
        float[] fArr2 = this.lastValues;
        int i2 = this.winPos;
        fArr2[i2] = fArr2[i2] / this.avgWindow.length;
        if (this.startPeaking || this.winPos > 1) {
            int i3 = this.winPos - 1;
            if (i3 < 0) {
                i3 += 100;
            }
            float[] fArr3 = this.lastValues;
            int i4 = this.winPos;
            fArr3[i4] = fArr3[i4] + (this.lastValues[i3] * 2.0f);
            int i5 = i3 - 1;
            if (i5 < 0) {
                i5 += 100;
            }
            float[] fArr4 = this.lastValues;
            int i6 = this.winPos;
            fArr4[i6] = fArr4[i6] + this.lastValues[i5];
            float[] fArr5 = this.lastValues;
            int i7 = this.winPos;
            fArr5[i7] = fArr5[i7] / 4.0f;
        } else if (!this.startPeaking && this.winPos == 1) {
            this.lastValues[1] = (this.lastValues[1] + this.lastValues[0]) / 2.0f;
        }
        long elapsedTimestamp = System.currentTimeMillis();
        if (elapsedTimestamp - this.stepTimestamp > this.stopDetectionTimeout) {
            this.stepTimestamp = elapsedTimestamp;
        }
        if (this.winPos == 99 && !this.startPeaking) {
            this.startPeaking = true;
        }
        this.winPos = (this.winPos + 1) % 100;
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        this.sensorManager.unregisterListener(this);
    }

    @SimpleEvent(description = "This event has been deprecated.")
    @Deprecated
    public void StartedMoving() {
    }

    @SimpleEvent(description = "This event has been deprecated.")
    @Deprecated
    public void StoppedMoving() {
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "This property has been deprecated.")
    @Deprecated
    public void UseGPS(boolean gps) {
    }

    @SimpleEvent(description = "This event has been deprecated.")
    @Deprecated
    public void CalibrationFailed() {
    }

    @SimpleEvent(description = "This event has been deprecated.")
    @Deprecated
    public void GPSAvailable() {
    }

    @SimpleEvent(description = "This event has been deprecated.")
    @Deprecated
    public void GPSLost() {
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "This property has been deprecated.")
    @Deprecated
    public void CalibrateStrideLength(boolean cal) {
    }

    @SimpleProperty(description = "This property has been deprecated.")
    @Deprecated
    public boolean CalibrateStrideLength() {
        return false;
    }

    @SimpleProperty(description = "This property has been deprecated.")
    @Deprecated
    public boolean Moving() {
        return false;
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void addDataObserver(DataSourceChangeListener dataComponent) {
        this.dataSourceObservers.add(dataComponent);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void removeDataObserver(DataSourceChangeListener dataComponent) {
        this.dataSourceObservers.remove(dataComponent);
    }

    @Override // com.google.appinventor.components.runtime.ObservableDataSource
    public void notifyDataObservers(String key, Object value) {
        for (DataSourceChangeListener dataComponent : this.dataSourceObservers) {
            dataComponent.onReceiveValue(this, key, value);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    @Override // com.google.appinventor.components.runtime.DataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Float getDataValue(java.lang.String r2) {
        /*
            r1 = this;
            int r0 = r2.hashCode()
            switch(r0) {
                case -871160130: goto L1c;
                case 237934709: goto L12;
                case 353103893: goto L8;
                default: goto L7;
            }
        L7:
            goto L26
        L8:
            java.lang.String r0 = "Distance"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L7
            r0 = 2
            goto L27
        L12:
            java.lang.String r0 = "SimpleSteps"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L27
        L1c:
            java.lang.String r0 = "WalkSteps"
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L7
            r0 = 1
            goto L27
        L26:
            r0 = -1
        L27:
            switch(r0) {
                case 0: goto L3f;
                case 1: goto L37;
                case 2: goto L30;
                default: goto L2a;
            }
        L2a:
            r0 = 0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            return r0
        L30:
            float r0 = r1.totalDistance
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            return r0
        L37:
            int r0 = r1.numStepsWithFilter
            float r0 = (float) r0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            return r0
        L3f:
            int r0 = r1.numStepsRaw
            float r0 = (float) r0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.Pedometer.getDataValue(java.lang.String):java.lang.Float");
    }
}
