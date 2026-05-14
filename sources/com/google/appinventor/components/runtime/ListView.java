package com.google.appinventor.components.runtime;

import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.LayoutType;
import com.google.appinventor.components.common.ListOrientation;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.ListAdapterWithRecyclerView;
import com.google.appinventor.components.runtime.util.ElementsUtil;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@SimpleObject
@UsesPermissions(permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE")
@DesignerComponent(category = ComponentCategory.USERINTERFACE, description = "<p>This is a visible component that displays a list of text and image elements.</p> <p>Simple lists of strings may be set using the ElementsFromString property. More complex lists of elements containing multiple strings and/or images can be created using the ListData and ListViewLayout properties. </p>", iconName = "images/listView.png", nonVisible = false, version = 10)
@UsesLibraries({"recyclerview.jar", "recyclerview.aar", "cardview.jar", "cardview.aar", "dynamicanimation.jar"})
public final class ListView extends AndroidViewComponent {
    private static final int DEFAULT_BACKGROUND_COLOR = -16777216;
    private static final int DEFAULT_DIVIDER_SIZE = 0;
    private static final boolean DEFAULT_ENABLED = false;
    private static final int DEFAULT_IMAGE_WIDTH = 200;
    private static final int DEFAULT_MARGINS_SIZE = 0;
    private static final int DEFAULT_RADIUS = 0;
    private static final float DEFAULT_TEXT_SIZE = 22.0f;
    protected static final String LOG_TAG = "ListView";
    private int backgroundColor;
    private ListBounceEdgeEffectFactory bounceEdgeEffectFactory;
    private boolean bounceEffect;
    protected final ComponentContainer container;
    private int detailTextColor;
    private int dividerColor;
    private Paint dividerPaint;
    private int dividerSize;
    private RecyclerView.EdgeEffectFactory edgeEffectFactory;
    private int elementColor;
    private float fontSizeDetail;
    private float fontSizeMain;
    private String fontTypeDetail;
    private String fontTypeface;
    private String hint;
    private int imageHeight;
    private int imageWidth;
    private List<Object> items;
    private int layout;
    private LinearLayoutManager layoutManager;
    private final android.widget.LinearLayout linearLayout;
    private ListAdapterWithRecyclerView listAdapterWithRecyclerView;
    private final android.widget.LinearLayout listLayout;
    private int margins;
    private boolean multiSelect;
    private int orientation;
    private String propertyValue;
    private int radius;
    private RecyclerView recyclerView;
    private String selection;
    private int selectionColor;
    private String selectionDetailText;
    private int selectionIndex;
    private boolean showFilter;
    private int textColor;
    private EditText txtSearchBox;

    public ListView(ComponentContainer container) {
        super(container);
        this.selectionDetailText = "Uninitialized";
        this.showFilter = false;
        this.elementColor = 16777215;
        this.container = container;
        this.items = new ArrayList();
        this.linearLayout = new android.widget.LinearLayout(container.$context());
        this.linearLayout.setOrientation(1);
        this.orientation = 0;
        this.layout = 0;
        this.recyclerView = new RecyclerView(container.$context());
        RecyclerView.LayoutParams params = new RecyclerView.LayoutParams(-1, -1);
        this.recyclerView.setLayoutParams(params);
        this.layoutManager = new LinearLayoutManager(container.$context(), 1, false);
        this.recyclerView.setLayoutManager(this.layoutManager);
        this.listLayout = new android.widget.LinearLayout(container.$context());
        LinearLayout.LayoutParams paramsList = new LinearLayout.LayoutParams(-1, -1);
        this.listLayout.setLayoutParams(paramsList);
        this.listLayout.setOrientation(1);
        this.dividerColor = -1;
        this.dividerSize = 0;
        this.margins = 0;
        this.edgeEffectFactory = this.recyclerView.getEdgeEffectFactory();
        this.bounceEdgeEffectFactory = new ListBounceEdgeEffectFactory();
        this.txtSearchBox = new EditText(container.$context());
        this.txtSearchBox.setSingleLine(true);
        this.txtSearchBox.setWidth(-2);
        this.txtSearchBox.setPadding(10, 10, 10, 10);
        HintText("Search list...");
        if (!AppInventorCompatActivity.isClassicMode()) {
            this.txtSearchBox.setBackgroundColor(-1);
        }
        if (container.$form().isDarkTheme()) {
            this.txtSearchBox.setTextColor(-16777216);
            this.txtSearchBox.setHintTextColor(-16777216);
        }
        this.txtSearchBox.addTextChangedListener(new TextWatcher() { // from class: com.google.appinventor.components.runtime.ListView.1
            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence cs, int arg1, int arg2, int arg3) {
                ListView.this.listAdapterWithRecyclerView.getFilter().filter(cs);
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence arg0, int arg1, int arg2, int arg3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable arg0) {
            }
        });
        if (this.showFilter) {
            this.txtSearchBox.setVisibility(0);
        } else {
            this.txtSearchBox.setVisibility(8);
        }
        BackgroundColor(-16777216);
        SelectionColor(Component.COLOR_LTGRAY);
        TextColor(-1);
        TextColorDetail(-1);
        DividerColor(-1);
        DividerThickness(0);
        ElementMarginsWidth(0);
        FontSize(DEFAULT_TEXT_SIZE);
        FontSizeDetail(14.0f);
        FontTypeface(Component.TYPEFACE_DEFAULT);
        FontTypefaceDetail(Component.TYPEFACE_DEFAULT);
        ImageWidth(200);
        ImageHeight(200);
        ElementCornerRadius(0);
        MultiSelect(false);
        BounceEdgeEffect(false);
        ElementsFromString("");
        ListData("");
        this.listLayout.addView(this.recyclerView);
        this.linearLayout.addView(this.txtSearchBox);
        this.linearLayout.addView(this.listLayout);
        this.linearLayout.requestLayout();
        container.$add(this);
        Width(-2);
        ListViewLayout(0);
        SelectionIndex(0);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.linearLayout;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Determines the height of the list on the view.")
    public void Height(int height) {
        if (height == -1) {
            height = -2;
        }
        super.Height(height);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets hint on the filter bar.")
    @DesignerProperty(defaultValue = "Search list...", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void HintText(String hint) {
        this.hint = hint;
        this.txtSearchBox.setHint(hint);
    }

    @SimpleProperty
    public String HintText() {
        return this.hint;
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent, com.google.appinventor.components.runtime.VisibleComponent
    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Determines the width of the list on the view.")
    public void Width(int width) {
        if (width == -1) {
            width = -2;
        }
        super.Width(width);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowFilterBar(boolean showFilter) {
        this.showFilter = showFilter;
        if (showFilter) {
            this.txtSearchBox.setVisibility(0);
        } else {
            this.txtSearchBox.setVisibility(8);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "List filter bar, allows to search the list for relevant items. True will display the bar, False will hide it.")
    public boolean ShowFilterBar() {
        return this.showFilter;
    }

    @SimpleProperty
    public void Elements(List<Object> itemsList) {
        this.items = new ArrayList(itemsList);
        updateAdapterData();
        this.listAdapterWithRecyclerView.notifyDataSetChanged();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "List of elements to show in the ListView. Depending on the ListView, this may be a list of strings or a list of 3-element sub-lists containing Text, Description, and Image file name.")
    public List<Object> Elements() {
        return this.items;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The TextView elements specified as a string with the stringItems separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTAREA)
    public void ElementsFromString(String itemstring) {
        this.items = new ArrayList(ElementsUtil.elementsListFromString(itemstring));
        updateAdapterData();
        this.listAdapterWithRecyclerView.notifyDataSetChanged();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The index of the currently selected item, starting at 1. If no item is selected, the value will be 0. If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text.")
    public int SelectionIndex() {
        return this.selectionIndex;
    }

    @SimpleProperty
    public void SelectionIndex(int index) {
        this.selectionIndex = index;
        if (index > 0 && index <= this.items.size()) {
            Object o = this.items.get(index - 1);
            if ((o instanceof YailDictionary) && ((YailDictionary) o).containsKey(Component.LISTVIEW_KEY_MAIN_TEXT)) {
                this.selection = ((YailDictionary) o).get(Component.LISTVIEW_KEY_MAIN_TEXT).toString();
                this.selectionDetailText = ElementsUtil.toStringEmptyIfNull(((YailDictionary) o).get(Component.LISTVIEW_KEY_DESCRIPTION));
            } else {
                this.selection = o.toString();
            }
            if (this.multiSelect) {
                this.listAdapterWithRecyclerView.changeSelections(this.selectionIndex - 1);
                return;
            } else {
                this.listAdapterWithRecyclerView.toggleSelection(this.selectionIndex - 1);
                return;
            }
        }
        this.selection = "";
        this.listAdapterWithRecyclerView.clearSelections();
        this.listAdapterWithRecyclerView.notifyDataSetChanged();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The text value of the most recently selected item in the ListView.")
    public String Selection() {
        return this.selection;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Selection(String value) {
        this.selection = value;
        if (!this.items.isEmpty()) {
            int i = 0;
            while (true) {
                if (i >= this.items.size()) {
                    break;
                }
                Object item = this.items.get(i);
                if (item instanceof YailDictionary) {
                    if (((YailDictionary) item).containsKey(Component.LISTVIEW_KEY_MAIN_TEXT)) {
                        if (((YailDictionary) item).get(Component.LISTVIEW_KEY_MAIN_TEXT).toString() == value) {
                            this.selectionIndex = i + 1;
                            this.selectionDetailText = ElementsUtil.toStringEmptyIfNull(((YailDictionary) item).get(Component.LISTVIEW_KEY_DESCRIPTION));
                            break;
                        } else {
                            this.selectionIndex = 0;
                            this.selectionDetailText = "Not Found";
                            i++;
                        }
                    } else if (item.toString().equals(value)) {
                        this.selectionIndex = i + 1;
                        break;
                    } else {
                        this.selectionIndex = 0;
                        i++;
                    }
                } else if (item.toString().equals(value)) {
                    this.selectionIndex = i + 1;
                    break;
                } else {
                    this.selectionIndex = 0;
                    i++;
                }
            }
            int i2 = this.selectionIndex;
            SelectionIndex(i2);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Returns the secondary text of the selected row in the ListView.")
    public String SelectionDetailText() {
        return this.selectionDetailText;
    }

    @SimpleEvent(description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property.")
    public void AfterPicking() {
        EventDispatcher.dispatchEvent(this, "AfterPicking", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the listview background.")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int argb) {
        this.backgroundColor = argb;
        this.recyclerView.setBackgroundColor(this.backgroundColor);
        this.linearLayout.setBackgroundColor(this.backgroundColor);
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the listview background.")
    public int ElementColor() {
        return this.elementColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_NONE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void ElementColor(int argb) {
        this.elementColor = argb;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the item when it is selected.")
    public int SelectionColor() {
        return this.selectionColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_LTGRAY, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void SelectionColor(int argb) {
        this.selectionColor = argb;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the main text of ListView elements.")
    public int TextColor() {
        return this.textColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int argb) {
        this.textColor = argb;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the detail text of ListView elements. ")
    public int TextColorDetail() {
        return this.detailTextColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColorDetail(int argb) {
        this.detailTextColor = argb;
        setAdapterData();
    }

    @SimpleProperty
    @Deprecated
    public int TextSize() {
        return Math.round(this.fontSizeMain);
    }

    @SimpleProperty
    @Deprecated
    public void TextSize(int textSize) {
        if (textSize > 1000) {
            textSize = 999;
        }
        FontSize(Float.valueOf(textSize).floatValue());
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The font size of the main text.")
    public float FontSize() {
        return this.fontSizeMain;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "22.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void FontSize(float fontSize) {
        if (fontSize > 1000.0f || fontSize < 1.0f) {
            this.fontSizeMain = 999.0f;
        } else {
            this.fontSizeMain = fontSize;
        }
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The font size of the detail text.")
    public float FontSizeDetail() {
        return this.fontSizeDetail;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void FontSizeDetail(float fontSize) {
        if (fontSize > 1000.0f || fontSize < 1.0f) {
            this.fontSizeDetail = 999.0f;
        } else {
            this.fontSizeDetail = fontSize;
        }
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public String FontTypeface() {
        return this.fontTypeface;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = Component.TYPEFACE_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypeface(String typeface) {
        this.fontTypeface = typeface;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public String FontTypefaceDetail() {
        return this.fontTypeDetail;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = Component.TYPEFACE_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypefaceDetail(String typeface) {
        this.fontTypeDetail = typeface;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Image width of ListView elements.")
    public int ImageWidth() {
        return this.imageWidth;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "200", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void ImageWidth(int width) {
        this.imageWidth = width;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Image height of ListView elements.")
    public int ImageHeight() {
        return this.imageHeight;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "200", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void ImageHeight(int height) {
        this.imageHeight = height;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Selecting the text and image layout in the ListView element.")
    public int ListViewLayout() {
        return this.layout;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.TYPEFACE_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_LISTVIEW_LAYOUT)
    public void ListViewLayout(@Options(LayoutType.class) int value) {
        this.layout = value;
        setAdapterData();
    }

    public boolean MultiSelect() {
        return this.multiSelect;
    }

    public void MultiSelect(boolean multi) {
        if (this.selectionIndex > 0) {
            this.listAdapterWithRecyclerView.clearSelections();
            this.listAdapterWithRecyclerView.notifyDataSetChanged();
        }
        this.multiSelect = multi;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Specifies the layout's orientation (vertical, horizontal).")
    public int Orientation() {
        return this.orientation;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.TYPEFACE_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_RECYCLERVIEW_ORIENTATION)
    public void Orientation(@Options(ListOrientation.class) int orientation) {
        this.orientation = orientation;
        if (orientation != 1) {
            this.layoutManager.setOrientation(1);
        } else {
            this.layoutManager.setOrientation(0);
        }
        this.recyclerView.requestLayout();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    public String ListData() {
        return this.propertyValue;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_LISTVIEW_ADD_DATA)
    public void ListData(String propertyValue) {
        this.propertyValue = propertyValue;
        if (propertyValue != null && !propertyValue.isEmpty() && !propertyValue.equals("[]")) {
            try {
                JSONArray arr = new JSONArray(propertyValue);
                this.items.clear();
                for (int i = 0; i < arr.length(); i++) {
                    JSONObject jsonItem = arr.getJSONObject(i);
                    YailDictionary yailItem = new YailDictionary();
                    if (jsonItem.has(Component.LISTVIEW_KEY_MAIN_TEXT)) {
                        yailItem.put(Component.LISTVIEW_KEY_MAIN_TEXT, jsonItem.getString(Component.LISTVIEW_KEY_MAIN_TEXT));
                        yailItem.put(Component.LISTVIEW_KEY_DESCRIPTION, jsonItem.has(Component.LISTVIEW_KEY_DESCRIPTION) ? jsonItem.getString(Component.LISTVIEW_KEY_DESCRIPTION) : "");
                        yailItem.put(Component.LISTVIEW_KEY_IMAGE, jsonItem.has(Component.LISTVIEW_KEY_IMAGE) ? jsonItem.getString(Component.LISTVIEW_KEY_IMAGE) : "");
                        this.items.add(yailItem);
                    }
                }
            } catch (JSONException e) {
                Log.e(LOG_TAG, "Malformed JSON in ListView.ListData", e);
                this.container.$form().dispatchErrorOccurredEvent(this, "ListView.ListData", 0, e.getMessage());
            }
            updateAdapterData();
            this.listAdapterWithRecyclerView.notifyDataSetChanged();
        }
    }

    @SimpleFunction(description = "Create a ListView entry. MainText is required. DetailText and ImageName are optional.")
    public YailDictionary CreateElement(String mainText, String detailText, String imageName) {
        YailDictionary dictItem = new YailDictionary();
        dictItem.put(Component.LISTVIEW_KEY_MAIN_TEXT, mainText);
        dictItem.put(Component.LISTVIEW_KEY_DESCRIPTION, detailText);
        dictItem.put(Component.LISTVIEW_KEY_IMAGE, imageName);
        return dictItem;
    }

    @SimpleFunction(description = "Get the Main Text of a ListView element.")
    public String GetMainText(YailDictionary listElement) {
        return listElement.get(Component.LISTVIEW_KEY_MAIN_TEXT).toString();
    }

    @SimpleFunction(description = "Get the Detail Text of a ListView element.")
    public String GetDetailText(YailDictionary listElement) {
        return listElement.get(Component.LISTVIEW_KEY_DESCRIPTION).toString();
    }

    @SimpleFunction(description = "Get the filename of the image of a ListView element that has been uploaded to Media.")
    public String GetImageName(YailDictionary listElement) {
        return listElement.get(Component.LISTVIEW_KEY_IMAGE).toString();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the list view divider.")
    public int DividerColor() {
        return this.dividerColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_WHITE, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void DividerColor(int argb) {
        this.dividerColor = argb;
        this.dividerPaint = new Paint();
        this.dividerPaint.setColor(argb);
        setDivider();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The thickness of the element divider in the list view. If the thickness is 0, the divider is not visible.")
    public int DividerThickness() {
        return this.dividerSize;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.TYPEFACE_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void DividerThickness(int size) {
        this.dividerSize = size;
        setDivider();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The margins width of the list view element. If margins width > 0, then the divider is not displayed.")
    public int ElementMarginsWidth() {
        return this.margins;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.TYPEFACE_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void ElementMarginsWidth(int width) {
        this.margins = width;
        setDivider();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The radius of the rounded corners of a list view element.")
    public int ElementCornerRadius() {
        return this.radius;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.TYPEFACE_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_INTEGER)
    public void ElementCornerRadius(int radius) {
        this.radius = radius;
        setAdapterData();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The effect of bounce from the edge after scrolling the list to the end.  True will enable the bounce effect, false will disable it.")
    public boolean BounceEdgeEffect() {
        return this.bounceEffect;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void BounceEdgeEffect(boolean bounce) {
        if (bounce) {
            this.recyclerView.setEdgeEffectFactory(this.bounceEdgeEffectFactory);
        } else {
            this.recyclerView.setEdgeEffectFactory(this.edgeEffectFactory);
        }
        this.bounceEffect = bounce;
    }

    @SimpleFunction(description = "Removes Item from list at a given index.")
    public void RemoveItemAtIndex(int index) {
        if (index < 1 || index > this.items.size()) {
            this.container.$form().dispatchErrorOccurredEvent(this, "RemoveItemAtIndex", ErrorMessages.ERROR_LISTVIEW_INDEX_OUT_OF_BOUNDS, Integer.valueOf(index));
            return;
        }
        this.items.remove(index - 1);
        updateAdapterData();
        this.listAdapterWithRecyclerView.notifyItemRemoved(index - 1);
    }

    @SimpleFunction(description = "Add new Item to list at the end.")
    public void AddItem(String mainText, String detailText, String imageName) {
        if (!this.items.isEmpty()) {
            Object o = this.items.get(0);
            if ((o instanceof YailDictionary) && ((YailDictionary) o).containsKey(Component.LISTVIEW_KEY_MAIN_TEXT)) {
                this.items.add(CreateElement(mainText, detailText, imageName));
            } else {
                this.items.add(mainText);
            }
        } else if (this.layout == 0) {
            this.items.add(mainText);
        } else {
            this.items.add(CreateElement(mainText, detailText, imageName));
        }
        updateAdapterData();
        this.listAdapterWithRecyclerView.notifyItemChanged(this.listAdapterWithRecyclerView.getItemCount() - 1);
    }

    @SimpleFunction(description = "Add new Items to list at the end.")
    public void AddItems(List<Object> itemsList) {
        if (!itemsList.isEmpty()) {
            int positionStart = this.items.size();
            int itemCount = itemsList.size();
            this.items.addAll(itemsList);
            updateAdapterData();
            this.listAdapterWithRecyclerView.notifyItemRangeChanged(positionStart, itemCount);
        }
    }

    @SimpleFunction(description = "Add new Item to list at a given index.")
    public void AddItemAtIndex(int index, String mainText, String detailText, String imageName) {
        if (index < 1 || index > this.items.size() + 1) {
            this.container.$form().dispatchErrorOccurredEvent(this, "AddItemAtIndex", ErrorMessages.ERROR_LISTVIEW_INDEX_OUT_OF_BOUNDS, Integer.valueOf(index));
            return;
        }
        if (!this.items.isEmpty()) {
            Object o = this.items.get(0);
            if ((o instanceof YailDictionary) && ((YailDictionary) o).containsKey(Component.LISTVIEW_KEY_MAIN_TEXT)) {
                this.items.add(index - 1, CreateElement(mainText, detailText, imageName));
            } else {
                this.items.add(index - 1, mainText);
            }
        } else if (this.layout == 0) {
            this.items.add(index - 1, mainText);
        } else {
            this.items.add(index - 1, CreateElement(mainText, detailText, imageName));
        }
        updateAdapterData();
        this.listAdapterWithRecyclerView.notifyItemInserted(index - 1);
    }

    @SimpleFunction(description = "Add new Items to list at specific index.")
    public void AddItemsAtIndex(int index, YailList itemsList) {
        if (index < 1 || index > this.items.size() + 1) {
            this.container.$form().dispatchErrorOccurredEvent(this, "AddItemsAtIndex", ErrorMessages.ERROR_LISTVIEW_INDEX_OUT_OF_BOUNDS, Integer.valueOf(index));
            return;
        }
        if (!itemsList.isEmpty()) {
            int positionStart = index - 1;
            int itemCount = itemsList.size();
            this.items.addAll(positionStart, itemsList);
            updateAdapterData();
            this.listAdapterWithRecyclerView.notifyItemRangeChanged(positionStart, itemCount);
        }
    }

    public void setAdapterData() {
        switch (this.layout) {
            case 0:
                setListAdapter(new ListViewSingleTextAdapter(this.container, this.items, this.textColor, this.fontSizeMain, this.fontTypeface, this.detailTextColor, this.fontSizeDetail, this.fontTypeDetail, this.elementColor, this.selectionColor, this.radius, this.imageWidth, this.imageHeight));
                break;
            case 1:
                setListAdapter(new ListViewTwoTextAdapter(this.container, this.items, this.textColor, this.fontSizeMain, this.fontTypeface, this.detailTextColor, this.fontSizeDetail, this.fontTypeDetail, this.elementColor, this.selectionColor, this.radius, this.imageWidth, this.imageHeight));
                break;
            case 2:
                setListAdapter(new ListViewTwoTextLinearAdapter(this.container, this.items, this.textColor, this.fontSizeMain, this.fontTypeface, this.detailTextColor, this.fontSizeDetail, this.fontTypeDetail, this.elementColor, this.selectionColor, this.radius, this.imageWidth, this.imageHeight));
                break;
            case 3:
                setListAdapter(new ListViewImageSingleTextAdapter(this.container, this.items, this.textColor, this.fontSizeMain, this.fontTypeface, this.detailTextColor, this.fontSizeDetail, this.fontTypeDetail, this.elementColor, this.selectionColor, this.radius, this.imageWidth, this.imageHeight));
                break;
            case 4:
                setListAdapter(new ListViewImageTwoTextVerticalAdapter(this.container, this.items, this.textColor, this.fontSizeMain, this.fontTypeface, this.detailTextColor, this.fontSizeDetail, this.fontTypeDetail, this.elementColor, this.selectionColor, this.radius, this.imageWidth, this.imageHeight));
                break;
            case 5:
                setListAdapter(new ListViewImageTopTwoTextAdapter(this.container, this.items, this.textColor, this.fontSizeMain, this.fontTypeface, this.detailTextColor, this.fontSizeDetail, this.fontTypeDetail, this.elementColor, this.selectionColor, this.radius, this.imageWidth, this.imageHeight));
                break;
        }
    }

    public void updateAdapterData() {
        SelectionIndex(0);
        this.listAdapterWithRecyclerView.updateData(this.items);
    }

    private void setDivider() {
        DividerItemDecoration dividerDecoration = new DividerItemDecoration();
        dividerDecoration.removeLayoutChangeListener();
        int i = 0;
        while (true) {
            if (i >= this.recyclerView.getItemDecorationCount()) {
                break;
            }
            RecyclerView.ItemDecoration decoration = this.recyclerView.getItemDecorationAt(i);
            if (!(decoration instanceof DividerItemDecoration)) {
                i++;
            } else {
                this.recyclerView.removeItemDecorationAt(i);
                break;
            }
        }
        this.recyclerView.addItemDecoration(dividerDecoration);
    }

    public void setListAdapter(ListAdapterWithRecyclerView adapter) {
        this.listAdapterWithRecyclerView = adapter;
        this.listAdapterWithRecyclerView.setOnItemClickListener(new ListAdapterWithRecyclerView.ClickListener() { // from class: com.google.appinventor.components.runtime.ListView.2
            @Override // com.google.appinventor.components.runtime.ListAdapterWithRecyclerView.ClickListener
            public void onItemClick(int position, View v) {
                ListView.this.SelectionIndex(position + 1);
                ListView.this.AfterPicking();
            }
        });
        this.recyclerView.setAdapter(this.listAdapterWithRecyclerView);
    }

    private class DividerItemDecoration extends RecyclerView.ItemDecoration {
        private View.OnLayoutChangeListener layoutChangeListener;
        private RecyclerView parent;
        private int recyclerViewWidth = 0;

        public DividerItemDecoration() {
        }

        public void onDraw(android.graphics.Canvas canvas, RecyclerView parent, RecyclerView.State state) {
            if (ListView.this.margins == 0) {
                int childCount = parent.getChildCount();
                int i = -1;
                if (ListView.this.orientation == 1) {
                    int i2 = 0;
                    while (i2 < childCount - 1) {
                        View child = parent.getChildAt(i2);
                        ViewGroup.LayoutParams layoutParams = child.getLayoutParams();
                        layoutParams.width = i;
                        child.setLayoutParams(layoutParams);
                        int position = parent.getChildAdapterPosition(child);
                        if (position != i) {
                            int left = child.getRight();
                            int right = ListView.this.dividerSize + left;
                            int top = child.getTop();
                            int bottom = child.getBottom();
                            canvas.drawRect(left, top, right, bottom, ListView.this.dividerPaint);
                        }
                        i2++;
                        i = -1;
                    }
                    return;
                }
                int width = parent.getWidth();
                for (int i3 = 0; i3 < childCount - 1; i3++) {
                    View child2 = parent.getChildAt(i3);
                    ViewGroup.LayoutParams layoutParams2 = child2.getLayoutParams();
                    layoutParams2.width = -1;
                    child2.setLayoutParams(layoutParams2);
                    int position2 = parent.getChildAdapterPosition(child2);
                    if (position2 != -1) {
                        int top2 = child2.getBottom();
                        int bottom2 = ListView.this.dividerSize + top2;
                        canvas.drawRect(0.0f, top2, width, bottom2, ListView.this.dividerPaint);
                    }
                }
            }
        }

        public void getItemOffsets(Rect outRect, View view, final RecyclerView parent, RecyclerView.State state) {
            this.parent = parent;
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            int position = parent.getChildAdapterPosition(view);
            if (ListView.this.margins == 0) {
                if (position != -1 && position < parent.getAdapter().getItemCount() - 1) {
                    if (ListView.this.orientation == 1) {
                        outRect.set(0, 0, ListView.this.dividerSize, 0);
                        return;
                    } else {
                        outRect.set(0, 0, 0, ListView.this.dividerSize);
                        return;
                    }
                }
                outRect.setEmpty();
                return;
            }
            if (ListView.this.orientation == 1) {
                if (this.layoutChangeListener == null) {
                    this.layoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.google.appinventor.components.runtime.ListView.DividerItemDecoration.1
                        @Override // android.view.View.OnLayoutChangeListener
                        public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
                            if (DividerItemDecoration.this.recyclerViewWidth != parent.getWidth()) {
                                DividerItemDecoration.this.recyclerViewWidth = parent.getWidth();
                                for (int i = 0; i < parent.getChildCount(); i++) {
                                    View child = parent.getChildAt(i);
                                    ViewGroup.LayoutParams childLayoutParams = child.getLayoutParams();
                                    childLayoutParams.width = DividerItemDecoration.this.recyclerViewWidth - (ListView.this.margins * 2);
                                    child.setLayoutParams(childLayoutParams);
                                }
                                parent.invalidate();
                            }
                        }
                    };
                    parent.addOnLayoutChangeListener(this.layoutChangeListener);
                }
                this.recyclerViewWidth = parent.getWidth();
                layoutParams.width = this.recyclerViewWidth - (ListView.this.margins * 2);
                view.setLayoutParams(layoutParams);
                if (position == 0) {
                    outRect.set(ListView.this.margins, ListView.this.margins, ListView.this.margins, ListView.this.margins);
                } else {
                    outRect.set(0, ListView.this.margins, ListView.this.margins, ListView.this.margins);
                }
            } else {
                layoutParams.width = -1;
                if (position == 0) {
                    outRect.set(ListView.this.margins, ListView.this.margins, ListView.this.margins, ListView.this.margins);
                } else {
                    outRect.set(ListView.this.margins, 0, ListView.this.margins, ListView.this.margins);
                }
            }
            view.setLayoutParams(layoutParams);
        }

        public void removeLayoutChangeListener() {
            if (this.layoutChangeListener != null) {
                this.parent.removeOnLayoutChangeListener(this.layoutChangeListener);
            }
        }
    }

    @SimpleFunction(description = "Reload the ListView to reflect any changes in the data.")
    @Deprecated
    public void Refresh() {
        setAdapterData();
    }
}
