package com.google.appinventor.components.runtime;

import android.graphics.DashPathEffect;
import android.util.Log;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.data.ScatterDataSet;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.BestFitModel;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.LOBFValues;
import com.google.appinventor.components.common.LinearRegression;
import com.google.appinventor.components.common.OptionList;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.StrokeStyle;
import com.google.appinventor.components.common.TrendlineCalculator;
import com.google.appinventor.components.runtime.util.ExponentialRegression;
import com.google.appinventor.components.runtime.util.HasTrendline;
import com.google.appinventor.components.runtime.util.LogarithmicRegression;
import com.google.appinventor.components.runtime.util.QuadraticRegression;
import com.google.appinventor.components.runtime.util.YailDictionary;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@DesignerComponent(category = ComponentCategory.CHARTS, description = "A component that predicts a best fit model for a given data series.", iconName = "images/trendline.png", version = 1)
@UsesLibraries({"commons-math3.jar"})
public class Trendline implements ChartComponent, DataSourceChangeListener {
    private static final boolean DEBUG = false;
    protected String componentName;
    private final Chart container;
    private final DashPathEffect dashed;
    private final float density;
    private final DashPathEffect dotted;
    private static final String LOG_TAG = Trendline.class.getSimpleName();
    private static final YailDictionary.KeyTransformer ENUM_KEY_TRANSFORMER = new YailDictionary.KeyTransformer() { // from class: com.google.appinventor.components.runtime.Trendline.1
        @Override // com.google.appinventor.components.runtime.util.YailDictionary.KeyTransformer
        public Object transform(Object key) {
            if (key instanceof OptionList) {
                return ((OptionList) key).toUnderlyingValue();
            }
            return key;
        }
    };
    private ChartData2D chartData = null;
    private int color = 0;
    private boolean extend = true;
    private BestFitModel model = BestFitModel.Linear;
    private double strokeWidth = 1.0d;
    private StrokeStyle strokeStyle = StrokeStyle.Solid;
    private boolean visible = true;
    private final LinearRegression regression = new LinearRegression();
    private final QuadraticRegression quadraticRegression = new QuadraticRegression();
    private final ExponentialRegression exponentialRegression = new ExponentialRegression();
    private final LogarithmicRegression logarithmicRegression = new LogarithmicRegression();
    private TrendlineCalculator currentModel = this.regression;
    private java.util.Map<String, Object> lastResults = new HashMap();
    private boolean initialized = false;
    private DataModel<?> dataModel = null;
    private double minX = Double.POSITIVE_INFINITY;
    private double maxX = Double.NEGATIVE_INFINITY;

    public Trendline(Chart chartContainer) {
        this.density = chartContainer.$form().deviceDensity();
        this.container = chartContainer;
        this.container.addDataComponent(this);
        this.dashed = new DashPathEffect(new float[]{this.density * 10.0f, this.density * 10.0f}, 0.0f);
        this.dotted = new DashPathEffect(new float[]{this.density * 2.0f, this.density * 10.0f}, 0.0f);
    }

    @Override // com.google.appinventor.components.runtime.Component
    public void setComponentName(String componentName) {
        this.componentName = componentName;
    }

    public void Initialize() {
        this.initialized = true;
        if (this.dataModel == null) {
            initChartData();
        }
    }

    @Override // com.google.appinventor.components.runtime.Component
    public HandlesEventDispatching getDispatchDelegate() {
        return this.container.getDispatchDelegate();
    }

    @Override // com.google.appinventor.components.runtime.DataSourceChangeListener
    public void onDataSourceValueChange(DataSource<?, ?> component, String key, Object newValue) {
        this.lastResults.clear();
        Object value = component.getDataValue(null);
        if (!(value instanceof List)) {
            return;
        }
        List<?> entries = (List) value;
        List<Double> x = new ArrayList<>();
        List<Double> y = new ArrayList<>();
        this.minX = Double.POSITIVE_INFINITY;
        this.maxX = Double.NEGATIVE_INFINITY;
        for (Object o : entries) {
            if (o instanceof Entry) {
                Entry entry = (Entry) o;
                double currentX = entry.getX();
                if (currentX < this.minX) {
                    this.minX = currentX;
                }
                if (currentX > this.maxX) {
                    this.maxX = currentX;
                }
                x.add(Double.valueOf(currentX));
                y.add(Double.valueOf(entry.getY()));
            }
        }
        if (x.isEmpty()) {
            Log.w(LOG_TAG, "No entries in the data source");
            return;
        }
        if (x.size() < 2) {
            Log.w(LOG_TAG, "Not enough entries in the data source");
            return;
        }
        if (x.size() != y.size()) {
            Log.w(LOG_TAG, "Must have equal X and Y data points");
            return;
        }
        this.lastResults = this.currentModel.compute(x, y);
        if (this.initialized) {
            final YailDictionary results = new YailDictionary(this.lastResults, ENUM_KEY_TRANSFORMER);
            this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Trendline.2
                @Override // java.lang.Runnable
                public void run() {
                    Trendline.this.Updated(results);
                    if (Trendline.this.visible) {
                        Trendline.this.container.getChartView().getView().invalidate();
                    }
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.DataSourceChangeListener
    public void onReceiveValue(RealTimeDataSource<?, ?> component, String key, Object value) {
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The data series for which to compute the line of best fit.")
    @DesignerProperty(editorType = "component:com.google.appinventor.component.runtime.ChartData2D")
    public void ChartData(ChartData2D chartData) {
        if (this.chartData != null) {
            this.chartData.removeDataSourceChangeListener(this);
        }
        this.chartData = chartData;
        if (chartData != null) {
            chartData.addDataSourceChangeListener(this);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the line of best fit.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void Color(int color) {
        this.color = color;
        if (this.initialized) {
            this.container.refresh();
        }
    }

    @SimpleProperty
    public int Color() {
        return this.color;
    }

    @SimpleProperty
    public double CorrelationCoefficient() {
        return resultOrNan((Double) this.lastResults.get("correlation coefficient"));
    }

    @SimpleProperty
    public double ExponentialBase() {
        return resultOrNan((Double) this.lastResults.get("b"));
    }

    @SimpleProperty
    public double ExponentialCoefficient() {
        return resultOrNan((Double) this.lastResults.get("a"));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether to extend the line of best fit beyond the data.")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Extend(boolean extend) {
        this.extend = extend;
        if (this.initialized) {
            this.container.refresh();
        }
    }

    @SimpleProperty
    public boolean Extend() {
        return this.extend;
    }

    @SimpleProperty
    public double LinearCoefficient() {
        return resultOrNan((Double) this.lastResults.get("slope"));
    }

    @SimpleProperty
    public double LogarithmCoefficient() {
        return resultOrNan((Double) this.lastResults.get("b"));
    }

    @SimpleProperty
    public double LogarithmConstant() {
        return resultOrNan((Double) this.lastResults.get("a"));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The model to use for the line of best fit.")
    @DesignerProperty(defaultValue = "Linear", editorType = PropertyTypeConstants.PROPERTY_TYPE_BEST_FIT_MODEL)
    public void Model(BestFitModel model) {
        this.model = model;
        switch (model) {
            case Linear:
                this.currentModel = this.regression;
                break;
            case Quadratic:
                this.currentModel = this.quadraticRegression;
                break;
            case Exponential:
                this.currentModel = this.exponentialRegression;
                break;
            case Logarithmic:
                this.currentModel = this.logarithmicRegression;
                break;
            default:
                throw new IllegalArgumentException("Unknown model: " + model);
        }
        if (this.initialized) {
            this.container.refresh();
        }
    }

    @SimpleProperty
    public BestFitModel Model() {
        return this.model;
    }

    @SimpleProperty
    public List<Double> Predictions() {
        Object value = this.lastResults.get("predictions");
        if (value instanceof List) {
            return (List) value;
        }
        return new ArrayList();
    }

    @SimpleProperty
    public double QuadraticCoefficient() {
        return resultOrZero((Double) this.lastResults.get("x^2"));
    }

    @SimpleProperty
    public YailDictionary Results() {
        return new YailDictionary(this.lastResults, ENUM_KEY_TRANSFORMER);
    }

    @SimpleProperty
    public double RSquared() {
        return resultOrNan((Double) this.lastResults.get("r^2"));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The style of the best fit line.")
    @DesignerProperty(defaultValue = Component.TYPEFACE_SANSSERIF, editorType = PropertyTypeConstants.PROPERTY_TYPE_STROKE_STYLE)
    public void StrokeStyle(StrokeStyle strokeStyle) {
        this.strokeStyle = strokeStyle;
        if (this.initialized) {
            this.container.refresh();
        }
    }

    public void StrokeStyle(int value) {
        StrokeStyle strokeStyle = StrokeStyle.fromUnderlyingValue(Integer.valueOf(value));
        if (strokeStyle != null) {
            StrokeStyle(strokeStyle);
        }
    }

    public void StrokeStyle(String value) {
        try {
            StrokeStyle(Integer.parseInt(value));
        } catch (NumberFormatException e) {
        }
    }

    @SimpleProperty
    public StrokeStyle StrokeStyle() {
        return this.strokeStyle;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The width of the best fit line.")
    @DesignerProperty(defaultValue = "1.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void StrokeWidth(double strokeWidth) {
        this.strokeWidth = strokeWidth;
        if (this.initialized) {
            this.container.refresh();
        }
    }

    @SimpleProperty
    public double StrokeWidth() {
        return this.strokeWidth;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Visible(boolean visible) {
        this.visible = visible;
        if (this.initialized) {
            this.container.refresh();
        }
    }

    @SimpleProperty
    public boolean Visible() {
        return this.visible;
    }

    @SimpleProperty
    public Object XIntercepts() {
        Object result = this.lastResults.get("Xintercepts");
        return result == null ? Double.valueOf(Double.NaN) : result;
    }

    @SimpleProperty
    public double YIntercept() {
        if (this.lastResults.containsKey("Yintercept")) {
            return ((Double) this.lastResults.get("Yintercept")).doubleValue();
        }
        if (this.lastResults.containsKey("intercept")) {
            return ((Double) this.lastResults.get("intercept")).doubleValue();
        }
        return Double.NaN;
    }

    @SimpleFunction
    public void DisconnectFromChartData() {
        if (this.chartData != null) {
            this.chartData.removeDataSourceChangeListener(this);
        }
        this.lastResults.clear();
        this.container.refresh();
    }

    @SimpleFunction
    public Object GetResultValue(@Options(LOBFValues.class) String value) {
        if (this.lastResults.containsKey(value)) {
            return this.lastResults.get(value);
        }
        return Double.valueOf(Double.NaN);
    }

    @SimpleEvent
    public void Updated(YailDictionary results) {
        EventDispatcher.dispatchEvent(this, "Updated", results);
    }

    @Override // com.google.appinventor.components.runtime.ChartComponent
    public void initChartData() {
        Log.d(LOG_TAG, "initChartData view is " + this.container.getChartView());
        if (this.container.getChartView() instanceof ScatterChartView) {
            this.dataModel = new ScatterChartBestFitModel();
        } else if (this.container.getChartView() instanceof PointChartView) {
            this.dataModel = new LineChartBestFitModel();
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartComponent
    public ChartDataModel<?, ?, ?, ?, ?> getDataModel() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DashPathEffect getDashPathEffect() {
        switch (this.strokeStyle) {
            case Dashed:
                return this.dashed;
            case Dotted:
                return this.dotted;
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float[] getPoints(float xMin, float xMax, int viewWidth) {
        int strokeStep;
        if (!this.initialized || this.chartData == null) {
            return new float[0];
        }
        if (!this.extend) {
            xMin = Math.max(xMin, (float) this.minX);
            xMax = Math.min(xMax, (float) this.maxX);
        }
        switch (this.strokeStyle) {
            case Dashed:
                strokeStep = 20;
                break;
            case Dotted:
                strokeStep = 12;
                break;
            default:
                strokeStep = 1;
                break;
        }
        int steps = (int) Math.ceil(viewWidth / (this.density * strokeStep));
        return this.currentModel.computePoints(this.lastResults, xMin, xMax, viewWidth, steps);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColor() {
        if (this.color == 0 && this.chartData != null) {
            int color = this.chartData.Color();
            int alpha = (color >> 24) & 255;
            return (16777215 & color) | ((alpha / 2) << 24);
        }
        return this.color;
    }

    private static double resultOrNan(Double value) {
        if (value == null) {
            return Double.NaN;
        }
        return value.doubleValue();
    }

    private static double resultOrZero(Double value) {
        if (value == null) {
            return 0.0d;
        }
        return value.doubleValue();
    }

    private class ScatterChartBestFitDataSet extends ScatterDataSet implements HasTrendline<Entry> {
        public ScatterChartBestFitDataSet() {
            super(new ArrayList(), "Best Fit");
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public float[] getPoints(float xMin, float xMax, int viewWidth) {
            return Trendline.this.getPoints(xMin, xMax, viewWidth);
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public int getColor() {
            return Trendline.this.getColor();
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public DashPathEffect getDashPathEffect() {
            return Trendline.this.getDashPathEffect();
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public float getLineWidth() {
            return ((float) Trendline.this.strokeWidth) * Trendline.this.container.$form().deviceDensity();
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public boolean isVisible() {
            return Trendline.this.visible;
        }

        public String toString() {
            if (Trendline.this.chartData != null) {
                return ((ChartDataModel) Trendline.this.chartData.dataModel).dataset.toString();
            }
            return super.toString();
        }
    }

    private class ScatterChartBestFitModel extends ScatterChartDataModel {
        public ScatterChartBestFitModel() {
            super(Trendline.this.container.getChartView().data, (ScatterChartView) Trendline.this.container.getChartView(), Trendline.this.new ScatterChartBestFitDataSet());
        }
    }

    private class LineChartBestFitDataSet extends LineDataSet implements HasTrendline<Entry> {
        public LineChartBestFitDataSet() {
            super(new ArrayList(), "Best Fit");
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public float[] getPoints(float xMin, float xMax, int viewWidth) {
            return Trendline.this.getPoints(xMin, xMax, viewWidth);
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public int getColor() {
            return Trendline.this.getColor();
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public DashPathEffect getDashPathEffect() {
            return Trendline.this.getDashPathEffect();
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public float getLineWidth() {
            return ((float) Trendline.this.strokeWidth) * Trendline.this.container.$form().deviceDensity();
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public boolean isVisible() {
            return Trendline.this.visible;
        }

        public String toString() {
            if (Trendline.this.chartData != null) {
                return ((ChartDataModel) Trendline.this.chartData.dataModel).dataset.toString();
            }
            return super.toString();
        }
    }

    private class LineChartBestFitModel extends LineChartDataModel {
        public LineChartBestFitModel() {
            super(Trendline.this.container.getChartView().data, (LineChartView) Trendline.this.container.getChartView(), Trendline.this.new LineChartBestFitDataSet());
        }
    }
}
