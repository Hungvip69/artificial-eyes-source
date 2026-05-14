.class public Lgnu/kawa/util/PreProcess;
.super Ljava/lang/Object;
.source "PreProcess.java"


# static fields
.field static final JAVA4_FEATURES:Ljava/lang/String; = "+JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio"

.field static final JAVA5_FEATURES:Ljava/lang/String; = "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName"

.field static final NO_JAVA4_FEATURES:Ljava/lang/String; = "-JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android"

.field static final NO_JAVA6_FEATURES:Ljava/lang/String; = "-JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

.field static version_features:[Ljava/lang/String;


# instance fields
.field filename:Ljava/lang/String;

.field keywords:Ljava/util/Hashtable;

.field lineno:I

.field resultBuffer:[B

.field resultLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "java1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "-JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "java2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "+JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "java4"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "java4x"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 +use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "java5"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "java6compat5"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6 -JAVA7 +JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "java6"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 -JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "java7"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 +JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer +use:java.dyn -Android"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "android"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 -JAXP-QName -use:javax.xml.transform -JAVA6 -JAVA6COMPAT5 +Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 341
    new-instance v0, Lgnu/kawa/util/PreProcess;

    invoke-direct {v0}, Lgnu/kawa/util/PreProcess;-><init>()V

    .line 343
    .local v0, "pp":Lgnu/kawa/util/PreProcess;
    iget-object v1, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    const-string v2, "true"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v1, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    const-string v2, "false"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 347
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method error(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 40
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/kawa/util/PreProcess;->lineno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 42
    return-void
.end method

.method public filter(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "out":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lgnu/kawa/util/PreProcess;->resultBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lgnu/kawa/util/PreProcess;->resultLength:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 53
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 54
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre-processed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    .end local v0    # "out":Ljava/io/FileOutputStream;
    :cond_0
    return-void
.end method

.method public filter(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 26
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, "changed":Z
    const/16 v3, 0x7d0

    new-array v3, v3, [B

    .line 64
    .local v3, "buf":[B
    const/4 v4, 0x0

    .line 65
    .local v4, "len":I
    const/4 v5, 0x0

    .line 66
    .local v5, "lineStart":I
    const/4 v6, -0x1

    .line 67
    .local v6, "dataStart":I
    const/4 v7, 0x0

    .line 68
    .local v7, "cmdLine":I
    const/4 v8, 0x1

    iput v8, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 70
    const/4 v9, -0x1

    .line 71
    .local v9, "commentAt":I
    const/4 v10, 0x0

    .line 72
    .local v10, "curIndent":I
    const/4 v11, 0x0

    .line 75
    .local v11, "nesting":I
    const/4 v12, 0x0

    .line 76
    .local v12, "skipNesting":I
    const/4 v13, 0x0

    .line 77
    .local v13, "cmd":Ljava/lang/String;
    const/4 v14, 0x0

    .line 80
    .local v14, "changedLine":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v15

    .line 81
    .local v15, "c":I
    if-gez v15, :cond_0

    .line 82
    move-object/from16 v1, p2

    goto/16 :goto_7

    .line 83
    :cond_0
    add-int/lit8 v8, v4, 0xa

    move/from16 v16, v2

    .end local v2    # "changed":Z
    .local v16, "changed":Z
    array-length v2, v3

    const/4 v1, 0x0

    if-lt v8, v2, :cond_1

    .line 85
    mul-int/lit8 v2, v4, 0x2

    new-array v2, v2, [B

    .line 86
    .local v2, "nbuf":[B
    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    move-object v3, v2

    .line 89
    .end local v2    # "nbuf":[B
    :cond_1
    const/16 v2, 0xd

    const/16 v8, 0xa

    if-ne v15, v8, :cond_2

    if-lez v4, :cond_2

    add-int/lit8 v17, v4, -0x1

    aget-byte v1, v3, v17

    if-ne v1, v2, :cond_2

    .line 91
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "len":I
    .local v1, "len":I
    int-to-byte v2, v15

    aput-byte v2, v3, v4

    .line 92
    move v4, v1

    move/from16 v2, v16

    const/4 v8, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    .line 94
    .end local v1    # "len":I
    .restart local v4    # "len":I
    :cond_2
    const/16 v1, 0x20

    if-ltz v9, :cond_a

    if-gez v6, :cond_a

    if-gtz v14, :cond_a

    if-eq v15, v2, :cond_a

    if-eq v15, v8, :cond_a

    if-eq v9, v10, :cond_4

    if-eq v15, v1, :cond_3

    const/16 v8, 0x9

    if-eq v15, v8, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v1, p2

    goto :goto_5

    .line 100
    :cond_4
    :goto_1
    const/16 v8, 0x2f

    if-ne v15, v8, :cond_9

    .line 107
    const/16 v2, 0x64

    move-object/from16 v1, p2

    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    .line 109
    .local v2, "d":I
    if-ne v2, v8, :cond_5

    .line 110
    const/4 v8, 0x0

    .local v8, "doComment":Z
    goto :goto_3

    .line 111
    .end local v8    # "doComment":Z
    :cond_5
    const/16 v8, 0x2a

    if-ne v2, v8, :cond_8

    .line 113
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/16 v8, 0x20

    if-eq v2, v8, :cond_6

    const/16 v8, 0x9

    if-eq v2, v8, :cond_6

    .line 114
    const/16 v8, 0x23

    if-eq v2, v8, :cond_7

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    const/4 v8, 0x0

    .restart local v8    # "doComment":Z
    :goto_2
    goto :goto_3

    .line 117
    .end local v8    # "doComment":Z
    :cond_8
    const/4 v8, 0x1

    .line 118
    .restart local v8    # "doComment":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->reset()V

    .line 119
    .end local v2    # "d":I
    goto :goto_4

    .line 121
    .end local v8    # "doComment":Z
    :cond_9
    move-object/from16 v1, p2

    const/4 v8, 0x1

    .line 122
    .restart local v8    # "doComment":Z
    :goto_4
    if-eqz v8, :cond_b

    .line 124
    add-int/lit8 v2, v4, 0x1

    const/16 v21, 0x2f

    .end local v4    # "len":I
    .local v2, "len":I
    aput-byte v21, v3, v4

    .line 125
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "len":I
    .restart local v4    # "len":I
    aput-byte v21, v3, v2

    .line 126
    add-int/lit8 v2, v4, 0x1

    const/16 v24, 0x20

    .end local v4    # "len":I
    .restart local v2    # "len":I
    aput-byte v24, v3, v4

    .line 127
    const/4 v4, 0x1

    .line 128
    .end local v14    # "changedLine":I
    .local v4, "changedLine":I
    const/4 v14, 0x1

    move/from16 v25, v4

    move v4, v2

    move v2, v14

    move/from16 v14, v25

    .end local v16    # "changed":Z
    .local v14, "changed":Z
    goto :goto_6

    .line 94
    .end local v2    # "len":I
    .end local v8    # "doComment":Z
    .local v4, "len":I
    .local v14, "changedLine":I
    .restart local v16    # "changed":Z
    :cond_a
    move-object/from16 v1, p2

    .line 131
    :cond_b
    :goto_5
    move/from16 v2, v16

    .end local v16    # "changed":Z
    .local v2, "changed":Z
    :goto_6
    const/16 v8, 0x20

    if-eq v15, v8, :cond_11

    const/16 v8, 0x9

    if-eq v15, v8, :cond_11

    if-gez v6, :cond_11

    .line 134
    move v6, v4

    .line 135
    if-lez v11, :cond_11

    if-eq v9, v10, :cond_11

    const/16 v8, 0x2f

    if-ne v15, v8, :cond_11

    .line 137
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v15

    .line 138
    if-gez v15, :cond_c

    .line 139
    goto :goto_7

    .line 140
    :cond_c
    if-eq v15, v8, :cond_d

    .line 141
    add-int/lit8 v16, v4, 0x1

    .end local v4    # "len":I
    .local v16, "len":I
    aput-byte v8, v3, v4

    move/from16 v4, v16

    goto :goto_8

    .line 144
    .end local v16    # "len":I
    .restart local v4    # "len":I
    :cond_d
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v15

    .line 145
    if-gez v15, :cond_f

    .line 146
    nop

    .line 268
    .end local v15    # "c":I
    :goto_7
    if-eqz v11, :cond_e

    .line 270
    iput v7, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unterminated "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 273
    :cond_e
    iput-object v3, v0, Lgnu/kawa/util/PreProcess;->resultBuffer:[B

    .line 274
    iput v4, v0, Lgnu/kawa/util/PreProcess;->resultLength:I

    .line 275
    return v2

    .line 147
    .restart local v15    # "c":I
    :cond_f
    const/4 v14, -0x1

    .line 148
    const/4 v2, 0x1

    .line 149
    const/16 v8, 0x20

    if-ne v15, v8, :cond_11

    .line 151
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v15

    .line 152
    if-eq v15, v8, :cond_10

    const/16 v8, 0x9

    if-ne v15, v8, :cond_11

    .line 153
    :cond_10
    const/4 v6, -0x1

    .line 158
    :cond_11
    :goto_8
    int-to-byte v8, v15

    aput-byte v8, v3, v4

    .line 159
    const/4 v8, 0x1

    add-int/2addr v4, v8

    .line 160
    const/16 v8, 0xd

    if-eq v15, v8, :cond_15

    const/16 v8, 0xa

    if-ne v15, v8, :cond_12

    goto :goto_a

    .line 265
    :cond_12
    if-gez v6, :cond_14

    .line 266
    const/16 v8, 0x9

    if-ne v15, v8, :cond_13

    add-int/lit8 v8, v10, 0x8

    and-int/lit8 v8, v8, -0x8

    goto :goto_9

    :cond_13
    add-int/lit8 v8, v10, 0x1

    :goto_9
    move/from16 v16, v2

    move-object/from16 v19, v3

    const/4 v10, 0x1

    .end local v10    # "curIndent":I
    .local v8, "curIndent":I
    goto/16 :goto_17

    .line 265
    .end local v8    # "curIndent":I
    .restart local v10    # "curIndent":I
    :cond_14
    move/from16 v16, v2

    move-object/from16 v19, v3

    move v8, v10

    const/4 v10, 0x1

    goto/16 :goto_17

    .line 162
    :cond_15
    :goto_a
    const/4 v8, -0x1

    .line 163
    .local v8, "firstNonSpace":I
    const/16 v16, 0x0

    .line 164
    .local v16, "lastNonSpace":I
    move/from16 v22, v5

    move/from16 v1, v16

    move/from16 v16, v2

    move/from16 v2, v22

    .local v1, "lastNonSpace":I
    .local v2, "i":I
    .local v16, "changed":Z
    :goto_b
    move/from16 v22, v5

    .end local v5    # "lineStart":I
    .local v22, "lineStart":I
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_18

    .line 166
    aget-byte v5, v3, v2

    move/from16 v23, v6

    const/16 v6, 0x20

    .end local v6    # "dataStart":I
    .local v23, "dataStart":I
    if-eq v5, v6, :cond_16

    aget-byte v5, v3, v2

    const/16 v6, 0x9

    if-eq v5, v6, :cond_17

    .line 168
    move v1, v2

    .line 169
    if-gez v8, :cond_17

    .line 170
    move v5, v2

    move v8, v5

    .end local v8    # "firstNonSpace":I
    .local v5, "firstNonSpace":I
    goto :goto_c

    .line 166
    .end local v5    # "firstNonSpace":I
    .restart local v8    # "firstNonSpace":I
    :cond_16
    const/16 v6, 0x9

    .line 164
    :cond_17
    :goto_c
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v22

    move/from16 v6, v23

    goto :goto_b

    .end local v23    # "dataStart":I
    .restart local v6    # "dataStart":I
    :cond_18
    move/from16 v23, v6

    .line 173
    .end local v2    # "i":I
    .end local v6    # "dataStart":I
    .restart local v23    # "dataStart":I
    sub-int v2, v1, v8

    const/4 v5, 0x4

    if-lt v2, v5, :cond_2c

    aget-byte v2, v3, v8

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_2c

    add-int/lit8 v2, v8, 0x1

    aget-byte v2, v3, v2

    const/16 v5, 0x2a

    if-ne v2, v5, :cond_2c

    add-int/lit8 v2, v1, -0x1

    aget-byte v2, v3, v2

    if-ne v2, v5, :cond_2c

    aget-byte v2, v3, v1

    const/16 v5, 0x2f

    if-ne v2, v5, :cond_2c

    .line 179
    add-int/lit8 v8, v8, 0x2

    .line 181
    :goto_d
    if-ge v8, v1, :cond_19

    aget-byte v2, v3, v8

    const/16 v5, 0x20

    if-ne v2, v5, :cond_19

    .line 182
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 183
    :cond_19
    add-int/lit8 v1, v1, -0x2

    .line 185
    :goto_e
    if-le v1, v8, :cond_1a

    aget-byte v2, v3, v1

    const/16 v5, 0x20

    if-ne v2, v5, :cond_1a

    .line 186
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 187
    :cond_1a
    aget-byte v2, v3, v8

    const/16 v5, 0x23

    if-ne v2, v5, :cond_2b

    .line 189
    new-instance v2, Ljava/lang/String;

    sub-int v5, v1, v8

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const-string v6, "ISO-8859-1"

    invoke-direct {v2, v3, v8, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 192
    .local v2, "cmnt":Ljava/lang/String;
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 195
    .local v5, "sp":I
    iget v7, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 196
    if-lez v5, :cond_1b

    .line 198
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 199
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 200
    .local v6, "rest":Ljava/lang/String;
    move/from16 v17, v1

    .end local v1    # "lastNonSpace":I
    .local v17, "lastNonSpace":I
    iget-object v1, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "binding":Ljava/lang/Object;
    goto :goto_f

    .line 204
    .end local v6    # "rest":Ljava/lang/String;
    .end local v17    # "lastNonSpace":I
    .local v1, "lastNonSpace":I
    :cond_1b
    move/from16 v17, v1

    .end local v1    # "lastNonSpace":I
    .restart local v17    # "lastNonSpace":I
    move-object v1, v2

    .line 205
    .end local v13    # "cmd":Ljava/lang/String;
    .local v1, "cmd":Ljava/lang/String;
    const-string v6, ""

    .line 206
    .restart local v6    # "rest":Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v25, v13

    move-object v13, v1

    move-object/from16 v1, v25

    .line 208
    .local v1, "binding":Ljava/lang/Object;
    .restart local v13    # "cmd":Ljava/lang/String;
    :goto_f
    move-object/from16 v19, v3

    .end local v3    # "buf":[B
    .local v19, "buf":[B
    const-string v3, "#ifdef"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "#ifndef"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move/from16 v20, v5

    goto/16 :goto_12

    .line 226
    :cond_1c
    const-string v3, "#else"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v20, v5

    .end local v5    # "sp":I
    .local v20, "sp":I
    const-string v5, "unexpected "

    if-eqz v3, :cond_20

    .line 228
    if-nez v11, :cond_1d

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    goto :goto_11

    .line 230
    :cond_1d
    if-ne v11, v12, :cond_1e

    .line 232
    const/4 v9, -0x1

    .line 233
    const/4 v12, 0x0

    move/from16 v1, v17

    goto/16 :goto_16

    .line 237
    :cond_1e
    move v9, v10

    .line 238
    if-nez v12, :cond_1f

    .line 239
    move v12, v11

    move/from16 v1, v17

    goto/16 :goto_16

    .line 238
    :cond_1f
    move/from16 v1, v17

    goto/16 :goto_16

    .line 242
    :cond_20
    const-string v3, "#endif"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 244
    if-nez v11, :cond_21

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 246
    :cond_21
    if-ne v11, v12, :cond_22

    .line 248
    const/4 v12, 0x0

    .line 249
    const/4 v9, -0x1

    goto :goto_10

    .line 251
    :cond_22
    if-lez v12, :cond_23

    .line 252
    move v9, v10

    .line 253
    :cond_23
    :goto_10
    add-int/lit8 v11, v11, -0x1

    move/from16 v1, v17

    goto/16 :goto_16

    .line 256
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown command: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 259
    .end local v1    # "binding":Ljava/lang/Object;
    .end local v2    # "cmnt":Ljava/lang/String;
    .end local v6    # "rest":Ljava/lang/String;
    .end local v20    # "sp":I
    :goto_11
    move/from16 v1, v17

    goto/16 :goto_16

    .line 208
    .restart local v1    # "binding":Ljava/lang/Object;
    .restart local v2    # "cmnt":Ljava/lang/String;
    .restart local v5    # "sp":I
    .restart local v6    # "rest":Ljava/lang/String;
    :cond_25
    move/from16 v20, v5

    .line 210
    .end local v5    # "sp":I
    .restart local v20    # "sp":I
    :goto_12
    if-nez v1, :cond_26

    .line 212
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v1

    const/16 v18, 0x0

    move-object/from16 v1, p1

    .end local v1    # "binding":Ljava/lang/Object;
    .local v21, "binding":Ljava/lang/Object;
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": warning - undefined keyword: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v21    # "binding":Ljava/lang/Object;
    .restart local v1    # "binding":Ljava/lang/Object;
    goto :goto_13

    .line 210
    :cond_26
    move-object/from16 v21, v1

    const/16 v18, 0x0

    .line 216
    :goto_13
    add-int/lit8 v11, v11, 0x1

    .line 217
    if-lez v12, :cond_27

    .line 218
    move v9, v10

    move/from16 v1, v17

    goto :goto_16

    .line 219
    :cond_27
    const/4 v3, 0x3

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x6e

    if-ne v3, v5, :cond_28

    const/4 v3, 0x1

    goto :goto_14

    :cond_28
    const/4 v3, 0x0

    :goto_14
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v1, v5, :cond_29

    const/4 v5, 0x1

    goto :goto_15

    :cond_29
    const/4 v5, 0x0

    :goto_15
    if-eq v3, v5, :cond_2a

    .line 222
    move v9, v10

    .line 223
    move v12, v11

    move/from16 v1, v17

    goto :goto_16

    .line 219
    :cond_2a
    move/from16 v1, v17

    goto :goto_16

    .line 187
    .end local v2    # "cmnt":Ljava/lang/String;
    .end local v6    # "rest":Ljava/lang/String;
    .end local v17    # "lastNonSpace":I
    .end local v19    # "buf":[B
    .end local v20    # "sp":I
    .local v1, "lastNonSpace":I
    .restart local v3    # "buf":[B
    :cond_2b
    move/from16 v17, v1

    move-object/from16 v19, v3

    .end local v1    # "lastNonSpace":I
    .end local v3    # "buf":[B
    .restart local v17    # "lastNonSpace":I
    .restart local v19    # "buf":[B
    goto :goto_16

    .line 173
    .end local v17    # "lastNonSpace":I
    .end local v19    # "buf":[B
    .restart local v1    # "lastNonSpace":I
    .restart local v3    # "buf":[B
    :cond_2c
    move-object/from16 v19, v3

    .line 259
    .end local v3    # "buf":[B
    .restart local v19    # "buf":[B
    :goto_16
    move v2, v4

    .line 260
    .end local v22    # "lineStart":I
    .local v2, "lineStart":I
    const/4 v3, -0x1

    .line 261
    .end local v23    # "dataStart":I
    .local v3, "dataStart":I
    const/4 v5, 0x0

    .line 262
    .end local v10    # "curIndent":I
    .local v5, "curIndent":I
    iget v6, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    const/4 v10, 0x1

    add-int/2addr v6, v10

    iput v6, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 263
    const/4 v1, 0x0

    .line 264
    .end local v8    # "firstNonSpace":I
    .end local v14    # "changedLine":I
    .local v1, "changedLine":I
    move v14, v1

    move v6, v3

    move v8, v5

    move v5, v2

    .line 267
    .end local v1    # "changedLine":I
    .end local v2    # "lineStart":I
    .end local v3    # "dataStart":I
    .end local v15    # "c":I
    .local v5, "lineStart":I
    .local v6, "dataStart":I
    .local v8, "curIndent":I
    .restart local v14    # "changedLine":I
    :goto_17
    move-object/from16 v1, p1

    move v10, v8

    move/from16 v2, v16

    move-object/from16 v3, v19

    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method handleArg(Ljava/lang/String;)V
    .locals 8
    .param p1, "arg"    # Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v2, :cond_3

    .line 282
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    .end local p1    # "arg":Ljava/lang/String;
    .local v1, "arg":Ljava/lang/String;
    const/4 p1, 0x0

    .line 285
    .local p1, "i":I
    :goto_0
    sget-object v0, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 287
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown version: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 290
    :cond_0
    sget-object v0, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    sget-object v0, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    aget-object v0, v0, v2

    .line 293
    .local v0, "features":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(variant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maps to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 295
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    .end local v0    # "features":Ljava/lang/String;
    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .end local p1    # "i":I
    :cond_1
    move-object p1, v1

    goto/16 :goto_4

    .restart local p1    # "i":I
    :cond_2
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 301
    .end local v1    # "arg":Ljava/lang/String;
    .local p1, "arg":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_4

    .line 302
    iget-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 303
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_9

    .line 305
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 306
    .local v0, "eq":I
    if-le v0, v4, :cond_8

    .line 308
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_5

    const/4 v4, 0x2

    :cond_5
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "keyword":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "value":Ljava/lang/String;
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 312
    .local v4, "b":Ljava/lang/Boolean;
    const-string v5, "true"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 313
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    .line 314
    :cond_6
    const-string v5, "false"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 316
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 319
    :cond_7
    :goto_2
    iget-object v3, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .end local v1    # "keyword":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v4    # "b":Ljava/lang/Boolean;
    goto :goto_3

    .line 322
    :cond_8
    iget-object v1, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .end local v0    # "eq":I
    :goto_3
    goto :goto_4

    .line 328
    :cond_9
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    goto :goto_4

    .line 330
    :catchall_0
    move-exception v0

    .line 332
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 337
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_4
    return-void
.end method
