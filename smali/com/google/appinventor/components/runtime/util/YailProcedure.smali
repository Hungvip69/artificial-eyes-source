.class public final Lcom/google/appinventor/components/runtime/util/YailProcedure;
.super Ljava/lang/Object;
.source "YailProcedure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;
    }
.end annotation


# static fields
.field public static final RETURN_VALUE_WHEN_NULL:Ljava/lang/Object;


# instance fields
.field private final executable:Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailProcedure;->RETURN_VALUE_WHEN_NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;)V
    .locals 0
    .param p1, "executable"    # Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/YailProcedure;->executable:Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;

    .line 85
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .locals 1
    .param p1, "methodToCall"    # Lgnu/mapping/Procedure;

    .line 87
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailProcedure$1;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/util/YailProcedure$1;-><init>(Lgnu/mapping/Procedure;)V

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailProcedure;-><init>(Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;)V

    .line 110
    return-void
.end method

.method public static final callProcedure(Lcom/google/appinventor/components/runtime/util/YailProcedure;Lgnu/lists/LList;)Ljava/lang/Object;
    .locals 1
    .param p0, "procedure"    # Lcom/google/appinventor/components/runtime/util/YailProcedure;
    .param p1, "args"    # Lgnu/lists/LList;

    .line 73
    invoke-virtual {p1}, Lgnu/lists/LList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailProcedure;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final create(Lgnu/mapping/Procedure;)Lcom/google/appinventor/components/runtime/util/YailProcedure;
    .locals 2
    .param p0, "procedure"    # Lgnu/mapping/Procedure;

    .line 27
    if-eqz p0, :cond_0

    .line 30
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailProcedure;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/YailProcedure;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot create YailProcedure since the procedure is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final createWithName(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailProcedure;
    .locals 8
    .param p0, "procedureName"    # Ljava/lang/String;

    .line 34
    const-string v0, "YailProcedure"

    const-string v1, "^[^-0-9!&%^/>=<`\'\"#:;,\\\\\\^\\*\\+\\.\\(\\)\\|\\{\\}\\[\\]\\ ][^-!&%^/>=<\'\"#:;,\\\\\\^\\*\\+\\.\\(\\)\\|\\{\\}\\[\\]\\ ]*$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createWithName: procedureName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_0

    .line 46
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailProcedure;->escapeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "processedName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWithName: escaped procedureName for Repl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    .end local v1    # "processedName":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    move-object v1, v0

    .line 51
    .restart local v1    # "processedName":Ljava/lang/String;
    :goto_0
    const-string v0, "com.google.youngandroid.runtime"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "lookupGlobalVarInCurrentFormEnvironment"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lgnu/mapping/Symbol;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 52
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "p$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    const/4 v2, 0x0

    aput-object v2, v3, v7

    .line 53
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    .line 51
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailProcedure;->create(Lgnu/mapping/Procedure;)Lcom/google/appinventor/components/runtime/util/YailProcedure;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 57
    .end local v1    # "processedName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read global procedure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 37
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Procedure name is not legal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static escapeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-char v4, v1, v3

    .line 64
    .local v4, "c":C
    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 67
    :cond_0
    const-string v5, "u"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final numArgs(Lcom/google/appinventor/components/runtime/util/YailProcedure;)I
    .locals 1
    .param p0, "procedure"    # Lcom/google/appinventor/components/runtime/util/YailProcedure;

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailProcedure;->numArgs()I

    move-result v0

    return v0
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailProcedure;->executable:Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;

    invoke-interface {v0, p1}, Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;->execute([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    .local v0, "returnVal":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lgnu/mapping/Values;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgnu/mapping/Values;

    .line 120
    invoke-virtual {v1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    move-object v1, v0

    goto :goto_1

    .line 121
    :cond_1
    :goto_0
    sget-object v1, Lcom/google/appinventor/components/runtime/util/YailProcedure;->RETURN_VALUE_WHEN_NULL:Ljava/lang/Object;

    .line 118
    :goto_1
    return-object v1
.end method

.method public numArgs()I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/YailProcedure;->executable:Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/YailProcedure$Executable;->numArgs()I

    move-result v0

    return v0
.end method
