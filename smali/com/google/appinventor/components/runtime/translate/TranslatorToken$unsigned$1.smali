.class Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$1;
.super Lcom/google/protobuf/AbstractParser;
.source "TranslatorToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 793
    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 798
    new-instance v0, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned-IA;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 793
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/appinventor/components/runtime/translate/TranslatorToken$unsigned;

    move-result-object p1

    return-object p1
.end method
