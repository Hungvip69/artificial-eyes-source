.class public Lgnu/expr/ModuleExp;
.super Lgnu/expr/LambdaExp;
.source "ModuleExp.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final EXPORT_SPECIFIED:I = 0x4000

.field public static final IMMEDIATE:I = 0x100000

.field public static final LAZY_DECLARATIONS:I = 0x80000

.field public static final NONSTATIC_SPECIFIED:I = 0x10000

.field public static final STATIC_RUN_SPECIFIED:I = 0x40000

.field public static final STATIC_SPECIFIED:I = 0x8000

.field public static final SUPERTYPE_SPECIFIED:I = 0x20000

.field public static alwaysCompile:Z

.field public static compilerAvailable:Z

.field public static dumpZipPrefix:Ljava/lang/String;

.field public static interactiveCounter:I

.field static lastZipCounter:I

.field public static neverCompile:Z


# instance fields
.field info:Lgnu/expr/ModuleInfo;

.field interfaces:[Lgnu/bytecode/ClassType;

.field superType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    .line 173
    sget-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 177
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lgnu/expr/LambdaExp;-><init>()V

    .line 28
    return-void
.end method

.method public static final evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z
    .locals 4
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "url"    # Ljava/net/URL;
    .param p4, "msg"    # Lgnu/mapping/OutPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 196
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 197
    .local v0, "mexp":Lgnu/expr/ModuleExp;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    .line 198
    .local v1, "language":Lgnu/expr/Language;
    invoke-static {p0, p2, p3, p4}, Lgnu/expr/ModuleExp;->evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;

    move-result-object v2

    .line 199
    .local v2, "inst":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 200
    const/4 v3, 0x0

    return v3

    .line 201
    :cond_0
    invoke-static {p0, p1, v1, v0, v2}, Lgnu/expr/ModuleExp;->evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V

    .line 202
    const/4 v3, 0x1

    return v3
.end method

.method public static final evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;
    .locals 11
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "msg"    # Lgnu/mapping/OutPort;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 214
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 215
    .local v0, "mexp":Lgnu/expr/ModuleExp;
    iget-object v1, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    iput-object v1, v0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    .line 216
    invoke-static {p0}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v1

    .line 217
    .local v1, "orig_env":Lgnu/mapping/Environment;
    invoke-static {p1}, Lgnu/expr/Compilation;->setSaveCurrent(Lgnu/expr/Compilation;)Lgnu/expr/Compilation;

    move-result-object v2

    .line 218
    .local v2, "orig_comp":Lgnu/expr/Compilation;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3

    .line 219
    .local v3, "messages":Lgnu/text/SourceMessages;
    const/4 v4, 0x0

    .line 220
    .local v4, "savedLoader":Ljava/lang/ClassLoader;
    const/4 v5, 0x0

    .line 227
    .local v5, "thread":Ljava/lang/Thread;
    sget-boolean v6, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    if-eqz v6, :cond_1

    sget-boolean v6, Lgnu/expr/ModuleExp;->neverCompile:Z

    if-nez v6, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "alwaysCompile and neverCompile are both true!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 231
    :cond_1
    :goto_0
    sget-boolean v6, Lgnu/expr/ModuleExp;->neverCompile:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 232
    iput-boolean v7, p1, Lgnu/expr/Compilation;->mustCompile:Z

    .line 237
    :cond_2
    const/4 v6, 0x6

    :try_start_0
    invoke-virtual {p1, v6}, Lgnu/expr/Compilation;->process(I)V

    .line 238
    iget-object v6, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 240
    const/16 v6, 0x14

    const/4 v8, 0x0

    if-eqz p3, :cond_3

    invoke-virtual {v3, p3, v6}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_5

    .line 241
    :goto_1
    nop

    .line 285
    invoke-static {v1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v2}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v5, :cond_4

    .line 288
    invoke-virtual {v5, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_4
    return-object v8

    .line 247
    :cond_5
    :try_start_1
    iget-boolean v9, p1, Lgnu/expr/Compilation;->mustCompile:Z

    if-nez v9, :cond_8

    .line 250
    sget-boolean v6, Lgnu/expr/Compilation;->debugPrintFinalExpr:Z

    if-eqz v6, :cond_6

    if-eqz p3, :cond_6

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Evaluating final module \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, p3}, Lgnu/expr/ModuleExp;->print(Lgnu/mapping/OutPort;)V

    .line 254
    const/16 v6, 0x5d

    invoke-virtual {p3, v6}, Lgnu/mapping/OutPort;->println(C)V

    .line 255
    invoke-virtual {p3}, Lgnu/mapping/OutPort;->flush()V

    .line 257
    :cond_6
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    invoke-static {v1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v2}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v5, :cond_7

    .line 288
    invoke-virtual {v5, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_7
    return-object v6

    .line 261
    :cond_8
    :try_start_2
    invoke-static {p1, p2}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 262
    .local v9, "clas":Ljava/lang/Class;
    if-nez v9, :cond_a

    .line 263
    nop

    .line 285
    invoke-static {v1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v2}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v5, :cond_9

    .line 288
    invoke-virtual {v5, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_9
    return-object v8

    .line 266
    :cond_a
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    move-object v5, v10

    .line 267
    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object v4, v10

    .line 268
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    goto :goto_2

    .line 270
    :catchall_0
    move-exception v10

    .line 272
    .local v10, "ex":Ljava/lang/Throwable;
    const/4 v5, 0x0

    .line 275
    .end local v10    # "ex":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    iput-object v8, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 276
    iput-object v8, v0, Lgnu/expr/ModuleExp;->thisVariable:Lgnu/bytecode/Variable;

    .line 277
    if-eqz p3, :cond_b

    invoke-virtual {v3, p3, v6}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_3

    :cond_b
    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 279
    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 285
    invoke-static {v1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v2}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v5, :cond_c

    .line 288
    invoke-virtual {v5, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_c
    return-object v6

    .line 280
    :cond_d
    nop

    .line 285
    invoke-static {v1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v2}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v5, :cond_e

    .line 288
    invoke-virtual {v5, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_e
    return-object v9

    .line 285
    .end local v9    # "clas":Ljava/lang/Class;
    :catchall_1
    move-exception v6

    invoke-static {v1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 286
    invoke-static {v2}, Lgnu/expr/Compilation;->restoreCurrent(Lgnu/expr/Compilation;)V

    .line 287
    if-eqz v5, :cond_f

    .line 288
    invoke-virtual {v5, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_f
    throw v6
.end method

.method public static final evalModule2(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Language;Lgnu/expr/ModuleExp;Ljava/lang/Object;)V
    .locals 17
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .param p2, "language"    # Lgnu/expr/Language;
    .param p3, "mexp"    # Lgnu/expr/ModuleExp;
    .param p4, "inst"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 297
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-static/range {p0 .. p0}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object v6

    .line 298
    .local v6, "orig_env":Lgnu/mapping/Environment;
    const/4 v7, 0x0

    .line 299
    .local v7, "savedLoader":Ljava/lang/ClassLoader;
    const/4 v8, 0x0

    .line 302
    .local v8, "thread":Ljava/lang/Thread;
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v5, v0, :cond_0

    .line 304
    iget-object v0, v4, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, v2}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    goto/16 :goto_6

    .line 308
    :cond_0
    instance-of v0, v5, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 309
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    move-object v9, v5

    check-cast v9, Ljava/lang/Class;

    invoke-virtual {v0, v9}, Lgnu/expr/ModuleContext;->findInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v0

    .line 311
    .end local p4    # "inst":Ljava/lang/Object;
    .local v5, "inst":Ljava/lang/Object;
    :cond_1
    :try_start_1
    nop

    instance-of v0, v5, Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    .line 313
    instance-of v0, v5, Lgnu/expr/ModuleBody;

    if-eqz v0, :cond_3

    .line 315
    move-object v0, v5

    check-cast v0, Lgnu/expr/ModuleBody;

    .line 316
    .local v0, "mb":Lgnu/expr/ModuleBody;
    iget-boolean v9, v0, Lgnu/expr/ModuleBody;->runDone:Z

    if-nez v9, :cond_2

    .line 318
    const/4 v9, 0x1

    iput-boolean v9, v0, Lgnu/expr/ModuleBody;->runDone:Z

    .line 319
    invoke-virtual {v0, v2}, Lgnu/expr/ModuleBody;->run(Lgnu/mapping/CallContext;)V

    .line 321
    .end local v0    # "mb":Lgnu/expr/ModuleBody;
    :cond_2
    goto :goto_0

    .line 323
    :cond_3
    move-object v0, v5

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 326
    :cond_4
    :goto_0
    if-nez v4, :cond_5

    .line 327
    invoke-static {v5, v3, v1}, Lgnu/kawa/reflect/ClassMemberLocation;->defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    goto/16 :goto_6

    .line 331
    :cond_5
    invoke-virtual/range {p3 .. p3}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 332
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_1
    if-eqz v0, :cond_f

    .line 334
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v9

    .line 335
    .local v9, "dname":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v10

    if-nez v10, :cond_e

    if-nez v9, :cond_6

    .line 336
    goto/16 :goto_5

    .line 337
    :cond_6
    iget-object v10, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 338
    .local v10, "fld":Lgnu/bytecode/Field;
    instance-of v11, v9, Lgnu/mapping/Symbol;

    if-eqz v11, :cond_7

    move-object v11, v9

    check-cast v11, Lgnu/mapping/Symbol;

    goto :goto_2

    :cond_7
    const-string v11, ""

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    .line 340
    .local v11, "sym":Lgnu/mapping/Symbol;
    :goto_2
    invoke-virtual {v3, v0}, Lgnu/expr/Language;->getEnvPropertyFor(Lgnu/expr/Declaration;)Ljava/lang/Object;

    move-result-object v12

    .line 341
    .local v12, "property":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v13

    .line 346
    .local v13, "dvalue":Lgnu/expr/Expression;
    iget-object v14, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v14}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v14

    and-int/lit8 v14, v14, 0x10

    const/4 v15, 0x0

    if-eqz v14, :cond_d

    .line 349
    instance-of v14, v13, Lgnu/expr/QuoteExp;

    if-eqz v14, :cond_8

    sget-object v14, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-eq v13, v14, :cond_8

    .line 351
    move-object v14, v13

    check-cast v14, Lgnu/expr/QuoteExp;

    invoke-virtual {v14}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v14

    .local v14, "value":Ljava/lang/Object;
    goto :goto_3

    .line 354
    .end local v14    # "value":Ljava/lang/Object;
    :cond_8
    iget-object v14, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v14}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 355
    .restart local v14    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v16

    if-nez v16, :cond_9

    .line 356
    invoke-static {v14}, Lgnu/expr/QuoteExp;->getInstance(Ljava/lang/Object;)Lgnu/expr/QuoteExp;

    move-result-object v15

    invoke-virtual {v0, v15}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    goto :goto_3

    .line 357
    :cond_9
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v16

    if-eqz v16, :cond_a

    instance-of v15, v13, Lgnu/expr/ReferenceExp;

    if-nez v15, :cond_b

    .line 358
    :cond_a
    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 360
    :cond_b
    :goto_3
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 361
    move-object v15, v14

    check-cast v15, Lgnu/mapping/Location;

    invoke-virtual {v1, v11, v12, v15}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    goto :goto_4

    .line 363
    :cond_c
    invoke-virtual {v1, v11, v12, v14}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    .end local v14    # "value":Ljava/lang/Object;
    :goto_4
    goto :goto_5

    .line 367
    :cond_d
    new-instance v14, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v15

    invoke-virtual {v10}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v15, v2}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    move-object v2, v14

    .line 370
    .local v2, "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    invoke-virtual {v2, v0}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    .line 371
    invoke-virtual {v1, v11, v12, v2}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 372
    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 332
    .end local v2    # "loc":Lgnu/kawa/reflect/StaticFieldLocation;
    .end local v9    # "dname":Ljava/lang/Object;
    .end local v10    # "fld":Lgnu/bytecode/Field;
    .end local v11    # "sym":Lgnu/mapping/Symbol;
    .end local v12    # "property":Ljava/lang/Object;
    .end local v13    # "dvalue":Lgnu/expr/Expression;
    :cond_e
    :goto_5
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v2, p1

    goto/16 :goto_1

    .line 383
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_f
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    invoke-static {v6}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 388
    if-eqz v8, :cond_10

    .line 389
    invoke-virtual {v8, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 391
    :cond_10
    return-void

    .line 387
    :catchall_0
    move-exception v0

    goto :goto_7

    .end local v5    # "inst":Ljava/lang/Object;
    .restart local p4    # "inst":Ljava/lang/Object;
    :catchall_1
    move-exception v0

    .end local p4    # "inst":Ljava/lang/Object;
    .restart local v5    # "inst":Ljava/lang/Object;
    :goto_7
    invoke-static {v6}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    .line 388
    if-eqz v8, :cond_11

    .line 389
    invoke-virtual {v8, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_11
    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public static evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;
    .locals 16
    .param p0, "comp"    # Lgnu/expr/Compilation;
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 50
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    .line 51
    .local v2, "mexp":Lgnu/expr/ModuleExp;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v3

    .line 55
    .local v3, "messages":Lgnu/text/SourceMessages;
    :try_start_0
    iget-object v0, v1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 57
    invoke-virtual {v3}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 58
    return-object v4

    .line 60
    :cond_0
    iget-object v0, v1, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    .line 61
    .local v0, "loader":Lgnu/bytecode/ArrayClassLoader;
    if-nez p1, :cond_1

    .line 62
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .end local p1    # "url":Ljava/net/URL;
    .local v5, "url":Ljava/net/URL;
    goto :goto_0

    .line 61
    .end local v5    # "url":Ljava/net/URL;
    .restart local p1    # "url":Ljava/net/URL;
    :cond_1
    move-object/from16 v5, p1

    .line 63
    .end local p1    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :goto_0
    :try_start_1
    invoke-virtual {v0, v5}, Lgnu/bytecode/ArrayClassLoader;->setResourceContext(Ljava/net/URL;)V

    .line 65
    const/4 v6, 0x0

    .line 66
    .local v6, "zout":Ljava/util/zip/ZipOutputStream;
    sget-object v7, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 68
    :try_start_2
    new-instance v7, Ljava/lang/StringBuffer;

    sget-object v9, Lgnu/expr/ModuleExp;->dumpZipPrefix:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    .local v7, "zipname":Ljava/lang/StringBuffer;
    sget v9, Lgnu/expr/ModuleExp;->lastZipCounter:I

    add-int/2addr v9, v8

    sput v9, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 71
    sget v9, Lgnu/expr/ModuleExp;->interactiveCounter:I

    sget v10, Lgnu/expr/ModuleExp;->lastZipCounter:I

    if-le v9, v10, :cond_2

    .line 72
    sget v9, Lgnu/expr/ModuleExp;->interactiveCounter:I

    sput v9, Lgnu/expr/ModuleExp;->lastZipCounter:I

    .line 73
    :cond_2
    sget v9, Lgnu/expr/ModuleExp;->lastZipCounter:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    const-string v9, ".zip"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 77
    .local v9, "zfout":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v10, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v10

    goto :goto_1

    .line 158
    .end local v0    # "loader":Lgnu/bytecode/ArrayClassLoader;
    .end local v6    # "zout":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "zipname":Ljava/lang/StringBuffer;
    .end local v9    # "zfout":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 154
    :catch_0
    move-exception v0

    goto/16 :goto_a

    .line 150
    :catch_1
    move-exception v0

    goto/16 :goto_b

    .line 80
    .restart local v0    # "loader":Lgnu/bytecode/ArrayClassLoader;
    .restart local v6    # "zout":Ljava/util/zip/ZipOutputStream;
    :cond_3
    :goto_1
    const/4 v7, 0x0

    .local v7, "iClass":I
    :goto_2
    :try_start_3
    iget v9, v1, Lgnu/expr/Compilation;->numClasses:I

    if-ge v7, v9, :cond_5

    .line 82
    iget-object v9, v1, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v9, v9, v7

    .line 83
    .local v9, "clas":Lgnu/bytecode/ClassType;
    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, "className":Ljava/lang/String;
    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->writeToArray()[B

    move-result-object v11

    .line 85
    .local v11, "classBytes":[B
    invoke-virtual {v0, v10, v11}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/String;[B)V

    .line 87
    if-eqz v6, :cond_4

    .line 89
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x2e

    const/16 v14, 0x2f

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".class"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 90
    .local v12, "clname":Ljava/lang/String;
    new-instance v13, Ljava/util/zip/ZipEntry;

    invoke-direct {v13, v12}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 92
    .local v13, "zent":Ljava/util/zip/ZipEntry;
    array-length v14, v11

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 93
    new-instance v14, Ljava/util/zip/CRC32;

    invoke-direct {v14}, Ljava/util/zip/CRC32;-><init>()V

    .line 94
    .local v14, "crc":Ljava/util/zip/CRC32;
    invoke-virtual {v14, v11}, Ljava/util/zip/CRC32;->update([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    move-object/from16 p1, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local p1    # "url":Ljava/net/URL;
    :try_start_4
    invoke-virtual {v14}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 96
    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 97
    invoke-virtual {v6, v13}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 98
    invoke-virtual {v6, v11}, Ljava/util/zip/ZipOutputStream;->write([B)V

    goto :goto_3

    .line 87
    .end local v12    # "clname":Ljava/lang/String;
    .end local v13    # "zent":Ljava/util/zip/ZipEntry;
    .end local v14    # "crc":Ljava/util/zip/CRC32;
    .end local p1    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_4
    move-object/from16 p1, v5

    .line 80
    .end local v5    # "url":Ljava/net/URL;
    .end local v9    # "clas":Lgnu/bytecode/ClassType;
    .end local v10    # "className":Ljava/lang/String;
    .end local v11    # "classBytes":[B
    .restart local p1    # "url":Ljava/net/URL;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, p1

    const/4 v4, 0x0

    goto :goto_2

    .end local p1    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :cond_5
    move-object/from16 p1, v5

    .line 101
    .end local v5    # "url":Ljava/net/URL;
    .end local v7    # "iClass":I
    .restart local p1    # "url":Ljava/net/URL;
    if-eqz v6, :cond_6

    .line 103
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 111
    :cond_6
    const/4 v4, 0x0

    .line 115
    .local v4, "clas":Ljava/lang/Class;
    move-object v5, v0

    .line 116
    .local v5, "context":Lgnu/bytecode/ArrayClassLoader;
    :goto_4
    invoke-virtual {v5}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v7

    instance-of v7, v7, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v7, :cond_7

    .line 117
    invoke-virtual {v5}, Lgnu/bytecode/ArrayClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v7

    check-cast v7, Lgnu/bytecode/ArrayClassLoader;

    move-object v5, v7

    goto :goto_4

    .line 118
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "iClass":I
    :goto_5
    iget v9, v1, Lgnu/expr/Compilation;->numClasses:I

    if-ge v7, v9, :cond_a

    .line 120
    iget-object v9, v1, Lgnu/expr/Compilation;->classes:[Lgnu/bytecode/ClassType;

    aget-object v9, v9, v7

    .line 121
    .local v9, "ctype":Lgnu/bytecode/ClassType;
    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lgnu/bytecode/ArrayClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 122
    .local v10, "cclass":Ljava/lang/Class;
    invoke-virtual {v9, v10}, Lgnu/bytecode/ClassType;->setReflectClass(Ljava/lang/Class;)V

    .line 123
    invoke-virtual {v9, v8}, Lgnu/bytecode/ClassType;->setExisting(Z)V

    .line 124
    if-nez v7, :cond_8

    .line 125
    move-object v4, v10

    goto :goto_6

    .line 130
    :cond_8
    if-eq v5, v0, :cond_9

    .line 131
    invoke-virtual {v5, v10}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V

    .line 118
    .end local v9    # "ctype":Lgnu/bytecode/ClassType;
    .end local v10    # "cclass":Ljava/lang/Class;
    :cond_9
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 134
    .end local v7    # "iClass":I
    :cond_a
    iget-object v7, v1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 135
    .local v7, "minfo":Lgnu/expr/ModuleInfo;
    invoke-virtual {v7, v4}, Lgnu/expr/ModuleInfo;->setModuleClass(Ljava/lang/Class;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    .line 137
    iget v8, v7, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 139
    .local v8, "ndeps":I
    const/4 v9, 0x0

    .local v9, "idep":I
    :goto_7
    if-ge v9, v8, :cond_c

    .line 141
    iget-object v10, v7, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v10, v10, v9

    .line 142
    .local v10, "dep":Lgnu/expr/ModuleInfo;
    invoke-virtual {v10}, Lgnu/expr/ModuleInfo;->getModuleClassRaw()Ljava/lang/Class;

    move-result-object v11

    .line 143
    .local v11, "dclass":Ljava/lang/Class;
    if-nez v11, :cond_b

    .line 144
    iget-object v12, v10, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lgnu/expr/ModuleExp;->evalToClass(Lgnu/expr/Compilation;Ljava/net/URL;)Ljava/lang/Class;

    move-result-object v12

    move-object v11, v12

    goto :goto_8

    .line 143
    :cond_b
    const/4 v13, 0x0

    .line 145
    :goto_8
    iget-object v12, v1, Lgnu/expr/Compilation;->loader:Lgnu/bytecode/ArrayClassLoader;

    invoke-virtual {v12, v11}, Lgnu/bytecode/ArrayClassLoader;->addClass(Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 139
    .end local v10    # "dep":Lgnu/expr/ModuleInfo;
    .end local v11    # "dclass":Ljava/lang/Class;
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 148
    .end local v9    # "idep":I
    :cond_c
    return-object v4

    .line 158
    .end local v0    # "loader":Lgnu/bytecode/ArrayClassLoader;
    .end local v4    # "clas":Ljava/lang/Class;
    .end local v6    # "zout":Ljava/util/zip/ZipOutputStream;
    .end local v7    # "minfo":Lgnu/expr/ModuleInfo;
    .end local v8    # "ndeps":I
    .end local p1    # "url":Ljava/net/URL;
    .local v5, "url":Ljava/net/URL;
    :catchall_1
    move-exception v0

    move-object/from16 p1, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local p1    # "url":Ljava/net/URL;
    goto :goto_9

    .line 154
    .end local p1    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_2
    move-exception v0

    move-object/from16 p1, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local p1    # "url":Ljava/net/URL;
    goto :goto_a

    .line 150
    .end local p1    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    :catch_3
    move-exception v0

    move-object/from16 p1, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local p1    # "url":Ljava/net/URL;
    goto :goto_b

    .line 158
    :catchall_2
    move-exception v0

    move-object/from16 v5, p1

    .line 160
    .end local p1    # "url":Ljava/net/URL;
    .local v0, "ex":Ljava/lang/Throwable;
    .restart local v5    # "url":Ljava/net/URL;
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "internal compile error - caught "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x66

    invoke-virtual {v4, v7, v6, v0}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    new-instance v4, Lgnu/text/SyntaxException;

    invoke-direct {v4, v3}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    throw v4

    .line 154
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v5    # "url":Ljava/net/URL;
    .restart local p1    # "url":Ljava/net/URL;
    :catch_4
    move-exception v0

    move-object/from16 v5, p1

    .line 156
    .end local p1    # "url":Ljava/net/URL;
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    .restart local v5    # "url":Ljava/net/URL;
    :goto_a
    new-instance v4, Lgnu/mapping/WrappedException;

    const-string v6, "class not found in lambda eval"

    invoke-direct {v4, v6, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 150
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v5    # "url":Ljava/net/URL;
    .restart local p1    # "url":Ljava/net/URL;
    :catch_5
    move-exception v0

    move-object/from16 v5, p1

    .line 152
    .end local p1    # "url":Ljava/net/URL;
    .local v0, "ex":Ljava/io/IOException;
    .restart local v5    # "url":Ljava/net/URL;
    :goto_b
    new-instance v4, Lgnu/mapping/WrappedException;

    const-string v6, "I/O error in lambda eval"

    invoke-direct {v4, v6, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :goto_c
    throw v4

    :goto_d
    goto :goto_c
.end method

.method public static mustAlwaysCompile()V
    .locals 1

    .line 186
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 187
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 188
    return-void
.end method

.method public static mustNeverCompile()V
    .locals 2

    .line 180
    const/4 v0, 0x0

    sput-boolean v0, Lgnu/expr/ModuleExp;->alwaysCompile:Z

    .line 181
    const/4 v1, 0x1

    sput-boolean v1, Lgnu/expr/ModuleExp;->neverCompile:Z

    .line 182
    sput-boolean v0, Lgnu/expr/ModuleExp;->compilerAvailable:Z

    .line 183
    return-void
.end method


# virtual methods
.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .locals 1
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 426
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    .line 427
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    return-void

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/expr/ModuleExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 430
    return-void
.end method

.method allocFields(Lgnu/expr/Compilation;)V
    .locals 9
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 440
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 441
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x6

    const-wide/32 v4, 0x10000

    if-eqz v0, :cond_3

    .line 443
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-object v6, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v6, :cond_1

    .line 444
    goto :goto_1

    .line 445
    :cond_1
    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 449
    invoke-virtual {v0, p1, v1}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    .line 441
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 451
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_3
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 452
    .restart local v0    # "decl":Lgnu/expr/Declaration;
    :goto_2
    if-eqz v0, :cond_b

    .line 454
    iget-object v6, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v6, :cond_4

    .line 455
    goto :goto_5

    .line 456
    :cond_4
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    .line 457
    .local v6, "value":Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isNamespaceDecl()Z

    move-result v7

    if-nez v7, :cond_5

    const-wide/16 v7, 0x4000

    invoke-virtual {v0, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v0, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-nez v7, :cond_5

    .line 462
    goto :goto_5

    .line 463
    :cond_5
    invoke-virtual {v0, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 464
    goto :goto_5

    .line 465
    :cond_6
    instance-of v7, v6, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_7

    instance-of v7, v6, Lgnu/expr/ModuleExp;

    if-nez v7, :cond_7

    instance-of v7, v6, Lgnu/expr/ClassExp;

    if-nez v7, :cond_7

    .line 469
    move-object v7, v6

    check-cast v7, Lgnu/expr/LambdaExp;

    invoke-virtual {v7, p1}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    goto :goto_5

    .line 473
    :cond_7
    invoke-virtual {v0}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move-object v7, v1

    goto :goto_4

    :cond_9
    :goto_3
    move-object v7, v6

    :goto_4
    invoke-virtual {v0, p1, v7}, Lgnu/expr/Declaration;->makeField(Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    .line 452
    .end local v6    # "value":Lgnu/expr/Expression;
    :cond_a
    :goto_5
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_2

    .line 478
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_b
    return-void
.end method

.method public classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .locals 9
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 532
    iget-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_0

    .line 533
    iget-object v0, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    return-object v0

    .line 534
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "mname":Ljava/lang/String;
    const/4 v2, 0x0

    .line 537
    .local v2, "className":Ljava/lang/String;
    const/4 v3, 0x0

    .line 538
    .local v3, "path":Lgnu/text/Path;
    if-eqz v1, :cond_1

    .line 539
    move-object v0, v1

    goto :goto_1

    .line 540
    :cond_1
    if-nez v0, :cond_2

    .line 542
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 543
    if-nez v0, :cond_5

    .line 544
    const-string v0, "$unnamed_input_file$"

    goto :goto_1

    .line 546
    :cond_2
    iget-object v4, p0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lgnu/expr/ModuleExp;->filename:Ljava/lang/String;

    const-string v5, "/dev/stdin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 554
    :cond_3
    invoke-static {v0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v3

    .line 555
    invoke-virtual {v3}, Lgnu/text/Path;->getLast()Ljava/lang/String;

    move-result-object v0

    .line 556
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 557
    .local v4, "dotIndex":I
    if-lez v4, :cond_5

    .line 558
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 548
    .end local v4    # "dotIndex":I
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 549
    if-nez v0, :cond_5

    .line 550
    const-string v0, "$stdin$"

    .line 562
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 563
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 564
    :cond_6
    invoke-static {v0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    iget-object v4, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lgnu/text/Path;->isAbsolute()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lgnu/text/Path;->getParent()Lgnu/text/Path;

    move-result-object v4

    move-object v5, v4

    .local v5, "parentPath":Lgnu/text/Path;
    if-eqz v4, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .local v6, "parent":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    const-string v4, ".."

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_9

    .line 572
    const-string v4, "file.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 573
    .end local v6    # "parent":Ljava/lang/String;
    .local v4, "parent":Ljava/lang/String;
    const-string v6, "./"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 574
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 575
    :cond_7
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v6, v0

    goto :goto_2

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lgnu/expr/Compilation;->mangleURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v2, v6

    goto :goto_3

    .line 579
    .end local v4    # "parent":Ljava/lang/String;
    .end local v5    # "parentPath":Lgnu/text/Path;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lgnu/expr/Compilation;->classPrefix:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 580
    :goto_3
    new-instance v4, Lgnu/bytecode/ClassType;

    invoke-direct {v4, v2}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 581
    .local v4, "clas":Lgnu/bytecode/ClassType;
    invoke-virtual {p0, v4}, Lgnu/expr/ModuleExp;->setType(Lgnu/bytecode/ClassType;)V

    .line 582
    iget-object v5, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    if-ne v5, p0, :cond_b

    .line 584
    iget-object v5, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-nez v5, :cond_a

    .line 585
    iput-object v4, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    goto :goto_4

    .line 586
    :cond_a
    iget-object v5, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inconsistent main class name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - old name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {p1, v6, v5}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 590
    :cond_b
    :goto_4
    return-object v4
.end method

.method public firstDecl()Lgnu/expr/Declaration;
    .locals 1

    .line 519
    monitor-enter p0

    .line 521
    const/high16 v0, 0x80000

    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    .line 523
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    iget-object v0, p0, Lgnu/expr/ModuleExp;->decls:Lgnu/expr/Declaration;

    return-object v0

    .line 523
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getInterfaces()[Lgnu/bytecode/ClassType;
    .locals 1

    .line 402
    iget-object v0, p0, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    iget-object v0, v0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuperType()Lgnu/bytecode/ClassType;
    .locals 1

    .line 400
    iget-object v0, p0, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final isStatic()Z
    .locals 1

    .line 409
    const v0, 0x8000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lgnu/expr/Compilation;->moduleStatic:I

    if-gez v0, :cond_0

    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x20000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 487
    const/4 v0, 0x2

    const-string v1, "(Module/"

    const-string v2, ")"

    invoke-virtual {p1, v1, v2, v0}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 488
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 489
    .local v0, "sym":Ljava/lang/Object;
    const/16 v1, 0x2f

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(C)V

    .line 494
    :cond_0
    iget v3, p0, Lgnu/expr/ModuleExp;->id:I

    invoke-virtual {p1, v3}, Lgnu/mapping/OutPort;->print(I)V

    .line 495
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(C)V

    .line 496
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 497
    const-string v1, "("

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 499
    .local v1, "decl":Lgnu/expr/Declaration;
    if-eqz v1, :cond_1

    .line 501
    const-string v3, "Declarations:"

    invoke-virtual {p1, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 502
    :goto_0
    if-eqz v1, :cond_1

    .line 504
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 505
    invoke-virtual {v1, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 502
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 510
    iget-object v3, p0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    if-nez v3, :cond_2

    .line 511
    const-string v3, "<null body>"

    invoke-virtual {p1, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 513
    :cond_2
    iget-object v3, p0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v3, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 514
    :goto_1
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 615
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 616
    .local v0, "name":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_0

    .line 618
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/ClassType;

    iput-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 619
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 623
    :goto_0
    iget v1, p0, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, p0, Lgnu/expr/ModuleExp;->flags:I

    .line 624
    return-void
.end method

.method public final setInterfaces([Lgnu/bytecode/ClassType;)V
    .locals 0
    .param p1, "s"    # [Lgnu/bytecode/ClassType;

    .line 403
    iput-object p1, p0, Lgnu/expr/ModuleExp;->interfaces:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public final setSuperType(Lgnu/bytecode/ClassType;)V
    .locals 0
    .param p1, "s"    # Lgnu/bytecode/ClassType;

    .line 401
    iput-object p1, p0, Lgnu/expr/ModuleExp;->superType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public staticInitRun()Z
    .locals 2

    .line 419
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lgnu/expr/Compilation;->moduleStatic:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 482
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    iget-object v1, p0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 604
    :cond_0
    if-nez v0, :cond_1

    .line 605
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getName()Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_1
    if-nez v0, :cond_2

    .line 607
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 608
    :cond_2
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 610
    :goto_0
    return-void
.end method
