.class public Lcom/google/api/client/util/store/FileDataStoreFactory;
.super Lcom/google/api/client/util/store/AbstractDataStoreFactory;
.source "FileDataStoreFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/store/FileDataStoreFactory$FileDataStore;
    }
.end annotation


# static fields
.field private static final IS_WINDOWS:Z

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final dataDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-class v0, Lcom/google/api/client/util/store/FileDataStoreFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/store/FileDataStoreFactory;->LOGGER:Ljava/util/logging/Logger;

    .line 56
    sget-object v0, Lcom/google/common/base/StandardSystemProperty;->OS_NAME:Lcom/google/common/base/StandardSystemProperty;

    invoke-virtual {v0}, Lcom/google/common/base/StandardSystemProperty;->value()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/api/client/util/store/FileDataStoreFactory;->IS_WINDOWS:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "dataDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/google/api/client/util/store/AbstractDataStoreFactory;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/google/api/client/util/store/FileDataStoreFactory;->dataDirectory:Ljava/io/File;

    .line 67
    invoke-static {p1}, Lcom/google/api/client/util/IOUtils;->isSymbolicLink(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/google/api/client/util/store/FileDataStoreFactory;->IS_WINDOWS:Z

    if-eqz v0, :cond_2

    .line 76
    invoke-static {p1}, Lcom/google/api/client/util/store/FileDataStoreFactory;->setPermissionsToOwnerOnlyWindows(Ljava/io/File;)V

    goto :goto_1

    .line 78
    :cond_2
    invoke-static {p1}, Lcom/google/api/client/util/store/FileDataStoreFactory;->setPermissionsToOwnerOnly(Ljava/io/File;)V

    .line 80
    :goto_1
    return-void

    .line 68
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to use a symbolic link: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setPermissionsToOwnerOnly(Ljava/io/File;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v0, "permissions":Ljava/util/Set;
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v1, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    nop

    .line 150
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "exception":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to set permissions for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static setPermissionsToOwnerOnlyWindows(Ljava/io/File;)V
    .locals 13
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 154
    .local v0, "path":Ljava/nio/file/Path;
    const-class v2, Ljava/nio/file/attribute/FileOwnerAttributeView;

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2, v3}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/FileOwnerAttributeView;

    .line 155
    .local v2, "fileAttributeView":Ljava/nio/file/attribute/FileOwnerAttributeView;
    invoke-interface {v2}, Ljava/nio/file/attribute/FileOwnerAttributeView;->getOwner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v3

    .line 158
    .local v3, "owner":Ljava/nio/file/attribute/UserPrincipal;
    const-class v4, Ljava/nio/file/attribute/AclFileAttributeView;

    new-array v5, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v4, v5}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v4

    check-cast v4, Ljava/nio/file/attribute/AclFileAttributeView;

    .line 161
    .local v4, "view":Ljava/nio/file/attribute/AclFileAttributeView;
    sget-object v5, Ljava/nio/file/attribute/AclEntryPermission;->APPEND_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    sget-object v6, Ljava/nio/file/attribute/AclEntryPermission;->DELETE:Ljava/nio/file/attribute/AclEntryPermission;

    sget-object v7, Ljava/nio/file/attribute/AclEntryPermission;->DELETE_CHILD:Ljava/nio/file/attribute/AclEntryPermission;

    sget-object v8, Ljava/nio/file/attribute/AclEntryPermission;->READ_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    sget-object v9, Ljava/nio/file/attribute/AclEntryPermission;->READ_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    sget-object v10, Ljava/nio/file/attribute/AclEntryPermission;->READ_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    const/4 v11, 0x7

    new-array v11, v11, [Ljava/nio/file/attribute/AclEntryPermission;

    sget-object v12, Ljava/nio/file/attribute/AclEntryPermission;->READ_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v12, v11, v1

    const/4 v1, 0x1

    sget-object v12, Ljava/nio/file/attribute/AclEntryPermission;->SYNCHRONIZE:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v12, v11, v1

    const/4 v1, 0x2

    sget-object v12, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ACL:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v12, v11, v1

    const/4 v1, 0x3

    sget-object v12, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_ATTRIBUTES:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v12, v11, v1

    const/4 v1, 0x4

    sget-object v12, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_DATA:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v12, v11, v1

    const/4 v1, 0x5

    sget-object v12, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_NAMED_ATTRS:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v12, v11, v1

    const/4 v1, 0x6

    sget-object v12, Ljava/nio/file/attribute/AclEntryPermission;->WRITE_OWNER:Ljava/nio/file/attribute/AclEntryPermission;

    aput-object v12, v11, v1

    invoke-static/range {v5 .. v11}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    .line 178
    .local v1, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/file/attribute/AclEntryPermission;>;"
    invoke-static {}, Ljava/nio/file/attribute/AclEntry;->newBuilder()Ljava/nio/file/attribute/AclEntry$Builder;

    move-result-object v5

    sget-object v6, Ljava/nio/file/attribute/AclEntryType;->ALLOW:Ljava/nio/file/attribute/AclEntryType;

    .line 179
    invoke-virtual {v5, v6}, Ljava/nio/file/attribute/AclEntry$Builder;->setType(Ljava/nio/file/attribute/AclEntryType;)Ljava/nio/file/attribute/AclEntry$Builder;

    move-result-object v5

    .line 180
    invoke-virtual {v5, v3}, Ljava/nio/file/attribute/AclEntry$Builder;->setPrincipal(Ljava/nio/file/attribute/UserPrincipal;)Ljava/nio/file/attribute/AclEntry$Builder;

    move-result-object v5

    .line 181
    invoke-virtual {v5, v1}, Ljava/nio/file/attribute/AclEntry$Builder;->setPermissions(Ljava/util/Set;)Ljava/nio/file/attribute/AclEntry$Builder;

    move-result-object v5

    .line 182
    invoke-virtual {v5}, Ljava/nio/file/attribute/AclEntry$Builder;->build()Ljava/nio/file/attribute/AclEntry;

    move-result-object v5

    .line 186
    .local v5, "entry":Ljava/nio/file/attribute/AclEntry;
    :try_start_0
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/nio/file/attribute/AclFileAttributeView;->setAcl(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    nop

    .line 191
    return-void

    .line 187
    :catch_0
    move-exception v6

    .line 188
    .local v6, "ex":Ljava/lang/SecurityException;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to set permissions for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method


# virtual methods
.method protected createDataStore(Ljava/lang/String;)Lcom/google/api/client/util/store/DataStore;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/api/client/util/store/DataStore<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/google/api/client/util/store/FileDataStoreFactory$FileDataStore;

    iget-object v1, p0, Lcom/google/api/client/util/store/FileDataStoreFactory;->dataDirectory:Ljava/io/File;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/api/client/util/store/FileDataStoreFactory$FileDataStore;-><init>(Lcom/google/api/client/util/store/FileDataStoreFactory;Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDataDirectory()Ljava/io/File;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/api/client/util/store/FileDataStoreFactory;->dataDirectory:Ljava/io/File;

    return-object v0
.end method
