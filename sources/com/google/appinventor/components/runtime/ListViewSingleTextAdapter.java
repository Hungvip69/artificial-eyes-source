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
public class ListViewSingleTextAdapter extends ListAdapterWithRecyclerView {
    private int textMainColor;
    private String textMainFont;
    private float textMainSize;

    public ListViewSingleTextAdapter(ComponentContainer container, List<Object> data, int textMainColor, float textMainSize, String textMainFont, int textDetailColor, float textDetailSize, String textDetailFont, int backgroundColor, int selectionColor, int radius, int imageWidth, int imageHeight) {
        super(container, data, backgroundColor, selectionColor, radius);
        this.container = container;
        this.textMainColor = textMainColor;
        this.textMainSize = textMainSize;
        this.textMainFont = textMainFont;
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
        android.widget.LinearLayout linearLayout1 = new android.widget.LinearLayout(this.container.$context());
        LinearLayout.LayoutParams layoutParamslinear1 = new LinearLayout.LayoutParams(-1, -2);
        linearLayout1.setLayoutParams(layoutParamslinear1);
        linearLayout1.setOrientation(0);
        linearLayout1.addView(textViewFirst);
        cardView.addView(linearLayout1);
        return new SingleTextRvViewHolder(cardView, idCard, idFirst);
    }

    public void onBindViewHolder(ListAdapterWithRecyclerView.RvViewHolder holder, int position) {
        SingleTextRvViewHolder singleTextHolder = (SingleTextRvViewHolder) holder;
        Object o = this.items.get(position);
        YailDictionary dictItem = new YailDictionary();
        if ((o instanceof YailDictionary) && ((YailDictionary) o).containsKey(Component.LISTVIEW_KEY_MAIN_TEXT)) {
            dictItem = (YailDictionary) o;
        } else {
            dictItem.put(Component.LISTVIEW_KEY_MAIN_TEXT, o.toString());
        }
        String first = dictItem.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString();
        singleTextHolder.textViewFirst.setText(first);
        updateCardViewColor(singleTextHolder.cardView, position);
    }

    public class SingleTextRvViewHolder extends ListAdapterWithRecyclerView.RvViewHolder {
        public CardView cardView;
        public TextView textViewFirst;

        @Override // com.google.appinventor.components.runtime.ListAdapterWithRecyclerView.RvViewHolder, android.view.View.OnClickListener
        public /* bridge */ /* synthetic */ void onClick(View view) {
            super.onClick(view);
        }

        public SingleTextRvViewHolder(View view, int idCard, int idFirst) {
            super(view);
            this.cardView = view.findViewById(idCard);
            this.textViewFirst = (TextView) view.findViewById(idFirst);
        }
    }
}
