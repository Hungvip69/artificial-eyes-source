package com.kabby.Recy;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.util.SparseArray;
import com.google.android.gms.vision.Frame;
import com.google.android.gms.vision.text.TextBlock;
import com.google.android.gms.vision.text.TextRecognizer;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Form;
import kawa.lang.SyntaxForms;

/* JADX INFO: loaded from: classes.dex */
@DesignerComponent(category = ComponentCategory.EXTENSION, description = "", iconName = "", nonVisible = SyntaxForms.DEBUGGING, version = 1)
@UsesLibraries(libraries = "play-services-base-17.0.0.jar, play-services-basement-17.0.0.jar, play-services-clearcut-17.0.0.jar, play-services-flags-17.0.0.jar, play-services-phenotype-17.0.0.jar, play-services-tasks-17.0.0.jar, play-services-vision-20.1.3.jar, play-services-vision-common-19.1.3.jar")
@SimpleObject(external = SyntaxForms.DEBUGGING)
public class Recy extends AndroidNonvisibleComponent {
    private Activity activity;
    private Point[] blockCornerPoints;
    private Rect blockFrame;
    private Canvas canvas;
    private Context context;
    private String filey;
    private Form form;
    private TextRecognizer textRecognizer;

    public Recy(ComponentContainer componentContainer) {
        super(componentContainer.$form());
        this.filey = "No File Name Passed";
        this.form = componentContainer.$form();
        this.activity = componentContainer.$context();
        this.context = componentContainer.$context();
        this.textRecognizer = new TextRecognizer.Builder(this.context).build();
    }

    @SimpleProperty
    public void Focus(int i) {
        this.textRecognizer.setFocus(i);
    }

    @SimpleFunction
    public boolean IsOperational() {
        return this.textRecognizer.isOperational();
    }

    @SimpleFunction
    public void ProcessImageFromAssets(String str, String str2) {
        try {
            SparseArray<TextBlock> sparseArrayDetect = this.textRecognizer.detect(new Frame.Builder().setBitmap(BitmapFactory.decodeStream(this.activity.getAssets().open(str))).build());
            String str3 = "";
            for (int i = 0; i < sparseArrayDetect.size(); i++) {
                TextBlock textBlock = sparseArrayDetect.get(i);
                String value = textBlock.getValue();
                this.blockCornerPoints = textBlock.getCornerPoints();
                this.blockFrame = textBlock.getBoundingBox();
                str3 = str3 + str2 + value;
            }
            TextRecognized(str3);
        } catch (Exception e) {
            TextRecognizationError(e.toString());
        }
    }

    @SimpleFunction
    public void ProcessImageFromPath(String str, String str2) {
        try {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            this.textRecognizer = new TextRecognizer.Builder(this.context).build();
            SparseArray<TextBlock> sparseArrayDetect = this.textRecognizer.detect(new Frame.Builder().setBitmap(bitmapDecodeFile).build());
            String str3 = "";
            for (int i = 0; i < sparseArrayDetect.size(); i++) {
                TextBlock textBlock = sparseArrayDetect.get(i);
                String value = textBlock.getValue();
                this.blockCornerPoints = textBlock.getCornerPoints();
                this.blockFrame = textBlock.getBoundingBox();
                str3 = str3 + str2 + value;
            }
            TextRecognized(str3);
        } catch (Exception e) {
            TextRecognizationError(e.toString());
        }
    }

    @SimpleFunction
    public void ProcessImageFromUri(String str, String str2) {
        try {
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(this.context.getContentResolver().openInputStream(Uri.parse(str)));
            this.textRecognizer = new TextRecognizer.Builder(this.context).build();
            SparseArray<TextBlock> sparseArrayDetect = this.textRecognizer.detect(new Frame.Builder().setBitmap(bitmapDecodeStream).build());
            String str3 = "";
            for (int i = 0; i < sparseArrayDetect.size(); i++) {
                TextBlock textBlock = sparseArrayDetect.get(i);
                String value = textBlock.getValue();
                this.blockCornerPoints = textBlock.getCornerPoints();
                this.blockFrame = textBlock.getBoundingBox();
                str3 = str3 + str2 + value;
            }
            TextRecognized(str3);
        } catch (Exception e) {
            TextRecognizationError(e.toString());
        }
    }

    @SimpleFunction
    public void Release() {
        this.textRecognizer.release();
    }

    @SimpleEvent
    public void TextRecognizationError(String str) {
        EventDispatcher.dispatchEvent(this, "TextRecognizationError", str);
    }

    @SimpleEvent
    public void TextRecognized(String str) {
        EventDispatcher.dispatchEvent(this, "TextRecognized", str);
    }
}
