.class public final enum Lcom/google/appinventor/components/common/ComponentCategory;
.super Ljava/lang/Enum;
.source "ComponentCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/ComponentCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum CHARTS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum DATASCIENCE:Lcom/google/appinventor/components/common/ComponentCategory;

.field private static final DOC_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum FUTURE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

.field public static final enum USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 50
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "USERINTERFACE"

    const/4 v2, 0x0

    const-string v3, "User Interface"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 51
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "LAYOUT"

    const/4 v4, 0x1

    const-string v5, "Layout"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 52
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "MEDIA"

    const/4 v6, 0x2

    const-string v7, "Media"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 53
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "ANIMATION"

    const/4 v8, 0x3

    const-string v9, "Drawing and Animation"

    invoke-direct {v0, v1, v8, v9}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 54
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "MAPS"

    const/4 v10, 0x4

    const-string v11, "Maps"

    invoke-direct {v0, v1, v10, v11}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 55
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "CHARTS"

    const/4 v12, 0x5

    const-string v13, "Charts"

    invoke-direct {v0, v1, v12, v13}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->CHARTS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 56
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "DATASCIENCE"

    const/4 v14, 0x6

    const-string v15, "Data Science"

    invoke-direct {v0, v1, v14, v15}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DATASCIENCE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 57
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "SENSORS"

    const/4 v14, 0x7

    const-string v12, "Sensors"

    invoke-direct {v0, v1, v14, v12}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 58
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "SOCIAL"

    const/16 v14, 0x8

    const-string v10, "Social"

    invoke-direct {v0, v1, v14, v10}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 59
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "STORAGE"

    const/16 v14, 0x9

    const-string v8, "Storage"

    invoke-direct {v0, v1, v14, v8}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 60
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const-string v1, "CONNECTIVITY"

    const/16 v14, 0xa

    const-string v6, "Connectivity"

    invoke-direct {v0, v1, v14, v6}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 61
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v1, 0xb

    const-string v14, "LEGO\u00ae MINDSTORMS\u00ae"

    const-string v4, "LEGOMINDSTORMS"

    invoke-direct {v0, v4, v1, v14}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 62
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v1, 0xc

    const-string v4, "Experimental"

    const-string v14, "EXPERIMENTAL"

    invoke-direct {v0, v14, v1, v4}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 63
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v1, 0xd

    const-string v4, "Extension"

    const-string v14, "EXTENSION"

    invoke-direct {v0, v14, v1, v4}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 64
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v1, 0xe

    const-string v4, "Future"

    const-string v14, "FUTURE"

    invoke-direct {v0, v14, v1, v4}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->FUTURE:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 65
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v1, 0xf

    const-string v4, "For internal use only"

    const-string v14, "INTERNAL"

    invoke-direct {v0, v14, v1, v4}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 67
    new-instance v0, Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v1, 0x10

    const-string v4, "Uninitialized"

    const-string v14, "UNINITIALIZED"

    invoke-direct {v0, v14, v1, v4}, Lcom/google/appinventor/components/common/ComponentCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

    .line 48
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/google/appinventor/components/common/ComponentCategory;

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT:Lcom/google/appinventor/components/common/ComponentCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->CHARTS:Lcom/google/appinventor/components/common/ComponentCategory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->DATASCIENCE:Lcom/google/appinventor/components/common/ComponentCategory;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->FUTURE:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/common/ComponentCategory;->UNINITIALIZED:Lcom/google/appinventor/components/common/ComponentCategory;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->$VALUES:[Lcom/google/appinventor/components/common/ComponentCategory;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    .line 74
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "userinterface"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "layout"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "media"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "animation"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "maps"

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "charts"

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "datascience"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "sensors"

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "social"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "storage"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "connectivity"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "LEGO\u00ae MINDSTORMS\u00ae"

    const-string v2, "legomindstorms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Experimental"

    const-string v2, "experimental"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Extension"

    const-string v2, "extension"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    const-string v1, "Future"

    const-string v2, "future"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "categoryName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput-object p3, p0, Lcom/google/appinventor/components/common/ComponentCategory;->name:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/common/ComponentCategory;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/common/ComponentCategory;
    .locals 1

    .line 48
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->$VALUES:[Lcom/google/appinventor/components/common/ComponentCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/ComponentCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/ComponentCategory;

    return-object v0
.end method


# virtual methods
.method public getDocName()Ljava/lang/String;
    .locals 2

    .line 118
    sget-object v0, Lcom/google/appinventor/components/common/ComponentCategory;->DOC_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/appinventor/components/common/ComponentCategory;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/common/ComponentCategory;->name:Ljava/lang/String;

    return-object v0
.end method
