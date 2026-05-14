.class public abstract Lgnu/kawa/models/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field public static myDisplay:Lgnu/mapping/ThreadLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "my-display"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/models/Display;->myDisplay:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDimension(Ljava/awt/geom/Dimension2D;)Ljava/awt/Dimension;
    .locals 7
    .param p0, "dim"    # Ljava/awt/geom/Dimension2D;

    .line 84
    instance-of v0, p0, Ljava/awt/Dimension;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Ljava/awt/Dimension;

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v5

    add-double/2addr v5, v3

    double-to-int v2, v5

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0

    .line 85
    :cond_1
    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/awt/Dimension;

    return-object v0
.end method

.method public static getInstance()Lgnu/kawa/models/Display;
    .locals 11

    .line 18
    sget-object v0, Lgnu/kawa/models/Display;->myDisplay:Lgnu/mapping/ThreadLocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    .local v0, "d":Ljava/lang/Object;
    instance-of v2, v0, Lgnu/kawa/models/Display;

    if-eqz v2, :cond_0

    .line 20
    move-object v1, v0

    check-cast v1, Lgnu/kawa/models/Display;

    return-object v1

    .line 21
    :cond_0
    const-string v2, "swing"

    if-nez v0, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "name":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 25
    .local v5, "noClasses":[Ljava/lang/Class;
    :goto_1
    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 26
    .local v6, "comma":I
    const/4 v7, 0x0

    .line 27
    .local v7, "rest":Ljava/lang/String;
    if-ltz v6, :cond_2

    .line 29
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 33
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 34
    const-string v3, "gnu.kawa.swingviews.SwingDisplay"

    goto :goto_2

    .line 35
    :cond_3
    const-string v8, "swt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 36
    const-string v3, "gnu.kawa.swtviews.SwtDisplay"

    goto :goto_2

    .line 37
    :cond_4
    const-string v8, "echo2"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 38
    const-string v3, "gnu.kawa.echo2.Echo2Display"

    .line 42
    :cond_5
    :goto_2
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 43
    .local v8, "clas":Ljava/lang/Class;
    const-string v9, "getInstance"

    invoke-virtual {v8, v9, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 45
    .local v9, "method":Ljava/lang/reflect/Method;
    new-array v10, v4, [Ljava/lang/Object;

    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/kawa/models/Display;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v10

    .line 53
    .end local v8    # "clas":Ljava/lang/Class;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v1

    .line 55
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 47
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v8

    .line 49
    .local v8, "ex":Ljava/lang/ClassNotFoundException;
    if-eqz v7, :cond_6

    .line 51
    move-object v3, v7

    .line 56
    .end local v8    # "ex":Ljava/lang/ClassNotFoundException;
    nop

    .line 57
    .end local v6    # "comma":I
    .end local v7    # "rest":Ljava/lang/String;
    goto :goto_1

    .line 50
    .restart local v6    # "comma":I
    .restart local v7    # "rest":Ljava/lang/String;
    .restart local v8    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no display toolkit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public abstract addBox(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
.end method

.method public abstract addButton(Lgnu/kawa/models/Button;Ljava/lang/Object;)V
.end method

.method public abstract addImage(Lgnu/kawa/models/DrawImage;Ljava/lang/Object;)V
.end method

.method public abstract addLabel(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
.end method

.method public addSpacer(Lgnu/kawa/models/Spacer;Ljava/lang/Object;)V
    .locals 2
    .param p1, "model"    # Lgnu/kawa/models/Spacer;
    .param p2, "where"    # Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Error;

    const-string v1, "makeView called on Spacer"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addText(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .locals 2
    .param p1, "model"    # Lgnu/kawa/models/Text;
    .param p2, "where"    # Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Error;

    const-string v1, "makeView called on Text"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract addView(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .locals 2
    .param p1, "component"    # Ljava/lang/Object;

    .line 93
    instance-of v0, p1, Lgnu/lists/FString;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/kawa/models/Model;

    return-object v0

    .line 94
    :cond_1
    :goto_0
    new-instance v0, Lgnu/kawa/models/Label;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/kawa/models/Label;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract makeWindow()Lgnu/kawa/models/Window;
.end method
