.class public Lcom/google/appinventor/components/runtime/Texting;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Texting.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A component that will, when the <code>SendMessage</code> method is called, send the text message specified in the <code>Message</code> property to the phone number specified in the <code>PhoneNumber</code> property.</p> <p>If the <code>ReceivingEnabled</code> property is set to 1 messages will <b>not</b> be received. If <code>ReceivingEnabled</code> is set to 2 messages will be received only when the application is running. Finally if <code>ReceivingEnabled</code> is set to 3, messages will be received when the application is running <b>and</b> when the application is not running they will be queued and a notification displayed to the user.</p> <p>When a message arrives, the <code>MessageReceived</code> event is raised and provides the sending number and message.</p> <p> An app that includes this component will receive messages even when it is in the background (i.e. when it\'s not visible on the screen) and, moreso, even if the app is not running, so long as it\'s installed on the phone. If the phone receives a text message when the app is not in the foreground, the phone will show a notification in the notification bar. (User should have granted the POST_NOTIFICATIONS permission). Selecting the notification will bring up the app.  As an app developer, you\'ll probably want to give your users the ability to control ReceivingEnabled so that they can make the phone ignore text messages.</p> <p>If the GoogleVoiceEnabled property is true, messages can be sent over Wifi using Google Voice. This option requires that the user have a Google Voice account and that the mobile Voice app is installed on the phone. The Google Voice option works only on phones that support Android 2.0 (Eclair) or higher.</p> <p>To specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces may not be included.</p> <p>Another way for an app to specify a phone number would be to include a <code>PhoneNumberPicker</code> component, which lets the users select a phone numbers from the ones stored in the the phone\'s contacts.</p>"
    iconName = "images/texting.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "google-api-client.jar,google-api-client-android2-beta.jar,google-http-client.jar,google-http-client-android2-beta.jar,google-http-client-android3-beta.jar,google-oauth-client.jar,guava.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.ACCOUNT_MANAGER, android.permission.MANAGE_ACCOUNTS, android.permission.GET_ACCOUNTS, android.permission.USE_CREDENTIALS, android.permission.POST_NOTIFICATIONS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;,
        Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;,
        Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    }
.end annotation


# static fields
.field private static final CACHE_FILE:Ljava/lang/String; = "textingmsgcache"

.field public static final GV_INTENT_FILTER:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.googlevoice"

.field private static final GV_SERVICE:Ljava/lang/String; = "grandcentral"

.field public static final GV_SMS_RECEIVED:Ljava/lang/String; = "com.google.android.apps.googlevoice.SMS_RECEIVED"

.field public static final GV_SMS_SEND_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/sms/send/"

.field public static final GV_URL:Ljava/lang/String; = "https://www.google.com/voice/b/0/redirection/voice"

.field private static final MESSAGE_DELIMITER:Ljava/lang/String; = "\u0001"

.field public static final MESSAGE_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.TEXT"

.field public static final META_DATA_SMS_KEY:Ljava/lang/String; = "sms_handler_component"

.field public static final META_DATA_SMS_VALUE:Ljava/lang/String; = "Texting"

.field public static final PHONE_NUMBER_TAG:Ljava/lang/String; = "com.google.android.apps.googlevoice.PHONE_NUMBER"

.field private static final PREF_FILE:Ljava/lang/String; = "TextingState"

.field private static final PREF_GVENABLED:Ljava/lang/String; = "gvenabled"

.field private static final PREF_RCVENABLED:Ljava/lang/String; = "receiving2"

.field private static final PREF_RCVENABLED_LEGACY:Ljava/lang/String; = "receiving"

.field private static final SENT:Ljava/lang/String; = "SMS_SENT"

.field private static final SERVER_TIMEOUT_MS:I = 0x7530

.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TAG:Ljava/lang/String; = "Texting Component"

.field public static final TELEPHONY_INTENT_FILTER:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final TEXTING_REQUEST_CODE:I = 0x54455854

.field private static final USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static activity:Landroid/app/Activity;

.field private static cacheLock:Ljava/lang/Object;

.field private static component:Lcom/google/appinventor/components/runtime/Component;

.field private static isRunning:Z

.field private static messagesCached:I

.field private static receivingState:Lcom/google/appinventor/components/common/ReceivingState;


# instance fields
.field private authToken:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private googleVoiceEnabled:Z

.field private gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

.field private havePermission:Z

.field private haveReceivePermission:Z

.field private isInitialized:Z

.field private message:Ljava/lang/String;

.field private pendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;

.field private smsManager:Landroid/telephony/SmsManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetauthToken(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgvHelper(Lcom/google/appinventor/components/runtime/Texting;)Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmessage(Lcom/google/appinventor/components/runtime/Texting;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputauthToken(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgvHelper(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->gvHelper:Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/Texting;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhaveReceivePermission(Lcom/google/appinventor/components/runtime/Texting;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSentMessage(Lcom/google/appinventor/components/runtime/Texting;Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessPendingQueue(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processPendingQueue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendViaSms(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtransmitMessage(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->transmitMessage(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetactivity()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 222
    sget-object v0, Lcom/google/appinventor/components/common/ReceivingState;->Foreground:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 242
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 261
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 245
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    .line 253
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    .line 262
    const-string v1, "Texting constructor"

    const-string v2, "Texting Component"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 264
    sput-object p0, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 265
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    .line 267
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v3, "TextingState"

    invoke-virtual {v1, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 268
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 269
    const-string v3, "receiving2"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 270
    .local v3, "pref":I
    if-ne v3, v4, :cond_1

    .line 271
    const-string v4, "receiving"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    sget-object v4, Lcom/google/appinventor/components/common/ReceivingState;->Foreground:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v4, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    goto :goto_0

    .line 274
    :cond_0
    sget-object v4, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v4, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    goto :goto_0

    .line 277
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/google/appinventor/components/common/ReceivingState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v4

    sput-object v4, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 280
    :goto_0
    const-string v4, "gvenabled"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 281
    sget-object v4, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    invoke-virtual {v4}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting with receiving Enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " GV enabled="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v3    # "pref":I
    goto :goto_1

    .line 284
    :cond_2
    sget-object v2, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    sput-object v2, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 285
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 289
    :goto_1
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    if-eqz v2, :cond_3

    .line 290
    new-instance v2, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    new-array v3, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    :cond_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    .line 293
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Texting;->PhoneNumber(Ljava/lang/String;)V

    .line 295
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 296
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 299
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 300
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 301
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 302
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 303
    return-void
.end method

.method public static MessageReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "messageText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 478
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-ne v0, v1, :cond_0

    .line 479
    return-void

    .line 481
    :cond_0
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageReceived from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->component:Lcom/google/appinventor/components/runtime/Component;

    const-string v1, "MessageReceived"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    const-string v0, "Texting Component"

    const-string v1, "Dispatch successful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    :cond_1
    const-string v0, "Texting Component"

    const-string v1, "Dispatch failed, caching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 487
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    invoke-static {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    monitor-exit v0

    .line 490
    :goto_0
    return-void

    .line 488
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 811
    const-string v0, "Texting Component"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0001"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, "cachedMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v2, "textingmsgcache"

    const v3, 0x8000

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 814
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 815
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 816
    sget v3, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    .line 817
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    nop

    .end local v1    # "cachedMsg":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "I/O Error writing to cache file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 818
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 819
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "File not found error writing to cache file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 824
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 825
    :goto_0
    return-void
.end method

.method public static getCachedMsgCount()I
    .locals 1

    .line 762
    sget v0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    return v0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .line 680
    const-string v0, "pdus"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 681
    .local v0, "messages":[Ljava/lang/Object;
    array-length v1, v0

    new-array v1, v1, [[B

    .line 683
    .local v1, "pduObjs":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 684
    aget-object v3, v0, v2

    check-cast v3, [B

    aput-object v3, v1, v2

    .line 683
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    .end local v2    # "i":I
    :cond_0
    array-length v2, v1

    new-array v2, v2, [[B

    .line 687
    .local v2, "pdus":[[B
    array-length v3, v2

    .line 688
    .local v3, "pduCount":I
    new-array v4, v3, [Landroid/telephony/SmsMessage;

    .line 689
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_1

    .line 690
    aget-object v6, v1, v5

    aput-object v6, v2, v5

    .line 691
    aget-object v6, v2, v5

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v4, v5

    .line 689
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 693
    .end local v5    # "i":I
    :cond_1
    return-object v4
.end method

.method private declared-synchronized handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p3, "resultCode"    # I
    .param p4, "smsMsg"    # Ljava/lang/String;

    monitor-enter p0

    .line 1085
    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Texting;
    :pswitch_0
    goto/16 :goto_0

    .line 1095
    .restart local p0    # "this":Lcom/google/appinventor/components/runtime/Texting;
    :pswitch_1
    :try_start_0
    const-string v1, "Texting Component"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received no service error, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "No Sms service available. Message not sent."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1097
    goto/16 :goto_0

    .line 1099
    .end local p0    # "this":Lcom/google/appinventor/components/runtime/Texting;
    :pswitch_2
    const-string v1, "Texting Component"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received null PDU error, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "Received null PDU error. Message not sent."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1101
    goto :goto_0

    .line 1103
    :pswitch_3
    const-string v0, "Texting Component"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received radio off error, msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Could not send SMS message: radio off."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1091
    :pswitch_4
    const-string v1, "Texting Component"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received generic failure, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "Generic failure: message not sent"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1093
    goto :goto_0

    .line 1087
    :pswitch_5
    const-string v1, "Texting Component"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received OK, msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v2, "Message sent"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    goto :goto_0

    .line 1084
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "receiver":Landroid/content/BroadcastReceiver;
    .end local p3    # "resultCode":I
    .end local p4    # "smsMsg":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1107
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "receiver":Landroid/content/BroadcastReceiver;
    .restart local p3    # "resultCode":I
    .restart local p4    # "smsMsg":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 794
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    if-eqz v0, :cond_0

    .line 795
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Texting;->addMessageToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    monitor-exit v0

    .line 801
    :goto_0
    return-void

    .line 799
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isReceivingEnabled(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 658
    const-string v0, "TextingState"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 659
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "receiving2"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 660
    .local v1, "retval":I
    if-ne v1, v2, :cond_1

    .line 661
    const-string v2, "receiving"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    const/4 v2, 0x2

    return v2

    .line 664
    :cond_0
    return v3

    .line 666
    :cond_1
    return v1
.end method

.method public static isRunning()Z
    .locals 1

    .line 754
    sget-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    return v0
.end method

.method private processCachedMessages()V
    .locals 6

    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "messagelist":[Ljava/lang/String;
    sget-object v1, Lcom/google/appinventor/components/runtime/Texting;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->retrieveCachedMessages()[Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 704
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    if-nez v0, :cond_0

    .line 706
    return-void

    .line 707
    :cond_0
    const-string v1, "Texting Component"

    array-length v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cached messages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 710
    aget-object v2, v0, v1

    .line 711
    .local v2, "phoneAndMessage":Ljava/lang/String;
    const-string v3, "Texting Component"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 716
    .local v3, "delim":I
    sget-object v4, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v5, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq v4, v5, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 717
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    .line 718
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 717
    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/Texting;->MessageReceived(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    .end local v2    # "phoneAndMessage":Ljava/lang/String;
    .end local v3    # "delim":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    .end local v1    # "k":I
    :cond_2
    return-void

    .line 704
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method private processPendingQueue()V
    .locals 6

    .line 459
    nop

    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    .local v0, "entry":Ljava/lang/String;
    const-string v1, ":::"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending queued message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Texting Component"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v4, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v3

    const/4 v3, 0x1

    aput-object v1, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 465
    .end local v0    # "entry":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "phoneNumber":Ljava/lang/String;
    goto :goto_0

    .line 466
    :cond_0
    return-void
.end method

.method private requestReceiveSmsPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "caller"    # Ljava/lang/String;

    .line 1188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Texting$5;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1205
    return-void
.end method

.method private requiresPostNotificationPermission()Z
    .locals 3

    .line 652
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 653
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private retrieveCachedMessages()[Ljava/lang/String;
    .locals 6

    .line 729
    const-string v0, "textingmsgcache"

    const-string v1, "Retrieving cached messages"

    const-string v2, "Texting Component"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v1, ""

    .line 732
    .local v1, "cache":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v4, v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->readFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)[B

    move-result-object v4

    .line 733
    .local v4, "bytes":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    move-object v1, v5

    .line 734
    sget-object v5, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v0}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 735
    const/4 v0, 0x0

    sput v0, Lcom/google/appinventor/components/runtime/Texting;->messagesCached:I

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrieved cache "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    nop

    .line 745
    .end local v4    # "bytes":[B
    const-string v0, "\u0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "messagelist":[Ljava/lang/String;
    return-object v0

    .line 740
    .end local v0    # "messagelist":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "I/O Error reading from cache file"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 743
    return-object v3

    .line 737
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 738
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v4, "No Cache file found -- this is not (usually) an error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-object v3
.end method

.method private sendViaSms(Ljava/lang/String;)V
    .locals 6
    .param p1, "caller"    # Ljava/lang/String;

    .line 1114
    const-string v0, "Texting Component"

    const-string v1, "Sending via built-in Sms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->havePermission:Z

    if-nez v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    .line 1119
    .local v0, "form":Lcom/google/appinventor/components/runtime/Form;
    move-object v1, p0

    .line 1120
    .local v1, "me":Lcom/google/appinventor/components/runtime/Texting;
    new-instance v2, Lcom/google/appinventor/components/runtime/Texting$2;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Texting$2;-><init>(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1137
    return-void

    .line 1140
    .end local v0    # "form":Lcom/google/appinventor/components/runtime/Form;
    .end local v1    # "me":Lcom/google/appinventor/components/runtime/Texting;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v0, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1142
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1143
    .local v1, "numbers":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1144
    .local v4, "number":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    .end local v4    # "number":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1146
    .end local v1    # "numbers":[Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 1147
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1149
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1150
    .local v1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1151
    .local v3, "phoneNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/Texting$3;

    invoke-direct {v5, p0, v3, v1}, Lcom/google/appinventor/components/runtime/Texting$3;-><init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1157
    .end local v3    # "phoneNumber":Ljava/lang/String;
    goto :goto_2

    .line 1158
    :cond_3
    return-void
.end method

.method private transmitMessage(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1162
    .local p2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1163
    .local v0, "numParts":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v1, "pendingIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40dfffc000000000L    # 32767.0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    const v3, 0x8000

    add-int v8, v2, v3

    .line 1165
    .local v8, "requestCode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const-string v3, "SMS_SENT"

    if-ge v2, v0, :cond_0

    .line 1166
    sget-object v4, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x4000000

    invoke-static {v4, v8, v5, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1169
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lcom/google/appinventor/components/runtime/Texting$4;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Texting$4;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    move-object v9, v2

    .line 1182
    .local v9, "sendReceiver":Landroid/content/BroadcastReceiver;
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v2, v9, v4, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 1184
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->smsManager:Landroid/telephony/SmsManager;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1185
    return-void
.end method


# virtual methods
.method public GoogleVoiceEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "com.google.android.apps.googlevoice.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "com.google.android.apps.googlevoice.permission.RECEIVE_SMS",
            "com.google.android.apps.googlevoice.permission.SEND_SMS"
        }
    .end annotation

    .line 534
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 535
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    .line 536
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "TextingState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 537
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 538
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "gvenabled"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 539
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 540
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    goto :goto_0

    .line 541
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "Sorry, your phone\'s system does not support this option."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 543
    :goto_0
    return-void
.end method

.method public GoogleVoiceEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then SendMessage will attempt to send messages over Wifi using Google Voice.  This requires that the Google Voice app must be installed and set up on the phone or tablet, with a Google Voice account.  If GoogleVoiceEnabled is false, the device must have phone and texting service in order to send or receive messages with this component."
    .end annotation

    .line 509
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    return v0
.end method

.method public Initialize()V
    .locals 2

    .line 322
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    if-nez v0, :cond_0

    .line 324
    const-string v0, "Initialize"

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method

.method public Message()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    return-object v0
.end method

.method public Message(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The message that will be sent when the SendMessage method is called."
    .end annotation

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number that the message will be sent to when the SendMessage method is called. The number is a text string with the specified digits (e.g., 6505551212).  Dashes, dots, and parentheses may be included (e.g., (650)-555-1212) but will be ignored; spaces should not be included. Multiple numbers can be included if separated by commas."
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumber set: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public ReceivingEnabled()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If set to 1 (OFF) no messages will be received.  If set to 2 (FOREGROUND) or3 (ALWAYS) the component will respond to messages if it is running. If the app is not running then the message will be discarded if set to 2 (FOREGROUND). If set to 3 (ALWAYS) and the app is not running the phone will show a notification.  Selecting the notification will bring up the app and signal the MessageReceived event.  Messages received when the app is dormant will be queued, and so several MessageReceived events might appear when the app awakens.  As an app developer, it would be a good idea to give your users control over this property, so they can make their phones ignore text messages when your app is installed."
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Texting;->ReceivingEnabledAbstract()Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ReceivingEnabled(I)V
    .locals 5
    .param p1, "enabled"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/ReceivingState;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        alwaysSend = true
        defaultValue = "1"
        editorType = "text_receiving"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
        receivers = {
            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
                intentFilters = {
                    .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                        actionElements = {
                            .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                                name = "android.provider.Telephony.SMS_RECEIVED"
                            .end subannotation
                        }
                    .end subannotation
                }
                name = "com.google.appinventor.components.runtime.util.SmsBroadcastReceiver"
            .end subannotation
        }
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.RECEIVE_SMS"
        }
    .end annotation

    .line 623
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/ReceivingState;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/ReceivingState;

    move-result-object v0

    .line 624
    .local v0, "state":Lcom/google/appinventor/components/common/ReceivingState;
    if-nez v0, :cond_0

    .line 625
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 626
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 625
    const-string v2, "Texting"

    const/16 v4, 0x6a5

    invoke-virtual {v1, p0, v2, v4, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 627
    return-void

    .line 629
    :cond_0
    sget-object v1, Lcom/google/appinventor/components/common/ReceivingState;->Always:Lcom/google/appinventor/components/common/ReceivingState;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->requiresPostNotificationPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/Texting$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Texting$1;-><init>(Lcom/google/appinventor/components/runtime/Texting;Lcom/google/appinventor/components/common/ReceivingState;)V

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 645
    return-void

    .line 647
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Texting;->ReceivingEnabledAbstract(Lcom/google/appinventor/components/common/ReceivingState;)V

    .line 648
    return-void
.end method

.method public ReceivingEnabledAbstract()Lcom/google/appinventor/components/common/ReceivingState;
    .locals 1

    .line 575
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    return-object v0
.end method

.method public ReceivingEnabledAbstract(Lcom/google/appinventor/components/common/ReceivingState;)V
    .locals 4
    .param p1, "state"    # Lcom/google/appinventor/components/common/ReceivingState;

    .line 583
    sput-object p1, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    .line 584
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "TextingState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 585
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 586
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "receiving2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 587
    const-string v2, "receiving"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 589
    sget-object v2, Lcom/google/appinventor/components/common/ReceivingState;->Off:Lcom/google/appinventor/components/common/ReceivingState;

    if-eq p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Texting;->haveReceivePermission:Z

    if-nez v2, :cond_0

    .line 590
    const-string v2, "ReceivingEnabled"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Texting;->requestReceiveSmsPermission(Ljava/lang/String;)V

    .line 592
    :cond_0
    return-void
.end method

.method public SendMessage()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 393
    .local v0, "phoneNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 395
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 400
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    .local v3, "i":Landroid/content/Intent;
    const-string v4, "sms_body"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 403
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    const v5, 0x54455854

    invoke-virtual {v4, p0, v5}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V

    .line 404
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v4, v3, v5}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 406
    :cond_1
    return-void
.end method

.method public SendMessageDirect()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.SEND_SMS",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->phoneNumber:Ljava/lang/String;

    .line 420
    .local v0, "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Texting;->message:Ljava/lang/String;

    .line 423
    .local v2, "message":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    if-eqz v3, :cond_3

    .line 426
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->authToken:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to get an authToken -- enqueing "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":::"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 431
    .local v1, "ok":Z
    if-nez v1, :cond_0

    .line 432
    sget-object v3, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v4, "Pending message queue full. Can\'t send message"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 433
    return-void

    .line 439
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting;->pendingQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 440
    new-instance v3, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Texting$AsyncAuthenticate;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 443
    .end local v1    # "ok":Z
    :cond_1
    goto :goto_0

    .line 444
    :cond_2
    const-string v3, "Creating AsyncSendMessage"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v1, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;-><init>(Lcom/google/appinventor/components/runtime/Texting;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/Texting$AsyncSendMessage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 450
    :cond_3
    const-string v3, "Sending via SMS"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v1, "SendMessage"

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Texting;->sendViaSms(Ljava/lang/String;)V

    .line 453
    :goto_0
    return-void
.end method

.method public onDelete()V
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 1321
    return-void
.end method

.method public onInitialize()V
    .locals 2

    .line 312
    const-string v0, "Texting Component"

    const-string v1, "onInitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    .line 314
    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 315
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 316
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 317
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x21c7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 318
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 784
    const-string v0, "Texting Component"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 786
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 770
    const-string v0, "Texting Component"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/runtime/Texting;->isRunning:Z

    .line 772
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 773
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting;->processCachedMessages()V

    .line 774
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 775
    .local v0, "nm":Landroid/app/NotificationManager;
    const/16 v1, 0x21c7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 777
    .end local v0    # "nm":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 1311
    sget-object v0, Lcom/google/appinventor/components/runtime/Texting;->activity:Landroid/app/Activity;

    const-string v1, "TextingState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1312
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1313
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/google/appinventor/components/runtime/Texting;->receivingState:Lcom/google/appinventor/components/common/ReceivingState;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/ReceivingState;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "receiving2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1314
    const-string v2, "gvenabled"

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Texting;->googleVoiceEnabled:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1315
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1316
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 829
    const v0, 0x54455854

    if-ne p1, v0, :cond_1

    .line 830
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    if-nez p3, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 831
    :cond_0
    const-string v1, "sms_body"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 830
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p2, v1}, Lcom/google/appinventor/components/runtime/Texting;->handleSentMessage(Landroid/content/Context;Landroid/content/BroadcastReceiver;ILjava/lang/String;)V

    .line 832
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->unregisterForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)V

    .line 834
    :cond_1
    return-void
.end method
