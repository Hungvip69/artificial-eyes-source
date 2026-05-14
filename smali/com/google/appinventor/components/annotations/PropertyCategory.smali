.class public final enum Lcom/google/appinventor/components/annotations/PropertyCategory;
.super Ljava/lang/Enum;
.source "PropertyCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/annotations/PropertyCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum APPLICATION:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum IOS:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;

.field public static final enum UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 21
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "Behavior"

    const-string v2, "BEHAVIOR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 29
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "Appearance"

    const-string v2, "APPEARANCE"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 34
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "Deprecated"

    const-string v2, "DEPRECATED"

    const/4 v5, 0x2

    invoke-direct {v0, v2, v5, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 40
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "Unspecified"

    const-string v2, "UNSET"

    const/4 v6, 0x3

    invoke-direct {v0, v2, v6, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 47
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "Application"

    const-string v2, "APPLICATION"

    const/4 v7, 0x4

    invoke-direct {v0, v2, v7, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPLICATION:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 55
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "Advanced"

    const-string v2, "ADVANCED"

    const/4 v8, 0x5

    invoke-direct {v0, v2, v8, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 57
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "General"

    const-string v2, "GENERAL"

    const/4 v9, 0x6

    invoke-direct {v0, v2, v9, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 59
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "Theming"

    const-string v2, "THEMING"

    const/4 v10, 0x7

    invoke-direct {v0, v2, v10, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 61
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "Publishing"

    const-string v2, "PUBLISHING"

    const/16 v11, 0x8

    invoke-direct {v0, v2, v11, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 62
    new-instance v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    const-string v1, "iOS Settings"

    const-string v2, "IOS"

    const/16 v12, 0x9

    invoke-direct {v0, v2, v12, v1}, Lcom/google/appinventor/components/annotations/PropertyCategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->IOS:Lcom/google/appinventor/components/annotations/PropertyCategory;

    .line 13
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->DEPRECATED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->UNSET:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->APPLICATION:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->ADVANCED:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->GENERAL:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->THEMING:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->PUBLISHING:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/appinventor/components/annotations/PropertyCategory;->IOS:Lcom/google/appinventor/components/annotations/PropertyCategory;

    aput-object v1, v0, v12

    sput-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->$VALUES:[Lcom/google/appinventor/components/annotations/PropertyCategory;

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

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-object p3, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->name:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/annotations/PropertyCategory;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/appinventor/components/annotations/PropertyCategory;->$VALUES:[Lcom/google/appinventor/components/annotations/PropertyCategory;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/annotations/PropertyCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/annotations/PropertyCategory;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/annotations/PropertyCategory;->name:Ljava/lang/String;

    return-object v0
.end method
