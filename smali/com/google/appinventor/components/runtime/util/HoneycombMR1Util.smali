.class public Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;
.super Ljava/lang/Object;
.source "HoneycombMR1Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getContactIdIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "contactCursor"    # Landroid/database/Cursor;

    .line 119
    const-string v0, "contact_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getContactProjection()[Ljava/lang/String;
    .locals 3

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "photo_thumb_uri"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "photo_uri"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 65
    .local v0, "contactProjection":[Ljava/lang/String;
    return-object v0
.end method

.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    .line 38
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getDataContentUri()Landroid/net/Uri;
    .locals 1

    .line 52
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "activityContext"    # Landroid/app/Activity;
    .param p2, "dataProjection"    # [Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v4, v2

    const-string v2, "vnd.android.cursor.item/phone_v2"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const-string v2, "vnd.android.cursor.item/email_v2"

    const/4 v3, 0x2

    aput-object v2, v4, v3

    const/4 v5, 0x0

    const-string v3, "contact_id=? AND (mimetype=? OR mimetype=?)"

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 199
    .local v0, "dataCursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public static getDataMimeType()Ljava/lang/String;
    .locals 1

    .line 186
    const-string v0, "mimetype"

    return-object v0
.end method

.method public static getDataProjection()[Ljava/lang/String;
    .locals 4

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mimetype"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v3, "data2"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    .line 92
    .local v0, "dataProjection":[Ljava/lang/String;
    return-object v0
.end method

.method public static getDisplayName()Ljava/lang/String;
    .locals 1

    .line 172
    const-string v0, "display_name"

    return-object v0
.end method

.method public static getEmailAdapterProjection()[Ljava/lang/String;
    .locals 3

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "data1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "mimetype"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 105
    .local v0, "emailAdapterProjection":[Ljava/lang/String;
    return-object v0
.end method

.method public static getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, "data1"

    return-object v0
.end method

.method public static getEmailIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "dataCursor"    # Landroid/database/Cursor;

    .line 148
    const-string v0, "data1"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getEmailType()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, "vnd.android.cursor.item/email_v2"

    return-object v0
.end method

.method public static getIdIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "contactCursor"    # Landroid/database/Cursor;

    .line 112
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMimeIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "dataCursor"    # Landroid/database/Cursor;

    .line 152
    const-string v0, "mimetype"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNameIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "contactCursor"    # Landroid/database/Cursor;

    .line 126
    const-string v0, "display_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNameProjection()[Ljava/lang/String;
    .locals 3

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "photo_thumb_uri"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "data1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 78
    .local v0, "nameProjection":[Ljava/lang/String;
    return-object v0
.end method

.method public static getPhoneContentUri()Landroid/net/Uri;
    .locals 1

    .line 45
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getPhoneIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "dataCursor"    # Landroid/database/Cursor;

    .line 144
    const-string v0, "data1"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 1

    .line 158
    const-string v0, "vnd.android.cursor.item/phone_v2"

    return-object v0
.end method

.method public static getPhotoIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "contactCursor"    # Landroid/database/Cursor;

    .line 140
    const-string v0, "photo_uri"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getThumbnailIndex(Landroid/database/Cursor;)I
    .locals 1
    .param p0, "contactCursor"    # Landroid/database/Cursor;

    .line 133
    const-string v0, "photo_thumb_uri"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTimesContacted()Ljava/lang/String;
    .locals 1

    .line 213
    const-string v0, "times_contacted"

    return-object v0
.end method

.method public static openContactPhotoInputStreamHelper(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 206
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
