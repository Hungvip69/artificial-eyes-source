package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.ScatterChart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.ScatterData;
import com.github.mikephil.charting.data.ScatterDataSet;
import com.github.mikephil.charting.interfaces.datasets.IScatterDataSet;
import com.github.mikephil.charting.utils.EntryXComparator;
import com.google.appinventor.components.common.PointStyle;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public class ScatterChartDataModel extends PointChartDataModel<Entry, IScatterDataSet, ScatterData, ScatterChart, ScatterChartView> {
    public ScatterChartDataModel(ScatterData data, ScatterChartView view) {
        this(data, view, new ScatterDataSet(new ArrayList(), ""));
    }

    protected ScatterChartDataModel(ScatterData data, ScatterChartView view, IScatterDataSet dataset) {
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
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    protected void setDefaultStylingProperties() {
        if (this.dataset instanceof ScatterDataSet) {
            this.dataset.setScatterShape(ScatterChart.ScatterShape.CIRCLE);
        }
    }

    public void setPointShape(PointStyle shape) {
        if (!(this.dataset instanceof ScatterDataSet)) {
            return;
        }
        switch (shape) {
            case Circle:
                this.dataset.setScatterShape(ScatterChart.ScatterShape.CIRCLE);
                return;
            case Square:
                this.dataset.setScatterShape(ScatterChart.ScatterShape.SQUARE);
                return;
            case Triangle:
                this.dataset.setScatterShape(ScatterChart.ScatterShape.TRIANGLE);
                return;
            case Cross:
                this.dataset.setScatterShape(ScatterChart.ScatterShape.CROSS);
                return;
            case X:
                this.dataset.setScatterShape(ScatterChart.ScatterShape.X);
                return;
            default:
                throw new IllegalArgumentException("Unknown shape type: " + shape);
        }
    }
}
