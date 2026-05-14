.class Lcom/google/appinventor/components/runtime/LocationSensor$1;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;->Geocode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;DD)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .line 692
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$address:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$latitude:D

    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$longitude:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 694
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$address:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$latitude:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$longitude:D

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/LocationSensor;->GotLocationFromAddress(Ljava/lang/String;DD)V

    .line 695
    return-void
.end method
