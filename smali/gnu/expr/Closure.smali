.class Lgnu/expr/Closure;
.super Lgnu/mapping/MethodProc;
.source "LambdaExp.java"


# instance fields
.field evalFrames:[[Ljava/lang/Object;

.field lambda:Lgnu/expr/LambdaExp;


# direct methods
.method public constructor <init>(Lgnu/expr/LambdaExp;Lgnu/mapping/CallContext;)V
    .locals 4
    .param p1, "lexp"    # Lgnu/expr/LambdaExp;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 1973
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 1974
    iput-object p1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    .line 1976
    iget-object v0, p2, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 1977
    .local v0, "oldFrames":[[Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 1979
    array-length v1, v0

    .line 1980
    .local v1, "n":I
    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    if-nez v2, :cond_0

    .line 1981
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1983
    :cond_0
    new-array v2, v1, [[Ljava/lang/Object;

    iput-object v2, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    .line 1984
    iget-object v2, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1986
    .end local v1    # "n":I
    :cond_1
    iget-object v1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/Closure;->setSymbol(Ljava/lang/Object;)V

    .line 1987
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 10
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2120
    iget-object v0, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-static {v0}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v0

    .line 2121
    .local v0, "level":I
    iget-object v1, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 2122
    .local v1, "evalFrame":[Ljava/lang/Object;
    iget-object v2, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 2124
    .local v2, "saveFrames":[[Ljava/lang/Object;
    iget-object v3, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    array-length v3, v3

    .line 2125
    .local v3, "numFrames":I
    :goto_0
    if-lt v0, v3, :cond_1

    .line 2126
    move v3, v0

    .line 2127
    :cond_1
    add-int/lit8 v3, v3, 0xa

    .line 2128
    new-array v5, v3, [[Ljava/lang/Object;

    .line 2129
    .local v5, "newFrames":[[Ljava/lang/Object;
    iget-object v6, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 2130
    iget-object v6, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    iget-object v7, p0, Lgnu/expr/Closure;->evalFrames:[[Ljava/lang/Object;

    array-length v7, v7

    invoke-static {v6, v4, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2131
    :cond_2
    aput-object v1, v5, v0

    .line 2132
    iput-object v5, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 2136
    :try_start_0
    iget-object v4, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v4, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-nez v4, :cond_5

    .line 2140
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v6, "procedure "

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2141
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2142
    .local v6, "name":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 2143
    const-string v7, "<anonymous>"

    move-object v6, v7

    .line 2144
    :cond_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2145
    iget-object v7, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v7}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v7

    .line 2146
    .local v7, "line":I
    if-lez v7, :cond_4

    .line 2148
    const-string v8, " at line "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2149
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2151
    :cond_4
    const-string v8, " was called before it was expanded"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2152
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "level":I
    .end local v1    # "evalFrame":[Ljava/lang/Object;
    .end local v2    # "saveFrames":[[Ljava/lang/Object;
    .end local v3    # "numFrames":I
    .end local v5    # "newFrames":[[Ljava/lang/Object;
    .end local p1    # "ctx":Lgnu/mapping/CallContext;
    throw v8

    .line 2154
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "line":I
    .restart local v0    # "level":I
    .restart local v1    # "evalFrame":[Ljava/lang/Object;
    .restart local v2    # "saveFrames":[[Ljava/lang/Object;
    .restart local v3    # "numFrames":I
    .restart local v5    # "newFrames":[[Ljava/lang/Object;
    .restart local p1    # "ctx":Lgnu/mapping/CallContext;
    :cond_5
    iget-object v4, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v4, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    iput-object v2, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 2159
    nop

    .line 2160
    return-void

    .line 2158
    :catchall_0
    move-exception v4

    iput-object v2, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    throw v4
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 2164
    invoke-super {p0, p1, p2}, Lgnu/mapping/MethodProc;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2165
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2166
    iget-object v1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v1, p1, p2}, Lgnu/expr/LambdaExp;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2167
    :cond_0
    return-object v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 1
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 1991
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 1996
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 2001
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v0, p3}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 2006
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v0, p4}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .line 2012
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v0, p5}, Lgnu/expr/Closure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 25
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 2017
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Closure;->numArgs()I

    move-result v4

    .line 2018
    .local v4, "num":I
    array-length v5, v2

    .line 2019
    .local v5, "nargs":I
    and-int/lit16 v6, v4, 0xfff

    .line 2020
    .local v6, "min":I
    if-ge v5, v6, :cond_0

    .line 2021
    const/high16 v0, -0xf0000

    or-int/2addr v0, v6

    return v0

    .line 2022
    :cond_0
    shr-int/lit8 v7, v4, 0xc

    .line 2023
    .local v7, "max":I
    if-le v5, v7, :cond_1

    if-ltz v7, :cond_1

    .line 2024
    const/high16 v0, -0xe0000

    or-int/2addr v0, v7

    return v0

    .line 2026
    :cond_1
    iget-object v0, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v0, v0, Lgnu/expr/LambdaExp;->frameSize:I

    new-array v8, v0, [Ljava/lang/Object;

    .line 2027
    .local v8, "evalFrame":[Ljava/lang/Object;
    iget-object v0, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    array-length v0, v0

    :goto_0
    move v10, v0

    .line 2028
    .local v10, "key_args":I
    iget-object v0, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v0, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    array-length v0, v0

    sub-int/2addr v0, v10

    :goto_1
    move v11, v0

    .line 2030
    .local v11, "opt_args":I
    const/4 v0, 0x0

    .line 2031
    .local v0, "i":I
    const/4 v12, 0x0

    .line 2032
    .local v12, "opt_i":I
    const/4 v13, 0x0

    .line 2033
    .local v13, "key_i":I
    iget-object v14, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v14, v14, Lgnu/expr/LambdaExp;->min_args:I

    .line 2034
    .local v14, "min_args":I
    iget-object v15, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v15}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v15

    .local v15, "decl":Lgnu/expr/Declaration;
    const/16 v16, 0x0

    move-object v9, v15

    move v15, v13

    move v13, v12

    move v12, v0

    .end local v0    # "i":I
    .local v9, "decl":Lgnu/expr/Declaration;
    .local v12, "i":I
    .local v13, "opt_i":I
    .local v15, "key_i":I
    :goto_2
    if-eqz v9, :cond_e

    .line 2038
    const/high16 v17, -0xc0000

    if-ge v12, v14, :cond_4

    .line 2039
    add-int/lit8 v18, v12, 0x1

    .end local v12    # "i":I
    .local v18, "i":I
    aget-object v12, v2, v12

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v4, v18

    move/from16 v18, v7

    .local v12, "value":Ljava/lang/Object;
    goto/16 :goto_6

    .line 2040
    .end local v18    # "i":I
    .local v12, "i":I
    :cond_4
    add-int v0, v14, v11

    if-ge v12, v0, :cond_6

    .line 2042
    if-ge v12, v5, :cond_5

    .line 2043
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "i":I
    .restart local v0    # "i":I
    aget-object v12, v2, v12

    move-object/from16 v24, v12

    move v12, v0

    move-object/from16 v0, v24

    .local v12, "value":Ljava/lang/Object;
    goto :goto_3

    .line 2045
    .end local v0    # "i":I
    .local v12, "i":I
    :cond_5
    iget-object v0, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v0, v13, v3}, Lgnu/expr/LambdaExp;->evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0

    .line 2046
    .local v0, "value":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v18, v7

    move v4, v12

    move-object v12, v0

    goto/16 :goto_6

    .line 2048
    .end local v0    # "value":Ljava/lang/Object;
    :cond_6
    iget-object v0, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v0, v0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v0, :cond_a

    add-int v0, v14, v11

    if-ne v12, v0, :cond_a

    .line 2050
    iget-object v0, v9, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    instance-of v0, v0, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_9

    .line 2052
    move/from16 v19, v4

    .end local v4    # "num":I
    .local v19, "num":I
    sub-int v4, v5, v12

    .line 2053
    .local v4, "rem":I
    iget-object v0, v9, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    check-cast v0, Lgnu/bytecode/ArrayType;

    move/from16 v20, v5

    .end local v5    # "nargs":I
    .local v20, "nargs":I
    invoke-virtual {v0}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 2054
    .local v5, "elementType":Lgnu/bytecode/Type;
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-ne v5, v0, :cond_7

    .line 2056
    new-array v0, v4, [Ljava/lang/Object;

    .line 2057
    .local v0, "rest":[Ljava/lang/Object;
    move/from16 v21, v6

    const/4 v6, 0x0

    .end local v6    # "min":I
    .local v21, "min":I
    invoke-static {v2, v12, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2058
    move-object v6, v0

    .line 2059
    .end local v0    # "rest":[Ljava/lang/Object;
    .local v6, "value":Ljava/lang/Object;
    move/from16 v18, v7

    goto :goto_5

    .line 2062
    .end local v21    # "min":I
    .local v6, "min":I
    :cond_7
    move/from16 v21, v6

    .end local v6    # "min":I
    .restart local v21    # "min":I
    invoke-virtual {v5}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v6

    .line 2063
    .local v6, "elementClass":Ljava/lang/Class;
    move/from16 v18, v7

    .end local v7    # "max":I
    .local v18, "max":I
    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    .line 2065
    .local v7, "value":Ljava/lang/Object;
    const/16 v22, 0x0

    move/from16 v24, v22

    move-object/from16 v22, v6

    move/from16 v6, v24

    .local v6, "j":I
    .local v22, "elementClass":Ljava/lang/Class;
    :goto_4
    if-ge v6, v4, :cond_8

    .line 2070
    add-int v23, v12, v6

    :try_start_0
    aget-object v0, v2, v23

    invoke-virtual {v5, v0}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    .local v0, "el":Ljava/lang/Object;
    nop

    .line 2076
    invoke-static {v7, v6, v0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2065
    .end local v0    # "el":Ljava/lang/Object;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v16, v0

    goto :goto_4

    .line 2072
    :catch_0
    move-exception v0

    .line 2074
    .local v0, "ex":Ljava/lang/ClassCastException;
    .local v16, "el":Ljava/lang/Object;
    add-int v23, v12, v6

    or-int v17, v23, v17

    return v17

    .line 2065
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    .end local v16    # "el":Ljava/lang/Object;
    :cond_8
    move-object v6, v7

    .line 2079
    .end local v4    # "rem":I
    .end local v5    # "elementType":Lgnu/bytecode/Type;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v22    # "elementClass":Ljava/lang/Class;
    .local v6, "value":Ljava/lang/Object;
    :goto_5
    move v4, v12

    move-object v12, v6

    goto :goto_6

    .line 2081
    .end local v18    # "max":I
    .end local v19    # "num":I
    .end local v20    # "nargs":I
    .end local v21    # "min":I
    .local v4, "num":I
    .local v5, "nargs":I
    .local v6, "min":I
    .local v7, "max":I
    :cond_9
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v18, v7

    .end local v4    # "num":I
    .end local v5    # "nargs":I
    .end local v6    # "min":I
    .end local v7    # "max":I
    .restart local v18    # "max":I
    .restart local v19    # "num":I
    .restart local v20    # "nargs":I
    .restart local v21    # "min":I
    invoke-static {v2, v12}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    move v4, v12

    move-object v12, v0

    .local v0, "value":Ljava/lang/Object;
    goto :goto_6

    .line 2048
    .end local v0    # "value":Ljava/lang/Object;
    .end local v18    # "max":I
    .end local v19    # "num":I
    .end local v20    # "nargs":I
    .end local v21    # "min":I
    .restart local v4    # "num":I
    .restart local v5    # "nargs":I
    .restart local v6    # "min":I
    .restart local v7    # "max":I
    :cond_a
    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v18, v7

    .line 2085
    .end local v4    # "num":I
    .end local v5    # "nargs":I
    .end local v6    # "min":I
    .end local v7    # "max":I
    .restart local v18    # "max":I
    .restart local v19    # "num":I
    .restart local v20    # "nargs":I
    .restart local v21    # "min":I
    iget-object v0, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget-object v0, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    add-int/lit8 v4, v15, 0x1

    .end local v15    # "key_i":I
    .local v4, "key_i":I
    aget-object v0, v0, v15

    .line 2086
    .local v0, "keyword":Lgnu/expr/Keyword;
    add-int v5, v14, v11

    .line 2087
    .local v5, "key_offset":I
    invoke-static {v2, v5, v0}, Lgnu/expr/Keyword;->searchForKeyword([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 2088
    .local v6, "value":Ljava/lang/Object;
    sget-object v7, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    if-ne v6, v7, :cond_b

    .line 2089
    iget-object v7, v1, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v7, v13, v3}, Lgnu/expr/LambdaExp;->evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v6

    .line 2090
    :cond_b
    add-int/lit8 v13, v13, 0x1

    move v15, v4

    move v4, v12

    move-object v12, v6

    .line 2092
    .end local v0    # "keyword":Lgnu/expr/Keyword;
    .end local v5    # "key_offset":I
    .end local v6    # "value":Ljava/lang/Object;
    .local v4, "i":I
    .local v12, "value":Ljava/lang/Object;
    .restart local v15    # "key_i":I
    :goto_6
    iget-object v0, v9, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_c

    .line 2096
    :try_start_1
    iget-object v0, v9, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    invoke-virtual {v0, v12}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v0

    .line 2101
    goto :goto_7

    .line 2098
    :catch_1
    move-exception v0

    .line 2100
    .local v0, "ex":Ljava/lang/ClassCastException;
    or-int v5, v4, v17

    return v5

    .line 2103
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :cond_c
    :goto_7
    invoke-virtual {v9}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2105
    invoke-virtual {v9}, Lgnu/expr/Declaration;->makeIndirectLocationFor()Lgnu/mapping/Location;

    move-result-object v0

    .line 2106
    .local v0, "loc":Lgnu/mapping/Location;
    invoke-virtual {v0, v12}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 2107
    move-object v12, v0

    .line 2109
    .end local v0    # "loc":Lgnu/mapping/Location;
    :cond_d
    iget v0, v9, Lgnu/expr/Declaration;->evalIndex:I

    aput-object v12, v8, v0

    .line 2035
    .end local v12    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v9

    move v12, v4

    move/from16 v7, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    goto/16 :goto_2

    .line 2111
    .end local v9    # "decl":Lgnu/expr/Declaration;
    .end local v18    # "max":I
    .end local v19    # "num":I
    .end local v20    # "nargs":I
    .end local v21    # "min":I
    .local v4, "num":I
    .local v5, "nargs":I
    .local v6, "min":I
    .restart local v7    # "max":I
    .local v12, "i":I
    :cond_e
    iput-object v8, v3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 2112
    const/4 v0, 0x0

    iput v0, v3, Lgnu/mapping/CallContext;->where:I

    .line 2113
    iput v0, v3, Lgnu/mapping/CallContext;->next:I

    .line 2114
    iput-object v1, v3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 2115
    return v0
.end method

.method public numArgs()I
    .locals 2

    .line 1970
    iget-object v0, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v0, v0, Lgnu/expr/LambdaExp;->min_args:I

    iget-object v1, p0, Lgnu/expr/Closure;->lambda:Lgnu/expr/LambdaExp;

    iget v1, v1, Lgnu/expr/LambdaExp;->max_args:I

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    return v0
.end method
