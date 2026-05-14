.class public Lcom/google/appinventor/components/runtime/EmailAddressAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EmailAddressAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final POST_HONEYCOMB_PROJECTION:[Ljava/lang/String;

.field public static final PRE_HONEYCOMB_DATA_INDEX:I = 0x2

.field public static final PRE_HONEYCOMB_NAME_INDEX:I = 0x1

.field private static final PRE_HONEYCOMB_PROJECTION:[Ljava/lang/String;

.field private static SORT_ORDER:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EmailAddressAdapter"


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "data"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->PRE_HONEYCOMB_PROJECTION:[Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailAdapterProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->POST_HONEYCOMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    const v0, 0x109000a

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->contentResolver:Landroid/content/ContentResolver;

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->context:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 63
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getTimesContacted()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " DESC, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->SORT_ORDER:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "times_contacted DESC, name"

    sput-object v0, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->SORT_ORDER:Ljava/lang/String;

    .line 67
    :goto_0
    return-void
.end method

.method private final makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 90
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 91
    .local v0, "POST_HONEYCOMB_NAME_INDEX":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, "POST_HONEYCOMB_EMAIL_INDEX":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v2, "s":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 94
    .local v3, "flag":Z
    const-string v4, ""

    .line 95
    .local v4, "name":Ljava/lang/String;
    const-string v5, ""

    .line 97
    .local v5, "address":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v6

    const/16 v7, 0xc

    if-lt v6, v7, :cond_0

    .line 98
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 101
    :cond_0
    const/4 v6, 0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 102
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 105
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const/4 v3, 0x1

    .line 110
    :cond_1
    if-eqz v3, :cond_2

    .line 111
    const-string v6, " <"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    if-eqz v3, :cond_3

    .line 117
    const-string v6, ">"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 125
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 72
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, "POST_HONEYCOMB_NAME_INDEX":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 74
    .local v1, "POST_HONEYCOMB_EMAIL_INDEX":I
    const-string v2, ""

    .line 75
    .local v2, "name":Ljava/lang/String;
    const-string v3, ""

    .line 77
    .local v3, "address":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v4

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 78
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 81
    :cond_0
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    :goto_0
    new-instance v4, Landroid/text/util/Rfc822Token;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 13
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "where":Ljava/lang/String;
    const/4 v1, 0x0

    .line 133
    .local v1, "db":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v2, "s":Ljava/lang/StringBuilder;
    const/16 v3, 0xc

    if-eqz p1, :cond_1

    .line 136
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "filter":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v5

    const-string v6, ")"

    if-lt v5, v3, :cond_0

    .line 139
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 140
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailType()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "=\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\')"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v5, "(display_name LIKE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :cond_0
    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    .line 147
    const-string v5, "(name LIKE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v5, ") OR (display_name LIKE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .end local v4    # "filter":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v4

    if-lt v4, v3, :cond_2

    .line 167
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->contentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->POST_HONEYCOMB_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->SORT_ORDER:Ljava/lang/String;

    move-object v8, v1

    move-object v10, v0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 170
    :cond_2
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->contentResolver:Landroid/content/ContentResolver;

    sget-object v9, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->PRE_HONEYCOMB_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/appinventor/components/runtime/EmailAddressAdapter;->SORT_ORDER:Ljava/lang/String;

    move-object v8, v1

    move-object v10, v0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method
