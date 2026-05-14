.class Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;
.super Landroid/os/AsyncTask;
.source "FusiontablesControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FusiontablesControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryProcessorV2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final STAG:Ljava/lang/String; = "FUSION_SERVICE_ACCOUNT"

.field private static final TAG:Ljava/lang/String; = "QueryProcessorV2"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FusiontablesControl;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;

    .line 788
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 789
    const-string p1, "QueryProcessorV2"

    const-string v0, "Creating AsyncFusiontablesQuery"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->activity:Landroid/app/Activity;

    .line 791
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    .line 792
    return-void
.end method

.method private serviceAuthRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "query"    # Ljava/lang/String;

    .line 853
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fputqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetstandardErrorMessage(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fputerrorMessage(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 856
    invoke-static {}, Lcom/google/api/client/extensions/android2/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    .line 857
    .local v0, "TRANSPORT":Lcom/google/api/client/http/HttpTransport;
    const/4 v1, 0x0

    .line 859
    .local v1, "JSON_FACTORY":Lcom/google/api/client/json/JsonFactory;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetkeyPath(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyPath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FUSION_SERVICE_ACCOUNT"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetcachedServiceCredentials(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    .line 866
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetcontainer(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetkeyPath(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->copyMediaToTempFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fputcachedServiceCredentials(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/io/File;)V

    .line 868
    :cond_0
    new-instance v2, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    invoke-direct {v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;-><init>()V

    .line 869
    invoke-virtual {v2, v0}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setTransport(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    .line 870
    invoke-virtual {v2, v1}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setJsonFactory(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetserviceAccountEmail(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    .line 871
    invoke-virtual {v2, v4}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountId(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetscope(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    .line 872
    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountScopes(Ljava/util/Collection;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetcachedServiceCredentials(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/io/File;

    move-result-object v4

    .line 873
    invoke-virtual {v2, v4}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->setServiceAccountPrivateKeyFromP12File(Ljava/io/File;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;

    move-result-object v2

    .line 874
    invoke-virtual {v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential$Builder;->build()Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v2

    .line 876
    .local v2, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    const/4 v4, 0x0

    .line 879
    .local v4, "response":Lcom/google/api/client/http/HttpResponse;
    if-eqz v4, :cond_1

    .line 881
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fputqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 882
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nResultStr = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 887
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgeterrorMessage(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fputqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 888
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgeterrorMessage(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error with null response:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :goto_0
    const-string v5, "executed sql query"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    nop

    .end local v2    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .end local v4    # "response":Lcom/google/api/client/http/HttpResponse;
    goto :goto_1

    .line 893
    :catchall_0
    move-exception v2

    .line 894
    .local v2, "e":Ljava/lang/Throwable;
    const-string v4, "in Catch Throwable e"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 896
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fputqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 899
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "returning queryResultStr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private userAuthRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;

    .line 817
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fputqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 820
    new-instance v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    .line 821
    .local v0, "oauthHelper":Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetauthTokenType(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 825
    .local v1, "authToken":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 828
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "create table"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$mparseSqlCreateQueryToJson(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$mdoPostRequest(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fputqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 830
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 834
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v2, p1, v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->sendQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v2

    .line 837
    .local v2, "response":Lcom/google/api/client/http/HttpResponse;
    const-string v3, "QueryProcessorV2"

    if-eqz v2, :cond_1

    .line 838
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->httpResponseToString(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fputqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 839
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nResultStr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 841
    :cond_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgeterrorMessage(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fputqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;Ljava/lang/String;)V

    .line 842
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgeterrorMessage(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :goto_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetqueryResultStr(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 847
    .end local v2    # "response":Lcom/google/api/client/http/HttpResponse;
    :cond_2
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 776
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .line 807
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 808
    .local v0, "query":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting doInBackground "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QueryProcessorV2"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgetisServiceAuth(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->serviceAuthRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 812
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->userAuthRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 776
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Query result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUSION"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    if-nez p1, :cond_0

    .line 920
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->-$$Nest$fgeterrorMessage(Lcom/google/appinventor/components/runtime/FusiontablesControl;)Ljava/lang/String;

    move-result-object p1

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 923
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->GotResult(Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 796
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->ShowLoadingDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->this$0:Lcom/google/appinventor/components/runtime/FusiontablesControl;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/FusiontablesControl;->LoadingDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FusiontablesControl$QueryProcessorV2;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 800
    :cond_0
    return-void
.end method

.method parseJsonResponseException(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseJsonResponseException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FUSION_SERVICE_ACCOUNT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return-object p1
.end method
