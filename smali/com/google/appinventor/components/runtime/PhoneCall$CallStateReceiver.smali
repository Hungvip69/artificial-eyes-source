.class Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateReceiver"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field private status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PhoneCall;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 320
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 321
    const-string p1, ""

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    .line 322
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 326
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 328
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 331
    const-string v2, "incoming_number"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    .line 332
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v3, Lcom/google/appinventor/components/common/StartedStatus;->Incoming:Lcom/google/appinventor/components/common/StartedStatus;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 338
    :cond_1
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object v3, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne v2, v3, :cond_7

    .line 340
    sget-object v2, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 341
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/PhoneCall;->IncomingCallAnswered(Ljava/lang/String;)V

    goto :goto_1

    .line 343
    :cond_2
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 344
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object v3, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne v2, v3, :cond_3

    .line 345
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v3, Lcom/google/appinventor/components/common/EndedStatus;->IncomingRejected:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object v3, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->INCOMING_ANSWERED:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne v2, v3, :cond_4

    .line 347
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v3, Lcom/google/appinventor/components/common/EndedStatus;->IncomingEnded:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_4
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    sget-object v3, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    if-ne v2, v3, :cond_5

    .line 349
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v3, Lcom/google/appinventor/components/common/EndedStatus;->OutgoingEnded:Lcom/google/appinventor/components/common/EndedStatus;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallEndedAbstract(Lcom/google/appinventor/components/common/EndedStatus;Ljava/lang/String;)V

    .line 351
    :cond_5
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 352
    const-string v2, ""

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    goto :goto_1

    .line 354
    .end local v1    # "state":Ljava/lang/String;
    :cond_6
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 355
    sget-object v1, Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;->OUTGOING_WAITING:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->status:Lcom/google/appinventor/components/runtime/PhoneCall$CallStatus;

    .line 356
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    sget-object v2, Lcom/google/appinventor/components/common/StartedStatus;->Outgoing:Lcom/google/appinventor/components/common/StartedStatus;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneCall$CallStateReceiver;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/PhoneCall;->PhoneCallStartedAbstract(Lcom/google/appinventor/components/common/StartedStatus;Ljava/lang/String;)V

    goto :goto_2

    .line 354
    :cond_7
    :goto_1
    nop

    .line 359
    :goto_2
    return-void
.end method
