.class Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;
.super Lcom/google/api/client/googleapis/auth/oauth2/SystemEnvironmentProvider;
.source "DefaultCredentialProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;,
        Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;
    }
.end annotation


# static fields
.field static final APP_ENGINE_CREDENTIAL_CLASS:Ljava/lang/String; = "com.google.api.client.googleapis.extensions.appengine.auth.oauth2.AppIdentityCredential$AppEngineCredentialWrapper"

.field static final CLOUDSDK_CONFIG_DIRECTORY:Ljava/lang/String; = "gcloud"

.field static final CLOUD_SHELL_ENV_VAR:Ljava/lang/String; = "DEVSHELL_CLIENT_PORT"

.field static final CREDENTIAL_ENV_VAR:Ljava/lang/String; = "GOOGLE_APPLICATION_CREDENTIALS"

.field static final HELP_PERMALINK:Ljava/lang/String; = "https://developers.google.com/accounts/docs/application-default-credentials"

.field static final WELL_KNOWN_CREDENTIALS_FILE:Ljava/lang/String; = "application_default_credentials.json"


# instance fields
.field private cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

.field private detectedEnvironment:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/SystemEnvironmentProvider;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 69
    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->detectedEnvironment:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    .line 71
    return-void
.end method

.method private final detectEnvironment(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;
    .locals 1
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->runningUsingEnvironmentVariable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->ENVIRONMENT_VARIABLE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    return-object v0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->runningUsingWellKnownFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->WELL_KNOWN_FILE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    return-object v0

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->useGAEStandardAPI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    sget-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->APP_ENGINE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    return-object v0

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->runningOnCloudShell()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    sget-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->CLOUD_SHELL:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    return-object v0

    .line 183
    :cond_3
    invoke-static {p1, p0}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->runningOnComputeEngine(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/googleapis/auth/oauth2/SystemEnvironmentProvider;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    sget-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->COMPUTE_ENGINE:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    return-object v0

    .line 187
    :cond_4
    sget-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->UNKNOWN:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    return-object v0
.end method

.method private final getAppEngineCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 8
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    const-string v0, "com.google.api.client.googleapis.extensions.appengine.auth.oauth2.AppIdentityCredential$AppEngineCredentialWrapper"

    const/4 v1, 0x0

    .line 300
    .local v1, "innerException":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 301
    .local v4, "credentialClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lcom/google/api/client/http/HttpTransport;

    aput-object v7, v6, v2

    const-class v7, Lcom/google/api/client/json/JsonFactory;

    aput-object v7, v6, v3

    .line 302
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 303
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object p2, v5, v3

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 312
    .end local v4    # "credentialClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v4

    .line 313
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v1, v4

    goto :goto_1

    .line 310
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v4

    .line 311
    .local v4, "e":Ljava/lang/IllegalAccessException;
    move-object v1, v4

    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 308
    :catch_2
    move-exception v4

    .line 309
    .local v4, "e":Ljava/lang/InstantiationException;
    move-object v1, v4

    .end local v4    # "e":Ljava/lang/InstantiationException;
    goto :goto_0

    .line 306
    :catch_3
    move-exception v4

    .line 307
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    move-object v1, v4

    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 304
    :catch_4
    move-exception v4

    .line 305
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    move-object v1, v4

    .line 314
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 315
    :goto_1
    new-instance v4, Ljava/io/IOException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "Application Default Credentials failed to create the Google App Engine service account credentials class %s. Check that the component \'google-api-client-appengine\' is deployed."

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->exceptionWithCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method private getCloudShellCredential(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 3
    .param p1, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .line 328
    const-string v0, "DEVSHELL_CLIENT_PORT"

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "port":Ljava/lang/String;
    new-instance v1, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2, p1}, Lcom/google/api/client/googleapis/auth/oauth2/CloudShellCredential;-><init>(ILcom/google/api/client/json/JsonFactory;)V

    return-object v1
.end method

.method private final getComputeCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 1
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .line 334
    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;

    invoke-direct {v0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    return-object v0
.end method

.method private getCredentialUsingEnvironmentVariable(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 9
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    const-string v0, "GOOGLE_APPLICATION_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "credentialsPath":Ljava/lang/String;
    const/4 v2, 0x0

    .line 217
    .local v2, "credentialsStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 218
    invoke-static {v2, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStream(Ljava/io/InputStream;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    nop

    .line 228
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 218
    return-object v0

    .line 227
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Error reading credential file from environment variable %s, value \'%s\': %s"

    .line 225
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v6, v7, v0

    .line 223
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->exceptionWithCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .end local v1    # "credentialsPath":Ljava/lang/String;
    .end local v2    # "credentialsStream":Ljava/io/InputStream;
    .end local p1    # "transport":Lcom/google/api/client/http/HttpTransport;
    .end local p2    # "jsonFactory":Lcom/google/api/client/json/JsonFactory;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "credentialsPath":Ljava/lang/String;
    .restart local v2    # "credentialsStream":Ljava/io/InputStream;
    .restart local p1    # "transport":Lcom/google/api/client/http/HttpTransport;
    .restart local p2    # "jsonFactory":Lcom/google/api/client/json/JsonFactory;
    :goto_0
    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 230
    :cond_0
    throw v0
.end method

.method private getCredentialUsingWellKnownFile(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 8
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getWellKnownCredentialsFile()Ljava/io/File;

    move-result-object v0

    .line 246
    .local v0, "wellKnownFileLocation":Ljava/io/File;
    const/4 v1, 0x0

    .line 248
    .local v1, "credentialsStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 249
    invoke-static {v1, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStream(Ljava/io/InputStream;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    nop

    .line 256
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 249
    return-object v2

    .line 255
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error reading credential file from location %s: %s"

    .line 253
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    .line 251
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "wellKnownFileLocation":Ljava/io/File;
    .end local v1    # "credentialsStream":Ljava/io/InputStream;
    .end local p1    # "transport":Lcom/google/api/client/http/HttpTransport;
    .end local p2    # "jsonFactory":Lcom/google/api/client/json/JsonFactory;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "wellKnownFileLocation":Ljava/io/File;
    .restart local v1    # "credentialsStream":Ljava/io/InputStream;
    .restart local p1    # "transport":Lcom/google/api/client/http/HttpTransport;
    .restart local p2    # "jsonFactory":Lcom/google/api/client/json/JsonFactory;
    :goto_0
    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 258
    :cond_0
    throw v2
.end method

.method private final getDefaultCredentialUnsynchronized(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 2
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->detectedEnvironment:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->detectEnvironment(Lcom/google/api/client/http/HttpTransport;)Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->detectedEnvironment:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    .line 113
    :cond_0
    sget-object v0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$1;->$SwitchMap$com$google$api$client$googleapis$auth$oauth2$DefaultCredentialProvider$Environment:[I

    iget-object v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->detectedEnvironment:Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 123
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getComputeCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0

    .line 121
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getCloudShellCredential(Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getAppEngineCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0

    .line 117
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getCredentialUsingWellKnownFile(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0

    .line 115
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getCredentialUsingEnvironmentVariable(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getWellKnownCredentialsFile()Ljava/io/File;
    .locals 6

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "cloudConfigPath":Ljava/io/File;
    const-string v1, "os.name"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "os":Ljava/lang/String;
    const-string v3, "windows"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "gcloud"

    if-ltz v3, :cond_0

    .line 133
    new-instance v2, Ljava/io/File;

    const-string v3, "APPDATA"

    invoke-virtual {p0, v3}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "appDataPath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 135
    .end local v2    # "appDataPath":Ljava/io/File;
    goto :goto_0

    .line 136
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v5, "user.home"

    invoke-virtual {p0, v5, v2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, ".config"

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 137
    .local v2, "configPath":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v3

    .line 139
    .end local v2    # "configPath":Ljava/io/File;
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v3, "application_default_credentials.json"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .local v2, "credentialFilePath":Ljava/io/File;
    return-object v2
.end method

.method private runningOnCloudShell()Z
    .locals 1

    .line 324
    const-string v0, "DEVSHELL_CLIENT_PORT"

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private runningUsingEnvironmentVariable()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    const-string v0, "GOOGLE_APPLICATION_CREDENTIALS"

    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "credentialsPath":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, "credentialsFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 204
    return v5

    .line 199
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Error reading credential file from environment variable %s, value \'%s\': File does not exist."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    aput-object v1, v7, v5

    .line 200
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "credentialsPath":Ljava/lang/String;
    throw v4
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v3    # "credentialsFile":Ljava/io/File;
    .restart local v1    # "credentialsPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "expected":Ljava/security/AccessControlException;
    return v2

    .line 193
    .end local v0    # "expected":Ljava/security/AccessControlException;
    :cond_2
    :goto_0
    return v2
.end method

.method private runningUsingWellKnownFile()Z
    .locals 3

    .line 234
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getWellKnownCredentialsFile()Ljava/io/File;

    move-result-object v0

    .line 236
    .local v0, "wellKnownFileLocation":Ljava/io/File;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->fileExists(Ljava/io/File;)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 237
    :catch_0
    move-exception v1

    .line 239
    .local v1, "expected":Ljava/security/AccessControlException;
    const/4 v2, 0x0

    return v2
.end method

.method private useGAEStandardAPI()Z
    .locals 9

    .line 262
    const/4 v0, 0x0

    .line 264
    .local v0, "systemPropertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.appengine.api.utils.SystemProperty"

    invoke-virtual {p0, v2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v0, v2

    .line 268
    nop

    .line 269
    const/4 v2, 0x0

    .line 272
    .local v2, "cause":Ljava/lang/Exception;
    const/4 v3, 0x1

    :try_start_1
    const-string v4, "environment"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 273
    .local v4, "environmentField":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 274
    .local v5, "environmentValue":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 275
    .local v6, "environmentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "value"

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 276
    .local v7, "valueMethod":Ljava/lang/reflect/Method;
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    .local v8, "environmentValueValue":Ljava/lang/Object;
    if-eqz v8, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 288
    .end local v4    # "environmentField":Ljava/lang/reflect/Field;
    .end local v5    # "environmentValue":Ljava/lang/Object;
    .end local v6    # "environmentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "valueMethod":Ljava/lang/reflect/Method;
    .end local v8    # "environmentValueValue":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 289
    .local v4, "exception":Ljava/lang/reflect/InvocationTargetException;
    move-object v2, v4

    goto :goto_1

    .line 286
    .end local v4    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v4

    .line 287
    .local v4, "exception":Ljava/lang/NoSuchMethodException;
    move-object v2, v4

    .end local v4    # "exception":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 284
    :catch_2
    move-exception v4

    .line 285
    .local v4, "exception":Ljava/lang/IllegalAccessException;
    move-object v2, v4

    .end local v4    # "exception":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 282
    :catch_3
    move-exception v4

    .line 283
    .local v4, "exception":Ljava/lang/IllegalArgumentException;
    move-object v2, v4

    .end local v4    # "exception":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 280
    :catch_4
    move-exception v4

    .line 281
    .local v4, "exception":Ljava/lang/SecurityException;
    move-object v2, v4

    .end local v4    # "exception":Ljava/lang/SecurityException;
    goto :goto_0

    .line 278
    :catch_5
    move-exception v4

    .line 279
    .local v4, "exception":Ljava/lang/NoSuchFieldException;
    move-object v2, v4

    .line 290
    .end local v4    # "exception":Ljava/lang/NoSuchFieldException;
    :goto_0
    nop

    .line 291
    :goto_1
    new-instance v4, Ljava/lang/RuntimeException;

    .line 293
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v1

    .line 291
    const-string v1, "Unexpcted error trying to determine if runnning on Google App Engine: %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->exceptionWithCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 265
    .end local v2    # "cause":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 267
    .local v2, "expected":Ljava/lang/ClassNotFoundException;
    return v1
.end method


# virtual methods
.method fileExists(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 147
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 161
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method final getDefaultCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 5
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getDefaultCredentialUnsynchronized(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    monitor-exit p0

    return-object v0

    .line 96
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The Application Default Credentials are not available. They are available if running on Google App Engine, Google Compute Engine, or Google Cloud Shell. Otherwise, the environment variable %s must be defined pointing to a file defining the credentials. See %s for more information."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "GOOGLE_APPLICATION_CREDENTIALS"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "https://developers.google.com/accounts/docs/application-default-credentials"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 154
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
