.class public Lcom/google/appinventor/components/runtime/GameClient;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "GameClient.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Provides a way for applications to communicate with online game servers"
    iconName = "images/gameClient.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, com.google.android.googleapps.permission.GOOGLE_AUTH"
.end annotation


# static fields
.field private static final COMMAND_ARGUMENTS_KEY:Ljava/lang/String; = "args"

.field private static final COMMAND_TYPE_KEY:Ljava/lang/String; = "command"

.field private static final COUNT_KEY:Ljava/lang/String; = "count"

.field private static final ERROR_RESPONSE_KEY:Ljava/lang/String; = "e"

.field private static final GAME_ID_KEY:Ljava/lang/String; = "gid"

.field private static final GET_INSTANCE_LISTS_COMMAND:Ljava/lang/String; = "getinstancelists"

.field private static final GET_MESSAGES_COMMAND:Ljava/lang/String; = "messages"

.field private static final INSTANCE_ID_KEY:Ljava/lang/String; = "iid"

.field private static final INSTANCE_PUBLIC_KEY:Ljava/lang/String; = "makepublic"

.field private static final INVITED_LIST_KEY:Ljava/lang/String; = "invited"

.field private static final INVITEE_KEY:Ljava/lang/String; = "inv"

.field private static final INVITE_COMMAND:Ljava/lang/String; = "invite"

.field private static final JOINED_LIST_KEY:Ljava/lang/String; = "joined"

.field private static final JOIN_INSTANCE_COMMAND:Ljava/lang/String; = "joininstance"

.field private static final LEADER_KEY:Ljava/lang/String; = "leader"

.field private static final LEAVE_INSTANCE_COMMAND:Ljava/lang/String; = "leaveinstance"

.field private static final LOG_TAG:Ljava/lang/String; = "GameClient"

.field private static final MESSAGES_LIST_KEY:Ljava/lang/String; = "messages"

.field private static final MESSAGE_CONTENT_KEY:Ljava/lang/String; = "contents"

.field private static final MESSAGE_RECIPIENTS_KEY:Ljava/lang/String; = "mrec"

.field private static final MESSAGE_SENDER_KEY:Ljava/lang/String; = "msender"

.field private static final MESSAGE_TIME_KEY:Ljava/lang/String; = "mtime"

.field private static final NEW_INSTANCE_COMMAND:Ljava/lang/String; = "newinstance"

.field private static final NEW_MESSAGE_COMMAND:Ljava/lang/String; = "newmessage"

.field private static final PLAYERS_LIST_KEY:Ljava/lang/String; = "players"

.field private static final PLAYER_ID_KEY:Ljava/lang/String; = "pid"

.field private static final PUBLIC_LIST_KEY:Ljava/lang/String; = "public"

.field private static final SERVER_COMMAND:Ljava/lang/String; = "servercommand"

.field private static final SERVER_RETURN_VALUE_KEY:Ljava/lang/String; = "response"

.field private static final SET_LEADER_COMMAND:Ljava/lang/String; = "setleader"

.field private static final TYPE_KEY:Ljava/lang/String; = "type"


# instance fields
.field private activityContext:Landroid/app/Activity;

.field private androidUIHandler:Landroid/os/Handler;

.field private gameId:Ljava/lang/String;

.field private instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

.field private invitedInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private joinedInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private publicInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceUrl:Ljava/lang/String;

.field private userEmailAddress:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetinstance(Lcom/google/appinventor/components/runtime/GameClient;)Lcom/google/appinventor/components/runtime/util/GameInstance;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputinstance(Lcom/google/appinventor/components/runtime/GameClient;Lcom/google/appinventor/components/runtime/util/GameInstance;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostGetInstanceLists(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GameClient;->postGetInstanceLists()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostGetMessages(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->postGetMessages(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostInvite(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->postInvite(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostLeaveInstance(Lcom/google/appinventor/components/runtime/GameClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GameClient;->postLeaveInstance()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostMakeNewInstance(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostNewMessage(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient;->postNewMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostServerCommand(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient;->postServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostSetInstance(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->postSetInstance(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostSetLeader(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->postSetLeader(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessInstanceLists(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->processInstanceLists(Lorg/json/JSONObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateInstanceInfo(Lcom/google/appinventor/components/runtime/GameClient;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->updateInstanceInfo(Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 148
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    .line 152
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    .line 153
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient;->activityContext:Landroid/app/Activity;

    .line 154
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 155
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 156
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    .line 157
    new-instance v1, Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 158
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->joinedInstances:Ljava/util/List;

    .line 159
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    .line 160
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->publicInstances:Ljava/util/List;

    .line 161
    const-string v0, "http://appinvgameserver.appspot.com"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    .line 179
    return-void
.end method

.method private postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 1
    .param p1, "commandName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1129
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    .line 1130
    return-void
.end method

.method private postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V
    .locals 7
    .param p1, "commandName"    # Ljava/lang/String;
    .param p4, "allowInstanceIdChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<",
            "Lorg/json/JSONObject;",
            ">;Z)V"
        }
    .end annotation

    .line 1135
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "callback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    new-instance v6, Lcom/google/appinventor/components/runtime/GameClient$32;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/GameClient$32;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;ZLjava/util/List;)V

    .line 1181
    .local v0, "thisCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->getInstance()Lcom/google/appinventor/components/runtime/util/WebServiceUtil;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->ServiceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/WebServiceUtil;->postCommandReturningObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1183
    return-void
.end method

.method private postGetInstanceLists()V
    .locals 5

    .line 629
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$15;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$15;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 639
    .local v0, "readMessagesCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 641
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 642
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 643
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 640
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 639
    const-string v2, "getinstancelists"

    invoke-direct {p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 645
    return-void
.end method

.method private postGetMessages(Ljava/lang/String;I)V
    .locals 5
    .param p1, "requestedType"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 713
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$17;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$17;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    .line 745
    .local v0, "myCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    const-string v1, "You must join an instance before attempting to fetch messages."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 747
    return-void

    .line 750
    :cond_0
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 752
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 753
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 754
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 755
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "count"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 756
    invoke-virtual {v3, p1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mtime"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 751
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 750
    const-string v2, "messages"

    invoke-direct {p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 759
    return-void
.end method

.method private postInvite(Ljava/lang/String;)V
    .locals 5
    .param p1, "inviteeEmail"    # Ljava/lang/String;

    .line 782
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$19;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$19;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 803
    .local v0, "inviteCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    const-string v1, "You must have joined an instance before you can invite new players."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 805
    return-void

    .line 808
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 810
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 811
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 812
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "inv"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 809
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 808
    const-string v2, "invite"

    invoke-direct {p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 815
    return-void
.end method

.method private postLeaveInstance()V
    .locals 5

    .line 841
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$21;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$21;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 852
    .local v0, "setInstanceCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 854
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 855
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 856
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 853
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 852
    const-string v2, "leaveinstance"

    invoke-direct {p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 858
    return-void
.end method

.method private postMakeNewInstance(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "requestedInstanceId"    # Ljava/lang/String;
    .param p2, "makePublic"    # Ljava/lang/Boolean;

    .line 889
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$23;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$23;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 900
    .local v0, "makeNewGameCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 902
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 903
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "iid"

    invoke-direct {v2, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 905
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "makepublic"

    invoke-direct {v2, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 901
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 900
    const-string v2, "newinstance"

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    .line 907
    return-void
.end method

.method private postNewMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "recipients"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "contents"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 936
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$25;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$25;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 945
    .local v0, "myCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    const-string v1, "You must have joined an instance before you can send messages."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 947
    return-void

    .line 950
    :cond_0
    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 952
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 953
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 954
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "type"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 956
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mrec"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 957
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contents"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    .line 958
    invoke-virtual {v3, p1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getMessageTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mtime"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 951
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 950
    const-string v2, "newmessage"

    invoke-direct {p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 960
    return-void
.end method

.method private postServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "arguments"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 984
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$27;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$27;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1002
    .local v0, "myCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Going to post "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with args "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1005
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1006
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1007
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "command"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1009
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "args"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 1004
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1003
    const-string v2, "servercommand"

    invoke-direct {p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1011
    return-void
.end method

.method private postSetInstance(Ljava/lang/String;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 1039
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$29;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$29;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 1049
    .local v0, "setInstanceCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1051
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "iid"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1053
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pid"

    invoke-direct {v2, v5, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    .line 1050
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1049
    const-string v2, "joininstance"

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;Z)V

    .line 1055
    return-void
.end method

.method private postSetLeader(Ljava/lang/String;)V
    .locals 5
    .param p1, "newLeader"    # Ljava/lang/String;

    .line 1080
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$31;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$31;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    .line 1089
    .local v0, "setLeaderCallback":Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;, "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair<Lorg/json/JSONObject;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    const-string v1, "You must join an instance before attempting to set a leader."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 1091
    return-void

    .line 1094
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1096
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->GameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1097
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InstanceId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "iid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 1098
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "leader"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 1095
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1094
    const-string v2, "setleader"

    invoke-direct {p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/GameClient;->postCommandToGameServer(Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V

    .line 1101
    return-void
.end method

.method private processInstanceLists(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "instanceLists"    # Lorg/json/JSONObject;

    .line 649
    :try_start_0
    const-string v0, "joined"

    .line 650
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 649
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->joinedInstances:Ljava/util/List;

    .line 652
    const-string v0, "public"

    .line 653
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 652
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->publicInstances:Ljava/util/List;

    .line 655
    const-string v0, "invited"

    .line 656
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 655
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 658
    .local v0, "receivedInstancesInvited":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->InvitedInstances()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    .line 660
    .local v1, "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 662
    .local v2, "newInvites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 664
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 665
    .local v4, "instanceInvited":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/GameClient;->Invited(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v4    # "instanceInvited":Ljava/lang/String;
    goto :goto_0

    .line 672
    .end local v0    # "receivedInstancesInvited":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "oldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "newInvites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_1

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    const-string v1, "Instance lists failed to parse."

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 673
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method private updateInstanceInfo(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "responseObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1186
    const/4 v0, 0x0

    .line 1187
    .local v0, "newLeader":Z
    const-string v1, "leader"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1188
    .local v1, "leader":Ljava/lang/String;
    nop

    .line 1189
    const-string v2, "players"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1188
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 1191
    .local v2, "receivedPlayers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->Leader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1192
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v3, v1}, Lcom/google/appinventor/components/runtime/util/GameInstance;->setLeader(Ljava/lang/String;)V

    .line 1193
    const/4 v0, 0x1

    .line 1196
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/util/GameInstance;->setPlayers(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    move-result-object v3

    .line 1197
    .local v3, "playersDelta":Lcom/google/appinventor/components/runtime/util/PlayerListDelta;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->NO_CHANGE:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    if-eq v3, v4, :cond_2

    .line 1198
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->getPlayersRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1199
    .local v5, "player":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/GameClient;->PlayerLeft(Ljava/lang/String;)V

    .line 1200
    .end local v5    # "player":Ljava/lang/String;
    goto :goto_0

    .line 1201
    :cond_1
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->getPlayersAdded()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1202
    .restart local v5    # "player":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/GameClient;->PlayerJoined(Ljava/lang/String;)V

    .line 1203
    .end local v5    # "player":Ljava/lang/String;
    goto :goto_1

    .line 1206
    :cond_2
    if-eqz v0, :cond_3

    .line 1207
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GameClient;->Leader()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/GameClient;->NewLeader(Ljava/lang/String;)V

    .line 1209
    :cond_3
    return-void
.end method


# virtual methods
.method public FunctionCompleted(Ljava/lang/String;)V
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a function call completed."
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$1;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method

.method public GameId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game name for this application. The same game ID can have one or more game instances."
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public GameId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public GetInstanceLists()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Updates the InstancesJoined and InstancesInvited lists. This procedure can be called before setting the InstanceId."
    .end annotation

    .line 624
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$14;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$14;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method public GetMessages(Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieves messages of the specified type."
    .end annotation

    .line 708
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$16;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 710
    return-void
.end method

.method public GotMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new message has been received."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 405
    .local p3, "contents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got message of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient$2;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    return-void
.end method

.method public Info(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that something has occurred which the player should know about."
    .end annotation

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$12;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$12;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    return-void
.end method

.method public Initialize()V
    .locals 3

    .line 387
    const-string v0, "GameClient"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->gameId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    return-void

    .line 389
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "Game Id must not be empty."

    const-string v2, "GameClient Configuration Error."

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public InstanceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game instance id.  Taken together,the game ID and the instance ID uniquely identify the game."
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public InstanceIdChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the InstanceId property has changed as a result of calling MakeNewInstance or SetInstance."
    .end annotation

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instance id changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$3;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public Invite(Ljava/lang/String;)V
    .locals 1
    .param p1, "playerEmail"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Invites a player to this game instance."
    .end annotation

    .line 777
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$18;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$18;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method public Invited(Ljava/lang/String;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a user has been invited to this game instance."
    .end annotation

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Player invited to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$4;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$4;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    return-void
.end method

.method public InvitedInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances to which this player has been invited but has not yet joined.  To ensure current values are returned, first invoke GetInstanceLists."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->invitedInstances:Ljava/util/List;

    return-object v0
.end method

.method public JoinedInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances in which this player is participating.  To ensure current values are returned, first invoke GetInstanceLists."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->joinedInstances:Ljava/util/List;

    return-object v0
.end method

.method public Leader()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The game\'s leader. At any time, each game instance has only one leader, but the leader may change with time.  Initially, the leader is the game instance creator. Application writers determine special properties of the leader. The leader value is updated each time a successful communication is made with the server."
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getLeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LeaveInstance()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Leaves the current instance."
    .end annotation

    .line 833
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$20;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GameClient$20;-><init>(Lcom/google/appinventor/components/runtime/GameClient;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 838
    return-void
.end method

.method public MakeNewInstance(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "makePublic"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Asks the server to create a new instance of this game."
    .end annotation

    .line 884
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$22;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$22;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 886
    return-void
.end method

.method public NewInstanceMade(Ljava/lang/String;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new instance was successfully created after calling MakeNewInstance."
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$6;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$6;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method

.method public NewLeader(Ljava/lang/String;)V
    .locals 2
    .param p1, "playerId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that this game has a new leader as specified through SetLeader"
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$5;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$5;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void
.end method

.method public PlayerJoined(Ljava/lang/String;)V
    .locals 2
    .param p1, "playerId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a new player has joined this game instance."
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$7;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    return-void
.end method

.method public PlayerLeft(Ljava/lang/String;)V
    .locals 2
    .param p1, "playerId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a player has left this game instance."
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$8;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$8;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    return-void
.end method

.method public Players()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The current set of players for this game instance. Each player is designated by an email address, which is a string. The list of players is updated each time a successful communication is made with the game server."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->instance:Lcom/google/appinventor/components/runtime/util/GameInstance;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/GameInstance;->getPlayers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public PublicInstances()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The set of game instances that have been marked public. To ensure current values are returned, first invoke {@link #GetInstanceLists}. "
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->publicInstances:Ljava/util/List;

    return-object v0
.end method

.method public SendMessage(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "recipients"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "contents"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends a keyed message to all recipients in the recipients list. The message will consist of the contents list."
    .end annotation

    .line 931
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$24;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/GameClient$24;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 933
    return-void
.end method

.method public ServerCommand(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "arguments"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sends the specified command to the game server."
    .end annotation

    .line 979
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$26;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 981
    return-void
.end method

.method public ServerCommandFailure(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "arguments"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a server command failed."
    .end annotation

    .line 525
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$9;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method public ServerCommandSuccess(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a server command returned successfully."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 544
    .local p2, "response":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " server command returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$10;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 550
    return-void
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "http://appinvgameserver.appspot.com"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 321
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    goto :goto_0

    .line 324
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    .line 326
    :goto_0
    return-void
.end method

.method public ServiceUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL of the game server."
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->serviceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public SetInstance(Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets InstanceId and joins the specified instance."
    .end annotation

    .line 1022
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$28;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$28;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1036
    return-void
.end method

.method public SetLeader(Ljava/lang/String;)V
    .locals 1
    .param p1, "playerEmail"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Tells the server to set the leader to playerId. Only the current leader may successfully set a new leader."
    .end annotation

    .line 1075
    new-instance v0, Lcom/google/appinventor/components/runtime/GameClient$30;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$30;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 1077
    return-void
.end method

.method public UserEmailAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The email address that is being used as the player id for this game client.   At present, users must set this manually in oder to join a game.  But this property will change in the future so that is set automatically, and users will not be able to change it."
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "User email address is empty."

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/GameClient;->Info(Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public UserEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GameClient;->userEmailAddress:Ljava/lang/String;

    .line 360
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GameClient;->UserEmailAddressSet(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public UserEmailAddressSet(Ljava/lang/String;)V
    .locals 2
    .param p1, "emailAddress"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the user email address has been set."
    .end annotation

    .line 566
    const-string v0, "GameClient"

    const-string v1, "Email address set."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$11;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GameClient$11;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    return-void
.end method

.method public WebServiceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an error occurred while communicating with the web server."
    .end annotation

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebServiceError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GameClient;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GameClient$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/GameClient$13;-><init>(Lcom/google/appinventor/components/runtime/GameClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 609
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1112
    const-string v0, "GameClient"

    const-string v1, "Activity Resumed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1121
    const-string v0, "GameClient"

    const-string v1, "Activity Stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void
.end method
