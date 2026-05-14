package com.google.appinventor.components.runtime;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ElementsUtil;
import com.google.appinventor.components.runtime.util.HoneycombUtil;
import com.google.appinventor.components.runtime.util.TextViewUtil;
import com.google.appinventor.components.runtime.util.YailList;

/* JADX INFO: loaded from: classes.dex */
@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "<p>A spinner component that displays a pop-up with a list of elements. These elements can be set in the Designer or Blocks Editor by setting the<code>ElementsFromString</code> property to a string-separated concatenation (for example, <em>choice 1, choice 2, choice 3</em>) or by setting the <code>Elements</code> property to a List in the Blocks editor. Spinners are created with the first item already selected. So selecting  it does not generate an After Picking event. Consequently it's useful to make the  first Spinner item be a non-choice like \"Select from below...\". </p>", iconName = "images/spinner.png", nonVisible = false, version = 2)
@SimpleObject
public final class Spinner extends TouchComponent<android.widget.Spinner> implements AdapterView.OnItemSelectedListener {
    private final SpinnerArrayAdapter adapter;
    private YailList items;
    private int oldAdapterCount;
    private int oldSelectionIndex;
    private int savedHeight;
    private int savedWidth;

    public Spinner(ComponentContainer container) {
        super(container);
        this.items = new YailList();
        this.view = HoneycombUtil.makeSpinner(container.$context());
        this.adapter = new SpinnerArrayAdapter(container.$context(), R.layout.simple_spinner_item);
        this.adapter.setDropDownViewResource(R.layout.select_dialog_singlechoice);
        ((android.widget.Spinner) this.view).setAdapter((SpinnerAdapter) this.adapter);
        ((android.widget.Spinner) this.view).setOnItemSelectedListener(this);
        initToggle();
        TextAlignment(1);
        FontTypeface(Component.TYPEFACE_DEFAULT);
        FontSize(14.0f);
        TextColor(0);
        FontBold(false);
        FontItalic(false);
        Prompt("");
        Width(-1);
        Height(-1);
        this.oldSelectionIndex = SelectionIndex();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the current selected item in the spinner ")
    public String Selection() {
        return SelectionIndex() == 0 ? "" : (String) ((android.widget.Spinner) this.view).getItemAtPosition(SelectionIndex() - 1);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the selected item in the spinner")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Selection(String value) {
        SelectionIndex(ElementsUtil.setSelectedIndexFromValue(value, this.items));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The index of the currently selected item, starting at 1. If no item is selected, the value will be 0.")
    public int SelectionIndex() {
        return ElementsUtil.selectionIndex(((android.widget.Spinner) this.view).getSelectedItemPosition() + 1, this.items);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Set the spinner selection to the element at the given index.If an attempt is made to set this to a number less than 1 or greater than the number of items in the Spinner, SelectionIndex will be set to 0, and Selection will be set to empty.")
    public void SelectionIndex(int index) {
        this.oldSelectionIndex = SelectionIndex();
        ((android.widget.Spinner) this.view).setSelection(ElementsUtil.selectionIndex(index, this.items) - 1);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "returns a list of text elements to be picked from.")
    public YailList Elements() {
        return this.items;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Adds the passed text element to the Spinner list")
    public void Elements(YailList itemList) {
        if (itemList.isEmpty()) {
            SelectionIndex(0);
        } else if (itemList.size() < this.items.size() && SelectionIndex() == this.items.size()) {
            SelectionIndex(itemList.size());
        }
        this.items = ElementsUtil.elements(itemList, "Spinner");
        setAdapterData(itemList.toStringArray());
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets the Spinner list to the elements passed in the comma-separated string")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTAREA)
    public void ElementsFromString(String itemstring) {
        Elements(ElementsUtil.elementsFromString(itemstring));
    }

    private void setAdapterData(String[] theItems) {
        this.oldAdapterCount = this.adapter.getCount();
        this.adapter.clear();
        for (String theItem : theItems) {
            this.adapter.add(theItem);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Text with the current title for the Spinner window")
    public String Prompt() {
        return ((android.widget.Spinner) this.view).getPrompt().toString();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the Spinner window prompt to the given title")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Prompt(String str) {
        ((android.widget.Spinner) this.view).setPrompt(str);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Width(int width) {
        this.savedWidth = width;
        if (((android.widget.Spinner) this.view).getVisibility() == 0) {
            super.Width(width);
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void WidthPercent(int pCent) {
        this.savedWidth = (-1000) - pCent;
        if (((android.widget.Spinner) this.view).getVisibility() == 0) {
            super.WidthPercent(pCent);
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void Height(int height) {
        this.savedHeight = height;
        if (((android.widget.Spinner) this.view).getVisibility() == 0) {
            super.Height(height);
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty
    public void HeightPercent(int pCent) {
        this.savedHeight = (-1000) - pCent;
        if (((android.widget.Spinner) this.view).getVisibility() == 0) {
            super.HeightPercent(pCent);
        }
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    @SimpleProperty
    public void Visible(boolean visible) {
        if (visible) {
            ((android.widget.Spinner) this.view).setVisibility(0);
            Width(this.savedWidth);
            Height(this.savedHeight);
        } else {
            this.container.setChildWidth(this, 0);
            this.container.setChildHeight(this, 0);
            ((android.widget.Spinner) this.view).setVisibility(4);
        }
    }

    @SimpleFunction(description = "Displays the dropdown list for selection, same action as when the user clicks on the spinner.")
    public void DisplayDropdown() {
        ((android.widget.Spinner) this.view).performClick();
    }

    @SimpleEvent(description = "Event called after the user selects an item from the dropdown list.")
    public void AfterSelecting(String selection) {
        EventDispatcher.dispatchEvent(this, "AfterSelecting", selection);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
        if ((this.oldAdapterCount == 0 && this.adapter.getCount() > 0 && this.oldSelectionIndex == 0) || (this.oldAdapterCount > this.adapter.getCount() && this.oldSelectionIndex > this.adapter.getCount())) {
            SelectionIndex(position + 1);
            this.oldAdapterCount = this.adapter.getCount();
        } else {
            SelectionIndex(position + 1);
            AfterSelecting(Selection());
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> parent) {
        ((android.widget.Spinner) this.view).setSelection(0);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Left, center, or right.", userVisible = false)
    public int TextAlignment() {
        return this.adapter.getTextAlignment();
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = Component.TYPEFACE_SANSSERIF, editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTALIGNMENT)
    public void TextAlignment(int alignment) {
        this.adapter.setTextAlignment(alignment);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "If set, spinner text is displayed in bold.")
    public boolean FontBold() {
        return this.adapter.isBold();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontBold(boolean bold) {
        this.adapter.setBold(bold);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "If set, spinner text is displayed in italics.")
    public boolean FontItalic() {
        return this.adapter.isItalic();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontItalic(boolean italic) {
        this.adapter.setItalic(italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Point size for spinner text.")
    public float FontSize() {
        return this.adapter.getFontSize();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void FontSize(float size) {
        this.adapter.setFontSize(size);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Font family for spinner text.", userVisible = false)
    public String FontTypeface() {
        return this.adapter.getFontTypeface();
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = Component.TYPEFACE_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypeface(String typeface) {
        this.adapter.setFontTypeface(typeface);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Color for spinner text.")
    public int TextColor() {
        return this.adapter.getTextColor();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int argb) {
        this.adapter.setTextColor(argb);
    }

    private static class SpinnerArrayAdapter extends ArrayAdapter<String> {
        private boolean bold;
        private ColorStateList defaultColorStateList;
        private float fontSize;
        private String fontTypeface;
        private boolean italic;
        private int textAlignment;
        private int textColor;

        public SpinnerArrayAdapter(Context context, int textViewResourceId) {
            super(context, textViewResourceId);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int position, View convertView, ViewGroup parent) {
            TextView view = (TextView) super.getView(position, convertView, parent);
            decorate(view);
            return view;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int position, View convertView, ViewGroup parent) {
            TextView view = (TextView) super.getDropDownView(position, convertView, parent);
            decorate(view);
            return view;
        }

        private void decorate(TextView view) {
            if (this.defaultColorStateList == null) {
                this.defaultColorStateList = view.getTextColors();
            }
            TextViewUtil.setFontTypeface((Form) getContext(), view, this.fontTypeface, this.bold, this.italic);
            TextViewUtil.setFontSize(view, this.fontSize);
            TextViewUtil.setAlignment(view, this.textAlignment, true);
            if (this.textColor != 0) {
                TextViewUtil.setTextColor(view, this.textColor);
            } else {
                TextViewUtil.setTextColors(view, this.defaultColorStateList);
            }
        }

        public int getTextAlignment() {
            return this.textAlignment;
        }

        public void setTextAlignment(int textAlignment) {
            this.textAlignment = textAlignment;
        }

        public String getFontTypeface() {
            return this.fontTypeface;
        }

        public void setFontTypeface(String fontTypeface) {
            this.fontTypeface = fontTypeface;
        }

        public boolean isBold() {
            return this.bold;
        }

        public void setBold(boolean bold) {
            this.bold = bold;
        }

        public boolean isItalic() {
            return this.italic;
        }

        public void setItalic(boolean italic) {
            this.italic = italic;
        }

        public int getTextColor() {
            return this.textColor;
        }

        public void setTextColor(int textColor) {
            this.textColor = textColor;
        }

        public float getFontSize() {
            return this.fontSize;
        }

        public void setFontSize(float fontSize) {
            this.fontSize = fontSize;
        }
    }
}
