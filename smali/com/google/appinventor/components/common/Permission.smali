.class public final enum Lcom/google/appinventor/components/common/Permission;
.super Ljava/lang/Enum;
.source "Permission.java"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/Permission;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/Permission;

.field public static final enum AccountManager:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Audio:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Bluetooth:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BluetoothAdvertise:Lcom/google/appinventor/components/common/Permission;

.field public static final enum BluetoothConnect:Lcom/google/appinventor/components/common/Permission;

.field public static final enum BluetoothScan:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Camera:Lcom/google/appinventor/components/common/Permission;

.field public static final enum CoarseLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum FineLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum GetAccounts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Internet:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ManageAccounts:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MockLocation:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NetworkState:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ReadContacts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadMediaAudio:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadMediaImages:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadMediaVideo:Lcom/google/appinventor/components/common/Permission;

.field public static final enum UseCredentials:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Vibrate:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WifiState:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

.field private static final lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/Permission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ACCESS_COARSE_LOCATION"

    const-string v2, "CoarseLocation"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->CoarseLocation:Lcom/google/appinventor/components/common/Permission;

    .line 16
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ACCESS_FINE_LOCATION"

    const-string v2, "FineLocation"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->FineLocation:Lcom/google/appinventor/components/common/Permission;

    .line 17
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ACCESS_MOCK_LOCATION"

    const-string v2, "MockLocation"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->MockLocation:Lcom/google/appinventor/components/common/Permission;

    .line 19
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ACCESS_LOCATION_EXTRA_COMMANDS"

    const-string v2, "LocationExtraCommands"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

    .line 20
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "READ_EXTERNAL_STORAGE"

    const-string v2, "ReadExternalStorage"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

    .line 21
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "WRITE_EXTERNAL_STORAGE"

    const-string v2, "WriteExternalStorage"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v8, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

    .line 22
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "CAMERA"

    const-string v2, "Camera"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v9, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Camera:Lcom/google/appinventor/components/common/Permission;

    .line 23
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "RECORD_AUDIO"

    const-string v2, "Audio"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v10, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Audio:Lcom/google/appinventor/components/common/Permission;

    .line 24
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "VIBRATE"

    const-string v2, "Vibrate"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v11, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Vibrate:Lcom/google/appinventor/components/common/Permission;

    .line 26
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "INTERNET"

    const-string v2, "Internet"

    const/16 v12, 0x9

    invoke-direct {v0, v2, v12, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Internet:Lcom/google/appinventor/components/common/Permission;

    .line 28
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "NFC"

    const-string v2, "NearFieldCommunication"

    const/16 v13, 0xa

    invoke-direct {v0, v2, v13, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;

    .line 30
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "BLUETOOTH"

    const-string v2, "Bluetooth"

    const/16 v14, 0xb

    invoke-direct {v0, v2, v14, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->Bluetooth:Lcom/google/appinventor/components/common/Permission;

    .line 32
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "BLUETOOTH_ADMIN"

    const-string v2, "BluetoothAdmin"

    const/16 v15, 0xc

    invoke-direct {v0, v2, v15, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;

    .line 34
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ACCESS_WIFI_STATE"

    const-string v2, "WifiState"

    const/16 v15, 0xd

    invoke-direct {v0, v2, v15, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->WifiState:Lcom/google/appinventor/components/common/Permission;

    .line 36
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ACCESS_NETWORK_STATE"

    const-string v2, "NetworkState"

    const/16 v15, 0xe

    invoke-direct {v0, v2, v15, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->NetworkState:Lcom/google/appinventor/components/common/Permission;

    .line 38
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "ACCOUNT_MANAGER"

    const-string v2, "AccountManager"

    const/16 v15, 0xf

    invoke-direct {v0, v2, v15, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->AccountManager:Lcom/google/appinventor/components/common/Permission;

    .line 40
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "MANAGE_ACCOUNTS"

    const-string v2, "ManageAccounts"

    const/16 v15, 0x10

    invoke-direct {v0, v2, v15, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ManageAccounts:Lcom/google/appinventor/components/common/Permission;

    .line 42
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "GET_ACCOUNTS"

    const-string v2, "GetAccounts"

    const/16 v15, 0x11

    invoke-direct {v0, v2, v15, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->GetAccounts:Lcom/google/appinventor/components/common/Permission;

    .line 43
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "READ_CONTACTS"

    const-string v2, "ReadContacts"

    const/16 v15, 0x12

    invoke-direct {v0, v2, v15, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ReadContacts:Lcom/google/appinventor/components/common/Permission;

    .line 44
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "USE_CREDENTIALS"

    const-string v2, "UseCredentials"

    const/16 v15, 0x13

    invoke-direct {v0, v2, v15, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->UseCredentials:Lcom/google/appinventor/components/common/Permission;

    .line 47
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "BLUETOOTH_ADVERTISE"

    const-string v2, "BluetoothAdvertise"

    const/16 v15, 0x14

    invoke-direct {v0, v2, v15, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->BluetoothAdvertise:Lcom/google/appinventor/components/common/Permission;

    .line 48
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "BLUETOOTH_CONNECT"

    const-string v2, "BluetoothConnect"

    const/16 v15, 0x15

    invoke-direct {v0, v2, v15, v1}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->BluetoothConnect:Lcom/google/appinventor/components/common/Permission;

    .line 49
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const/16 v1, 0x16

    const-string v2, "BLUETOOTH_SCAN"

    const-string v15, "BluetoothScan"

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->BluetoothScan:Lcom/google/appinventor/components/common/Permission;

    .line 51
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const/16 v1, 0x17

    const-string v2, "READ_MEDIA_IMAGES"

    const-string v15, "ReadMediaImages"

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ReadMediaImages:Lcom/google/appinventor/components/common/Permission;

    .line 52
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const/16 v1, 0x18

    const-string v2, "READ_MEDIA_VIDEO"

    const-string v15, "ReadMediaVideo"

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ReadMediaVideo:Lcom/google/appinventor/components/common/Permission;

    .line 53
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const/16 v1, 0x19

    const-string v2, "READ_MEDIA_AUDIO"

    const-string v15, "ReadMediaAudio"

    invoke-direct {v0, v15, v1, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->ReadMediaAudio:Lcom/google/appinventor/components/common/Permission;

    .line 14
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/google/appinventor/components/common/Permission;

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->CoarseLocation:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->FineLocation:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->MockLocation:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->Camera:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->Audio:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->Vibrate:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->Internet:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->Bluetooth:Lcom/google/appinventor/components/common/Permission;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->WifiState:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->NetworkState:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->AccountManager:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->ManageAccounts:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->GetAccounts:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->ReadContacts:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->UseCredentials:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->BluetoothAdvertise:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->BluetoothConnect:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->BluetoothScan:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->ReadMediaImages:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->ReadMediaVideo:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/Permission;->ReadMediaAudio:Lcom/google/appinventor/components/common/Permission;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->$VALUES:[Lcom/google/appinventor/components/common/Permission;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->lookup:Ljava/util/Map;

    .line 68
    invoke-static {}, Lcom/google/appinventor/components/common/Permission;->values()[Lcom/google/appinventor/components/common/Permission;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 69
    .local v2, "perm":Lcom/google/appinventor/components/common/Permission;
    sget-object v4, Lcom/google/appinventor/components/common/Permission;->lookup:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v2    # "perm":Lcom/google/appinventor/components/common/Permission;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "perm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/google/appinventor/components/common/Permission;->value:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/Permission;
    .locals 1
    .param p0, "perm"    # Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/google/appinventor/components/common/Permission;->lookup:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/Permission;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/Permission;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/Permission;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/Permission;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/Permission;->$VALUES:[Lcom/google/appinventor/components/common/Permission;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/Permission;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/common/Permission;->value:Ljava/lang/String;

    return-object v0
.end method
