package com.google.appinventor.components.runtime.util;

import android.app.Activity;
import android.media.AudioManager;
import android.view.Display;
import android.webkit.WebViewClient;
import com.google.appinventor.components.runtime.Component;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.Player;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class FroyoUtil {
    private FroyoUtil() {
    }

    public static int getRotation(Display display) {
        return display.getRotation();
    }

    public static AudioManager setAudioManager(Activity activity) {
        return (AudioManager) activity.getSystemService("audio");
    }

    public static Object setAudioFocusChangeListener(final Player player) {
        Object afChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.google.appinventor.components.runtime.util.FroyoUtil.1
            private boolean playbackFlag = false;

            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int focusChange) {
                switch (focusChange) {
                    case -3:
                    case -2:
                        if (player != null && player.playerState == Player.State.PLAYING) {
                            player.pause();
                            this.playbackFlag = true;
                            break;
                        }
                        break;
                    case -1:
                        this.playbackFlag = false;
                        player.OtherPlayerStarted();
                        break;
                    case 1:
                        if (player != null && this.playbackFlag && player.playerState == Player.State.PAUSED_BY_EVENT) {
                            player.Start();
                            this.playbackFlag = false;
                            break;
                        }
                        break;
                }
            }
        };
        return afChangeListener;
    }

    public static boolean focusRequestGranted(AudioManager am, Object afChangeListener) {
        int result = am.requestAudioFocus((AudioManager.OnAudioFocusChangeListener) afChangeListener, 3, 1);
        return result == 1;
    }

    public static void abandonFocus(AudioManager am, Object afChangeListener) {
        am.abandonAudioFocus((AudioManager.OnAudioFocusChangeListener) afChangeListener);
    }

    public static WebViewClient getWebViewClient(boolean ignoreErrors, boolean followLinks, Form form, Component component) {
        return new FroyoWebViewClient(followLinks, ignoreErrors, form, component);
    }

    public static void throwIOException(Throwable e) throws IOException {
        throw new IOException(e.toString());
    }
}
