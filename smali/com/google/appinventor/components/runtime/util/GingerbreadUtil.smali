.class public Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;
.super Ljava/lang/Object;
.source "GingerbreadUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static clearCookies(Ljava/net/CookieHandler;)Z
    .locals 3
    .param p0, "cookieHandler"    # Ljava/net/CookieHandler;

    .line 59
    instance-of v0, p0, Ljava/net/CookieManager;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p0

    check-cast v0, Ljava/net/CookieManager;

    .line 61
    .local v0, "cookieManager":Ljava/net/CookieManager;
    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    .line 62
    .local v1, "cookieStore":Ljava/net/CookieStore;
    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v1}, Ljava/net/CookieStore;->removeAll()Z

    .line 64
    const/4 v2, 0x1

    return v2

    .line 67
    .end local v0    # "cookieManager":Ljava/net/CookieManager;
    .end local v1    # "cookieStore":Ljava/net/CookieStore;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;
    .locals 10
    .param p0, "payload"    # Ljava/lang/String;
    .param p1, "encodeInUtf8"    # Z

    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 109
    .local v0, "langBytes":[B
    if-eqz p1, :cond_0

    const-string v1, "UTF-8"

    goto :goto_0

    :cond_0
    const-string v1, "UTF-16"

    :goto_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 110
    .local v1, "utfEncoding":Ljava/nio/charset/Charset;
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 111
    .local v2, "textBytes":[B
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x80

    .line 112
    .local v4, "utfBit":I
    :goto_1
    array-length v5, v0

    add-int/2addr v5, v4

    int-to-char v5, v5

    .line 113
    .local v5, "status":C
    array-length v6, v0

    const/4 v7, 0x1

    add-int/2addr v6, v7

    array-length v8, v2

    add-int/2addr v6, v8

    new-array v6, v6, [B

    .line 114
    .local v6, "data":[B
    int-to-byte v8, v5

    aput-byte v8, v6, v3

    .line 115
    array-length v8, v0

    invoke-static {v0, v3, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v8, v0

    add-int/2addr v8, v7

    array-length v9, v2

    invoke-static {v2, v3, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    new-instance v8, Landroid/nfc/NdefRecord;

    sget-object v9, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v3, v3, [B

    invoke-direct {v8, v7, v9, v3, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    move-object v3, v8

    .line 119
    .local v3, "record":Landroid/nfc/NdefRecord;
    return-object v3
.end method

.method public static disableNFCAdapter(Landroid/app/Activity;Landroid/nfc/NfcAdapter;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "nfcAdapter"    # Landroid/nfc/NfcAdapter;

    .line 96
    const-string v0, "Unable to write NDEF tag"

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "disableForegroundNdefPush"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 97
    .local v1, "m":Ljava/lang/reflect/Method;
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    nop

    .end local v1    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    .line 105
    :goto_0
    return-void

    .line 98
    :catch_2
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "This device does not support NFC"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static enableNFCWriteMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter;Ljava/lang/String;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "nfcAdapter"    # Landroid/nfc/NfcAdapter;
    .param p2, "textToWrite"    # Ljava/lang/String;

    .line 79
    const-string v0, "Unable to write NDEF tag"

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object v2

    .line 80
    .local v2, "textRecord":Landroid/nfc/NdefRecord;
    new-instance v3, Landroid/nfc/NdefMessage;

    new-array v4, v1, [Landroid/nfc/NdefRecord;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-direct {v3, v4}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 82
    .local v3, "msg":Landroid/nfc/NdefMessage;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "enableForegroundNdefPush"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/app/Activity;

    aput-object v9, v8, v5

    const-class v9, Landroid/nfc/NdefMessage;

    aput-object v9, v8, v1

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 84
    .local v4, "m":Ljava/lang/reflect/Method;
    new-array v6, v7, [Ljava/lang/Object;

    aput-object p0, v6, v5

    aput-object v3, v6, v1

    invoke-virtual {v4, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .end local v4    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 87
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    nop

    .line 92
    :goto_0
    return-void

    .line 85
    :catch_2
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This device does not support NFC"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newCookieManager()Ljava/net/CookieHandler;
    .locals 1

    .line 48
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    return-object v0
.end method

.method public static newNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 74
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static resolveNFCIntent(Landroid/content/Intent;Lcom/google/appinventor/components/runtime/NearField;)V
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "nfc"    # Lcom/google/appinventor/components/runtime/NearField;

    .line 123
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->ReadMode()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 135
    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 137
    .local v1, "rawMsgs":[Landroid/os/Parcelable;
    if-eqz v1, :cond_1

    .line 138
    array-length v3, v1

    new-array v3, v3, [Landroid/nfc/NdefMessage;

    .line 139
    .local v3, "msgs":[Landroid/nfc/NdefMessage;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 140
    aget-object v5, v1, v4

    check-cast v5, Landroid/nfc/NdefMessage;

    aput-object v5, v3, v4

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    .line 146
    .end local v3    # "msgs":[Landroid/nfc/NdefMessage;
    :cond_1
    new-array v4, v2, [B

    .line 147
    .local v4, "empty":[B
    new-instance v5, Landroid/nfc/NdefRecord;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v4, v4, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 148
    .local v5, "record":Landroid/nfc/NdefRecord;
    new-instance v6, Landroid/nfc/NdefMessage;

    new-array v7, v3, [Landroid/nfc/NdefRecord;

    aput-object v5, v7, v2

    invoke-direct {v6, v7}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 149
    .local v6, "msg":Landroid/nfc/NdefMessage;
    new-array v3, v3, [Landroid/nfc/NdefMessage;

    aput-object v6, v3, v2

    .line 151
    .end local v4    # "empty":[B
    .end local v5    # "record":Landroid/nfc/NdefRecord;
    .end local v6    # "msg":Landroid/nfc/NdefMessage;
    .restart local v3    # "msgs":[Landroid/nfc/NdefMessage;
    :goto_1
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    .line 153
    .local v2, "payload":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/google/appinventor/components/runtime/NearField;->TagRead(Ljava/lang/String;)V

    .line 155
    .end local v1    # "rawMsgs":[Landroid/os/Parcelable;
    .end local v2    # "payload":[B
    .end local v3    # "msgs":[Landroid/nfc/NdefMessage;
    .end local v4    # "message":Ljava/lang/String;
    goto :goto_2

    .line 156
    :cond_2
    const-string v1, "android.nfc.extra.TAG"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/Tag;

    .line 157
    .local v1, "detectedTag":Landroid/nfc/Tag;
    const/4 v4, 0x0

    .line 158
    .local v4, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->WriteType()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 159
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->TextToWrite()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->createTextRecord(Ljava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object v5

    .line 160
    .local v5, "textRecord":Landroid/nfc/NdefRecord;
    new-instance v6, Landroid/nfc/NdefMessage;

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    aput-object v5, v3, v2

    invoke-direct {v6, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    move-object v4, v6

    .line 162
    .end local v5    # "textRecord":Landroid/nfc/NdefRecord;
    :cond_3
    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/GingerbreadUtil;->writeNFCTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/NearField;->TagWritten()V

    .line 165
    .end local v1    # "detectedTag":Landroid/nfc/Tag;
    .end local v4    # "msg":Landroid/nfc/NdefMessage;
    :cond_4
    goto :goto_2

    .line 167
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nearfield"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_2
    return-void
.end method

.method public static writeNFCTag(Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .locals 5
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 175
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    .line 177
    .local v0, "size":I
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v2

    .line 178
    .local v2, "ndef":Landroid/nfc/tech/Ndef;
    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->connect()V

    .line 180
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 181
    return v1

    .line 183
    :cond_0
    invoke-virtual {v2}, Landroid/nfc/tech/Ndef;->getMaxSize()I

    move-result v4

    if-ge v4, v0, :cond_1

    .line 184
    return v1

    .line 186
    :cond_1
    invoke-virtual {v2, p0}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 187
    return v3

    .line 189
    :cond_2
    invoke-static {p1}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 190
    .local v4, "format":Landroid/nfc/tech/NdefFormatable;
    if-eqz v4, :cond_3

    .line 192
    :try_start_1
    invoke-virtual {v4}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 193
    invoke-virtual {v4, p0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    return v3

    .line 195
    :catch_0
    move-exception v3

    .line 196
    .local v3, "e":Ljava/io/IOException;
    return v1

    .line 199
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    return v1

    .line 202
    .end local v2    # "ndef":Landroid/nfc/tech/Ndef;
    .end local v4    # "format":Landroid/nfc/tech/NdefFormatable;
    :catch_1
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method
