.class public final enum Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
.super Ljava/lang/Enum;
.source "ImageBotToken.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

.field public static final enum CREATE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

.field public static final CREATE_VALUE:I = 0x0

.field public static final enum EDIT:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

.field public static final EDIT_VALUE:I = 0x1

.field private static final VALUES:[Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1873
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    const-string v1, "CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->CREATE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    .line 1877
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    const-string v1, "EDIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->EDIT:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    .line 1868
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    sget-object v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->CREATE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->EDIT:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->$VALUES:[Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    .line 1915
    new-instance v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1935
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->values()[Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->VALUES:[Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1948
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1949
    iput p3, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->value:I

    .line 1950
    return-void
.end method

.method public static forNumber(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    .locals 1
    .param p0, "value"    # I

    .line 1903
    packed-switch p0, :pswitch_data_0

    .line 1906
    const/4 v0, 0x0

    return-object v0

    .line 1905
    :pswitch_0
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->EDIT:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    return-object v0

    .line 1904
    :pswitch_1
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->CREATE:Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 1932
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;",
            ">;"
        }
    .end annotation

    .line 1912
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1899
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->forNumber(I)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$EnumValueDescriptor;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    .locals 2
    .param p0, "desc"    # Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    .line 1939
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1943
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->VALUES:[Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    .line 1940
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EnumValueDescriptor is not for this type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1868
    const-class v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;
    .locals 1

    .line 1868
    sget-object v0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->$VALUES:[Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 1928
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    .line 1891
    iget v0, p0, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->value:I

    return v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 1924
    invoke-static {}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->getDescriptor()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/imagebot/ImageBotToken$request$OperationType;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0
.end method
