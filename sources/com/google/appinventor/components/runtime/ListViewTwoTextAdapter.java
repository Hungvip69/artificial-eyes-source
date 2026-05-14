package com.google.appinventor.components.runtime;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.core.view.ViewCompat;
import com.google.appinventor.components.runtime.ListAdapterWithRecyclerView;
import com.google.appinventor.components.runtime.util.TextViewUtil;
import com.google.appinventor.components.runtime.util.YailDictionary;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListViewTwoTextAdapter extends ListAdapterWithRecyclerView {
    private int textDetailColor;
    private String textDetailFont;
    private float textDetailSize;
    private int textMainColor;
    private String textMainFont;
    private float textMainSize;

    public ListViewTwoTextAdapter(ComponentContainer container, List<Object> data, int textMainColor, float textMainSize, String textMainFont, int textDetailColor, float textDetailSize, String textDetailFont, int backgroundColor, int selectionColor, int radius, int imageWidth, int imageHeight) {
        super(container, data, backgroundColor, selectionColor, radius);
        this.container = container;
        this.textMainColor = textMainColor;
        this.textMainSize = textMainSize;
        this.textMainFont = textMainFont;
        this.textDetailColor = textDetailColor;
        this.textDetailSize = textDetailSize;
        this.textDetailFont = textDetailFont;
    }

    public ListAdapterWithRecyclerView.RvViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        CardView cardView = createCardView(parent);
        int idCard = cardView.getId();
        TextView textViewFirst = new TextView(this.container.$context());
        int idFirst = ViewCompat.generateViewId();
        textViewFirst.setId(idFirst);
        LinearLayout.LayoutParams layoutParams1 = new LinearLayout.LayoutParams(-2, -2);
        textViewFirst.setLayoutParams(layoutParams1);
        textViewFirst.setTextSize(this.textMainSize);
        textViewFirst.setTextColor(this.textMainColor);
        TextViewUtil.setFontTypeface(this.container.$form(), textViewFirst, this.textMainFont, false, false);
        TextView textViewSecond = new TextView(this.container.$context());
        int idSecond = ViewCompat.generateViewId();
        textViewSecond.setId(idSecond);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        textViewSecond.setTextSize(this.textDetailSize);
        TextViewUtil.setFontTypeface(this.container.$form(), textViewSecond, this.textDetailFont, false, false);
        textViewSecond.setTextColor(this.textDetailColor);
        textViewSecond.setLayoutParams(layoutParams2);
        android.widget.LinearLayout linearLayout2 = new android.widget.LinearLayout(this.container.$context());
        LinearLayout.LayoutParams layoutParamslinear2 = new LinearLayout.LayoutParams(0, -2, 2.0f);
        linearLayout2.setLayoutParams(layoutParamslinear2);
        linearLayout2.setOrientation(1);
        linearLayout2.addView(textViewFirst);
        linearLayout2.addView(textViewSecond);
        android.widget.LinearLayout linearLayout1 = new android.widget.LinearLayout(this.container.$context());
        LinearLayout.LayoutParams layoutParamslinear1 = new LinearLayout.LayoutParams(-1, -2);
        linearLayout1.setLayoutParams(layoutParamslinear1);
        linearLayout1.setOrientation(0);
        linearLayout1.addView(linearLayout2);
        cardView.addView(linearLayout1);
        return new TwoTextRvViewHolder(cardView, idCard, idFirst, idSecond);
    }

    public void onBindViewHolder(ListAdapterWithRecyclerView.RvViewHolder holder, int position) {
        TwoTextRvViewHolder twoTextHolder = (TwoTextRvViewHolder) holder;
        Object o = this.items.get(position);
        YailDictionary dictItem = new YailDictionary();
        if ((o instanceof YailDictionary) && ((YailDictionary) o).containsKey(Component.LISTVIEW_KEY_MAIN_TEXT)) {
            dictItem = (YailDictionary) o;
        } else {
            dictItem.put(Component.LISTVIEW_KEY_MAIN_TEXT, o.toString());
        }
        String first = dictItem.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString();
        String second = "";
        if (dictItem.containsKey(Component.LISTVIEW_KEY_DESCRIPTION)) {
            second = dictItem.get(Component.LISTVIEW_KEY_DESCRIPTION).toString();
        }
        twoTextHolder.textViewFirst.setText(first);
        twoTextHolder.textViewSecond.setText(second);
        updateCardViewColor(twoTextHolder.cardView, position);
    }

    public class TwoTextRvViewHolder extends ListAdapterWithRecyclerView.RvViewHolder {
        public CardView cardView;
        public TextView textViewFirst;
        public TextView textViewSecond;

        @Override // com.google.appinventor.components.runtime.ListAdapterWithRecyclerView.RvViewHolder, android.view.View.OnClickListener
        public /* bridge */ /* synthetic */ void onClick(View view) {
            super.onClick(view);
        }

        public TwoTextRvViewHolder(View view, int idCard, int idFirst, int idSecond) {
            super(view);
            this.cardView = view.findViewById(idCard);
            this.textViewFirst = (TextView) view.findViewById(idFirst);
            this.textViewSecond = (TextView) view.findViewById(idSecond);
        }
    }
}
