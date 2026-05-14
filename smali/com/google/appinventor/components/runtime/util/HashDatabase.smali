.class public final Lcom/google/appinventor/components/runtime/util/HashDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HashDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/HashDatabase$ExternalContext;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final DATABASE_NAME:Ljava/lang/String; = "hashTable.db"

.field public static final DATABASE_VERSION:I = 0x1

.field private static final KEY_HASH:Ljava/lang/String; = "hashFile"

.field private static final KEY_NAME:Ljava/lang/String; = "fileName"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "CREATE TABLE HashDatabase (fileName TEXT,hashFile TEXT,timeStamp TEXT)"

.field private static final SQL_DELETE_ENTRIES:Ljava/lang/String; = "DROP TABLE IF EXISTS HashDatabase"

.field private static final TABLE_NAME:Ljava/lang/String; = "HashDatabase"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fileName"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "hashFile"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "timeStamp"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/HashDatabase;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/google/appinventor/components/runtime/util/HashDatabase$ExternalContext;

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/util/HashDatabase$ExternalContext;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "hashTable.db"

    invoke-direct {p0, v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 68
    return-void
.end method


# virtual methods
.method public deleteOne(Lcom/google/appinventor/components/runtime/util/HashFile;)V
    .locals 4
    .param p1, "hashFile"    # Lcom/google/appinventor/components/runtime/util/HashFile;

    .line 80
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 81
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "HashDatabase"

    const-string v3, "fileName = ?"

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 83
    return-void
.end method

.method public getHashFile(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/HashFile;
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;

    .line 86
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 87
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/HashDatabase;->COLUMNS:[Ljava/lang/String;

    const/4 v10, 0x1

    new-array v4, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v4, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v1, "HashDatabase"

    const-string v3, " fileName = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 95
    .local v0, "cursor":Landroid/database/Cursor;
    const-string v1, "Database"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v10, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 104
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/util/HashFile;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/HashFile;-><init>()V

    .line 105
    .local v1, "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/HashFile;->setFileName(Ljava/lang/String;)V

    .line 106
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/HashFile;->setHash(Ljava/lang/String;)V

    .line 107
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/HashFile;->setTimestamp(Ljava/lang/String;)V

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 109
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 110
    return-object v1

    .line 97
    .end local v1    # "hashFile":Lcom/google/appinventor/components/runtime/util/HashFile;
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 99
    const/4 v1, 0x0

    return-object v1
.end method

.method public insertHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)V
    .locals 4
    .param p1, "hashFile"    # Lcom/google/appinventor/components/runtime/util/HashFile;

    .line 114
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "fileName"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "hashFile"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v2, "timeStamp"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "HashDatabase"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 120
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    const-string v0, "CREATE TABLE HashDatabase (fileName TEXT,hashFile TEXT,timeStamp TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 75
    const-string v0, "DROP TABLE IF EXISTS HashDatabase"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    return-void
.end method

.method public updateHashFile(Lcom/google/appinventor/components/runtime/util/HashFile;)I
    .locals 5
    .param p1, "hashFile"    # Lcom/google/appinventor/components/runtime/util/HashFile;

    .line 124
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/HashDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 125
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "fileName"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "hashFile"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "timeStamp"

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    nop

    .line 133
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/HashFile;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    .line 130
    const-string v2, "HashDatabase"

    const-string v4, "fileName = ?"

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 134
    .local v2, "i":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 135
    return v2
.end method
