package uk.co.metricrat.imagebase64;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.util.Base64;
import android.util.Log;
import android.widget.ImageView;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.Image;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.acra.ACRA;

/* JADX INFO: loaded from: classes.dex */
public class ImageBase64 extends AndroidNonvisibleComponent {
    public ImageBase64(ComponentContainer componentContainer) {
        super(componentContainer.$form());
    }

    @SimpleFunction(description = "Get Image and returns base64 string")
    public void GetImageAsBase64(Image image) throws Exception {
        AfterImageBase64(bitMapToBase64(((BitmapDrawable) ((ImageView) image.getView()).getDrawable()).getBitmap()));
    }

    public String bitMapToBase64(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
    }

    @SimpleEvent(description = "Called after the image is converted. The text argument `imageBase64Data` is the base64 string of the image")
    public void AfterImageBase64(String str) {
        EventDispatcher.dispatchEvent(this, "AfterImageBase64", str);
    }

    @SimpleFunction(description = "Set Image component with image from base64 string")
    public void SetImageFromBase64(Image image, String str) {
        ImageView imageView = (ImageView) image.getView();
        byte[] bArrDecode = Base64.decode(str, 0);
        imageView.setImageBitmap(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length));
    }

    @SimpleFunction(description = "Encodes the given text value so that it can be used in a URL")
    public String UriEncode(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            Log.e(ACRA.LOG_TAG, "UTF-8 is unsupported?", e);
            return "";
        }
    }
}
