package com.google.appinventor.components.runtime;

import android.content.Context;
import android.location.Address;
import android.location.Criteria;
import android.location.Geocoder;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.location.LocationProvider;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.BulkPermissionRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kawa.lang.SyntaxForms;

/* JADX INFO: loaded from: classes.dex */
@SimpleObject
@UsesPermissions(permissionNames = "android.permission.ACCESS_FINE_LOCATION,android.permission.ACCESS_COARSE_LOCATION,android.permission.ACCESS_MOCK_LOCATION,android.permission.ACCESS_LOCATION_EXTRA_COMMANDS")
@DesignerComponent(category = ComponentCategory.SENSORS, description = "Non-visible component providing location information, including longitude, latitude, altitude (if supported by the device), speed (if supported by the device), and address.  This can also perform \"geocoding\", converting a given address (not necessarily the current one) to a latitude (with the <code>LatitudeFromAddress</code> method) and a longitude (with the <code>LongitudeFromAddress</code> method).</p>\n<p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have location sensing enabled through wireless networks or GPS satellites (if outdoors).</p>\nLocation information might not be immediately available when an app starts.  You'll have to wait a short time for a location provider to be found and used, or wait for the LocationChanged event", iconName = "images/locationSensor.png", nonVisible = SyntaxForms.DEBUGGING, version = 4)
public class LocationSensor extends AndroidNonvisibleComponent implements Component, OnStopListener, OnResumeListener, Deleteable, RealTimeDataSource<String, Float> {
    private static final String LOG_TAG = LocationSensor.class.getSimpleName();
    public static final int UNKNOWN_VALUE = 0;
    private List<String> allProviders;
    private double altitude;
    private final Handler androidUIHandler;
    private Set<DataSourceChangeListener> dataSourceObservers;
    private int distanceInterval;
    private boolean enabled;
    private Geocoder geocoder;
    private final Handler handler;
    private boolean hasAltitude;
    private boolean hasLocationData;
    private boolean havePermission;
    private boolean initialized;
    private Location lastLocation;
    private double latitude;
    private final Set<LocationSensorListener> listeners;
    private boolean listening;
    private final Criteria locationCriteria;
    private final LocationManager locationManager;
    private LocationProvider locationProvider;
    private double longitude;
    private MyLocationListener myLocationListener;
    private boolean providerLocked;
    private String providerName;
    private float speed;
    private int timeInterval;

    public interface LocationSensorListener extends LocationListener {
        void onDistanceIntervalChanged(int i);

        void onTimeIntervalChanged(int i);

        void setSource(LocationSensor locationSensor);
    }

    private class MyLocationListener implements LocationListener {
        private MyLocationListener() {
        }

        @Override // android.location.LocationListener
        public void onLocationChanged(final Location location) {
            LocationSensor.this.lastLocation = location;
            LocationSensor.this.longitude = location.getLongitude();
            LocationSensor.this.latitude = location.getLatitude();
            LocationSensor.this.speed = location.getSpeed();
            if (location.hasAltitude()) {
                LocationSensor.this.hasAltitude = true;
                LocationSensor.this.altitude = location.getAltitude();
            }
            if (LocationSensor.this.longitude != 0.0d || LocationSensor.this.latitude != 0.0d) {
                LocationSensor.this.hasLocationData = true;
                final double argLatitude = LocationSensor.this.latitude;
                final double argLongitude = LocationSensor.this.longitude;
                final double argAltitude = LocationSensor.this.altitude;
                final float argSpeed = LocationSensor.this.speed;
                LocationSensor.this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.LocationSensor.MyLocationListener.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LocationSensor.this.LocationChanged(argLatitude, argLongitude, argAltitude, argSpeed);
                        for (LocationSensorListener listener : LocationSensor.this.listeners) {
                            listener.onLocationChanged(location);
                        }
                    }
                });
            }
        }

        @Override // android.location.LocationListener
        public void onProviderDisabled(String provider) {
            LocationSensor.this.StatusChanged(provider, "Disabled");
            LocationSensor.this.stopListening();
            if (LocationSensor.this.enabled) {
                LocationSensor.this.RefreshProvider("onProviderDisabled");
            }
        }

        @Override // android.location.LocationListener
        public void onProviderEnabled(String provider) {
            LocationSensor.this.StatusChanged(provider, "Enabled");
            LocationSensor.this.RefreshProvider("onProviderEnabled");
        }

        @Override // android.location.LocationListener
        public void onStatusChanged(String provider, int status, Bundle extras) {
            switch (status) {
                case 0:
                    LocationSensor.this.StatusChanged(provider, "OUT_OF_SERVICE");
                    if (provider.equals(LocationSensor.this.providerName)) {
                        LocationSensor.this.stopListening();
                        LocationSensor.this.RefreshProvider("onStatusChanged");
                    }
                    break;
                case 1:
                    LocationSensor.this.StatusChanged(provider, "TEMPORARILY_UNAVAILABLE");
                    break;
                case 2:
                    LocationSensor.this.StatusChanged(provider, "AVAILABLE");
                    if (!provider.equals(LocationSensor.this.providerName) && !LocationSensor.this.allProviders.contains(provider)) {
                        LocationSensor.this.RefreshProvider("onStatusChanged");
                        break;
                    }
                    break;
            }
        }
    }

    public LocationSensor(ComponentContainer container) {
        this(container, true);
    }

    public LocationSensor(ComponentContainer container, boolean enabled) {
        super(container.$form());
        this.dataSourceObservers = new HashSet();
        this.listeners = new HashSet();
        this.providerLocked = false;
        this.initialized = false;
        this.listening = false;
        this.longitude = 0.0d;
        this.latitude = 0.0d;
        this.altitude = 0.0d;
        this.speed = 0.0f;
        this.hasLocationData = false;
        this.hasAltitude = false;
        this.androidUIHandler = new Handler();
        this.enabled = true;
        this.havePermission = false;
        this.enabled = enabled;
        this.handler = new Handler();
        this.form.registerForOnResume(this);
        this.form.registerForOnStop(this);
        this.timeInterval = 60000;
        this.distanceInterval = 5;
        Context context = container.$context();
        this.geocoder = new Geocoder(context);
        this.locationManager = (LocationManager) context.getSystemService("location");
        this.locationCriteria = new Criteria();
        this.myLocationListener = new MyLocationListener();
        this.allProviders = new ArrayList();
        Enabled(enabled);
    }

    public void Initialize() {
        this.initialized = true;
        Enabled(this.enabled);
    }

    @SimpleEvent(description = "Indicates that a new location has been detected.")
    public void LocationChanged(double latitude, double longitude, double altitude, float speed) {
        notifyDataObservers(PropertyTypeConstants.PROPERTY_TYPE_LATITUDE, (Object) Double.valueOf(latitude));
        notifyDataObservers(PropertyTypeConstants.PROPERTY_TYPE_LONGITUDE, (Object) Double.valueOf(longitude));
        notifyDataObservers("altitude", (Object) Double.valueOf(altitude));
        notifyDataObservers("speed", (Object) Float.valueOf(speed));
        EventDispatcher.dispatchEvent(this, "LocationChanged", Double.valueOf(latitude), Double.valueOf(longitude), Double.valueOf(altitude), Float.valueOf(speed));
    }

    @SimpleEvent
    public void StatusChanged(String provider, String status) {
        if (this.enabled) {
            EventDispatcher.dispatchEvent(this, "StatusChanged", provider, status);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ProviderName() {
        if (this.providerName == null) {
            return "NO PROVIDER";
        }
        return this.providerName;
    }

    @SimpleProperty
    public void ProviderName(String providerName) {
        this.providerName = providerName;
        if (!empty(providerName) && startProvider(providerName)) {
            return;
        }
        RefreshProvider("ProviderName");
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean ProviderLocked() {
        return this.providerLocked;
    }

    @SimpleProperty
    public void ProviderLocked(boolean lock) {
        this.providerLocked = lock;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "60000", editorType = PropertyTypeConstants.PROPERTY_TYPE_SENSOR_TIME_INTERVAL)
    public void TimeInterval(int interval) {
        if (interval < 0 || interval > 1000000) {
            return;
        }
        this.timeInterval = interval;
        if (this.enabled) {
            RefreshProvider("TimeInterval");
        }
        for (LocationSensorListener listener : this.listeners) {
            listener.onTimeIntervalChanged(this.timeInterval);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Determines the minimum time interval, in milliseconds, that the sensor will try to use for sending out location updates. However, location updates will only be received when the location of the phone actually changes, and use of the specified time interval is not guaranteed. For example, if 1000 is used as the time interval, location updates will never be fired sooner than 1000ms, but they may be fired anytime after.")
    public int TimeInterval() {
        return this.timeInterval;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "5", editorType = PropertyTypeConstants.PROPERTY_TYPE_SENSOR_DIST_INTERVAL)
    public void DistanceInterval(int interval) {
        if (interval < 0 || interval > 1000) {
            return;
        }
        this.distanceInterval = interval;
        if (this.enabled) {
            RefreshProvider("DistanceInterval");
        }
        for (LocationSensorListener listener : this.listeners) {
            listener.onDistanceIntervalChanged(this.distanceInterval);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Determines the minimum distance interval, in meters, that the sensor will try to use for sending out location updates. For example, if this is set to 5, then the sensor will fire a LocationChanged event only after 5 meters have been traversed. However, the sensor does not guarantee that an update will be received at exactly the distance interval. It may take more than 5 meters to fire an event, for instance.")
    public int DistanceInterval() {
        return this.distanceInterval;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean HasLongitudeLatitude() {
        return this.hasLocationData && this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean HasAltitude() {
        return this.hasAltitude && this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean HasAccuracy() {
        return Accuracy() != 0.0d && this.enabled;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public double Longitude() {
        return this.longitude;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public double Latitude() {
        return this.latitude;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The most recently available altitude value, in meters.  If no value is available, 0 will be returned.")
    public double Altitude() {
        return this.altitude;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The most recent measure of accuracy, in meters.  If no value is available, 0 will be returned.")
    public double Accuracy() {
        if (this.lastLocation != null && this.lastLocation.hasAccuracy()) {
            return this.lastLocation.getAccuracy();
        }
        if (this.locationProvider != null) {
            return this.locationProvider.getAccuracy();
        }
        return 0.0d;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean Enabled() {
        return this.enabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean enabled) {
        this.enabled = enabled;
        if (!this.initialized) {
            return;
        }
        if (!enabled) {
            stopListening();
        } else {
            RefreshProvider("Enabled");
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Provides a textual representation of the current address or \"No address available\".")
    public String CurrentAddress() {
        if ((this.hasLocationData && this.latitude <= 90.0d && this.latitude >= -90.0d && this.longitude <= 180.0d) || this.longitude >= -180.0d) {
            try {
                return addressFromLatLong(this.latitude, this.longitude);
            } catch (Exception e) {
                if ((e instanceof IllegalArgumentException) || (e instanceof IOException) || (e instanceof IndexOutOfBoundsException)) {
                    Log.e(LOG_TAG, "Exception thrown by getting current address " + e.getMessage());
                    return "No address available";
                }
                Log.e(LOG_TAG, "Unexpected exception thrown by getting current address " + e.getMessage());
                return "No address available";
            }
        }
        return "No address available";
    }

    public String addressFromLatLong(double latitude, double longitude) throws IOException {
        Address address;
        List<Address> addresses = this.geocoder.getFromLocation(latitude, longitude, 1);
        if (addresses != null && addresses.size() == 1 && (address = addresses.get(0)) != null) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i <= address.getMaxAddressLineIndex(); i++) {
                sb.append(address.getAddressLine(i));
                sb.append("\n");
            }
            return sb.toString();
        }
        return "Address with latitude " + Double.toString(latitude) + " and longitutde " + Double.toString(longitude) + " not found";
    }

    public Address getAddress(String locationName) throws IOException {
        List<Address> addressObjs = this.geocoder.getFromLocationName(locationName, 1);
        Log.i(LOG_TAG, "latitude addressObjs size is " + addressObjs.size() + " for " + locationName);
        if (addressObjs == null || addressObjs.size() == 0) {
            throw new IOException("");
        }
        return addressObjs.get(0);
    }

    @SimpleFunction(description = "Derives latitude of given address")
    public double LatitudeFromAddress(String locationName) {
        try {
            Address address = getAddress(locationName);
            return address.getLatitude();
        } catch (IOException e) {
            this.form.dispatchErrorOccurredEvent(this, "LatitudeFromAddress", 101, locationName);
            return 0.0d;
        }
    }

    @SimpleFunction(description = "Derives longitude of given address")
    public double LongitudeFromAddress(String locationName) {
        try {
            Address address = getAddress(locationName);
            return address.getLongitude();
        } catch (IOException e) {
            this.form.dispatchErrorOccurredEvent(this, "LongitudeFromAddress", 102, locationName);
            return 0.0d;
        }
    }

    @SimpleFunction(description = "Converts an address into a latitude and longitude through the GotLocationFromAddress event.")
    public void Geocode(final String address) {
        final double latitude = LatitudeFromAddress(address);
        final double longitude = LongitudeFromAddress(address);
        this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.LocationSensor.1
            @Override // java.lang.Runnable
            public void run() {
                LocationSensor.this.GotLocationFromAddress(address, latitude, longitude);
            }
        });
    }

    @SimpleEvent(description = "Reports the latitude and longitude in response to a Geocode request.")
    public void GotLocationFromAddress(String address, double latitude, double longitude) {
        EventDispatcher.dispatchEvent(this, "GotLocationFromAddress", address, Double.valueOf(latitude), Double.valueOf(longitude));
    }

    @SimpleFunction(description = "Determines the address associated with the given latitude and  and reports it through the GotAddress event.")
    public void ReverseGeocode(double latitude, double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
        final String address = CurrentAddress();
        this.form.runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.LocationSensor.2
            @Override // java.lang.Runnable
            public void run() {
                LocationSensor.this.GotAddress(address);
            }
        });
    }

    @SimpleEvent(description = "Reports the address in response to a ReverseGeocode request.")
    public void GotAddress(String address) {
        EventDispatcher.dispatchEvent(this, "GotAddress", address);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public List<String> AvailableProviders() {
        return this.allProviders;
    }

    public void RefreshProvider(final String caller) {
        if (this.initialized) {
            stopListening();
            if (!this.havePermission) {
                this.androidUIHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.LocationSensor.3
                    @Override // java.lang.Runnable
                    public void run() {
                        this.form.askPermission(new BulkPermissionRequest(this, "RefreshProvider", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION") { // from class: com.google.appinventor.components.runtime.LocationSensor.3.1
                            @Override // com.google.appinventor.components.runtime.util.BulkPermissionRequest
                            public void onGranted() {
                                this.havePermission = true;
                                this.RefreshProvider(caller);
                                Log.d(LocationSensor.LOG_TAG, "Permission Granted");
                            }
                        });
                    }
                });
            }
            if (this.providerLocked && !empty(this.providerName)) {
                this.listening = startProvider(this.providerName);
                return;
            }
            this.allProviders = this.locationManager.getProviders(true);
            String bProviderName = this.locationManager.getBestProvider(this.locationCriteria, true);
            if (bProviderName != null && !bProviderName.equals(this.allProviders.get(0))) {
                this.allProviders.add(0, bProviderName);
            }
            for (String providerN : this.allProviders) {
                this.listening = startProvider(providerN);
                if (this.listening) {
                    if (!this.providerLocked) {
                        this.providerName = providerN;
                        return;
                    }
                    return;
                }
            }
        }
    }

    private boolean startProvider(String providerName) {
        this.providerName = providerName;
        LocationProvider tLocationProvider = this.locationManager.getProvider(providerName);
        if (tLocationProvider == null) {
            Log.d(LOG_TAG, "getProvider(" + providerName + ") returned null");
            return false;
        }
        stopListening();
        this.locationProvider = tLocationProvider;
        this.locationManager.requestLocationUpdates(providerName, this.timeInterval, this.distanceInterval, this.myLocationListener);
        this.listening = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopListening() {
        if (this.listening) {
            this.locationManager.removeUpdates(this.myLocationListener);
            this.locationProvider = null;
            this.listening = false;
        }
    }

    @Override // com.google.appinventor.components.runtime.OnResumeListener
    public void onResume() {
        if (this.enabled) {
            RefreshProvider("onResume");
        }
    }

    @Override // com.google.appinventor.components.runtime.OnStopListener
    public void onStop() {
        stopListening();
    }

    @Override // com.google.appinventor.components.runtime.Deleteable
    public void onDelete() {
        stopListening();
    }

    public void addListener(LocationSensorListener listener) {
        listener.setSource(this);
        this.listeners.add(listener);
    }

    public void removeListener(LocationSensorListener listener) {
        this.listeners.remove(listener);
        listener.setSource(null);
    }

    private boolean empty(String s) {
        return s == null || s.length() == 0;
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
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    @Override // com.google.appinventor.components.runtime.DataSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Float getDataValue(java.lang.String r3) {
        /*
            r2 = this;
            int r0 = r3.hashCode()
            switch(r0) {
                case -1439978388: goto L26;
                case 109641799: goto L1c;
                case 137365935: goto L12;
                case 2036550306: goto L8;
                default: goto L7;
            }
        L7:
            goto L30
        L8:
            java.lang.String r0 = "altitude"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 2
            goto L31
        L12:
            java.lang.String r0 = "longitude"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 1
            goto L31
        L1c:
            java.lang.String r0 = "speed"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 3
            goto L31
        L26:
            java.lang.String r0 = "latitude"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L7
            r0 = 0
            goto L31
        L30:
            r0 = -1
        L31:
            switch(r0) {
                case 0: goto L51;
                case 1: goto L49;
                case 2: goto L41;
                case 3: goto L3a;
                default: goto L34;
            }
        L34:
            r0 = 0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            return r0
        L3a:
            float r0 = r2.speed
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            return r0
        L41:
            double r0 = r2.altitude
            float r0 = (float) r0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            return r0
        L49:
            double r0 = r2.longitude
            float r0 = (float) r0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            return r0
        L51:
            double r0 = r2.latitude
            float r0 = (float) r0
            java.lang.Float r0 = java.lang.Float.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.LocationSensor.getDataValue(java.lang.String):java.lang.Float");
    }
}
