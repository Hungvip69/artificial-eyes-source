.class public Lcom/google/appinventor/components/runtime/PhoneCall;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "PhoneCall.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A non-visible component that makes a phone call to the number specified in the <code>PhoneNumber</code> property, which can be set either in the Designer or Blocks Editor. The component has a <code>MakePhoneCall</code> method, enabling the program to launch a phone call.</p><p>Often, this component is used with the <code>ContactPicker</code> component, which lets the user select a contact from the ones stored on the phone and sets the <code>PhoneNumber</code> property to the contact\'s phone number.</p><p>To directly specify the phone number (e.g., 650-555-1212), set the <code>PhoneNumber</code> property to a Text with the specified digits (e.g., \"6505551212\").  Dashes, dots, and parentheses may be included (e.g., \"(650)-555-1212\") but will be ignored; spaces may not be included.</p>"
    iconName = "images/phoneCall.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;,
        Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;
    }
.end annotation


# static fields
.field private static final PHONECALL_REQUEST_CODE:I = 0x50484f4e


# instance fields
.field private final callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

.field private final context:Landroid/content/Context;

.field private didRegisterReceiver:Z

.field private havePermission:Z

.field private phoneNumber:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/PhoneCall;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->havePermission:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterCallStateMonitor(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PhoneCall;->registerCallStateMonitor()V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 113
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->havePermission:Z

    .line 105
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    .line 114
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    const v1, 0x50484f4e

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;I)V

    .line 117
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneNumber(Ljava/lang/String;)V

    .line 118
    new-instance v0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    .line 119
    return-void
.end method

.method private registerCallStateMonitor()V
    .locals 4

    .line 366
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 367
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 370
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    .line 371
    return-void
.end method

.method private unregisterCallStateMonitor()V
    .locals 2

    .line 377
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->callStateReceiver:Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->didRegisterReceiver:Z

    .line 381
    :cond_0
    return-void
.end method


# virtual methods
.method public IncomingCallAnswered(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that an incoming phone call is answered. phoneNumber is the incoming call phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 288
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "IncomingCallAnswered"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public Initialize()V
    .locals 6

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/PhoneCall$1;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "android.permission.PROCESS_OUTGOING_CALLS"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "android.permission.READ_PHONE_STATE"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v1, "Initialize"

    invoke-direct {v2, p0, p0, v1, v3}, Lcom/google/appinventor/components/runtime/PhoneCall$1;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 132
    :cond_0
    return-void
.end method

.method public MakePhoneCall()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Launches the default dialer app set to start a phone call usingthe number in the PhoneNumber property."
    .end annotation

    .line 161
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "tel"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 162
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    const v2, 0x50484f4e

    invoke-virtual {v1, v0, v2}, Lcom/google/appinventor/components/runtime/Form;->startActivityForResult(Landroid/content/Intent;I)V

    .line 165
    :cond_0
    return-void
.end method

.method public MakePhoneCallDirect()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Directly initiates a phone call using the number in the PhoneNumber property."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.CALL_PHONE"
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->havePermission:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/PhoneCall$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/PhoneCall$2;-><init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/PhoneCallUtil;->makePhoneCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void
.end method

.method public PhoneCallEnded(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/EndedStatus;
        .end annotation
    .end param
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a phone call has ended. If status is 1, incoming call is missed or rejected; if status is 2, incoming call is answered before hanging up; if status is 3, outgoing call is hung up. phoneNumber is the ended call phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/EndedStatus;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/EndedStatus;

    move-result-object v0

    .line 258
    .local v0, "endedStatus":Lcom/google/appinventor/components/common/EndedStatus;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0, v0, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    .line 261
    :cond_0
    return-void
.end method

.method public PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Lcom/google/appinventor/components/common/EndedStatus;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/EndedStatus;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v0, "PhoneCallEnded"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method public PhoneCallStarted(ILjava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/StartedStatus;
        .end annotation
    .end param
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that a phonecall has started. If status is 1, incoming call is ringing; if status is 2, outgoing call is dialled. phoneNumber is the incoming/outgoing phone number."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.PROCESS_OUTGOING_CALLS",
            "android.permission.READ_CALL_LOG",
            "android.permission.READ_PHONE_STATE"
        }
    .end annotation

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/StartedStatus;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/StartedStatus;

    move-result-object v0

    .line 218
    .local v0, "startedStatus":Lcom/google/appinventor/components/common/StartedStatus;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0, v0, p2}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

.method public PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Lcom/google/appinventor/components/common/StartedStatus;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/StartedStatus;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v0, "PhoneCallStarted"

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public PhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall;->phoneNumber:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PhoneCall;->unregisterCallStateMonitor()V

    .line 386
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 293
    const v0, 0x50484f4e

    if-ne p1, v0, :cond_0

    .line 294
    sget-object v0, Lcom/google/appinventor/components/common/StartedStatus;->Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method
