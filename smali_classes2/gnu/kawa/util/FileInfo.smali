.class Lgnu/kawa/util/FileInfo;
.super Ljava/lang/Object;
.source "FixupHtmlToc.java"


# static fields
.field static final childPat:Ljava/util/regex/Pattern;

.field static fileMap:Ljava/util/Hashtable;

.field static final linkPat:Ljava/util/regex/Pattern;

.field static final parentPat:Ljava/util/regex/Pattern;


# instance fields
.field beforeNavbarText:Ljava/lang/StringBuffer;

.field bout:Ljava/io/ByteArrayOutputStream;

.field childLinkText:[Ljava/lang/String;

.field cout:Lgnu/mapping/OutPort;

.field file:Ljava/io/File;

.field fin:Ljava/io/FileInputStream;

.field in:Lgnu/mapping/InPort;

.field nchildren:I

.field newNavbarText:Ljava/lang/StringBuffer;

.field oldNavbarText:Ljava/lang/StringBuffer;

.field parent:Lgnu/kawa/util/FileInfo;

.field parentName:Ljava/lang/String;

.field path:Ljava/lang/String;

.field scanned:Z

.field writeNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    .line 93
    const-string v0, "<a .*</a>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->childPat:Ljava/util/regex/Pattern;

    .line 94
    const-string v0, "<ul[^>]* parent=[\'\"]([^\'\"]*)[\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->parentPat:Ljava/util/regex/Pattern;

    .line 96
    const-string v0, " href=[\'\"]([^\'\"]*)[\'\"]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lgnu/kawa/util/FileInfo;->linkPat:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "abs":Ljava/lang/String;
    sget-object v1, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/kawa/util/FileInfo;

    .line 84
    .local v1, "info":Lgnu/kawa/util/FileInfo;
    if-nez v1, :cond_0

    .line 86
    new-instance v2, Lgnu/kawa/util/FileInfo;

    invoke-direct {v2}, Lgnu/kawa/util/FileInfo;-><init>()V

    move-object v1, v2

    .line 87
    iput-object p0, v1, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    .line 88
    sget-object v2, Lgnu/kawa/util/FileInfo;->fileMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-object v1
.end method


# virtual methods
.method public scan()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lgnu/kawa/util/FileInfo;->scanned:Z

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/kawa/util/FileInfo;->scanned:Z

    .line 103
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->fin:Ljava/io/FileInputStream;

    .line 104
    new-instance v1, Lgnu/mapping/InPort;

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lgnu/kawa/util/FileInfo;->fin:Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    .line 105
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    .line 106
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    .line 107
    iget-boolean v1, p0, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-eqz v1, :cond_1

    .line 109
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    .line 110
    new-instance v1, Lgnu/mapping/OutPort;

    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    .line 112
    :cond_1
    const/4 v1, 0x0

    .line 113
    .local v1, "lineno":I
    const/4 v2, 0x0

    .line 114
    .local v2, "inNavbar":Z
    const/4 v3, 0x0

    .line 115
    .local v3, "inChildList":Z
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 118
    .local v4, "chvec":Ljava/util/Vector;
    :goto_0
    iget-object v5, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v5}, Lgnu/mapping/InPort;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    if-eqz v2, :cond_9

    .line 123
    const-string v6, "<!--end-generated-navbar-->"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_5

    .line 125
    const/4 v2, 0x0

    .line 126
    nop

    .line 161
    .end local v5    # "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 162
    .local v0, "charr":[Ljava/lang/String;
    array-length v5, v0

    iput v5, p0, Lgnu/kawa/util/FileInfo;->nchildren:I

    .line 163
    invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 164
    iput-object v0, p0, Lgnu/kawa/util/FileInfo;->childLinkText:[Ljava/lang/String;

    .line 165
    iget-boolean v5, p0, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-nez v5, :cond_3

    .line 166
    iget-object v5, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v5}, Lgnu/mapping/InPort;->close()V

    .line 167
    :cond_3
    iget-object v5, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 169
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    iget-object v7, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 170
    .local v5, "parentFile":Ljava/io/File;
    invoke-static {v5}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v6

    .line 171
    .local v6, "parentInfo":Lgnu/kawa/util/FileInfo;
    invoke-virtual {v6}, Lgnu/kawa/util/FileInfo;->scan()V

    .line 172
    iput-object v6, p0, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    .line 174
    .end local v5    # "parentFile":Ljava/io/File;
    .end local v6    # "parentInfo":Lgnu/kawa/util/FileInfo;
    :cond_4
    return-void

    .line 128
    .end local v0    # "charr":[Ljava/lang/String;
    .local v5, "line":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    if-eqz v3, :cond_8

    .line 132
    const-string v6, "<!--end-children-toc-->"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_6

    .line 133
    const/4 v3, 0x0

    goto :goto_2

    .line 136
    :cond_6
    sget-object v6, Lgnu/kawa/util/FileInfo;->childPat:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 137
    .local v6, "childMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 139
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_7
    sget-object v7, Lgnu/kawa/util/FileInfo;->parentPat:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 142
    .local v7, "parentMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    if-nez v8, :cond_8

    .line 144
    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    .line 148
    .end local v6    # "childMatcher":Ljava/util/regex/Matcher;
    .end local v7    # "parentMatcher":Ljava/util/regex/Matcher;
    :cond_8
    :goto_2
    const-string v6, "<!--start-children-toc-->"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_a

    .line 149
    const/4 v3, 0x1

    goto :goto_3

    .line 153
    :cond_9
    const-string v6, "<!--start-generated-navbar-->"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_a

    .line 155
    const/4 v2, 0x1

    .line 158
    :cond_a
    :goto_3
    iget-boolean v6, p0, Lgnu/kawa/util/FileInfo;->writeNeeded:Z

    if-eqz v6, :cond_b

    if-nez v2, :cond_b

    .line 159
    iget-object v6, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    invoke-virtual {v6, v5}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 160
    .end local v5    # "line":Ljava/lang/String;
    :cond_b
    goto/16 :goto_0
.end method

.method public write()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "level":I
    move-object v1, p0

    .line 237
    .local v1, "current":Lgnu/kawa/util/FileInfo;
    :goto_0
    iget-object v2, v1, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    if-eqz v2, :cond_0

    .line 239
    iget-object v1, v1, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    const-string v3, "<!--start-generated-navbar-->"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0, v2}, Lgnu/kawa/util/FileInfo;->writeLinks(ILjava/lang/StringBuffer;)V

    .line 244
    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    iget-object v3, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 245
    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    const-string v3, "<!--end-generated-navbar-->"

    invoke-virtual {v2, v3}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 248
    :goto_1
    iget-object v2, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v2}, Lgnu/mapping/InPort;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 250
    nop

    .line 253
    .end local v2    # "line":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lgnu/kawa/util/FileInfo;->in:Lgnu/mapping/InPort;

    invoke-virtual {v3}, Lgnu/mapping/InPort;->close()V

    .line 255
    iget-object v3, p0, Lgnu/kawa/util/FileInfo;->oldNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/util/FileInfo;->newNavbarText:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "fixup "

    if-eqz v3, :cond_1

    .line 256
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - no change"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 260
    .local v3, "outs":Ljava/io/FileOutputStream;
    iget-object v5, p0, Lgnu/kawa/util/FileInfo;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 261
    .local v5, "bbuf":[B
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 262
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 263
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - updated"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 265
    .end local v3    # "outs":Ljava/io/FileOutputStream;
    .end local v5    # "bbuf":[B
    :goto_2
    return-void

    .line 251
    .local v2, "line":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lgnu/kawa/util/FileInfo;->cout:Lgnu/mapping/OutPort;

    invoke-virtual {v3, v2}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 252
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_1
.end method

.method public writeLinks(ILjava/lang/StringBuffer;)V
    .locals 17
    .param p1, "uplevel"    # I
    .param p2, "out"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 179
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    .line 180
    .local v3, "current":Lgnu/kawa/util/FileInfo;
    const/4 v4, 0x0

    .line 181
    .local v4, "thischild":Lgnu/kawa/util/FileInfo;
    move/from16 v5, p1

    .local v5, "i":I
    :goto_0
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_0

    .line 183
    move-object v4, v3

    .line 184
    iget-object v3, v3, Lgnu/kawa/util/FileInfo;->parent:Lgnu/kawa/util/FileInfo;

    goto :goto_0

    .line 186
    .end local v5    # "i":I
    :cond_0
    if-nez v1, :cond_1

    .line 187
    const-string v5, "<!--start-children-toc-->\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_1
    if-nez v1, :cond_2

    iget-object v5, v0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 190
    const-string v5, "<ul parent=\""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    iget-object v5, v0, Lgnu/kawa/util/FileInfo;->parentName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v5, "\">\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 195
    :cond_2
    const-string v5, "<ul>\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :goto_1
    iget-object v5, v0, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    .line 197
    .local v5, "thisURI":Ljava/net/URI;
    iget-object v6, v3, Lgnu/kawa/util/FileInfo;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v6

    .line 198
    .local v6, "currentURI":Ljava/net/URI;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget v8, v3, Lgnu/kawa/util/FileInfo;->nchildren:I

    if-ge v7, v8, :cond_7

    .line 200
    iget-object v8, v3, Lgnu/kawa/util/FileInfo;->childLinkText:[Ljava/lang/String;

    aget-object v8, v8, v7

    .line 201
    .local v8, "linkText":Ljava/lang/String;
    const/4 v9, 0x0

    .line 203
    .local v9, "ancestor":Z
    if-lez v1, :cond_5

    .line 205
    sget-object v10, Lgnu/kawa/util/FileInfo;->linkPat:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 206
    .local v10, "linkMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    .line 207
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 208
    .local v12, "hrefText":Ljava/lang/String;
    invoke-virtual {v6, v12}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v13

    .line 209
    .local v13, "linkURI":Ljava/net/URI;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " href=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v13}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lgnu/text/Path;->relativize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "\""

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 210
    const/16 v11, 0x23

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 211
    .local v11, "hash":I
    const/4 v14, 0x0

    if-ltz v11, :cond_3

    .line 212
    invoke-virtual {v12, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 213
    :cond_3
    new-instance v15, Ljava/io/File;

    invoke-virtual {v6, v12}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v15}, Lgnu/kawa/util/FileInfo;->find(Ljava/io/File;)Lgnu/kawa/util/FileInfo;

    move-result-object v14

    .line 214
    .local v14, "curchild":Lgnu/kawa/util/FileInfo;
    if-ne v14, v4, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    move/from16 v9, v16

    .line 216
    if-nez v9, :cond_5

    const/4 v15, 0x1

    if-le v1, v15, :cond_5

    .line 217
    goto :goto_4

    .line 219
    .end local v10    # "linkMatcher":Ljava/util/regex/Matcher;
    .end local v11    # "hash":I
    .end local v12    # "hrefText":Ljava/lang/String;
    .end local v13    # "linkURI":Ljava/net/URI;
    .end local v14    # "curchild":Lgnu/kawa/util/FileInfo;
    :cond_5
    const-string v10, "<li>"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    if-eqz v9, :cond_6

    .line 223
    const/16 v10, 0xa

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v0, v10, v2}, Lgnu/kawa/util/FileInfo;->writeLinks(ILjava/lang/StringBuffer;)V

    .line 226
    :cond_6
    const-string v10, "</li>\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    .end local v8    # "linkText":Ljava/lang/String;
    .end local v9    # "ancestor":Z
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 228
    .end local v7    # "i":I
    :cond_7
    const-string v7, "</ul>\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    if-nez v1, :cond_8

    .line 230
    const-string v7, "<!--end-children-toc-->\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_8
    return-void
.end method
