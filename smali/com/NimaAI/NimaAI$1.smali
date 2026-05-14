.class Lcom/NimaAI/NimaAI$1;
.super Ljava/lang/Object;
.source "NimaAI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/NimaAI/NimaAI;->SendToAI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/NimaAI/NimaAI;

.field private final synthetic val$question:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/NimaAI/NimaAI;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$question"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/NimaAI/NimaAI$1;->this$0:Lcom/NimaAI/NimaAI;

    iput-object p2, p0, Lcom/NimaAI/NimaAI$1;->val$question:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/NimaAI/NimaAI$1;)Lcom/NimaAI/NimaAI;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/NimaAI/NimaAI$1;->this$0:Lcom/NimaAI/NimaAI;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 41
    const-string v0, "data"

    :try_start_0
    iget-object v1, p0, Lcom/NimaAI/NimaAI$1;->val$question:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "encodedQuestion":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://nimaartman.ir/science/L1.php?text="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "urlString":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 46
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 47
    const/16 v5, 0x3a98

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 48
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 50
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v6, "sb":Ljava/lang/StringBuilder;
    nop

    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 56
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 58
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v7, "json":Lorg/json/JSONObject;
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 60
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "result":Ljava/lang/String;
    goto :goto_1

    .line 62
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string v0, "No \'data\' in response."

    .line 65
    .end local v1    # "encodedQuestion":Ljava/lang/String;
    .end local v2    # "urlString":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_1

    .line 54
    .end local v0    # "result":Ljava/lang/String;
    .restart local v1    # "encodedQuestion":Ljava/lang/String;
    .restart local v2    # "urlString":Ljava/lang/String;
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    .restart local v8    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v1    # "encodedQuestion":Ljava/lang/String;
    .end local v2    # "urlString":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 69
    .local v0, "result":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 71
    .local v1, "finalResult":Ljava/lang/String;
    iget-object v2, p0, Lcom/NimaAI/NimaAI$1;->this$0:Lcom/NimaAI/NimaAI;

    invoke-static {v2}, Lcom/NimaAI/NimaAI;->access$0(Lcom/NimaAI/NimaAI;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/NimaAI/NimaAI$1$1;

    invoke-direct {v3, p0, v1}, Lcom/NimaAI/NimaAI$1$1;-><init>(Lcom/NimaAI/NimaAI$1;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method
