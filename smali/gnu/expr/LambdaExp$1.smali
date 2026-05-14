.class Lgnu/expr/LambdaExp$1;
.super Ljava/lang/Object;
.source "LambdaExp.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgnu/expr/LambdaExp;

.field final synthetic val$mangled:Ljava/lang/String;


# direct methods
.method constructor <init>(Lgnu/expr/LambdaExp;Ljava/lang/String;)V
    .locals 0

    .line 932
    iput-object p1, p0, Lgnu/expr/LambdaExp$1;->this$0:Lgnu/expr/LambdaExp;

    iput-object p2, p0, Lgnu/expr/LambdaExp$1;->val$mangled:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 935
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Method;

    .line 936
    .local v0, "method":Lgnu/bytecode/Method;
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/LambdaExp$1;->val$mangled:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 937
    return v2

    .line 938
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v1

    .line 939
    .local v1, "ptypes":[Lgnu/bytecode/Type;
    array-length v3, v1

    iget-object v4, p0, Lgnu/expr/LambdaExp$1;->this$0:Lgnu/expr/LambdaExp;

    iget v4, v4, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
