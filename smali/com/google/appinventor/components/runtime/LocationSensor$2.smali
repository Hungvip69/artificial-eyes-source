.class Lcom/google/appinventor/components/runtime/LocationSensor$2;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;->ReverseGeocode(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 716
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$2;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$2;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 718
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$2;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$2;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->GotAddress(Ljava/lang/String;)V

    .line 719
    return-void
.end method
