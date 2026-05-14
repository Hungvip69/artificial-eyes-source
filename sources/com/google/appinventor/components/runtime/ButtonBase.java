package com.google.appinventor.components.runtime;

import android.R;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.TextView;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.IceCreamSandwichUtil;
import com.google.appinventor.components.runtime.util.KitkatUtil;
import com.google.appinventor.components.runtime.util.TextViewUtil;
import com.google.appinventor.components.runtime.util.ViewUtil;

/* JADX INFO: loaded from: classes.dex */
@UsesPermissions(permissionNames = "android.permission.INTERNET")
@SimpleObject
public abstract class ButtonBase extends TouchComponent<android.widget.Button> implements View.OnClickListener, View.OnFocusChangeListener, View.OnLongClickListener, AccessibleComponent {
    private static final String LOG_TAG = "ButtonBase";
    private static final float ROUNDED_CORNERS_RADIUS = 10.0f;
    private static final int SHAPED_DEFAULT_BACKGROUND_COLOR = -3355444;
    private boolean bold;
    private ColorStateList defaultColorStateList;
    private Object defaultOutlineProvider;
    private Object defaultStateAnimator;
    private String fontTypeface;
    private boolean isBigText;
    private boolean isHighContrast;
    private boolean italic;
    private Drawable myBackgroundDrawable;
    private int shape;
    private int textAlignment;
    private int textColor;
    private static final float[] ROUNDED_CORNERS_ARRAY = {10.0f, 10.0f, 10.0f, 10.0f, 10.0f, 10.0f, 10.0f, 10.0f};
    private static int defaultButtonMinWidth = 0;
    private static int defaultButtonMinHeight = 0;

    public abstract void click();

    public ButtonBase(ComponentContainer container) {
        super(container);
        this.myBackgroundDrawable = null;
        this.isHighContrast = false;
        this.isBigText = false;
        this.view = new android.widget.Button(container.$context());
        this.defaultColorStateList = ((android.widget.Button) this.view).getTextColors();
        defaultButtonMinWidth = KitkatUtil.getMinWidth((TextView) this.view);
        defaultButtonMinHeight = KitkatUtil.getMinHeight((TextView) this.view);
        if (Build.VERSION.SDK_INT >= 21) {
            this.defaultOutlineProvider = ((android.widget.Button) this.view).getOutlineProvider();
            this.defaultStateAnimator = ((android.widget.Button) this.view).getStateListAnimator();
        }
        initToggle();
        ((android.widget.Button) this.view).setOnClickListener(this);
        ((android.widget.Button) this.view).setOnFocusChangeListener(this);
        ((android.widget.Button) this.view).setOnLongClickListener(this);
        IceCreamSandwichUtil.setAllCaps((TextView) this.view, false);
        TextAlignment(1);
        this.fontTypeface = Component.TYPEFACE_DEFAULT;
        TextViewUtil.setFontTypeface(container.$form(), (TextView) this.view, this.fontTypeface, this.bold, this.italic);
        FontSize(14.0f);
        Text("");
        TextColor(0);
        Shape(0);
    }

    public void Initialize() {
        updateAppearance();
    }

    @SimpleEvent(description = "Indicates the cursor moved over the %type% so it is now possible to click it.")
    public void GotFocus() {
        EventDispatcher.dispatchEvent(this, "GotFocus", new Object[0]);
    }

    @SimpleEvent(description = "Indicates the cursor moved away from the %type% so it is now no longer possible to click it.")
    public void LostFocus() {
        EventDispatcher.dispatchEvent(this, "LostFocus", new Object[0]);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Left, center, or right.", userVisible = false)
    public int TextAlignment() {
        return this.textAlignment;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = Component.TYPEFACE_SANSSERIF, editorType = PropertyTypeConstants.PROPERTY_TYPE_TEXTALIGNMENT)
    public void TextAlignment(int alignment) {
        this.textAlignment = alignment;
        TextViewUtil.setAlignment((TextView) this.view, alignment, true);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    public int Shape() {
        return this.shape;
    }

    @SimpleProperty(description = "Specifies the shape of the %type% (default, rounded, rectangular, oval). The shape will not be visible if an Image is being displayed.", userVisible = false)
    @DesignerProperty(defaultValue = Component.TYPEFACE_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_BUTTON_SHAPE)
    public void Shape(int shape) {
        this.shape = shape;
        updateAppearance();
    }

    @Override // com.google.appinventor.components.runtime.TouchComponent
    protected void updateAppearance() {
        if (this.backgroundImageDrawable == null) {
            if (this.shape == 0) {
                if (this.backgroundColor == 0) {
                    if (this.isHighContrast || this.container.$form().HighContrast()) {
                        ViewUtil.setBackgroundDrawable(this.view, null);
                        ViewUtil.setBackgroundDrawable(this.view, getSafeBackgroundDrawable());
                        ((android.widget.Button) this.view).getBackground().setColorFilter(-16777216, PorterDuff.Mode.SRC_ATOP);
                    } else {
                        super.updateAppearance();
                    }
                } else {
                    super.updateAppearance();
                }
            } else {
                setShape();
            }
            TextViewUtil.setMinSize((TextView) this.view, defaultButtonMinWidth, defaultButtonMinHeight);
            return;
        }
        if (this.shape == 0) {
            super.updateAppearance();
            TextViewUtil.setMinSize((TextView) this.view, 0, 0);
            return;
        }
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Bitmap backgroundBitmap = ((BitmapDrawable) this.backgroundImageDrawable).getBitmap();
        float displayDensity = ((android.widget.Button) this.view).getContext().getResources().getDisplayMetrics().density;
        int shapeHeight = Math.round(this.backgroundImageDrawable.getIntrinsicHeight() * displayDensity);
        int shapeWidth = Math.round(this.backgroundImageDrawable.getIntrinsicWidth() * displayDensity);
        Bitmap result = Bitmap.createBitmap(shapeWidth, shapeHeight, Bitmap.Config.ARGB_8888);
        android.graphics.Canvas canvas = new android.graphics.Canvas(result);
        switch (this.shape) {
            case 1:
                canvas.drawRoundRect(new RectF(0.0f, 0.0f, shapeWidth, shapeHeight), 100.0f, 100.0f, paint);
                break;
            case 2:
                canvas.drawRect(new RectF(0.0f, 0.0f, shapeWidth, shapeHeight), paint);
                break;
            case 3:
                canvas.drawOval(new RectF(0.0f, 0.0f, shapeWidth, shapeHeight), paint);
                break;
            default:
                throw new IllegalArgumentException();
        }
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(backgroundBitmap, (Rect) null, new Rect(0, 0, shapeWidth, shapeHeight), paint);
        ViewUtil.setBackgroundImage(this.view, new BitmapDrawable(result));
    }

    private Drawable getSafeBackgroundDrawable() {
        if (this.myBackgroundDrawable == null) {
            Drawable.ConstantState state = this.defaultDrawable.getConstantState();
            if (state != null) {
                try {
                    this.myBackgroundDrawable = state.newDrawable().mutate();
                } catch (NullPointerException e) {
                    Log.e(LOG_TAG, "Unable to clone button drawable", e);
                    this.myBackgroundDrawable = this.defaultDrawable;
                }
            } else {
                this.myBackgroundDrawable = this.defaultDrawable;
            }
        }
        return this.myBackgroundDrawable;
    }

    private ColorStateList createRippleState() {
        int[][] states = {new int[]{R.attr.state_enabled}};
        int enabled_color = this.defaultColorStateList.getColorForState(((android.widget.Button) this.view).getDrawableState(), R.attr.state_enabled);
        int[] colors = {Color.argb(70, Color.red(enabled_color), Color.green(enabled_color), Color.blue(enabled_color))};
        return new ColorStateList(states, colors);
    }

    private void setShape() {
        ShapeDrawable drawable = new ShapeDrawable();
        switch (this.shape) {
            case 1:
                drawable.setShape(new RoundRectShape(ROUNDED_CORNERS_ARRAY, null, null));
                break;
            case 2:
                drawable.setShape(new RectShape());
                break;
            case 3:
                drawable.setShape(new OvalShape());
                break;
            default:
                throw new IllegalArgumentException();
        }
        if (this.backgroundColor != 0 && !this.container.$form().HighContrast()) {
            drawable.getPaint().setColor(this.backgroundColor);
        }
        if (!AppInventorCompatActivity.isClassicMode() && Build.VERSION.SDK_INT >= 21) {
            ViewUtil.setBackgroundDrawable(this.view, new RippleDrawable(createRippleState(), drawable, drawable));
        } else {
            ViewUtil.setBackgroundDrawable(this.view, drawable);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            if (this.backgroundColor == 16777215) {
                ((android.widget.Button) this.view).setOutlineProvider(null);
                ((android.widget.Button) this.view).setStateListAnimator(null);
            } else {
                ((android.widget.Button) this.view).setOutlineProvider((ViewOutlineProvider) this.defaultOutlineProvider);
                ((android.widget.Button) this.view).setStateListAnimator((StateListAnimator) this.defaultStateAnimator);
            }
        }
        if (this.backgroundColor == 16777215) {
            ((android.widget.Button) this.view).getBackground().setColorFilter(this.backgroundColor, PorterDuff.Mode.CLEAR);
        } else if (this.backgroundColor == 0) {
            if (this.isHighContrast || this.container.$form().HighContrast()) {
                ((android.widget.Button) this.view).getBackground().setColorFilter(-16777216, PorterDuff.Mode.SRC_ATOP);
            } else {
                ((android.widget.Button) this.view).getBackground().setColorFilter(-3355444, PorterDuff.Mode.SRC_ATOP);
            }
        } else {
            ((android.widget.Button) this.view).getBackground().setColorFilter(this.backgroundColor, PorterDuff.Mode.SRC_ATOP);
        }
        ((android.widget.Button) this.view).invalidate();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "If set, %type% text is displayed in bold.")
    public boolean FontBold() {
        return this.bold;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontBold(boolean bold) {
        this.bold = bold;
        TextViewUtil.setFontTypeface(this.container.$form(), (TextView) this.view, this.fontTypeface, bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "If set, %type% text is displayed in italics.")
    public boolean FontItalic() {
        return this.italic;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void FontItalic(boolean italic) {
        this.italic = italic;
        TextViewUtil.setFontTypeface(this.container.$form(), (TextView) this.view, this.fontTypeface, this.bold, italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Point size for %type% text.")
    public float FontSize() {
        return TextViewUtil.getFontSize((TextView) this.view, this.container.$context());
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "14.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void FontSize(float size) {
        if (size == 14.0f && this.container.$form().BigDefaultText()) {
            TextViewUtil.setFontSize((TextView) this.view, 24.0f);
        } else {
            TextViewUtil.setFontSize((TextView) this.view, size);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Font family for %type% text.", userVisible = false)
    public String FontTypeface() {
        return this.fontTypeface;
    }

    @SimpleProperty(userVisible = false)
    @DesignerProperty(defaultValue = Component.TYPEFACE_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_TYPEFACE)
    public void FontTypeface(String typeface) {
        this.fontTypeface = typeface;
        TextViewUtil.setFontTypeface(this.container.$form(), (TextView) this.view, this.fontTypeface, this.bold, this.italic);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Text to display on %type%.")
    public String Text() {
        return TextViewUtil.getText((TextView) this.view);
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "", editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Text(String text) {
        TextViewUtil.setText((TextView) this.view, text);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Color for button text.")
    public int TextColor() {
        return this.textColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void TextColor(int argb) {
        this.textColor = argb;
        if (argb != 0) {
            TextViewUtil.setTextColor((TextView) this.view, argb);
        } else if (this.isHighContrast || this.container.$form().HighContrast()) {
            TextViewUtil.setTextColor((TextView) this.view, -1);
        } else {
            TextViewUtil.setTextColors((TextView) this.view, this.defaultColorStateList);
        }
    }

    public boolean longClick() {
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        click();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View previouslyFocused, boolean gainFocus) {
        if (gainFocus) {
            GotFocus();
        } else {
            LostFocus();
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        return longClick();
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public void setHighContrast(boolean isHighContrast) {
        if (this.backgroundImageDrawable == null && this.shape == 0 && this.backgroundColor == 0) {
            if (isHighContrast) {
                ViewUtil.setBackgroundDrawable(this.view, null);
                ViewUtil.setBackgroundDrawable(this.view, getSafeBackgroundDrawable());
                ((android.widget.Button) this.view).getBackground().setColorFilter(-16777216, PorterDuff.Mode.SRC_ATOP);
            } else {
                ViewUtil.setBackgroundDrawable(this.view, this.defaultDrawable);
            }
        }
        if (this.textColor == 0) {
            if (isHighContrast) {
                TextViewUtil.setTextColor((TextView) this.view, -1);
            } else {
                TextViewUtil.setTextColors((TextView) this.view, this.defaultColorStateList);
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public boolean getHighContrast() {
        return this.isHighContrast;
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public void setLargeFont(boolean isLargeFont) {
        if (TextViewUtil.getFontSize((TextView) this.view, this.container.$context()) == 24.0d || TextViewUtil.getFontSize((TextView) this.view, this.container.$context()) == 14.0f) {
            if (isLargeFont) {
                TextViewUtil.setFontSize((TextView) this.view, 24.0f);
            } else {
                TextViewUtil.setFontSize((TextView) this.view, 14.0f);
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.AccessibleComponent
    public boolean getLargeFont() {
        return this.isBigText;
    }
}
