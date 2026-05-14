package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.ViewUtil;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@DesignerComponent(category = ComponentCategory.LAYOUT, description = "<p>A formatting element in which to place components that should be displayed at any coordinates.</p>", iconName = "images/absoluteArrangement.png", version = 1)
@SimpleObject
public class AbsoluteArrangement extends AndroidViewComponent implements Component, ComponentContainer {
    private static final String LOG_TAG = "AArrangement";
    private int backgroundColor;
    private Drawable backgroundImageDrawable;
    private final List<Component> children;
    private final Activity context;
    private String imagePath;
    private final RelativeLayout viewLayout;

    public AbsoluteArrangement(ComponentContainer container) {
        super(container);
        this.children = new ArrayList();
        this.imagePath = "";
        this.context = container.$context();
        Log.d(LOG_TAG, "Setting up layoutManager");
        this.viewLayout = new RelativeLayout(this.context, 100, 100);
        container.$add(this);
        BackgroundColor(0);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Activity $context() {
        return this.context;
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Form $form() {
        return this.container.$form();
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void $add(AndroidViewComponent component) {
        this.children.add(component);
        this.viewLayout.add(component);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildWidth(AndroidViewComponent component, int width) {
        Log.d(LOG_TAG, "setChildWidth: width = " + width + " component = " + component);
        if (width <= -1000) {
            int childWidth = this.container.$form().Width();
            if (childWidth > -1000 && childWidth <= 0) {
                width = -1;
            } else {
                Log.d(LOG_TAG, "%%setChildWidth(): width = " + width + " parent Width = " + childWidth + " child = " + component);
                width = ((-(width + 1000)) * childWidth) / 100;
            }
        }
        component.setLastWidth(width);
        ViewUtil.setChildWidthForRelativeLayout(component.getView(), width);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildHeight(AndroidViewComponent component, int height) {
        if (height <= -1000) {
            int childHeight = this.container.$form().Height();
            if (childHeight > -1000 && childHeight <= 0) {
                height = -1;
            } else {
                height = ((-(height + 1000)) * childHeight) / 100;
            }
        }
        component.setLastHeight(height);
        ViewUtil.setChildHeightForRelativeLayout(component.getView(), height);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildNeedsLayout(AndroidViewComponent component) {
        this.viewLayout.updateComponentPosition(component);
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public List<Component> getChildren() {
        return Collections.unmodifiableList(this.children);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.viewLayout.getLayoutManager();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns the component's background color")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty(description = "Specifies the component's background color. The background color will not be visible if an Image is being displayed.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int argb) {
        this.backgroundColor = argb;
        updateAppearance();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public String Image() {
        return this.imagePath;
    }

    @SimpleProperty(description = "Specifies the path of the component's image.  If there is both an Image and a BackgroundColor, only the Image will be visible.")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Image(String path) {
        if (path == null) {
            path = "";
        }
        if (path.equals(this.imagePath) && this.backgroundImageDrawable != null) {
            return;
        }
        this.imagePath = path;
        this.backgroundImageDrawable = null;
        if (this.imagePath.length() > 0) {
            try {
                this.backgroundImageDrawable = MediaUtil.getBitmapDrawable(this.container.$form(), this.imagePath);
            } catch (IOException e) {
            }
        }
        updateAppearance();
    }

    private void updateAppearance() {
        if (this.backgroundImageDrawable == null) {
            if (this.backgroundColor == 0) {
                int color = $form().isDarkTheme() ? -16777216 : -1;
                ViewUtil.setBackgroundDrawable(this.viewLayout.getLayoutManager(), new ColorDrawable(color));
                return;
            } else {
                ViewUtil.setBackgroundDrawable(this.viewLayout.getLayoutManager(), null);
                this.viewLayout.getLayoutManager().setBackgroundColor(this.backgroundColor);
                return;
            }
        }
        ViewUtil.setBackgroundImage(this.viewLayout.getLayoutManager(), this.backgroundImageDrawable);
    }
}
