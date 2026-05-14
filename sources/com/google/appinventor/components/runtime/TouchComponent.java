package com.google.appinventor.components.runtime;

import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import com.google.appinventor.components.annotations.Asset;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.MediaUtil;
import com.google.appinventor.components.runtime.util.ViewUtil;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
@SimpleObject
public abstract class TouchComponent<T extends View> extends AndroidViewComponent implements View.OnTouchListener {
    private static final String LOG_TAG = "TouchComponent";
    protected int backgroundColor;
    protected Drawable backgroundImageDrawable;
    protected Drawable defaultDrawable;
    private String imagePath;
    private boolean showFeedback;
    protected T view;

    public TouchComponent(ComponentContainer container) {
        super(container);
        this.showFeedback = true;
        this.imagePath = "";
    }

    protected void initToggle() {
        this.container.$add(this);
        this.view.setOnTouchListener(this);
        this.defaultDrawable = this.view.getBackground();
        BackgroundColor(0);
        Enabled(true);
        Image("");
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    @SimpleEvent(description = "Indicates that the %type% was pressed down.")
    public void TouchDown() {
        EventDispatcher.dispatchEvent(this, "TouchDown", new Object[0]);
    }

    @SimpleEvent(description = "Indicates that the %type% has been released.")
    public void TouchUp() {
        EventDispatcher.dispatchEvent(this, "TouchUp", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "If set, user can tap %type% to cause action.")
    public boolean Enabled() {
        return this.view.isEnabled();
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Enabled(boolean enabled) {
        this.view.setEnabled(enabled);
        this.view.invalidate();
    }

    @SimpleProperty(description = "Specifies if a visual feedback should be shown  for a %type% that has an image as background.")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ShowFeedback(boolean showFeedback) {
        this.showFeedback = showFeedback;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns the visual feedback state of the %type%")
    public boolean ShowFeedback() {
        return this.showFeedback;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Returns the button's background color")
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty(description = "Specifies the background color of the %type%. The background color will not be visible if an Image is being displayed.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int argb) {
        this.backgroundColor = argb;
        updateAppearance();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Image to display on button.")
    public String Image() {
        return this.imagePath;
    }

    @SimpleProperty(description = "Specifies the path of the image of the %type%.  If there is both an Image and a BackgroundColor, only the Image will be visible.")
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_ASSET)
    public void Image(@Asset String path) {
        if (path.equals(this.imagePath) && this.backgroundImageDrawable != null) {
            return;
        }
        this.imagePath = path == null ? "" : path;
        this.backgroundImageDrawable = null;
        if (!this.imagePath.isEmpty()) {
            try {
                this.backgroundImageDrawable = MediaUtil.getBitmapDrawable(this.container.$form(), this.imagePath);
            } catch (IOException e) {
                Log.e(LOG_TAG, "Unable to load " + this.imagePath);
            }
        }
        updateAppearance();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent me) {
        if (me.getAction() == 0) {
            if (ShowFeedback() && (AppInventorCompatActivity.isClassicMode() || Build.VERSION.SDK_INT < 21)) {
                view.getBackground().setAlpha(70);
                view.invalidate();
            }
            TouchDown();
            return false;
        }
        if (me.getAction() == 1 || me.getAction() == 3) {
            if (ShowFeedback() && (AppInventorCompatActivity.isClassicMode() || Build.VERSION.SDK_INT < 21)) {
                view.getBackground().setAlpha(255);
                view.invalidate();
            }
            TouchUp();
            return false;
        }
        return false;
    }

    protected void updateAppearance() {
        if (this.backgroundImageDrawable == null) {
            if (this.backgroundColor == 0) {
                ViewUtil.setBackgroundDrawable(this.view, this.defaultDrawable);
                return;
            }
            if (this.backgroundColor == 16777215) {
                ViewUtil.setBackgroundDrawable(this.view, null);
                ViewUtil.setBackgroundDrawable(this.view, this.defaultDrawable);
                this.view.getBackground().setColorFilter(this.backgroundColor, PorterDuff.Mode.CLEAR);
                return;
            } else {
                ViewUtil.setBackgroundDrawable(this.view, null);
                ViewUtil.setBackgroundDrawable(this.view, this.defaultDrawable);
                this.view.getBackground().setColorFilter(this.backgroundColor, PorterDuff.Mode.SRC_ATOP);
                return;
            }
        }
        ViewUtil.setBackgroundImage(this.view, this.backgroundImageDrawable);
    }
}
