.class public Lgnu/bytecode/dump;
.super Lgnu/bytecode/ClassFileInput;
.source "dump.java"


# instance fields
.field writer:Lgnu/bytecode/ClassTypeWriter;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 1
    .param p1, "str"    # Ljava/io/InputStream;
    .param p2, "writer"    # Lgnu/bytecode/ClassTypeWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lgnu/bytecode/ClassFileInput;-><init>(Ljava/io/InputStream;)V

    .line 35
    new-instance v0, Lgnu/bytecode/ClassType;

    invoke-direct {v0}, Lgnu/bytecode/ClassType;-><init>()V

    iput-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    .line 36
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readFormatVersion()V

    .line 38
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readConstants()Lgnu/bytecode/ConstantPool;

    .line 39
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readClassInfo()V

    .line 40
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readFields()V

    .line 41
    invoke-virtual {p0}, Lgnu/bytecode/dump;->readMethods()V

    .line 42
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/dump;->readAttributes(Lgnu/bytecode/AttrContainer;)I

    .line 44
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Lgnu/bytecode/ClassType;)V

    .line 45
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 46
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17

    .line 153
    move-object/from16 v1, p0

    const-string v2, "jar:"

    array-length v3, v1

    .line 154
    new-instance v4, Lgnu/bytecode/ClassTypeWriter;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    .line 155
    if-nez v3, :cond_0

    .line 156
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lgnu/bytecode/dump;->usage(Ljava/io/PrintStream;)V

    .line 157
    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_b

    .line 159
    aget-object v8, v1, v7

    .line 160
    const-string v0, "-verbose"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "--verbose"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    .line 165
    :cond_1
    invoke-static {v8}, Lgnu/bytecode/dump;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v0

    .line 169
    const-string v9, ".class"

    const/16 v10, 0x2e

    const-string v11, " not found."

    const/16 v12, 0x2f

    if-eqz v0, :cond_9

    .line 171
    :try_start_0
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 172
    const/16 v14, 0x21

    if-eqz v0, :cond_5

    .line 174
    const/4 v15, 0x4

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 176
    invoke-static {v15}, Lgnu/bytecode/dump;->uriSchemeSpecified(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 178
    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 179
    if-ltz v5, :cond_2

    .line 181
    invoke-virtual {v15, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 183
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    .line 187
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v15, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 191
    :cond_2
    const-string v5, "!/"

    invoke-virtual {v15, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_4

    .line 193
    invoke-virtual {v8, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 194
    if-gtz v5, :cond_3

    .line 195
    const/4 v5, 0x0

    goto :goto_1

    .line 196
    :cond_3
    invoke-virtual {v8, v12, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    if-gez v13, :cond_4

    .line 198
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 199
    invoke-virtual {v13, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 200
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move v5, v0

    goto :goto_1

    .line 207
    :cond_4
    move v5, v0

    goto :goto_1

    .line 172
    :cond_5
    move v5, v0

    .line 207
    :goto_1
    :try_start_1
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 210
    :try_start_2
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 233
    nop

    .line 253
    goto/16 :goto_4

    .line 212
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 214
    if-eqz v5, :cond_7

    .line 216
    :try_start_3
    invoke-virtual {v9}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 218
    if-lez v5, :cond_6

    .line 219
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v5, v0

    goto :goto_2

    .line 218
    :cond_6
    move-object v5, v0

    .line 222
    :goto_2
    :try_start_4
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/zip/ZipException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 230
    goto :goto_3

    .line 224
    :catch_1
    move-exception v0

    .line 226
    :try_start_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Jar File for URL "

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 227
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 228
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 232
    :cond_7
    :goto_3
    throw v10
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 243
    :catch_2
    move-exception v0

    .line 245
    :try_start_6
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error opening zip archive "

    invoke-virtual {v5, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 246
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 247
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V

    .line 249
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 250
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 251
    :cond_8
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 252
    const/4 v0, 0x0

    goto :goto_4

    .line 235
    :catch_3
    move-exception v0

    .line 237
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "File for URL "

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 238
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 239
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 241
    nop

    .line 253
    const/4 v0, 0x0

    .line 254
    :goto_4
    goto/16 :goto_7

    .line 259
    :cond_9
    :try_start_7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 300
    goto :goto_7

    .line 305
    :catch_4
    move-exception v0

    goto :goto_8

    .line 261
    :catch_5
    move-exception v0

    .line 267
    :try_start_8
    invoke-static {v8}, Lgnu/bytecode/ObjectType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    .line 274
    :catchall_0
    move-exception v0

    .line 276
    :try_start_9
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "File "

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 277
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 278
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 280
    nop

    .line 281
    const/4 v0, 0x0

    goto :goto_6

    .line 270
    :catch_6
    move-exception v0

    .line 272
    invoke-static {}, Lgnu/bytecode/ObjectType;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 282
    :goto_5
    nop

    .line 284
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 287
    :try_start_a
    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 289
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 299
    move-object v0, v5

    goto :goto_7

    .line 291
    :catchall_1
    move-exception v0

    .line 293
    :try_start_b
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Can\'t find .class file for class "

    invoke-virtual {v5, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 294
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 295
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, " - "

    invoke-virtual {v5, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 296
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 297
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 298
    const/4 v0, 0x0

    .line 302
    :goto_7
    invoke-static {v0, v8, v4}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 311
    goto :goto_a

    .line 307
    :goto_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 308
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "caught "

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 310
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_a

    .line 162
    :cond_a
    :goto_9
    const/16 v0, 0xf

    invoke-virtual {v4, v0}, Lgnu/bytecode/ClassTypeWriter;->setFlags(I)V

    .line 163
    nop

    .line 157
    :goto_a
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 313
    :cond_b
    return-void
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "out"    # Lgnu/bytecode/ClassTypeWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    .local v0, "inp":Ljava/io/InputStream;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 93
    invoke-static {v0}, Lgnu/bytecode/dump;->readMagic(Ljava/io/InputStream;)I

    move-result v1

    .line 94
    .local v1, "magic":I
    const/16 v2, 0x2e

    const v3, -0x35014542    # -8346975.0f

    if-ne v1, v3, :cond_0

    .line 96
    const-string v3, "Reading .class from "

    invoke-virtual {p2, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 99
    new-instance v2, Lgnu/bytecode/dump;

    invoke-direct {v2, v0, p2}, Lgnu/bytecode/dump;-><init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V

    goto/16 :goto_2

    .line 101
    :cond_0
    const v4, 0x504b0304

    const/4 v5, -0x1

    if-ne v1, v4, :cond_4

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 104
    const-string v4, "Reading classes from archive "

    invoke-virtual {p2, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 107
    new-instance v4, Ljava/util/zip/ZipInputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    .local v4, "zin":Ljava/util/zip/ZipInputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    move-object v7, v6

    .local v7, "zent":Ljava/util/zip/ZipEntry;
    if-eqz v6, :cond_3

    .line 111
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 114
    const-string v8, "Archive directory: "

    invoke-virtual {p2, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    goto :goto_1

    .line 120
    :cond_1
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 121
    invoke-static {v4}, Lgnu/bytecode/dump;->readMagic(Ljava/io/InputStream;)I

    move-result v1

    .line 122
    if-ne v1, v3, :cond_2

    .line 124
    const-string v8, "Reading class member: "

    invoke-virtual {p2, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 127
    new-instance v8, Lgnu/bytecode/dump;

    invoke-direct {v8, v4, p2}, Lgnu/bytecode/dump;-><init>(Ljava/io/InputStream;Lgnu/bytecode/ClassTypeWriter;)V

    goto :goto_1

    .line 131
    :cond_2
    const-string v8, "Skipping non-class member: "

    invoke-virtual {p2, v8}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2, v6}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 136
    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 137
    :cond_3
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 138
    .end local v4    # "zin":Ljava/util/zip/ZipInputStream;
    .end local v7    # "zent":Ljava/util/zip/ZipEntry;
    goto :goto_2

    .line 141
    :cond_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a valid .class file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 144
    :goto_2
    return-void
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/OutputStream;I)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    invoke-static {p0, p1, v0}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    .line 78
    return-void
.end method

.method public static process(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/Writer;I)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/Writer;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    invoke-static {p0, p1, v0}, Lgnu/bytecode/dump;->process(Ljava/io/InputStream;Ljava/lang/String;Lgnu/bytecode/ClassTypeWriter;)V

    .line 85
    return-void
.end method

.method static readMagic(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "magic":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 66
    .local v2, "b":I
    if-gez v2, :cond_0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    shl-int/lit8 v3, v0, 0x8

    and-int/lit16 v4, v2, 0xff

    or-int v0, v3, v4

    .line 63
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "j":I
    :cond_1
    :goto_1
    return v0
.end method

.method static uriSchemeLength(Ljava/lang/String;)I
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 326
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_3

    .line 328
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 329
    .local v3, "ch":C
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_0

    .line 330
    return v1

    .line 331
    :cond_0
    if-nez v1, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    goto :goto_2

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 334
    :goto_2
    return v2

    .line 326
    .end local v3    # "ch":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :cond_3
    return v2
.end method

.method static uriSchemeSpecified(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 348
    invoke-static {p0}, Lgnu/bytecode/dump;->uriSchemeLength(Ljava/lang/String;)I

    move-result v0

    .line 349
    .local v0, "ulen":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_3

    .line 351
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 352
    .local v3, "drive":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7a

    if-le v3, v4, :cond_2

    :cond_0
    const/16 v4, 0x41

    if-lt v3, v4, :cond_1

    const/16 v4, 0x5a

    if-le v3, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 355
    .end local v3    # "drive":C
    :cond_3
    if-lez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static usage(Ljava/io/PrintStream;)V
    .locals 1
    .param p0, "err"    # Ljava/io/PrintStream;

    .line 360
    const-string v0, "Prints and dis-assembles the contents of JVM .class files."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 361
    const-string v0, "Usage: [--verbose] class-or-jar ..."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 362
    const-string v0, "where a class-or-jar can be one of:"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    const-string v0, "- a fully-qualified class name; or"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    const-string v0, "- the name of a .class file, or a URL reference to one; or"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    const-string v0, "- the name of a .jar or .zip archive file, or a URL reference to one."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    const-string v0, "If a .jar/.zip archive is named, all its.class file members are printed."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 368
    const-string v0, "You can name a single .class member of an archive with a jar: URL,"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    const-string v0, "which looks like: jar:jar-spec!/p1/p2/cl.class"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    const-string v0, "The jar-spec can be a URL or the name of the .jar file."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    const-string v0, "You can also use the shorthand syntax: jar:jar-spec!p1.p2.cl"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 373
    return-void
.end method


# virtual methods
.method public readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "container"    # Lgnu/bytecode/AttrContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2, p3}, Lgnu/bytecode/ClassFileInput;->readAttribute(Ljava/lang/String;ILgnu/bytecode/AttrContainer;)Lgnu/bytecode/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public readConstants()Lgnu/bytecode/ConstantPool;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    invoke-super {p0}, Lgnu/bytecode/ClassFileInput;->readConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    iput-object v1, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 51
    iget-object v0, p0, Lgnu/bytecode/dump;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method
