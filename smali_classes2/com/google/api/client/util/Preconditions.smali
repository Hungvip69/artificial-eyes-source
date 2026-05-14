.class public final Lcom/google/api/client/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkArgument(Z)V
    .locals 0
    .param p0, "expression"    # Z

    .line 35
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 36
    return-void
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .locals 0
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;

    .line 47
    invoke-static {p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "expression"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;

    .line 67
    invoke-static {p0, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 125
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 138
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 157
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static checkState(Z)V
    .locals 0
    .param p0, "expression"    # Z

    .line 79
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 80
    return-void
.end method

.method public static checkState(ZLjava/lang/Object;)V
    .locals 0
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/Object;

    .line 92
    invoke-static {p0, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 93
    return-void
.end method

.method public static varargs checkState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "expression"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;

    .line 113
    invoke-static {p0, p1, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method
