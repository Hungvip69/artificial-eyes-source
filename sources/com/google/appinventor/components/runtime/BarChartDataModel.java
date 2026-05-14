package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.YailList;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class BarChartDataModel extends Chart2DDataModel<BarEntry, IBarDataSet, BarData, BarChart, BarChartView> {
    private static final String DATE_PATTERN = "^[0-3]?[0-9]/[0-3]?[0-9]/(?:[0-9]{2})?[0-9]{2}$";
    private static final Pattern DATE_PATTERN_PATTERN = Pattern.compile(DATE_PATTERN);
    private static final String TIME_PATTERN = "([01]?[0-9]|2[0-3]):[0-5][0-9]:[0-6][0-9]";
    private static final Pattern TIME_PATTERN_PATTERN = Pattern.compile(TIME_PATTERN);

    protected BarChartDataModel(BarData data, BarChartView view) {
        super(data, view);
        this.dataset = new BarDataSet(new ArrayList(), "");
        this.data.addDataSet(this.dataset);
        setDefaultStylingProperties();
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.appinventor.components.runtime.DataModel
    public void addEntryFromTuple(YailList yailList) {
        int x;
        BarEntry barEntry = (BarEntry) getEntryFromTuple(yailList);
        if (barEntry == null || (x = (int) barEntry.getX()) < 0) {
            return;
        }
        if (x < this.entries.size()) {
            this.entries.set(x, (E) barEntry);
            return;
        }
        while (this.entries.size() < x) {
            this.entries.add((E) new BarEntry(this.entries.size(), 0.0f));
        }
        this.entries.add((E) barEntry);
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public Entry getEntryFromTuple(YailList tuple) {
        try {
            String rawX = tuple.getString(0);
            String rawY = tuple.getString(1);
            try {
                float x = (float) Math.floor(Float.parseFloat(rawX));
                if (DATE_PATTERN_PATTERN.matcher(rawX).matches()) {
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    Date date = sdf.parse(rawX);
                    if (date != null) {
                        x = date.getTime();
                    }
                } else {
                    if (TIME_PATTERN_PATTERN.matcher(rawX).matches()) {
                        SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");
                        Date date2 = sdf2.parse(rawX);
                        if (date2 != null) {
                            x = date2.getTime();
                        }
                    }
                    float y = Float.parseFloat(rawY);
                    return new BarEntry(x, y);
                }
                float y2 = Float.parseFloat(rawY);
                return new BarEntry(x, y2);
            } catch (NumberFormatException e) {
                ((BarChartView) this.view).getForm().dispatchErrorOccurredEvent(((BarChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_INVALID_CHART_ENTRY_VALUES, rawX, rawY);
                return null;
            } catch (ParseException e2) {
                throw new RuntimeException(e2);
            }
        } catch (IndexOutOfBoundsException e3) {
            ((BarChartView) this.view).getForm().dispatchErrorOccurredEvent(((BarChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_INSUFFICIENT_CHART_ENTRY_VALUES, Integer.valueOf(getTupleSize()), Integer.valueOf(tuple.size()));
            return null;
        } catch (NullPointerException e4) {
            ((BarChartView) this.view).getForm().dispatchErrorOccurredEvent(((BarChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_NULL_CHART_ENTRY_VALUES, new Object[0]);
            return null;
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public void removeEntry(int index) {
        if (index >= 0) {
            if (index == this.entries.size() - 1) {
                this.entries.remove(index);
            } else {
                ((BarEntry) this.entries.get(index)).setY(0.0f);
            }
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public void addTimeEntry(YailList yailList) {
        if (this.entries.size() >= this.maximumTimeEntries) {
            this.entries.remove(0);
        }
        this.entries.add((E) ((BarEntry) getEntryFromTuple(yailList)));
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    protected boolean areEntriesEqual(Entry e1, Entry e2) {
        return (e1 instanceof BarEntry) && (e2 instanceof BarEntry) && Math.floor((double) e1.getX()) == Math.floor((double) e2.getX()) && e1.getY() == e2.getY();
    }

    @Override // com.google.appinventor.components.runtime.Chart2DDataModel, com.google.appinventor.components.runtime.DataModel
    public YailList getTupleFromEntry(Entry entry) {
        List<Float> tupleEntries = Arrays.asList(Float.valueOf((float) Math.floor(entry.getX())), Float.valueOf(entry.getY()));
        return YailList.makeList((List) tupleEntries);
    }
}
