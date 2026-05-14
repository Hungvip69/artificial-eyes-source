.class Lcom/google/appinventor/components/runtime/util/YailProcedure$1;
.super Ljava/lang/Object;
.source "YailProcedure.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/YailProcedure;-><init>(Lgnu/mapping/Procedure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$methodToCall:Lgnu/mapping/Procedure;


# direct methods
.method constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/YailProcedure$1;->val$methodToCall:Lgnu/mapping/Procedure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs execute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;

    .line 90
    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailProcedure$1;->numArgs()I

    move-result v1

    const-string v2, ", get "

    if-lt v0, v1, :cond_1

    .line 93
    array-length v0, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailProcedure$1;->numArgs()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailProcedure$1;->val$methodToCall:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to call YailProcedure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 94
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 95
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailProcedure$1;->numArgs()I

    move-result v1

    array-length v3, p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call YailProcedure: too many arguments: require "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 92
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailProcedure$1;->numArgs()I

    move-result v1

    array-length v3, p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to call YailProcedure: not enough arguments: require "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public numArgs()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailProcedure$1;->val$methodToCall:Lgnu/mapping/Procedure;

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->minArgs()I

    move-result v0

    return v0
.end method
