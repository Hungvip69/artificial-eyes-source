.class public Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
.super Ljava/lang/Object;
.source "OAuth2Helper.java"


# static fields
.field public static final PREF_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final PREF_AUTH_TOKEN:Ljava/lang/String; = "authToken"

.field public static final TAG:Ljava/lang/String; = "OAuthHelper"

.field private static errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-string v0, "Error during OAuth"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccountManagerResult(Landroid/app/Activity;Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;
    .locals 15
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "credential"    # Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    new-instance v1, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;

    move-object/from16 v11, p1

    invoke-direct {v1, v11}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;-><init>(Landroid/content/Context;)V

    .line 158
    .local v1, "accountManager":Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;
    invoke-virtual/range {p2 .. p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->invalidateAuthToken(Ljava/lang/String;)V

    .line 159
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v12, p3

    invoke-virtual {v2, v12, v3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object/from16 v13, p4

    invoke-virtual {v1, v13}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountByName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v14

    .line 166
    .local v14, "account":Landroid/accounts/Account;
    const-string v2, "OAuthHelper"

    if-eqz v14, :cond_0

    .line 169
    const-string v3, "Getting token by account"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v5, v14

    move-object/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_0
    const-string v3, "Getting token by features, possibly prompting user to select an account"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, "com.google"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p3

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v10}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0
.end method

.method public static getErrorMessage()Ljava/lang/String;
    .locals 3

    .line 225
    sget-object v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->errorMessage:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getErrorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAuthHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method private isUiThread()Z
    .locals 2

    .line 188
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private persistCredentials(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "settings"    # Landroid/content/SharedPreferences;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Persisting credentials, acct ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAuthHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "accountName"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    const-string v1, "authToken"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method

.method public static resetAccountCredential(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 212
    const-string v0, "OAuthHelper"

    const-string v1, "Reset credentials"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 215
    .local v1, "editor2":Landroid/content/SharedPreferences$Editor;
    const-string v2, "authToken"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string v2, "accountName"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    return-void
.end method


# virtual methods
.method public getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "authTokenType"    # Ljava/lang/String;

    .line 89
    const-string v0, "OAuthHelper"

    const-string v1, "getRefreshedAuthToken()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->isUiThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "accountName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "accountName":Ljava/lang/String;
    const-string v3, "authToken"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "authToken":Ljava/lang/String;
    new-instance v3, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    invoke-direct {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>()V

    .line 103
    .local v3, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    invoke-virtual {v3, v2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 107
    nop

    .line 108
    invoke-direct {p0, p1, v3, p2, v1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getAccountManagerResult(Landroid/app/Activity;Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;Ljava/lang/String;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;

    move-result-object v4

    .line 113
    .local v4, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {v4}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 114
    .local v5, "authTokenBundle":Landroid/os/Bundle;
    const-string v6, "authtoken"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 116
    const-string v6, "authAccount"

    .line 117
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-direct {p0, v0, v6, v2}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->persistCredentials(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "authTokenBundle":Landroid/os/Bundle;
    goto :goto_0

    .line 126
    :catch_0
    move-exception v5

    .line 127
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 128
    const-string v6, "Error: I/O error"

    sput-object v6, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->errorMessage:Ljava/lang/String;

    goto :goto_1

    .line 123
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 124
    .local v5, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v5}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 125
    const-string v6, "Error: Authenticator error"

    sput-object v6, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->errorMessage:Ljava/lang/String;

    .end local v5    # "e":Landroid/accounts/AuthenticatorException;
    goto :goto_0

    .line 119
    :catch_2
    move-exception v5

    .line 120
    .local v5, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v5}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 121
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->resetAccountCredential(Landroid/app/Activity;)V

    .line 122
    const-string v6, "Error: operation cancelled"

    sput-object v6, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->errorMessage:Ljava/lang/String;

    .line 129
    .end local v5    # "e":Landroid/accounts/OperationCanceledException;
    :goto_0
    nop

    .line 132
    :goto_1
    return-object v2

    .line 92
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    .end local v1    # "accountName":Ljava/lang/String;
    .end local v2    # "authToken":Ljava/lang/String;
    .end local v3    # "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .end local v4    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get authtoken from UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
