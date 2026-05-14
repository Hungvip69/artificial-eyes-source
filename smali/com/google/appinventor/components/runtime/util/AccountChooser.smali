.class public Lcom/google/appinventor/components/runtime/util/AccountChooser;
.super Ljava/lang/Object;
.source "AccountChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PREFERENCE:Ljava/lang/String; = "account"

.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final LOG_TAG:Ljava/lang/String; = "AccountChooser"

.field private static final NO_ACCOUNT:Ljava/lang/String; = ""


# instance fields
.field private accountManager:Landroid/accounts/AccountManager;

.field private activity:Landroid/app/Activity;

.field private chooseAccountPrompt:Ljava/lang/String;

.field private preferencesKey:Ljava/lang/String;

.field private service:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchooseAccountPrompt(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccountPrompt:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->service:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccountPrompt:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->preferencesKey:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    .line 62
    return-void
.end method

.method private chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accounts"    # [Landroid/accounts/Account;

    .line 112
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 113
    .local v2, "account":Landroid/accounts/Account;
    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chose account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountChooser"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-object v2

    .line 112
    .end local v2    # "account":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private createAccount()Ljava/lang/String;
    .locals 10

    .line 123
    const-string v0, "Adding auth token account ..."

    const-string v1, "AccountChooser"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->service:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "com.google"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 126
    .local v0, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 127
    .local v2, "result":Landroid/os/Bundle;
    const-string v3, "authAccount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "accountName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-object v3

    .line 134
    .end local v2    # "result":Landroid/os/Bundle;
    .end local v3    # "accountName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 133
    .local v1, "e":Landroid/accounts/AuthenticatorException;
    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .end local v1    # "e":Landroid/accounts/AuthenticatorException;
    goto :goto_0

    .line 130
    :catch_2
    move-exception v1

    .line 131
    .local v1, "e":Landroid/accounts/OperationCanceledException;
    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 136
    .end local v1    # "e":Landroid/accounts/OperationCanceledException;
    :goto_0
    nop

    .line 137
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getPersistedAccountName()Ljava/lang/String;
    .locals 3

    .line 160
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->preferencesKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private persistAccountName(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persisting account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountChooser"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    return-void
.end method

.method private selectAccount([Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .line 141
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 142
    .local v0, "queue":Ljava/util/concurrent/SynchronousQueue;, "Ljava/util/concurrent/SynchronousQueue<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;-><init>(Lcom/google/appinventor/components/runtime/util/AccountChooser;[Landroid/accounts/Account;Ljava/util/concurrent/SynchronousQueue;)V

    .line 143
    .local v1, "select":Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->start()V

    .line 144
    const-string v2, "Select: waiting for user..."

    const-string v3, "AccountChooser"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, "account":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v4

    .line 149
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 151
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    return-object v3
.end method


# virtual methods
.method public findAccount()Landroid/accounts/Account;
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 71
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 72
    aget-object v1, v0, v4

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    .line 73
    aget-object v1, v0, v4

    return-object v1

    .line 78
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    const-string v5, "AccountChooser"

    if-nez v2, :cond_2

    .line 79
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->createAccount()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "accountName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 81
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    .line 82
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v3, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    aget-object v1, v1, v4

    return-object v1

    .line 84
    :cond_1
    const-string v1, "User failed to create a valid account"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-object v3

    .line 92
    .end local v2    # "accountName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPersistedAccountName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "accountName":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    move-object v4, v2

    .local v4, "account":Landroid/accounts/Account;
    if-eqz v2, :cond_3

    .line 94
    return-object v4

    .line 100
    .end local v4    # "account":Landroid/accounts/Account;
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->selectAccount([Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->persistAccountName(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->chooseAccount(Ljava/lang/String;[Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v2

    return-object v2

    .line 107
    :cond_4
    const-string v2, "User failed to choose an account"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-object v3
.end method

.method public forgetAccountName()V
    .locals 2

    .line 169
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method
