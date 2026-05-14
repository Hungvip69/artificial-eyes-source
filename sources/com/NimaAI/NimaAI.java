package com.NimaAI;

import android.app.Activity;
import com.google.api.client.http.HttpMethods;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import kawa.lang.SyntaxForms;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@DesignerComponent(category = ComponentCategory.EXTENSION, description = "NimaAI Extension without error thanks @Caraem144p", iconName = "https://static.vecteezy.com/system/resources/thumbnails/036/105/045/small_2x/artificial-intelligence-ai-processor-chip-icon-symbol-for-graphic-design-logo-web-site-social-media-png.png", nonVisible = SyntaxForms.DEBUGGING, version = 1)
@SimpleObject(external = SyntaxForms.DEBUGGING)
public class NimaAI extends AndroidNonvisibleComponent {
    private final Activity activity;

    public NimaAI(ComponentContainer container) {
        super(container.$form());
        this.activity = container.$context();
    }

    @SimpleFunction(description = "Send question to AI and get response")
    public void SendToAI(final String question) {
        new Thread(new Runnable() { // from class: com.NimaAI.NimaAI.1
            @Override // java.lang.Runnable
            public void run() {
                String result;
                BufferedReader reader;
                StringBuilder sb;
                try {
                    String encodedQuestion = URLEncoder.encode(question, "UTF-8");
                    String urlString = "https://nimaartman.ir/science/L1.php?text=" + encodedQuestion;
                    URL url = new URL(urlString);
                    HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                    connection.setRequestMethod(HttpMethods.GET);
                    connection.setConnectTimeout(15000);
                    connection.setReadTimeout(15000);
                    reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                    sb = new StringBuilder();
                } catch (Exception e) {
                    result = "Error: " + e.getMessage();
                }
                while (true) {
                    String line = reader.readLine();
                    if (line == null) {
                        break;
                    } else {
                        sb.append(line);
                    }
                    final String finalResult = result;
                    NimaAI.this.activity.runOnUiThread(new Runnable() { // from class: com.NimaAI.NimaAI.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            NimaAI.this.GotResponse(finalResult);
                        }
                    });
                }
                reader.close();
                JSONObject json = new JSONObject(sb.toString());
                if (json.has("data")) {
                    result = json.getString("data");
                } else {
                    result = "No 'data' in response.";
                }
                final String finalResult2 = result;
                NimaAI.this.activity.runOnUiThread(new Runnable() { // from class: com.NimaAI.NimaAI.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        NimaAI.this.GotResponse(finalResult2);
                    }
                });
            }
        }).start();
    }

    @SimpleEvent(description = "Triggered when response is received")
    public void GotResponse(String response) {
        EventDispatcher.dispatchEvent(this, "GotResponse", response);
    }
}
