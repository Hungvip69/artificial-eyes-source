.class public Lcom/google/api/client/testing/json/MockJsonGenerator;
.super Lcom/google/api/client/json/JsonGenerator;
.source "MockJsonGenerator.java"


# instance fields
.field private final factory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/google/api/client/json/JsonFactory;

    .line 38
    invoke-direct {p0}, Lcom/google/api/client/json/JsonGenerator;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/api/client/testing/json/MockJsonGenerator;->factory:Lcom/google/api/client/json/JsonFactory;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/api/client/testing/json/MockJsonGenerator;->factory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public writeBoolean(Z)V
    .locals 0
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public writeEndArray()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public writeEndObject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public writeFieldName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public writeNull()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public writeNumber(D)V
    .locals 0
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    return-void
.end method

.method public writeNumber(F)V
    .locals 0
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    return-void
.end method

.method public writeNumber(I)V
    .locals 0
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public writeNumber(J)V
    .locals 0
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public writeNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "encodedValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public writeNumber(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "v"    # Ljava/math/BigDecimal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    return-void
.end method

.method public writeNumber(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "v"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public writeStartArray()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public writeStartObject()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    return-void
.end method
