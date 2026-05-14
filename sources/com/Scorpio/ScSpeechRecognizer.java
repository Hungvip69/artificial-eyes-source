package com.Scorpio;

import android.content.Intent;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.speech.RecognitionListener;
import android.speech.SpeechRecognizer;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesPermissions;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.ActivityResultListener;
import com.google.appinventor.components.runtime.AndroidNonvisibleComponent;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.EventDispatcher;
import com.google.appinventor.components.runtime.OnDestroyListener;
import com.google.appinventor.components.runtime.PermissionResultHandler;
import java.util.ArrayList;
import kawa.lang.SyntaxForms;

/* JADX INFO: loaded from: classes.dex */
@UsesPermissions(permissionNames = "android.permission.RECORD_AUDIO")
@DesignerComponent(category = ComponentCategory.EXTENSION, description = "This is an alternate version of the Voice Recognition Component<br />(by ScorpioNormal)<br />Features:<br />- Ability to disable the Google dialogue,<br />- Turn off the sound prompt signal,<br />- Continuous listening (hands free),<br />- and more...", iconName = "images/speechRecognizer.png", nonVisible = SyntaxForms.DEBUGGING, version = 8)
@SimpleObject(external = SyntaxForms.DEBUGGING)
public class ScSpeechRecognizer extends AndroidNonvisibleComponent implements Component, ActivityResultListener, RecognitionListener, OnDestroyListener {
    private static final String LOG_TAG = "ScSpeechRecognizer";
    private boolean StopFlag;
    private AudioManager amanager;
    private boolean audioMuteFlag;
    private final ComponentContainer container;
    private boolean continuoslyRecognitionEnabled;
    private boolean enableGoogleDialog;
    private boolean enablePartialResult;
    private String extraLengv;
    private String extraPrompt;
    private boolean havePermission;
    private boolean isListening;
    private boolean keepScreenOn;
    private String keyword;
    private boolean keywordEnable;
    private boolean keywordOk;
    private int keywordTimeSeg;
    private String lastError;
    private boolean muteAudio;
    private boolean preferOffLine;
    private Intent recognizerIntent;
    private int requestCode;
    private String result;
    private SpeechRecognizer speech;
    private long starttime;

    public ScSpeechRecognizer(ComponentContainer container) {
        super(container.$form());
        this.speech = null;
        this.havePermission = false;
        this.enableGoogleDialog = false;
        this.muteAudio = false;
        this.audioMuteFlag = false;
        this.continuoslyRecognitionEnabled = false;
        this.preferOffLine = false;
        this.lastError = "";
        this.extraPrompt = "";
        this.keepScreenOn = false;
        this.enablePartialResult = false;
        this.isListening = false;
        this.StopFlag = false;
        this.extraLengv = "";
        this.keyword = "";
        this.keywordEnable = true;
        this.keywordTimeSeg = 30;
        this.keywordOk = false;
        this.starttime = 0L;
        this.container = container;
        this.form.registerForOnDestroy(this);
        this.result = "";
        SetASR();
        SetSRIntent();
        SetAM();
    }

    private void SetAM() {
        this.amanager = (AudioManager) this.container.$context().getSystemService("audio");
    }

    private void SetASR() {
        if (SpeechRecognizer.isRecognitionAvailable(this.container.$context())) {
            this.speech = SpeechRecognizer.createSpeechRecognizer(this.container.$context());
            this.speech.setRecognitionListener(this);
        } else {
            this.lastError = "Speech Recognizer not Available!";
            OnError(this.lastError);
        }
    }

    private void SetSRIntent() {
        this.recognizerIntent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.recognizerIntent.putExtra("calling_package", this.container.$context().getPackageName());
        this.recognizerIntent.putExtra("android.speech.extra.PARTIAL_RESULTS", this.enablePartialResult);
        this.recognizerIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        if (!this.extraPrompt.isEmpty()) {
            this.recognizerIntent.putExtra("android.speech.extra.PROMPT", this.extraPrompt);
        }
        if (!this.extraLengv.isEmpty()) {
            this.recognizerIntent.putExtra("android.speech.extra.LANGUAGE", this.extraLengv);
        }
        if (Build.VERSION.SDK_INT >= 23) {
            this.recognizerIntent.putExtra("android.speech.extra.PREFER_OFFLINE", this.preferOffLine);
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String Result() {
        return this.result;
    }

    @SimpleFunction
    public void GetText() {
        if (this.enableGoogleDialog) {
            if (this.requestCode == 0) {
                BeforeGettingText();
                if (this.muteAudio) {
                    AudioMute(true);
                }
                this.requestCode = this.form.registerForActivityResult(this);
            }
            this.container.$context().startActivityForResult(this.recognizerIntent, this.requestCode);
            return;
        }
        if (this.speech != null) {
            if (!this.havePermission && Build.VERSION.SDK_INT >= 23) {
                this.form.askPermission("android.permission.RECORD_AUDIO", new PermissionResultHandler() { // from class: com.Scorpio.ScSpeechRecognizer.1
                    @Override // com.google.appinventor.components.runtime.PermissionResultHandler
                    public void HandlePermissionResponse(String permission, boolean granted) {
                        if (granted) {
                            ScSpeechRecognizer.this.havePermission = true;
                            ScSpeechRecognizer.this.GetText();
                        } else {
                            ScSpeechRecognizer.this.form.dispatchPermissionDeniedEvent(ScSpeechRecognizer.this, "RecordAudio", "android.permission.RECORD_AUDIO");
                        }
                    }
                });
                return;
            }
            this.StopFlag = false;
            BeforeGettingText();
            this.lastError = "";
            if (this.muteAudio) {
                AudioMute(true);
            }
            this.speech.startListening(this.recognizerIntent);
        }
    }

    @SimpleFunction(description = "Stop continuosly Recognition process")
    public void StopASR() {
        this.StopFlag = true;
        if (this.speech != null) {
            this.speech.stopListening();
            this.speech.cancel();
        }
        this.isListening = false;
        if (this.audioMuteFlag) {
            Sleep(500L);
            AudioMute(false);
        }
    }

    private void RestartASR() {
        if (this.speech != null) {
            this.speech.cancel();
        }
        if (this.StopFlag) {
            return;
        }
        Sleep(200L);
        this.speech.startListening(this.recognizerIntent);
    }

    private void Sleep(long ms) {
        try {
            Thread.sleep(ms);
        } catch (Exception e) {
            e.getLocalizedMessage();
        }
    }

    @Override // com.google.appinventor.components.runtime.ActivityResultListener
    public void resultReturned(int requestCode, int resultCode, Intent data) {
        if (requestCode == this.requestCode && resultCode == -1) {
            if (data.hasExtra("android.speech.extra.RESULTS")) {
                ArrayList<String> results = data.getExtras().getStringArrayList("android.speech.extra.RESULTS");
                this.result = results.get(0);
            } else {
                this.result = "";
            }
            if (this.audioMuteFlag) {
                Sleep(500L);
                AudioMute(false);
            }
            AfterGettingText(this.result);
        }
    }

    @SimpleEvent
    public void BeforeGettingText() {
        EventDispatcher.dispatchEvent(this, "BeforeGettingText", new Object[0]);
    }

    @SimpleEvent
    public void AfterGettingText(String result) {
        EventDispatcher.dispatchEvent(this, "AfterGettingText", result);
    }

    @Override // android.speech.RecognitionListener
    public void onBeginningOfSpeech() {
    }

    @Override // android.speech.RecognitionListener
    public void onBufferReceived(byte[] buffer) {
    }

    @Override // android.speech.RecognitionListener
    public void onEndOfSpeech() {
        this.isListening = false;
    }

    @Override // android.speech.RecognitionListener
    public void onError(int errorCode) {
        if (this.continuoslyRecognitionEnabled && (errorCode == 7 || errorCode == 6 || errorCode == 3)) {
            RestartASR();
            return;
        }
        this.lastError = getErrorText(errorCode);
        this.result = "";
        OnError(this.lastError);
    }

    @Override // android.speech.RecognitionListener
    public void onEvent(int arg0, Bundle arg1) {
    }

    @Override // android.speech.RecognitionListener
    public void onPartialResults(Bundle arg0) {
        ArrayList<String> matches = arg0.getStringArrayList("results_recognition");
        String parresult = matches.get(0);
        AfterPartialResults(parresult);
    }

    @Override // android.speech.RecognitionListener
    public void onReadyForSpeech(Bundle arg0) {
        this.isListening = true;
    }

    @Override // android.speech.RecognitionListener
    public void onResults(Bundle results) {
        ArrayList<String> matches = results.getStringArrayList("results_recognition");
        this.result = matches.get(0);
        if (!CheckKeyWorld(this.result) && this.continuoslyRecognitionEnabled) {
            RestartASR();
            return;
        }
        if (this.audioMuteFlag) {
            Sleep(500L);
            AudioMute(false);
        }
        AfterGettingText(this.result);
    }

    @Override // android.speech.RecognitionListener
    public void onRmsChanged(float rmsdB) {
        int rms = (int) rmsdB;
        if (rms < 0) {
            rms = 0;
        }
        OnRmsChanged(rms);
    }

    public String getErrorText(int errorCode) {
        switch (errorCode) {
            case 1:
                return "Network timeout";
            case 2:
                return "Network error";
            case 3:
                return "Audio recording error";
            case 4:
                return "Error from server";
            case 5:
                return "Client side error";
            case 6:
                return "No speech input";
            case 7:
                return "No match";
            case 8:
                return "RecognitionService busy";
            case 9:
                return "Insufficient permissions";
            default:
                return "Didn't understand, please try again.";
        }
    }

    private void AudioMute(boolean mute) {
        if (this.audioMuteFlag == mute) {
            return;
        }
        this.audioMuteFlag = mute;
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                int i = -100;
                this.amanager.adjustStreamVolume(3, mute ? -100 : 100, 0);
                AudioManager audioManager = this.amanager;
                if (!mute) {
                    i = 100;
                }
                audioManager.adjustStreamVolume(5, i, 0);
            } else {
                this.amanager.setStreamMute(3, mute);
                this.amanager.setStreamMute(5, mute);
            }
        } catch (Exception e) {
            if (this.amanager == null) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 23) {
                this.amanager.adjustStreamVolume(3, 100, 0);
                this.amanager.adjustStreamVolume(5, 100, 0);
            } else {
                this.amanager.setStreamMute(3, false);
                this.amanager.setStreamMute(5, false);
            }
            this.audioMuteFlag = false;
        }
    }

    @SimpleProperty(description = "Enable Google Promt Dialog (works like a normal SpeechRecognizer component)\nThe default is FALSE,in this case, the capabilities of this component become available.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void EnableGoogleDialog(boolean enabled) {
        if (this.enableGoogleDialog != enabled) {
            this.enableGoogleDialog = enabled;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean EnableGoogleDialog() {
        return this.enableGoogleDialog;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Error of the last recognition")
    public String LastError() {
        return this.lastError;
    }

    @SimpleProperty(description = "Mute audio Prompt signal (if Dialog is disable only)\nThe default is FALSE, A beep will be played at the beginning and at the end of the recognition process.")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void MuteAudio(boolean mute) {
        if (this.muteAudio != mute) {
            this.muteAudio = mute;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean MuteAudio() {
        return this.muteAudio;
    }

    @SimpleProperty(description = "Continuosly Recognition (if Dialog is disable only),\ncontinues to listen to the first successful recognition.\nThe default is FALSE, One session recognition will be used")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void ContinuoslyRecognitionEnabled(boolean enable) {
        if (this.continuoslyRecognitionEnabled != enable) {
            this.continuoslyRecognitionEnabled = enable;
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean ContinuoslyRecognitionEnabled() {
        return this.continuoslyRecognitionEnabled;
    }

    @SimpleProperty(description = "To only use an offline speech recognition engine (Beginning with Android 6.0).\nThe default is FALSE, meaning that either network or offline recognition engines may be used")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void PreferOffLine(boolean enable) {
        if (this.preferOffLine != enable) {
            this.preferOffLine = enable;
            SetSRIntent();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean PreferOffLine() {
        return this.preferOffLine;
    }

    @SimpleProperty(description = "Optional text prompt to show to the user when asking them to speak\n(if Dialog is ENABLE only).To stop the prompt, leave this field empty.")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ExtraPrompt(String prompt) {
        this.extraPrompt = prompt;
        SetSRIntent();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ExtraPrompt() {
        return this.extraPrompt;
    }

    @SimpleEvent(description = "Event occurs when recognition error")
    public void OnError(String error) {
        EventDispatcher.dispatchEvent(this, "OnError", error);
    }

    @SimpleEvent(description = "Event occurs when Microphone input is change (0...10)")
    public void OnRmsChanged(int rms) {
        EventDispatcher.dispatchEvent(this, "OnRmsChanged", Integer.valueOf(rms));
    }

    @Override // com.google.appinventor.components.runtime.OnDestroyListener
    public void onDestroy() {
        AudioMute(false);
        if (this.speech != null) {
            this.speech.destroy();
        }
    }

    @SimpleProperty(description = "To keep the device's screen turned on and bright.\nThe default is FALSE")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void KeepScreenOn(boolean enable) {
        if (this.keepScreenOn != enable) {
            this.keepScreenOn = enable;
            if (enable) {
                this.container.$form().getWindow().addFlags(128);
            } else {
                this.container.$form().getWindow().clearFlags(128);
            }
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean KeepScreenOn() {
        return this.keepScreenOn;
    }

    @SimpleProperty(description = "Optional IETF language tag (as defined by BCP 47),\nfor example \"en-US\"")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ExtraLanguage(String lengv) {
        this.extraLengv = lengv;
        SetSRIntent();
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String ExtraLanguage() {
        return this.extraLengv;
    }

    @SimpleEvent(description = "Event occurs when exist Partial Results")
    public void AfterPartialResults(String result) {
        EventDispatcher.dispatchEvent(this, "AfterPartialResults", result);
    }

    @SimpleProperty(description = "Allows to have intermediate recognition results when the user continues to speak.\nTriggers an event AfterPartialResults. The default is FALSE")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void EnablePartialResult(boolean enable) {
        if (this.enablePartialResult != enable) {
            this.enablePartialResult = enable;
            SetSRIntent();
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean EnablePartialResult() {
        return this.enablePartialResult;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Is listening at the moment. Read only")
    public boolean IsListening() {
        return this.isListening;
    }

    private boolean CheckKeyWorld(String result) {
        if (!this.keywordEnable || this.keyword.isEmpty()) {
            return true;
        }
        if (result.toLowerCase().contains(this.keyword.toLowerCase())) {
            this.keywordOk = true;
            this.starttime = System.currentTimeMillis();
            return true;
        }
        if (!this.keywordOk) {
            return false;
        }
        long millis = System.currentTimeMillis();
        if (millis - this.starttime > this.keywordTimeSeg * 1000) {
            this.keywordOk = false;
            return false;
        }
        this.starttime = millis;
        return true;
    }

    @SimpleProperty(description = "The keyword that must contain the recognition result in order to unlock \nthe occurrence of an AfterGettingText event for a certain time.\nOnly works if Continuosly Recognition is Enabled. The default is Empty.")
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Keyword(String keyw) {
        this.keyword = keyw;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public String Keyword() {
        return this.keyword;
    }

    @SimpleProperty(description = "Allows or disables keyword pending.\nOnly works if Continuosly Recognition is Enabled. The default is FALSE")
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void KeywordEnable(boolean enable) {
        this.keywordEnable = enable;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public boolean KeywordEnable() {
        return this.keywordEnable;
    }

    @SimpleProperty(description = "Time in seconds during which the AfterGettingText event will be unlocked,\nafter the last recognized phrase. The default is 30S")
    @DesignerProperty(defaultValue = "30", editorType = PropertyTypeConstants.PROPERTY_TYPE_INTEGER)
    public void KeywordTimeSeg(int seg) {
        this.keywordTimeSeg = seg;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    public int KeywordTimeSeg() {
        return this.keywordTimeSeg;
    }
}
