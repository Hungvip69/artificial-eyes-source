.class public Lgnu/expr/ApplicationMainSupport;
.super Ljava/lang/Object;
.source "ApplicationMainSupport.java"


# static fields
.field public static commandLineArgArray:[Ljava/lang/String;

.field public static commandLineArguments:Lgnu/lists/FVector;

.field public static processCommandLinePropertyAssignments:Z

.field static propertyFields:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 109
    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "out:doctype-system"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "gnu.xml.XMLPrinter"

    aput-object v5, v2, v4

    const/4 v6, 0x2

    const-string v7, "doctypeSystem"

    aput-object v7, v2, v6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "out:doctype-public"

    aput-object v7, v2, v3

    aput-object v5, v2, v4

    const-string v7, "doctypePublic"

    aput-object v7, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "out:base"

    aput-object v7, v2, v3

    const-string v7, "gnu.kawa.functions.DisplayFormat"

    aput-object v7, v2, v4

    const-string v8, "outBase"

    aput-object v8, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "out:radix"

    aput-object v8, v2, v3

    aput-object v7, v2, v4

    const-string v7, "outRadix"

    aput-object v7, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "out:line-length"

    aput-object v7, v2, v3

    const-string v7, "gnu.text.PrettyWriter"

    aput-object v7, v2, v4

    const-string v8, "lineLengthLoc"

    aput-object v8, v2, v6

    const/4 v9, 0x4

    aput-object v2, v0, v9

    new-array v2, v1, [Ljava/lang/String;

    const-string v9, "out:right-margin"

    aput-object v9, v2, v3

    aput-object v7, v2, v4

    aput-object v8, v2, v6

    const/4 v8, 0x5

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "out:miser-width"

    aput-object v8, v2, v3

    aput-object v7, v2, v4

    const-string v7, "miserWidthLoc"

    aput-object v7, v2, v6

    const/4 v7, 0x6

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "out:xml-indent"

    aput-object v7, v2, v3

    aput-object v5, v2, v4

    const-string v5, "indentLoc"

    aput-object v5, v2, v6

    const/4 v5, 0x7

    aput-object v2, v0, v5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "display:toolkit"

    aput-object v2, v1, v3

    const-string v2, "gnu.kawa.models.Display"

    aput-object v2, v1, v4

    const-string v2, "myDisplay"

    aput-object v2, v1, v6

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lgnu/expr/ApplicationMainSupport;->propertyFields:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processArgs([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "iarg":I
    sget-boolean v1, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    if-eqz v1, :cond_0

    .line 37
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1}, Lgnu/expr/ApplicationMainSupport;->processSetProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p0, v0}, Lgnu/expr/ApplicationMainSupport;->setArgs([Ljava/lang/String;I)V

    .line 41
    return-void
.end method

.method public static processSetProperties()V
    .locals 3

    .line 18
    sget-object v0, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    .line 19
    .local v0, "args":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 20
    const/4 v1, 0x1

    sput-boolean v1, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    .local v1, "iarg":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-static {v2}, Lgnu/expr/ApplicationMainSupport;->processSetProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_1
    if-eqz v1, :cond_2

    .line 27
    invoke-static {v0, v1}, Lgnu/expr/ApplicationMainSupport;->setArgs([Ljava/lang/String;I)V

    .line 29
    .end local v1    # "iarg":I
    :cond_2
    :goto_1
    return-void
.end method

.method public static processSetProperty(Ljava/lang/String;)Z
    .locals 12
    .param p0, "arg"    # Ljava/lang/String;

    .line 66
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 67
    .local v0, "ci":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 68
    return v1

    .line 69
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "key":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x0

    .line 73
    .local v4, "i":I
    :goto_0
    sget-object v5, Lgnu/expr/ApplicationMainSupport;->propertyFields:[[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 74
    .local v5, "propertyField":[Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    aget-object v8, v5, v1

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    aget-object v8, v5, v7

    .line 79
    .local v8, "cname":Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v5, v9

    .line 82
    .local v9, "fname":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 83
    .local v10, "clas":Ljava/lang/Class;
    invoke-virtual {v10, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/ThreadLocation;

    .line 85
    .local v11, "loc":Lgnu/mapping/ThreadLocation;
    invoke-virtual {v11, v3}, Lgnu/mapping/ThreadLocation;->setGlobal(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    nop

    .line 96
    .end local v4    # "i":I
    .end local v5    # "propertyField":[Ljava/lang/String;
    .end local v8    # "cname":Ljava/lang/String;
    .end local v9    # "fname":Ljava/lang/String;
    .end local v10    # "clas":Ljava/lang/Class;
    .end local v11    # "loc":Lgnu/mapping/ThreadLocation;
    :goto_1
    invoke-static {v2}, Lgnu/mapping/Symbol;->parse(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 98
    .local v1, "symbol":Lgnu/mapping/Symbol;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    .line 99
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    .line 100
    .local v4, "current":Lgnu/mapping/Environment;
    invoke-virtual {v4, v1, v6, v3}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    return v7

    .line 88
    .end local v1    # "symbol":Lgnu/mapping/Symbol;
    .local v4, "i":I
    .restart local v5    # "propertyField":[Ljava/lang/String;
    .restart local v8    # "cname":Ljava/lang/String;
    .restart local v9    # "fname":Ljava/lang/String;
    :catchall_0
    move-exception v6

    .line 90
    .local v6, "ex":Ljava/lang/Throwable;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error setting property "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 71
    .end local v5    # "propertyField":[Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v8    # "cname":Ljava/lang/String;
    .end local v9    # "fname":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static setArgs([Ljava/lang/String;I)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "arg_start"    # I

    .line 45
    array-length v0, p0

    sub-int/2addr v0, p1

    .line 46
    .local v0, "nargs":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 47
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_0

    .line 48
    sput-object p0, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    goto :goto_1

    .line 51
    :cond_0
    new-array v2, v0, [Ljava/lang/String;

    .line 52
    .local v2, "strings":[Ljava/lang/String;
    move v3, v0

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    .line 53
    add-int v4, v3, p1

    aget-object v4, p0, v4

    aput-object v4, v2, v3

    goto :goto_0

    .line 54
    .end local v3    # "i":I
    :cond_1
    sput-object v2, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    .line 56
    .end local v2    # "strings":[Ljava/lang/String;
    :goto_1
    move v2, v0

    .local v2, "i":I
    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 57
    new-instance v3, Lgnu/lists/FString;

    add-int v4, v2, p1

    aget-object v4, p0, v4

    invoke-direct {v3, v4}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    goto :goto_2

    .line 58
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lgnu/lists/FVector;

    invoke-direct {v2, v1}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    sput-object v2, Lgnu/expr/ApplicationMainSupport;->commandLineArguments:Lgnu/lists/FVector;

    .line 60
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    const-string v3, "command-line-arguments"

    sget-object v4, Lgnu/expr/ApplicationMainSupport;->commandLineArguments:Lgnu/lists/FVector;

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Environment;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method
