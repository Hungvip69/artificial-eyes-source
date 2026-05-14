.class public Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;,
        Lcom/google/appinventor/components/runtime/util/NanoHTTPD$myThreadFactory;,
        Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    }
.end annotation


# static fields
.field public static final HTTP_BADREQUEST:Ljava/lang/String; = "400 Bad Request"

.field public static final HTTP_FORBIDDEN:Ljava/lang/String; = "403 Forbidden"

.field public static final HTTP_INTERNALERROR:Ljava/lang/String; = "500 Internal Server Error"

.field public static final HTTP_NOTFOUND:Ljava/lang/String; = "404 Not Found"

.field public static final HTTP_NOTIMPLEMENTED:Ljava/lang/String; = "501 Not Implemented"

.field public static final HTTP_NOTMODIFIED:Ljava/lang/String; = "304 Not Modified"

.field public static final HTTP_OK:Ljava/lang/String; = "200 OK"

.field public static final HTTP_PARTIALCONTENT:Ljava/lang/String; = "206 Partial Content"

.field public static final HTTP_RANGE_NOT_SATISFIABLE:Ljava/lang/String; = "416 Requested Range Not Satisfiable"

.field public static final HTTP_REDIRECT:Ljava/lang/String; = "301 Moved Permanently"

.field private static final LICENCE:Ljava/lang/String; = "Copyright (C) 2001,2005-2011 by Jarno Elonen <elonen@iki.fi>\nand Copyright (C) 2010 by Konstantinos Togias <info@ktogias.gr>\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."

.field private static final LOG_TAG:Ljava/lang/String; = "AppInvHTTPD"

.field public static final MIME_DEFAULT_BINARY:Ljava/lang/String; = "application/octet-stream"

.field public static final MIME_HTML:Ljava/lang/String; = "text/html"

.field public static final MIME_PLAINTEXT:Ljava/lang/String; = "text/plain"

.field public static final MIME_XML:Ljava/lang/String; = "text/xml"

.field private static final REPL_STACK_SIZE:I = 0x40000

.field private static gmtFrmt:Ljava/text/SimpleDateFormat;

.field protected static myErr:Ljava/io/PrintStream;

.field protected static myOut:Ljava/io/PrintStream;

.field private static theBufferSize:I

.field private static theMimeTypes:Ljava/util/Hashtable;


# instance fields
.field private myExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private myRootDir:Ljava/io/File;

.field private final myServerSocket:Ljava/net/ServerSocket;

.field private myTcpPort:I

.field private myThread:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmyExecutor(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmyServerSocket(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/net/ServerSocket;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetgmtFrmt()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->gmtFrmt:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgettheBufferSize()I
    .locals 1

    sget v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->theBufferSize:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1092
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->theMimeTypes:Ljava/util/Hashtable;

    .line 1095
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "css            text/css htm            text/html html           text/html xml            text/xml txt            text/plain asc            text/plain gif            image/gif jpg            image/jpeg jpeg           image/jpeg png            image/png mp3            audio/mpeg m3u            audio/mpeg-url mp4            video/mp4 ogv            video/ogg flv            video/x-flv mov            video/quicktime swf            application/x-shockwave-flash js                     application/javascript pdf            application/pdf doc            application/msword ogg            application/x-ogg zip            application/octet-stream exe            application/octet-stream class          application/octet-stream "

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1120
    .local v0, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    sget-object v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->theMimeTypes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1124
    .end local v0    # "st":Ljava/util/StringTokenizer;
    :cond_0
    const/16 v0, 0x4000

    sput v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->theBufferSize:I

    .line 1127
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    .line 1128
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    .line 1136
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->gmtFrmt:Ljava/text/SimpleDateFormat;

    .line 1137
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->gmtFrmt:Ljava/text/SimpleDateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1138
    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 9
    .param p1, "port"    # I
    .param p2, "wwwroot"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$myThreadFactory;

    const/4 v0, 0x0

    invoke-direct {v7, p0, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$myThreadFactory;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Lcom/google/appinventor/components/runtime/util/NanoHTTPD$myThreadFactory-IA;)V

    const/4 v1, 0x2

    const/16 v2, 0xa

    const-wide/16 v3, 0x5

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 242
    iput p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myTcpPort:I

    .line 243
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myRootDir:Ljava/io/File;

    .line 244
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myTcpPort:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    .line 245
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myThread:Ljava/lang/Thread;

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 260
    return-void
.end method

.method private encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;

    .line 863
    const-string v0, ""

    .line 864
    .local v0, "newUri":Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/ "

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 865
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 867
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 868
    .local v2, "tok":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 870
    :cond_0
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 874
    :cond_1
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 878
    .end local v2    # "tok":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 879
    :cond_2
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 282
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    const-string v1, "NanoHTTPD 1.25 (C) 2001,2005-2011 Jarno Elonen and (C) 2010 Konstantinos Togias\n(Command line options: [-p port] [-d root-dir] [--licence])\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    const/16 v0, 0x50

    .line 287
    .local v0, "port":I
    new-instance v1, Ljava/io/File;

    const-string v2, "."

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    .line 290
    .local v1, "wwwroot":Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 291
    aget-object v3, p0, v2

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 292
    add-int/lit8 v3, v2, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 293
    :cond_0
    aget-object v3, p0, v2

    const-string v4, "-d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    new-instance v3, Ljava/io/File;

    add-int/lit8 v4, v2, 0x1

    aget-object v4, p0, v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    goto :goto_1

    .line 295
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "licence"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    sget-object v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    const-string v4, "Copyright (C) 2001,2005-2011 by Jarno Elonen <elonen@iki.fi>\nand Copyright (C) 2010 by Konstantinos Togias <info@ktogias.gr>\n\nRedistribution and use in source and binary forms, with or without\nmodification, are permitted provided that the following conditions\nare met:\n\nRedistributions of source code must retain the above copyright notice,\nthis list of conditions and the following disclaimer. Redistributions in\nbinary form must reproduce the above copyright notice, this list of\nconditions and the following disclaimer in the documentation and/or other\nmaterials provided with the distribution. The name of the author may not\nbe used to endorse or promote products derived from this software without\nspecific prior written permission. \n \nTHIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS\'\' AND ANY EXPRESS OR\nIMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES\nOF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.\nIN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,\nINCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT\nNOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\nDATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\nTHEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\nOF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    goto :goto_2

    .line 290
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    .end local v2    # "i":I
    :cond_3
    :goto_2
    :try_start_0
    new-instance v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {v2, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_3

    .line 305
    :catch_0
    move-exception v2

    .line 307
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t start server:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 311
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_3
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now serving files in port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object v2, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    const-string v3, "Hit Enter to stop.\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    :try_start_1
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    .line 315
    :goto_4
    return-void
.end method


# virtual methods
.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "parms"    # Ljava/util/Properties;
    .param p5, "files"    # Ljava/util/Properties;
    .param p6, "mySocket"    # Ljava/net/Socket;

    .line 106
    sget-object v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 109
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const-string v2, "\'"

    const-string v3, "\' = \'"

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, "value":Ljava/lang/String;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    .line 113
    invoke-virtual {p3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  HDR: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    .end local v1    # "value":Ljava/lang/String;
    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 116
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    .restart local v1    # "value":Ljava/lang/String;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    .line 120
    invoke-virtual {p4, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  PRM: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    .end local v1    # "value":Ljava/lang/String;
    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {p5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 123
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 125
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    .restart local v1    # "value":Ljava/lang/String;
    sget-object v4, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myOut:Ljava/io/PrintStream;

    .line 127
    invoke-virtual {p5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  UPLOADED: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    .end local v1    # "value":Ljava/lang/String;
    goto :goto_2

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myRootDir:Ljava/io/File;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p3, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v1

    return-object v1
.end method

.method public serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 32
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/util/Properties;
    .param p3, "homeDir"    # Ljava/io/File;
    .param p4, "allowDirectoryListing"    # Z

    .line 898
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v0, "bytes="

    const/4 v4, 0x0

    .line 901
    .local v4, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    const-string v6, "text/plain"

    if-nez v5, :cond_0

    .line 902
    new-instance v5, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v7, "500 Internal Server Error"

    const-string v8, "INTERNAL ERRROR: serveFile(): given homeDir is not a directory."

    invoke-direct {v5, v1, v7, v6, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 905
    :cond_0
    const/16 v5, 0x2f

    const-string v7, "403 Forbidden"

    const/4 v8, 0x0

    if-nez v4, :cond_3

    .line 908
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sget-char v10, Ljava/io/File;->separatorChar:C

    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 909
    .end local p1    # "uri":Ljava/lang/String;
    .local v9, "uri":Ljava/lang/String;
    const/16 v10, 0x3f

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_1

    .line 910
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 913
    :cond_1
    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "../"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_4

    .line 914
    :cond_2
    new-instance v10, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v11, "FORBIDDEN: Won\'t serve ../ for security reasons."

    invoke-direct {v10, v1, v7, v6, v11}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v10

    goto :goto_0

    .line 905
    .end local v9    # "uri":Ljava/lang/String;
    .restart local p1    # "uri":Ljava/lang/String;
    :cond_3
    move-object/from16 v9, p1

    .line 918
    .end local p1    # "uri":Ljava/lang/String;
    .restart local v9    # "uri":Ljava/lang/String;
    :cond_4
    :goto_0
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 919
    .local v10, "f":Ljava/io/File;
    if-nez v4, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_5

    .line 920
    new-instance v11, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v12, "404 Not Found"

    const-string v13, "Error 404, file not found."

    invoke-direct {v11, v1, v12, v6, v13}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v11

    .line 924
    :cond_5
    const-string v11, "200 OK"

    const-string v12, "/"

    if-nez v4, :cond_15

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 928
    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "\">"

    const-string v15, "text/html"

    if-nez v13, :cond_6

    .line 930
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 931
    new-instance v13, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<html><body>Redirected: <a href=\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</a></body></html>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "301 Moved Permanently"

    invoke-direct {v13, v1, v8, v15, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v13

    .line 934
    const-string v5, "Location"

    invoke-virtual {v4, v5, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    :cond_6
    if-nez v4, :cond_14

    .line 940
    new-instance v5, Ljava/io/File;

    const-string v8, "index.html"

    invoke-direct {v5, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 941
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "/index.html"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v5

    move-object/from16 v31, v0

    move-object v3, v1

    move-object v5, v7

    move-object/from16 v19, v12

    goto/16 :goto_8

    .line 942
    :cond_7
    new-instance v5, Ljava/io/File;

    const-string v8, "index.htm"

    invoke-direct {v5, v10, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 943
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "/index.htm"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v10, v5

    move-object/from16 v31, v0

    move-object v3, v1

    move-object v5, v7

    move-object/from16 v19, v12

    goto/16 :goto_8

    .line 945
    :cond_8
    if-eqz p4, :cond_13

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 947
    invoke-virtual {v10}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, "files":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<html><body><h1>Directory "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "</h1><br/>"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 950
    .local v8, "msg":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v3, 0x1

    if-le v13, v3, :cond_b

    .line 952
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 953
    .local v13, "u":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v13, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 954
    .local v3, "slash":I
    if-ltz v3, :cond_a

    move-object/from16 p1, v4

    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .local p1, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 955
    add-int/lit8 v4, v3, 0x1

    move/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "slash":I
    .local v16, "slash":I
    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v18, v8

    .end local v8    # "msg":Ljava/lang/String;
    .local v18, "msg":Ljava/lang/String;
    const-string v8, "<b><a href=\""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">..</a></b><br/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v18    # "msg":Ljava/lang/String;
    .restart local v8    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 954
    .end local v16    # "slash":I
    .restart local v3    # "slash":I
    :cond_9
    move/from16 v16, v3

    move-object/from16 v18, v8

    .end local v3    # "slash":I
    .end local v8    # "msg":Ljava/lang/String;
    .restart local v16    # "slash":I
    .restart local v18    # "msg":Ljava/lang/String;
    goto :goto_1

    .end local v16    # "slash":I
    .end local v18    # "msg":Ljava/lang/String;
    .end local p1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v3    # "slash":I
    .restart local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v8    # "msg":Ljava/lang/String;
    :cond_a
    move/from16 v16, v3

    move-object/from16 p1, v4

    move-object/from16 v18, v8

    .end local v3    # "slash":I
    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v8    # "msg":Ljava/lang/String;
    .restart local v16    # "slash":I
    .restart local v18    # "msg":Ljava/lang/String;
    .restart local p1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_1

    .line 950
    .end local v13    # "u":Ljava/lang/String;
    .end local v16    # "slash":I
    .end local v18    # "msg":Ljava/lang/String;
    .end local p1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v8    # "msg":Ljava/lang/String;
    :cond_b
    move-object/from16 p1, v4

    move-object/from16 v18, v8

    .line 958
    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v8    # "msg":Ljava/lang/String;
    .restart local v18    # "msg":Ljava/lang/String;
    .restart local p1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_1
    move-object/from16 v8, v18

    .end local v18    # "msg":Ljava/lang/String;
    .restart local v8    # "msg":Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_12

    .line 960
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v4, v5

    if-ge v3, v4, :cond_11

    .line 962
    new-instance v4, Ljava/io/File;

    aget-object v13, v5, v3

    invoke-direct {v4, v10, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 963
    .local v4, "curFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v13

    .line 964
    .local v13, "dir":Z
    if-eqz v13, :cond_c

    .line 966
    move-object/from16 v16, v10

    .end local v10    # "f":Ljava/io/File;
    .local v16, "f":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v18, v8

    .end local v8    # "msg":Ljava/lang/String;
    .restart local v18    # "msg":Ljava/lang/String;
    const-string v8, "<b>"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 967
    .end local v18    # "msg":Ljava/lang/String;
    .restart local v8    # "msg":Ljava/lang/String;
    aget-object v10, v5, v3

    move-object/from16 v18, v8

    .end local v8    # "msg":Ljava/lang/String;
    .restart local v18    # "msg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    move-object/from16 v8, v18

    goto :goto_4

    .line 964
    .end local v16    # "f":Ljava/io/File;
    .end local v18    # "msg":Ljava/lang/String;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    :cond_c
    move-object/from16 v18, v8

    move-object/from16 v16, v10

    .line 970
    .end local v10    # "f":Ljava/io/File;
    .restart local v16    # "f":Ljava/io/File;
    :goto_4
    aget-object v10, v5, v3

    move-object/from16 v19, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->encodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aget-object v12, v5, v3

    move-object/from16 v20, v5

    .end local v5    # "files":[Ljava/lang/String;
    .local v20, "files":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v18, v8

    .end local v8    # "msg":Ljava/lang/String;
    .restart local v18    # "msg":Ljava/lang/String;
    const-string v8, "<a href=\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "</a>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 974
    .end local v18    # "msg":Ljava/lang/String;
    .local v5, "msg":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 976
    move-object v10, v9

    .end local v9    # "uri":Ljava/lang/String;
    .local v10, "uri":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 977
    .local v8, "len":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v21, v4

    .end local v4    # "curFile":Ljava/io/File;
    .local v21, "curFile":Ljava/io/File;
    const-string v4, " &nbsp;<font size=2>("

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 978
    .end local v5    # "msg":Ljava/lang/String;
    .local v4, "msg":Ljava/lang/String;
    const-wide/16 v22, 0x400

    cmp-long v5, v8, v22

    if-gez v5, :cond_d

    .line 979
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " bytes"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v31, v0

    move-object v12, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v10

    goto :goto_5

    .line 980
    :cond_d
    const-string v5, "."

    const-wide/16 v24, 0x64

    const-wide/16 v26, 0xa

    const-wide/32 v28, 0x100000

    cmp-long v12, v8, v28

    if-gez v12, :cond_e

    .line 981
    move-object v12, v6

    move-object/from16 v30, v7

    div-long v6, v8, v22

    rem-long v22, v8, v22

    div-long v22, v22, v26

    move-object/from16 v31, v0

    rem-long v0, v22, v24

    move-object/from16 v22, v10

    .end local v10    # "uri":Ljava/lang/String;
    .local v22, "uri":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 983
    .end local v22    # "uri":Ljava/lang/String;
    .restart local v10    # "uri":Ljava/lang/String;
    :cond_e
    move-object/from16 v31, v0

    move-object v12, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v10

    .end local v10    # "uri":Ljava/lang/String;
    .restart local v22    # "uri":Ljava/lang/String;
    div-long v0, v8, v28

    rem-long v6, v8, v28

    div-long v6, v6, v26

    rem-long v6, v6, v24

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 985
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v4    # "msg":Ljava/lang/String;
    .restart local v5    # "msg":Ljava/lang/String;
    goto :goto_6

    .line 974
    .end local v8    # "len":J
    .end local v21    # "curFile":Ljava/io/File;
    .end local v22    # "uri":Ljava/lang/String;
    .local v4, "curFile":Ljava/io/File;
    .restart local v9    # "uri":Ljava/lang/String;
    :cond_f
    move-object/from16 v31, v0

    move-object/from16 v21, v4

    move-object v12, v6

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    .line 987
    .end local v4    # "curFile":Ljava/io/File;
    .end local v9    # "uri":Ljava/lang/String;
    .restart local v21    # "curFile":Ljava/io/File;
    .restart local v22    # "uri":Ljava/lang/String;
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 988
    .end local v5    # "msg":Ljava/lang/String;
    .local v0, "msg":Ljava/lang/String;
    if-eqz v13, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "</b>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    move-object v8, v0

    .line 960
    .end local v0    # "msg":Ljava/lang/String;
    .end local v13    # "dir":Z
    .end local v21    # "curFile":Ljava/io/File;
    .local v8, "msg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p0

    move-object v6, v12

    move-object/from16 v10, v16

    move-object/from16 v12, v19

    move-object/from16 v5, v20

    move-object/from16 v9, v22

    move-object/from16 v7, v30

    move-object/from16 v0, v31

    goto/16 :goto_3

    .end local v16    # "f":Ljava/io/File;
    .end local v20    # "files":[Ljava/lang/String;
    .end local v22    # "uri":Ljava/lang/String;
    .local v5, "files":[Ljava/lang/String;
    .restart local v9    # "uri":Ljava/lang/String;
    .local v10, "f":Ljava/io/File;
    :cond_11
    move-object/from16 v31, v0

    move-object/from16 v20, v5

    move-object/from16 v30, v7

    move-object/from16 v18, v8

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object/from16 v19, v12

    move-object v12, v6

    .end local v5    # "files":[Ljava/lang/String;
    .end local v8    # "msg":Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    .restart local v16    # "f":Ljava/io/File;
    .restart local v18    # "msg":Ljava/lang/String;
    .restart local v20    # "files":[Ljava/lang/String;
    .restart local v22    # "uri":Ljava/lang/String;
    goto :goto_7

    .line 958
    .end local v3    # "i":I
    .end local v16    # "f":Ljava/io/File;
    .end local v18    # "msg":Ljava/lang/String;
    .end local v20    # "files":[Ljava/lang/String;
    .end local v22    # "uri":Ljava/lang/String;
    .restart local v5    # "files":[Ljava/lang/String;
    .restart local v8    # "msg":Ljava/lang/String;
    .restart local v9    # "uri":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    :cond_12
    move-object/from16 v31, v0

    move-object/from16 v20, v5

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object/from16 v19, v12

    move-object v12, v6

    .line 991
    .end local v5    # "files":[Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    .restart local v16    # "f":Ljava/io/File;
    .restart local v20    # "files":[Ljava/lang/String;
    .restart local v22    # "uri":Ljava/lang/String;
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 992
    .end local v8    # "msg":Ljava/lang/String;
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v11, v15, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    .line 993
    .end local v0    # "msg":Ljava/lang/String;
    .end local v20    # "files":[Ljava/lang/String;
    .end local p1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .local v4, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    move-object v6, v12

    move-object/from16 v10, v16

    move-object/from16 v9, v22

    move-object/from16 v5, v30

    goto :goto_8

    .line 945
    .end local v16    # "f":Ljava/io/File;
    .end local v22    # "uri":Ljava/lang/String;
    .restart local v9    # "uri":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    :cond_13
    move-object/from16 v31, v0

    move-object v3, v1

    move-object/from16 p1, v4

    move-object/from16 v30, v7

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object/from16 v19, v12

    move-object v12, v6

    .line 996
    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    .restart local v16    # "f":Ljava/io/File;
    .restart local v22    # "uri":Ljava/lang/String;
    .restart local p1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "FORBIDDEN: No directory listing."

    move-object v6, v12

    move-object/from16 v5, v30

    invoke-direct {v0, v3, v5, v6, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    move-object/from16 v10, v16

    move-object/from16 v9, v22

    .end local p1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_8

    .line 937
    .end local v16    # "f":Ljava/io/File;
    .end local v22    # "uri":Ljava/lang/String;
    .restart local v9    # "uri":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    :cond_14
    move-object/from16 v31, v0

    move-object v3, v1

    move-object/from16 p1, v4

    move-object v5, v7

    move-object/from16 v22, v9

    move-object/from16 v16, v10

    move-object/from16 v19, v12

    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    .restart local v16    # "f":Ljava/io/File;
    .restart local v22    # "uri":Ljava/lang/String;
    .restart local p1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_8

    .line 924
    .end local v16    # "f":Ljava/io/File;
    .end local v22    # "uri":Ljava/lang/String;
    .end local p1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v9    # "uri":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    :cond_15
    move-object/from16 v31, v0

    move-object v3, v1

    move-object v5, v7

    move-object/from16 v16, v10

    move-object/from16 v19, v12

    .line 1004
    .end local v10    # "f":Ljava/io/File;
    .restart local v16    # "f":Ljava/io/File;
    move-object/from16 v10, v16

    .end local v16    # "f":Ljava/io/File;
    .restart local v10    # "f":Ljava/io/File;
    :goto_8
    if-nez v4, :cond_20

    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, "mime":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2e

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11

    .line 1009
    .local v1, "dot":I
    if-ltz v1, :cond_16

    .line 1010
    :try_start_1
    sget-object v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->theMimeTypes:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v0, v7

    goto :goto_9

    .line 1080
    .end local v0    # "mime":Ljava/lang/String;
    .end local v1    # "dot":I
    :catch_0
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v16, v6

    move-object/from16 v22, v9

    move-object v5, v10

    goto/16 :goto_e

    .line 1011
    .restart local v0    # "mime":Ljava/lang/String;
    .restart local v1    # "dot":I
    :cond_16
    :goto_9
    if-nez v0, :cond_17

    .line 1012
    const-string v7, "application/octet-stream"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v7

    goto :goto_a

    .line 1011
    :cond_17
    move-object v7, v0

    .line 1015
    .end local v0    # "mime":Ljava/lang/String;
    .local v7, "mime":Ljava/lang/String;
    :goto_a
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1018
    .local v8, "etag":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 1019
    .local v12, "startFrom":J
    const-wide/16 v14, -0x1

    .line 1020
    .local v14, "endAt":J
    const-string v0, "range"

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11

    .line 1021
    .local v0, "range":Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 1023
    move/from16 p1, v1

    move-object/from16 v1, v31

    .end local v1    # "dot":I
    .local p1, "dot":I
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 1025
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1026
    .end local v0    # "range":Ljava/lang/String;
    .local v1, "range":Ljava/lang/String;
    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 v16, v0

    .line 1028
    .local v16, "minus":I
    move-object/from16 v18, v4

    move/from16 v4, v16

    .end local v16    # "minus":I
    .local v4, "minus":I
    .local v18, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    if-lez v4, :cond_18

    .line 1030
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 1031
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-wide/from16 v14, v16

    goto :goto_b

    .line 1080
    .end local v1    # "range":Ljava/lang/String;
    .end local v4    # "minus":I
    .end local v7    # "mime":Ljava/lang/String;
    .end local v8    # "etag":Ljava/lang/String;
    .end local v12    # "startFrom":J
    .end local v14    # "endAt":J
    .end local p1    # "dot":I
    :catch_1
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v16, v6

    move-object/from16 v22, v9

    move-object v5, v10

    move-object/from16 v4, v18

    goto/16 :goto_e

    .line 1034
    .restart local v1    # "range":Ljava/lang/String;
    .restart local v4    # "minus":I
    .restart local v7    # "mime":Ljava/lang/String;
    .restart local v8    # "etag":Ljava/lang/String;
    .restart local v12    # "startFrom":J
    .restart local v14    # "endAt":J
    .restart local p1    # "dot":I
    :catch_2
    move-exception v0

    :cond_18
    :goto_b
    move-object v0, v1

    goto :goto_c

    .line 1023
    .end local v1    # "range":Ljava/lang/String;
    .end local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v0    # "range":Ljava/lang/String;
    .local v4, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_19
    move-object/from16 v18, v4

    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_c

    .line 1080
    .end local v0    # "range":Ljava/lang/String;
    .end local v7    # "mime":Ljava/lang/String;
    .end local v8    # "etag":Ljava/lang/String;
    .end local v12    # "startFrom":J
    .end local v14    # "endAt":J
    .end local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local p1    # "dot":I
    .restart local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v30, v5

    move-object/from16 v16, v6

    move-object/from16 v22, v9

    move-object v5, v10

    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_e

    .line 1021
    .end local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v0    # "range":Ljava/lang/String;
    .local v1, "dot":I
    .restart local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v7    # "mime":Ljava/lang/String;
    .restart local v8    # "etag":Ljava/lang/String;
    .restart local v12    # "startFrom":J
    .restart local v14    # "endAt":J
    :cond_1a
    move/from16 p1, v1

    move-object/from16 v18, v4

    .line 1039
    .end local v1    # "dot":I
    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local p1    # "dot":I
    :goto_c
    :try_start_5
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_10

    move-wide/from16 v20, v16

    .line 1040
    .local v20, "fileLen":J
    const-string v1, ""

    const-string v4, "ETag"

    if-eqz v0, :cond_1e

    const-wide/16 v16, 0x0

    cmp-long v22, v12, v16

    if-ltz v22, :cond_1e

    .line 1042
    const-string v11, "Content-Range"

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-wide/from16 v9, v20

    .end local v10    # "f":Ljava/io/File;
    .end local v20    # "fileLen":J
    .local v9, "fileLen":J
    .restart local v22    # "uri":Ljava/lang/String;
    .local v23, "f":Ljava/io/File;
    cmp-long v20, v12, v9

    if-ltz v20, :cond_1b

    .line 1044
    move-object/from16 v20, v0

    .end local v0    # "range":Ljava/lang/String;
    .local v20, "range":Ljava/lang/String;
    :try_start_6
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v30, v5

    :try_start_7
    const-string v5, "416 Requested Range Not Satisfiable"

    invoke-direct {v0, v3, v5, v6, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v1, v0

    .line 1045
    .end local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .local v1, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes 0-0/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v11, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v1, v4, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-object v4, v1

    move-object/from16 v5, v23

    goto/16 :goto_f

    .line 1080
    .end local v7    # "mime":Ljava/lang/String;
    .end local v8    # "etag":Ljava/lang/String;
    .end local v9    # "fileLen":J
    .end local v12    # "startFrom":J
    .end local v14    # "endAt":J
    .end local v20    # "range":Ljava/lang/String;
    .end local p1    # "dot":I
    :catch_4
    move-exception v0

    move-object v4, v1

    move-object/from16 v16, v6

    move-object/from16 v5, v23

    goto/16 :goto_e

    .end local v1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :catch_5
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v4, v18

    move-object/from16 v5, v23

    goto/16 :goto_e

    :catch_6
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v16, v6

    move-object/from16 v4, v18

    move-object/from16 v5, v23

    goto/16 :goto_e

    .line 1050
    .restart local v0    # "range":Ljava/lang/String;
    .restart local v7    # "mime":Ljava/lang/String;
    .restart local v8    # "etag":Ljava/lang/String;
    .restart local v9    # "fileLen":J
    .restart local v12    # "startFrom":J
    .restart local v14    # "endAt":J
    .restart local p1    # "dot":I
    :cond_1b
    move-object/from16 v20, v0

    move-object/from16 v30, v5

    .end local v0    # "range":Ljava/lang/String;
    .restart local v20    # "range":Ljava/lang/String;
    const-wide/16 v0, 0x1

    cmp-long v5, v14, v16

    if-gez v5, :cond_1c

    .line 1051
    sub-long v14, v9, v0

    .line 1052
    :cond_1c
    sub-long v24, v14, v12

    add-long v24, v24, v0

    .line 1053
    .local v24, "newLen":J
    cmp-long v0, v24, v16

    if-gez v0, :cond_1d

    const-wide/16 v24, 0x0

    .line 1055
    :cond_1d
    move-wide/from16 v0, v24

    .line 1056
    .local v0, "dataLen":J
    :try_start_9
    new-instance v5, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$2;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    move-object/from16 v16, v6

    move-object/from16 v6, v23

    .end local v23    # "f":Ljava/io/File;
    .local v6, "f":Ljava/io/File;
    :try_start_a
    invoke-direct {v5, v3, v6, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$2;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/io/File;J)V

    .line 1059
    .local v5, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5, v12, v13}, Ljava/io/FileInputStream;->skip(J)J
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 1061
    move-object/from16 v23, v6

    .end local v6    # "f":Ljava/io/File;
    .restart local v23    # "f":Ljava/io/File;
    :try_start_b
    new-instance v6, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "206 Partial Content"

    invoke-direct {v6, v3, v2, v7, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    move-object v2, v6

    .line 1062
    .end local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .local v2, "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_start_c
    const-string v6, "Content-Length"

    move-object/from16 v17, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v17, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-virtual {v2, v4, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 1065
    .end local v0    # "dataLen":J
    .end local v17    # "fis":Ljava/io/FileInputStream;
    .end local v24    # "newLen":J
    move-object v4, v2

    move-object/from16 v5, v23

    move-object/from16 v2, p2

    goto/16 :goto_f

    .line 1080
    .end local v7    # "mime":Ljava/lang/String;
    .end local v8    # "etag":Ljava/lang/String;
    .end local v9    # "fileLen":J
    .end local v12    # "startFrom":J
    .end local v14    # "endAt":J
    .end local v20    # "range":Ljava/lang/String;
    .end local p1    # "dot":I
    :catch_7
    move-exception v0

    move-object v4, v2

    move-object/from16 v5, v23

    move-object/from16 v2, p2

    goto/16 :goto_e

    .end local v2    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :catch_8
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, v23

    goto/16 :goto_e

    .end local v23    # "f":Ljava/io/File;
    .restart local v6    # "f":Ljava/io/File;
    :catch_9
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, v23

    .end local v6    # "f":Ljava/io/File;
    .restart local v23    # "f":Ljava/io/File;
    goto/16 :goto_e

    :catch_a
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v5, v23

    goto/16 :goto_e

    .line 1040
    .end local v22    # "uri":Ljava/lang/String;
    .end local v23    # "f":Ljava/io/File;
    .local v0, "range":Ljava/lang/String;
    .restart local v7    # "mime":Ljava/lang/String;
    .restart local v8    # "etag":Ljava/lang/String;
    .local v9, "uri":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    .restart local v12    # "startFrom":J
    .restart local v14    # "endAt":J
    .local v20, "fileLen":J
    .restart local p1    # "dot":I
    :cond_1e
    move-object/from16 v30, v5

    move-object/from16 v16, v6

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-wide/from16 v9, v20

    move-object/from16 v20, v0

    .line 1069
    .end local v0    # "range":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    .local v9, "fileLen":J
    .local v20, "range":Ljava/lang/String;
    .restart local v22    # "uri":Ljava/lang/String;
    .restart local v23    # "f":Ljava/io/File;
    :try_start_d
    const-string v0, "if-none-match"
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_f

    move-object/from16 v2, p2

    :try_start_e
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_e

    if-eqz v0, :cond_1f

    .line 1070
    :try_start_f
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v4, "304 Not Modified"

    invoke-direct {v0, v3, v4, v7, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    move-object v4, v0

    move-object/from16 v5, v23

    .end local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto/16 :goto_f

    .line 1080
    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v7    # "mime":Ljava/lang/String;
    .end local v8    # "etag":Ljava/lang/String;
    .end local v9    # "fileLen":J
    .end local v12    # "startFrom":J
    .end local v14    # "endAt":J
    .end local v20    # "range":Ljava/lang/String;
    .end local p1    # "dot":I
    .restart local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :catch_b
    move-exception v0

    move-object/from16 v4, v18

    move-object/from16 v5, v23

    goto :goto_e

    .line 1073
    .restart local v7    # "mime":Ljava/lang/String;
    .restart local v8    # "etag":Ljava/lang/String;
    .restart local v9    # "fileLen":J
    .restart local v12    # "startFrom":J
    .restart local v14    # "endAt":J
    .restart local v20    # "range":Ljava/lang/String;
    .restart local p1    # "dot":I
    :cond_1f
    :try_start_10
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    new-instance v1, Ljava/io/FileInputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_e

    move-object/from16 v5, v23

    .end local v23    # "f":Ljava/io/File;
    .local v5, "f":Ljava/io/File;
    :try_start_11
    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v11, v7, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    move-object v1, v0

    .line 1074
    .end local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_start_12
    const-string v0, "Content-Length"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v1, v4, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    move-object v4, v1

    goto :goto_f

    .line 1080
    .end local v7    # "mime":Ljava/lang/String;
    .end local v8    # "etag":Ljava/lang/String;
    .end local v9    # "fileLen":J
    .end local v12    # "startFrom":J
    .end local v14    # "endAt":J
    .end local v20    # "range":Ljava/lang/String;
    .end local p1    # "dot":I
    :catch_c
    move-exception v0

    move-object v4, v1

    goto :goto_e

    .end local v1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :catch_d
    move-exception v0

    move-object/from16 v4, v18

    goto :goto_e

    .end local v5    # "f":Ljava/io/File;
    .restart local v23    # "f":Ljava/io/File;
    :catch_e
    move-exception v0

    goto :goto_d

    :catch_f
    move-exception v0

    move-object/from16 v2, p2

    :goto_d
    move-object/from16 v5, v23

    move-object/from16 v4, v18

    .end local v23    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    goto :goto_e

    .end local v5    # "f":Ljava/io/File;
    .end local v22    # "uri":Ljava/lang/String;
    .local v9, "uri":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    :catch_10
    move-exception v0

    move-object/from16 v30, v5

    move-object/from16 v16, v6

    move-object/from16 v22, v9

    move-object v5, v10

    move-object/from16 v4, v18

    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v22    # "uri":Ljava/lang/String;
    goto :goto_e

    .end local v5    # "f":Ljava/io/File;
    .end local v18    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v22    # "uri":Ljava/lang/String;
    .restart local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v9    # "uri":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    :catch_11
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v30, v5

    move-object/from16 v16, v6

    move-object/from16 v22, v9

    move-object v5, v10

    .line 1082
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v22    # "uri":Ljava/lang/String;
    :goto_e
    new-instance v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v6, "FORBIDDEN: Reading file failed."

    move-object/from16 v8, v16

    move-object/from16 v7, v30

    invoke-direct {v1, v3, v7, v8, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    goto :goto_10

    .line 1004
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v5    # "f":Ljava/io/File;
    .end local v22    # "uri":Ljava/lang/String;
    .restart local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v9    # "uri":Ljava/lang/String;
    .restart local v10    # "f":Ljava/io/File;
    :cond_20
    move-object/from16 v18, v4

    move-object/from16 v22, v9

    move-object v5, v10

    .line 1083
    .end local v9    # "uri":Ljava/lang/String;
    .end local v10    # "f":Ljava/io/File;
    .restart local v5    # "f":Ljava/io/File;
    .restart local v22    # "uri":Ljava/lang/String;
    :goto_f
    move-object v1, v4

    .line 1085
    .end local v4    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .restart local v1    # "res":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :goto_10
    const-string v0, "Accept-Ranges"

    const-string v4, "bytes"

    invoke-virtual {v1, v0, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    return-object v1
.end method

.method public stop()V
    .locals 1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0

    .line 272
    :catch_1
    move-exception v0

    .line 273
    :goto_0
    nop

    .line 274
    return-void
.end method
