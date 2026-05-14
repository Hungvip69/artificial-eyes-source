.class Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;
.super Ljava/lang/Object;
.source "Texting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Texting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoogleVoiceUtil"
.end annotation


# static fields
.field private static final COOKIES_HEADER:Ljava/lang/String; = "Set-Cookie"


# instance fields
.field private final MAX_REDIRECTS:I

.field authToken:Ljava/lang/String;

.field cookies:Ljava/net/CookieManager;

.field general:Ljava/lang/String;

.field private isInitialized:Z

.field redirectCounter:I

.field rnrSEE:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method static bridge synthetic -$$Nest$msendGvSms(Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->sendGvSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)V
    .locals 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Texting;
    .param p2, "authToken"    # Ljava/lang/String;

    .line 859
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->this$0:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->MAX_REDIRECTS:I

    .line 853
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->cookies:Ljava/net/CookieManager;

    .line 860
    const-string v0, "Creating GV Util"

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->authToken:Ljava/lang/String;

    .line 863
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->getGeneral()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->general:Ljava/lang/String;

    .line 864
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->general:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "general = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->setRNRSEE()V

    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->isInitialized:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    goto :goto_0

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 870
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private sendGvSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "smsData"    # Ljava/lang/String;

    .line 882
    const-string v0, "UTF-8"

    const-string v1, "sendGvSms()"

    const-string v2, "Texting Component"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 886
    .local v1, "response":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v3, "_rnr_se"

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->rnrSEE:Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsData = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v0, Ljava/net/URL;

    const-string v3, "https://www.google.com/voice/b/0/sms/send/"

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 890
    .local v0, "smsUrl":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 891
    .local v3, "smsConn":Ljava/net/HttpURLConnection;
    const-string v4, "Authorization"

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->authToken:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GoogleLogin auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v4, "User-agent"

    const-string v5, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->setCookies(Ljava/net/HttpURLConnection;)V

    .line 894
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 895
    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 897
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms request = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 899
    .local v4, "callwr":Ljava/io/OutputStreamWriter;
    invoke-virtual {v4, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 900
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    .line 902
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->processCookies(Ljava/net/HttpURLConnection;)V

    .line 903
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 906
    .local v5, "callrd":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 907
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 910
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendGvSms:  Sent SMS, response = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 913
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 915
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 918
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 916
    :cond_1
    new-instance v6, Ljava/io/IOException;

    const-string v8, "No Response Data Received."

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "response":Ljava/lang/StringBuilder;
    .end local p1    # "smsData":Ljava/lang/String;
    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .end local v0    # "smsUrl":Ljava/net/URL;
    .end local v3    # "smsConn":Ljava/net/HttpURLConnection;
    .end local v4    # "callwr":Ljava/io/OutputStreamWriter;
    .end local v5    # "callrd":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    .restart local v1    # "response":Ljava/lang/StringBuilder;
    .restart local p1    # "smsData":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Error on Send "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 922
    const-string v2, "IO Error Message not sent"

    return-object v2
.end method

.method private setRNRSEE()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    const-string v0, "setRNRSEE()"

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->general:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->general:Ljava/lang/String;

    const-string v2, "\'_rnr_se\': \'"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->general:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 953
    .local v0, "p1":Ljava/lang/String;
    const-string v2, "\',"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->rnrSEE:Ljava/lang/String;

    .line 954
    const-string v2, "Successfully Received rnr_se."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    nop

    .line 956
    .end local v0    # "p1":Ljava/lang/String;
    nop

    .line 964
    return-void

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->general:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Answer did not contain rnr_se! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->general:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_1
    const-string v0, "setRNRSEE(): Answer was null!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method get(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1003
    const-string v0, " - "

    const-string v1, " : "

    const-string v2, "("

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 1005
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 1007
    .local v5, "responseCode":I
    :try_start_0
    const-string v6, "Authorization"

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->authToken:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GoogleLogin auth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v6, "User-agent"

    const-string v7, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.A.B.C Safari/525.13"

    invoke-virtual {v4, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1010
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->setCookies(Ljava/net/HttpURLConnection;)V

    .line 1013
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 1014
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    move v5, v7

    .line 1015
    const-string v7, "Texting Component"

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1018
    nop

    .line 1020
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->processCookies(Ljava/net/HttpURLConnection;)V

    .line 1023
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_0

    .line 1024
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .local v7, "is":Ljava/io/InputStream;
    goto :goto_0

    .line 1025
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_0
    const/16 v7, 0x12d

    if-eq v5, v7, :cond_4

    const/16 v7, 0x12e

    if-eq v5, v7, :cond_4

    const/16 v7, 0x12f

    if-eq v5, v7, :cond_4

    const/16 v7, 0x133

    if-ne v5, v7, :cond_1

    goto/16 :goto_2

    .line 1039
    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    .line 1041
    .restart local v7    # "is":Ljava/io/InputStream;
    :goto_0
    iput v6, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->redirectCounter:I

    .line 1043
    if-eqz v7, :cond_3

    .line 1047
    const-string v1, ""

    .line 1050
    .local v1, "result":Ljava/lang/String;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1052
    .local v6, "rd":Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 1054
    .local v8, "sb":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "line":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 1055
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\n\r"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1057
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1058
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1061
    .end local v1    # "result":Ljava/lang/String;
    .end local v6    # "rd":Ljava/io/BufferedReader;
    .end local v8    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "line":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    nop

    .line 1062
    return-object v0

    .line 1059
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1060
    .local v6, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1044
    .end local v1    # "result":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : InputStream was null : exiting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1026
    .end local v7    # "is":Ljava/io/InputStream;
    :cond_4
    :goto_2
    iget v7, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->redirectCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->redirectCounter:I

    .line 1027
    iget v7, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->redirectCounter:I

    const/4 v8, 0x5

    if-gt v7, v8, :cond_6

    .line 1031
    const-string v6, "Location"

    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1032
    .local v6, "location":Ljava/lang/String;
    if-eqz v6, :cond_5

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1033
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - new URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1036
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : Received moved answer but no Location. exiting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
    .end local v6    # "location":Ljava/lang/String;
    :cond_6
    iput v6, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->redirectCounter:I

    .line 1029
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : Too many redirects. exiting."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :catch_1
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : IO Error."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v6

    :goto_4
    goto :goto_3
.end method

.method public getGeneral()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 937
    const-string v0, "Texting Component"

    const-string v1, "getGeneral()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const-string v0, "https://www.google.com/voice/b/0/redirection/voice"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 873
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->isInitialized:Z

    return v0
.end method

.method processCookies(Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 985
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 986
    .local v0, "cookiesHeader":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 987
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 988
    .local v2, "cookie":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->cookies:Ljava/net/CookieManager;

    invoke-virtual {v3}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v3

    invoke-static {v2}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/HttpCookie;

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    .line 989
    .end local v2    # "cookie":Ljava/lang/String;
    goto :goto_0

    .line 991
    :cond_0
    return-void
.end method

.method setCookies(Ljava/net/HttpURLConnection;)V
    .locals 2
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .line 973
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->cookies:Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$GoogleVoiceUtil;->cookies:Ljava/net/CookieManager;

    invoke-virtual {v0}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_0
    return-void
.end method
