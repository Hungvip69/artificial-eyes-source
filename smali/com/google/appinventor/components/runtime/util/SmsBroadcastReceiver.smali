.class public Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsBroadcastReceiver.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "sms_notifications"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "SMS Notifications"

.field public static final NOTIFICATION_ID:I = 0x21c7

.field public static final TAG:Ljava/lang/String; = "SmsBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 166
    const-string v0, ""

    .line 169
    .local v0, "msg":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.googlevoice.SMS_RECEIVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.apps.googlevoice.TEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 174
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 178
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SmsMessage;

    .line 179
    .local v4, "smsMsg":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_1

    .line 180
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .end local v4    # "smsMsg":Landroid/telephony/SmsMessage;
    :cond_1
    goto :goto_0

    .line 183
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 184
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    goto :goto_2

    .line 186
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pdus"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 188
    .local v2, "pdus":[Ljava/lang/Object;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 189
    .local v5, "pdu":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, [B

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    .line 190
    .local v6, "smsMsg":Landroid/telephony/SmsMessage;
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    nop

    .end local v5    # "pdu":Ljava/lang/Object;
    .end local v6    # "smsMsg":Landroid/telephony/SmsMessage;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 192
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 198
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "pdus":[Ljava/lang/Object;
    :goto_2
    goto :goto_3

    .line 194
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "SmsBroadcastReceiver"

    const-string v3, "Unable to retrieve message body from SmsMessage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_3
    return-object v0
.end method

.method private getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 121
    const-string v0, ""

    .line 124
    .local v0, "phone":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.apps.googlevoice.SMS_RECEIVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.google.android.apps.googlevoice.PHONE_NUMBER"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 128
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_3

    .line 130
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v1

    const/16 v2, 0x13

    if-lt v1, v2, :cond_4

    .line 132
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KitkatUtil;->getMessagesFromIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SmsMessage;

    .line 134
    .local v3, "smsMsg":Landroid/telephony/SmsMessage;
    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 138
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v4

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 139
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/LollipopUtil;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 141
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 144
    .end local v3    # "smsMsg":Landroid/telephony/SmsMessage;
    :cond_2
    :goto_1
    goto :goto_0

    .line 145
    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SmsMessage;>;"
    :cond_3
    goto :goto_3

    .line 147
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pdus"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 148
    .local v1, "pdus":[Ljava/lang/Object;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 149
    .local v4, "pdu":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, [B

    invoke-static {v5}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 150
    .local v5, "smsMsg":Landroid/telephony/SmsMessage;
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 151
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 148
    .end local v4    # "pdu":Ljava/lang/Object;
    .end local v5    # "smsMsg":Landroid/telephony/SmsMessage;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 156
    .end local v1    # "pdus":[Ljava/lang/Object;
    :cond_5
    :goto_3
    goto :goto_4

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "SmsBroadcastReceiver"

    const-string v3, "Unable to retrieve originating address from SmsMessage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_4
    return-object v0
.end method

.method private isRepl(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 261
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".Screen1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "classname":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 264
    .local v3, "appClass":Ljava/lang/Class;
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    .line 265
    .local v4, "superClass":Ljava/lang/Class;
    const-class v5, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    .line 266
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_0
    return v0

    .line 269
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "classname":Ljava/lang/String;
    .end local v3    # "appClass":Ljava/lang/Class;
    .end local v4    # "superClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 271
    return v0
.end method

.method private sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 209
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 210
    .local v0, "nm":Landroid/app/NotificationManager;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const-string v3, "sms_notifications"

    if-lt v1, v2, :cond_0

    .line 211
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "SMS Notifications"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendingNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsBroadcastReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v4, 0x0

    .line 226
    .local v4, "newIntent":Landroid/content/Intent;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".Screen1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "classname":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v4, v6

    .line 228
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/high16 v6, 0x30000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    const/4 v6, 0x0

    const/high16 v7, 0xc000000

    invoke-static {p1, v6, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 239
    .local v6, "activity":Landroid/app/PendingIntent;
    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v7, p1, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 240
    const v3, 0x1080090

    invoke-virtual {v7, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 241
    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 243
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sms from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 246
    invoke-virtual {v3, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 247
    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 248
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->getCachedMsgCount()I

    move-result v7

    invoke-virtual {v3, v7}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 249
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 251
    .local v3, "note":Landroid/app/Notification;
    const/4 v7, 0x0

    const/16 v8, 0x21c7

    invoke-virtual {v0, v7, v8, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notification sent, classname: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    nop

    .end local v3    # "note":Landroid/app/Notification;
    .end local v5    # "classname":Ljava/lang/String;
    .end local v6    # "activity":Landroid/app/PendingIntent;
    goto :goto_0

    .line 254
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 257
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 72
    const-string v0, "onReceive"

    const-string v1, "SmsBroadcastReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->getPhoneNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "phone":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->getMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Texting;->isReceivingEnabled(Landroid/content/Context;)I

    move-result v3

    .line 86
    .local v3, "receivingEnabled":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Receiving is not enabled, ignoring message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 94
    :cond_0
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 95
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->isRepl(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->isRunning()Z

    move-result v4

    if-nez v4, :cond_2

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Texting isn\'t running, and either receivingEnabled is FOREGROUND or we are the repl."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 103
    :cond_2
    invoke-static {p1, v0, v2}, Lcom/google/appinventor/components/runtime/Texting;->handledReceivedMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " App in Foreground, delivering message."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Texting isn\'t running, but receivingEnabled == 2, sending notification."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0, p1, v0, v2}, Lcom/google/appinventor/components/runtime/util/SmsBroadcastReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void
.end method
