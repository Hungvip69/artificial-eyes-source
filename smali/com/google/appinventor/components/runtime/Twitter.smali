.class public final Lcom/google/appinventor/components/runtime/Twitter;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Twitter.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A non-visible component that enables communication with <a href=\"http://www.twitter.com\" target=\"_blank\">Twitter</a>. Once a user has logged into their Twitter account (and the authorization has been confirmed successful by the <code>IsAuthorized</code> event), many more operations are available:<ul><li> Searching Twitter for tweets or labels (<code>SearchTwitter</code>)</li>\n<li> Sending a Tweet (<code>Tweet</code>)     </li>\n<li> Sending a Tweet with an Image (<code>TweetWithImage</code>)     </li>\n<li> Directing a message to a specific user      (<code>DirectMessage</code>)</li>\n <li> Receiving the most recent messages directed to the logged-in user      (<code>RequestDirectMessages</code>)</li>\n <li> Following a specific user (<code>Follow</code>)</li>\n<li> Ceasing to follow a specific user (<code>StopFollowing</code>)</li>\n<li> Getting a list of users following the logged-in user      (<code>RequestFollowers</code>)</li>\n <li> Getting the most recent messages of users followed by the      logged-in user (<code>RequestFriendTimeline</code>)</li>\n <li> Getting the most recent mentions of the logged-in user      (<code>RequestMentions</code>)</li></ul></p>\n <p>You must obtain a Consumer Key and Consumer Secret for Twitter authorization  specific to your app from http://twitter.com/oauth_clients/new"
    iconName = "images/twitter.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|keyboardHidden"
            intentFilters = {
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                    actionElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                            name = "android.intent.action.MAIN"
                        .end subannotation
                    }
                .end subannotation
            }
            name = "com.google.appinventor.components.runtime.WebViewActivity"
            screenOrientation = "behind"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "twitter4j.jar,twitter4jmedia.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final ACCESS_SECRET_TAG:Ljava/lang/String; = "TwitterOauthAccessSecret"

.field private static final ACCESS_TOKEN_TAG:Ljava/lang/String; = "TwitterOauthAccessToken"

.field private static final CALLBACK_URL:Ljava/lang/String; = "appinventor://twitter"

.field private static final MAX_CHARACTERS:Ljava/lang/String; = "160"

.field private static final MAX_MENTIONS_RETURNED:Ljava/lang/String; = "20"

.field private static final URL_HOST:Ljava/lang/String; = "twitter"

.field private static final WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;


# instance fields
.field private TwitPic_API_Key:Ljava/lang/String;

.field private accessToken:Ltwitter4j/auth/AccessToken;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private final directMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final followers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private final mentions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final requestCode:I

.field private requestToken:Ltwitter4j/auth/RequestToken;

.field private final searchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferences:Landroid/content/SharedPreferences;

.field private final timeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private twitter:Ltwitter4j/Twitter;

.field private userName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetaccessToken(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/AccessToken;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontainer(Lcom/google/appinventor/components/runtime/Twitter;)Lcom/google/appinventor/components/runtime/ComponentContainer;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdirectMessages(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->directMessages:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfollowers(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->followers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmentions(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->mentions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestCode(Lcom/google/appinventor/components/runtime/Twitter;)I
    .locals 0

    iget p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestToken(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/RequestToken;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestToken:Ltwitter4j/auth/RequestToken;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchResults(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->searchResults:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimeline(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettwitter(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaccessToken(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/AccessToken;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrequestToken(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/RequestToken;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestToken:Ltwitter4j/auth/RequestToken;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuserName(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAccessToken(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Twitter;->checkAccessToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeAuthorize(Lcom/google/appinventor/components/runtime/Twitter;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveAccessToken(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/AccessToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Twitter;->saveAccessToken(Ltwitter4j/auth/AccessToken;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetWEBVIEW_ACTIVITY_CLASS()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/Twitter;->WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 119
    const-class v0, Lcom/google/appinventor/components/runtime/WebViewActivity;

    .line 120
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/Twitter;->WEBVIEW_ACTIVITY_CLASS:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 172
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->TwitPic_API_Key:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->handler:Landroid/os/Handler;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->mentions:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->followers:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->directMessages:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->searchResults:Ljava/util/List;

    .line 182
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Twitter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 184
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->retrieveAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestCode:I

    .line 187
    return-void
.end method

.method private checkAccessToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "myConsumerKey"    # Ljava/lang/String;
    .param p2, "myConsumerSecret"    # Ljava/lang/String;

    .line 1082
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->retrieveAccessToken()Ltwitter4j/auth/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 1083
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1084
    return v1

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-nez v0, :cond_1

    .line 1088
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 1091
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-interface {v0, v2}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1097
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1100
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    invoke-interface {v0}, Ltwitter4j/Twitter;->verifyCredentials()Ltwitter4j/User;

    move-result-object v0

    .line 1101
    .local v0, "user":Ltwitter4j/User;
    invoke-interface {v0}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;
    :try_end_1
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1105
    goto :goto_1

    .line 1102
    .end local v0    # "user":Ltwitter4j/User;
    :catch_1
    move-exception v0

    .line 1103
    .local v0, "e":Ltwitter4j/TwitterException;
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    .line 1104
    return v1

    .line 1107
    .end local v0    # "e":Ltwitter4j/TwitterException;
    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private deAuthorize()V
    .locals 3

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestToken:Ltwitter4j/auth/RequestToken;

    .line 473
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    .line 474
    const-string v1, ""

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 476
    .local v1, "oldTwitter":Ltwitter4j/Twitter;
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 478
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter;->accessToken:Ltwitter4j/auth/AccessToken;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Twitter;->saveAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 482
    if-eqz v1, :cond_0

    .line 483
    invoke-interface {v1, v0}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/auth/AccessToken;)V

    .line 485
    :cond_0
    return-void
.end method

.method private retrieveAccessToken()Ltwitter4j/auth/AccessToken;
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "TwitterOauthAccessToken"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "TwitterOauthAccessSecret"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "secret":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    new-instance v2, Ltwitter4j/auth/AccessToken;

    invoke-direct {v2, v0, v1}, Ltwitter4j/auth/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 457
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private saveAccessToken(Ltwitter4j/auth/AccessToken;)V
    .locals 4
    .param p1, "accessToken"    # Ltwitter4j/auth/AccessToken;

    .line 441
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 442
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "TwitterOauthAccessSecret"

    const-string v2, "TwitterOauthAccessToken"

    if-nez p1, :cond_0

    .line 443
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 444
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 447
    nop

    .line 448
    invoke-virtual {p1}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 450
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 451
    return-void
.end method


# virtual methods
.method public Authorize()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Redirects user to login to Twitter via the Web browser using the OAuth protocol if we don\'t already have authorization."
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-nez v0, :cond_1

    .line 308
    new-instance v0, Ltwitter4j/TwitterFactory;

    invoke-direct {v0}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    .line 311
    .local v0, "myConsumerKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    .line 312
    .local v1, "myConsumerSecret":Ljava/lang/String;
    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Twitter$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 355
    return-void

    .line 303
    .end local v0    # "myConsumerKey":Ljava/lang/String;
    .end local v1    # "myConsumerSecret":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Authorize"

    const/16 v3, 0x12e

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public CheckAuthorized()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether we already have access, and if so, causes IsAuthorized event handler to be called."
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    .line 365
    .local v0, "myConsumerKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    .line 366
    .local v1, "myConsumerSecret":Ljava/lang/String;
    new-instance v2, Lcom/google/appinventor/components/runtime/Twitter$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Twitter$2;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public ConsumerKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method public ConsumerKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The the consumer key to be used when authorizing with Twitter via OAuth."
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerKey:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public ConsumerSecret()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    return-object v0
.end method

.method public ConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerSecret"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The consumer secret to be used when authorizing with Twitter via OAuth"
    .end annotation

    .line 249
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->consumerSecret:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public DeAuthorize()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes Twitter authorization from this running app instance"
    .end annotation

    .line 467
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    .line 468
    return-void
.end method

.method public DirectMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This sends a direct (private) message to the specified user.  The message will be trimmed if it exceeds 160characters. <p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Twitter$9;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 868
    return-void

    .line 854
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Need to login?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "DirectMessage"

    const/16 v3, 0x136

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 856
    return-void
.end method

.method public DirectMessages()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property contains a list of the most recent messages mentioning the logged-in user.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>Authorized</code> event.</li> <li> Call the <code>RequestDirectMessages</code> method.</li> <li> Wait for the <code>DirectMessagesReceived</code> event.</li></ol>\nThe value of this property will then be set to the list of direct messages retrieved (and maintain that value until any subsequent call to <code>RequestDirectMessages</code>)."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->directMessages:Ljava/util/List;

    return-object v0
.end method

.method public DirectMessagesReceived(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised when the recent messages requested through <code>RequestDirectMessages</code> have been retrieved. A list of the messages can then be found in the <code>messages</code> parameter or the <code>Messages</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 808
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "DirectMessagesReceived"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 809
    return-void
.end method

.method public Follow(Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 880
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$10;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Twitter$10;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 890
    return-void

    .line 876
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Need to login?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Follow"

    const/16 v3, 0x137

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 878
    return-void
.end method

.method public Followers()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property contains a list of the followers of the logged-in user.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>IsAuthorized</code> event.</li> <li> Call the <code>RequestFollowers</code> method.</li> <li> Wait for the <code>FollowersReceived</code> event.</li></ol>\nThe value of this property will then be set to the list of followers (and maintain its value until any subsequent call to <code>RequestFollowers</code>)."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->followers:Ljava/util/List;

    return-object v0
.end method

.method public FollowersReceived(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised when all of the followers of the logged-in user requested through <code>RequestFollowers</code> have been retrieved. A list of the followers can then be found in the <code>followers</code> parameter or the <code>Followers</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 714
    .local p1, "followers2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FollowersReceived"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 715
    return-void
.end method

.method public FriendTimeline()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property contains the 20 most recent messages of users being followed.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>IsAuthorized</code> event.</li> <li> Specify users to follow with one or more calls to the <code>Follow</code> method.</li> <li> Call the <code>RequestFriendTimeline</code> method.</li> <li> Wait for the <code>FriendTimelineReceived</code> event.</li> </ol>\nThe value of this property will then be set to the list of messages (and maintain its value until any subsequent call to <code>RequestFriendTimeline</code>."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 996
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->timeline:Ljava/util/List;

    return-object v0
.end method

.method public FriendTimelineReceived(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised when the messages requested through <code>RequestFriendTimeline</code> have been retrieved. The <code>timeline</code> parameter and the <code>Timeline</code> property will contain a list of lists, where each sub-list contains a status update of the form (username message)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 966
    .local p1, "timeline":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "FriendTimelineReceived"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 967
    return-void
.end method

.method public IsAuthorized()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised after the program calls <code>Authorize</code> if the authorization was successful.  It is also called after a call to <code>CheckAuthorized</code> if we already have a valid access token. After this event has been raised, any other method for this component can be called."
    .end annotation

    .line 292
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IsAuthorized"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public Login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Twitter\'s API no longer supports login via username and password. Use the Authorize call instead."
        userVisible = false
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Login"

    const/16 v3, 0x12d

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public Mentions()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property contains a list of mentions of the logged-in user.  Initially, the list is empty.  To set it, the program must: <ol> <li> Call the <code>Authorize</code> method.</li> <li> Wait for the <code>IsAuthorized</code> event.</li> <li> Call the <code>RequestMentions</code> method.</li> <li> Wait for the <code>MentionsReceived</code> event.</li></ol>\nThe value of this property will then be set to the list of mentions (and will maintain its value until any subsequent calls to <code>RequestMentions</code>)."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->mentions:Ljava/util/List;

    return-object v0
.end method

.method public MentionsReceived(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised when the mentions of the logged-in user requested through <code>RequestMentions</code> have been retrieved.  A list of the mentions can then be found in the <code>mentions</code> parameter or the <code>Mentions</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 634
    .local p1, "mentions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "MentionsReceived"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method public RequestDirectMessages()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Requests the 20 most recent direct messages sent to the logged-in user.  When the messages have been retrieved, the system will raise the <code>DirectMessagesReceived</code> event and set the <code>DirectMessages</code> property to the list of messages.<p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$8;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Twitter$8;-><init>(Lcom/google/appinventor/components/runtime/Twitter;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 795
    return-void

    .line 762
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Need to login?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RequestDirectMessages"

    const/16 v3, 0x135

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 765
    return-void
.end method

.method public RequestFollowers()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$7;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Twitter$7;-><init>(Lcom/google/appinventor/components/runtime/Twitter;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 701
    return-void

    .line 669
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Need to login?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RequestFollowers"

    const/16 v3, 0x134

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 672
    return-void
.end method

.method public RequestFriendTimeline()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$12;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Twitter$12;-><init>(Lcom/google/appinventor/components/runtime/Twitter;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 952
    return-void

    .line 920
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Need to login?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RequestFriendTimeline"

    const/16 v3, 0x139

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 923
    return-void
.end method

.method public RequestMentions()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Requests the 20 most recent mentions of the logged-in user.  When the mentions have been retrieved, the system will raise the <code>MentionsReceived</code> event and set the <code>Mentions</code> property to the list of mentions.<p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 598
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$6;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Twitter$6;-><init>(Lcom/google/appinventor/components/runtime/Twitter;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 622
    return-void

    .line 594
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Need to login?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RequestMentions"

    const/16 v3, 0x133

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 596
    return-void
.end method

.method public SearchResults()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "This property, which is initially empty, is set to a list of search results after the program: <ol><li>Calls the <code>SearchTwitter</code> method.</li> <li>Waits for the <code>SearchSuccessful</code> event.</li></ol>\nThe value of the property will then be the same as the parameter to <code>SearchSuccessful</code>.  Note that it is not necessary to call the <code>Authorize</code> method before calling <code>SearchTwitter</code>."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1072
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->searchResults:Ljava/util/List;

    return-object v0
.end method

.method public SearchSuccessful(Ljava/util/List;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is raised when the results of the search requested through <code>SearchSuccessful</code> have been retrieved. A list of the results can then be found in the <code>results</code> parameter or the <code>Results</code> property."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1050
    .local p1, "searchResults":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "SearchSuccessful"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1051
    return-void
.end method

.method public SearchTwitter(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This searches Twitter for the given String query.<p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$13;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Twitter$13;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1037
    return-void

    .line 1011
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Need to login?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SearchTwitter"

    const/16 v3, 0x13a

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1013
    return-void
.end method

.method public StopFollowing(Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 897
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 902
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$11;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Twitter$11;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 912
    return-void

    .line 898
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Need to login?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "StopFollowing"

    const/16 v3, 0x138

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 900
    return-void
.end method

.method public Tweet(Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This sends a tweet as the logged-in user with the specified Text, which will be trimmed if it exceeds 160 characters. <p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/Twitter$4;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 524
    return-void

    .line 504
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Need to login?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Tweet"

    const/16 v3, 0x132

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 506
    return-void
.end method

.method public TweetWithImage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "imagePath"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This sends a tweet as the logged-in user with the specified Text and a path to the image to be uploaded, which will be trimmed if it exceeds 160 characters. If an image is not found or invalid, only the text will be tweeted.<p><u>Requirements</u>: This should only be called after the <code>IsAuthorized</code> event has been raised, indicating that the user has successfully logged in to Twitter.</p>"
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Twitter$5;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/appinventor/components/runtime/Twitter$5;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 573
    return-void

    .line 543
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Need to login?"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "TweetWithImage"

    const/16 v3, 0x132

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 545
    return-void
.end method

.method public TwitPic_API_Key()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->TwitPic_API_Key:Ljava/lang/String;

    return-object v0
.end method

.method public TwitPic_API_Key(Ljava/lang/String;)V
    .locals 0
    .param p1, "TwitPic_API_Key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The API Key for image uploading, provided by TwitPic."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter;->TwitPic_API_Key:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public Username()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The user name of the authorized user. Empty if there is no authorized user."
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Twitter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz p3, :cond_3

    .line 387
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 388
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v2, "oauth_verifier"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "oauthVerifier":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter;->twitter:Ltwitter4j/Twitter;

    const/4 v4, 0x0

    const-string v5, "Authorize"

    if-nez v3, :cond_0

    .line 392
    const-string v3, "twitter field is unexpectedly null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "internal error: can\'t access Twitter library"

    aput-object v6, v3, v4

    const/16 v6, 0x130

    invoke-virtual {v1, p0, v5, v6, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 396
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->requestToken:Ltwitter4j/auth/RequestToken;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 399
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    new-instance v1, Lcom/google/appinventor/components/runtime/Twitter$3;

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/Twitter$3;-><init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x131

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v5, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 428
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    .line 430
    .end local v2    # "oauthVerifier":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 431
    :cond_2
    const-string v2, "uri returned from WebView activity was unexpectedly null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    .line 434
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_1
    goto :goto_2

    .line 435
    :cond_3
    const-string v0, "intent returned from WebView activity was unexpectedly null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Twitter;->deAuthorize()V

    .line 438
    :goto_2
    return-void
.end method
