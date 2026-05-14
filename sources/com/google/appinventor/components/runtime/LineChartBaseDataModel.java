package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.utils.EntryXComparator;
import com.google.appinventor.components.common.LineType;
import com.google.appinventor.components.runtime.LineChartViewBase;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class LineChartBaseDataModel<V extends LineChartViewBase<V>> extends PointChartDataModel<Entry, ILineDataSet, LineData, LineChart, V> {
    protected LineChartBaseDataModel(LineData data, V view) {
        this(data, view, new LineDataSet(new ArrayList(), ""));
    }

    protected LineChartBaseDataModel(LineData data, V view, ILineDataSet dataset) {
        super(data, view);
        this.dataset = dataset;
        this.data.addDataSet(dataset);
        setDefaultStylingProperties();
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.appinventor.components.runtime.DataModel
    public void addEntryFromTuple(YailList yailList) {
        int i;
        Entry entryFromTuple = getEntryFromTuple(yailList);
        if (entryFromTuple != null) {
            int iBinarySearch = Collections.binarySearch(this.entries, entryFromTuple, new EntryXComparator());
            if (iBinarySearch < 0) {
                i = (-iBinarySearch) - 1;
            } else {
                int size = this.entries.size();
                while (iBinarySearch < size && ((Entry) this.entries.get(iBinarySearch)).getX() == entryFromTuple.getX()) {
                    iBinarySearch++;
                }
                i = iBinarySearch;
            }
            this.entries.add(i, (E) entryFromTuple);
            List circleColors = this.dataset.getCircleColors();
            circleColors.add(i, Integer.valueOf(this.dataset.getColor()));
            this.dataset.setCircleColors(circleColors);
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel
    public void setColor(int argb) {
        super.setColor(argb);
        if (this.dataset instanceof LineDataSet) {
            this.dataset.setCircleColor(argb);
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel
    public void setColors(List<Integer> colors) {
        super.setColors(colors);
        if (this.dataset instanceof LineDataSet) {
            this.dataset.setCircleColors(colors);
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    protected void setDefaultStylingProperties() {
        if (this.dataset instanceof LineDataSet) {
            this.dataset.setDrawCircleHole(false);
        }
    }

    public void setLineType(LineType type) {
        if (!(this.dataset instanceof LineDataSet)) {
            return;
        }
        switch (type) {
            case Linear:
                this.dataset.setMode(LineDataSet.Mode.LINEAR);
                return;
            case Curved:
                this.dataset.setMode(LineDataSet.Mode.CUBIC_BEZIER);
                return;
            case Stepped:
                this.dataset.setMode(LineDataSet.Mode.STEPPED);
                return;
            default:
                throw new IllegalArgumentException("Unknown line type: " + type);
        }
    }
}
