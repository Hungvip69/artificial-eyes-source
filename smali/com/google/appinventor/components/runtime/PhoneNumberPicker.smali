.class public Lcom/google/appinventor/components/runtime/PhoneNumberPicker;
.super Lcom/google/appinventor/components/runtime/ContactPicker;
.source "PhoneNumberPicker.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A button that, when clicked on, displays a list of the contacts\' phone numbers to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact\'s name </li>\n <li> <code>PhoneNumber</code>: the contact\'s phone number </li>\n <li> <code>EmailAddress</code>: the contact\'s email address </li> <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).</p>\n<p>The PhoneNumberPicker component may not work on all Android devices. For example, on Android systems before system 3.0, the returned lists of phone numbers and email addresses will be empty.\n"
    iconName = "images/phoneNumberPicker.png"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# static fields
.field private static DATA_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_INDEX:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneNumberPicker"

.field private static final NAME_INDEX:I = 0x0

.field private static NAME_PROJECTION:[Ljava/lang/String; = null

.field private static final NUMBER_INDEX:I = 0x1

.field private static final PERSON_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "number"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "person"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "primary_email"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 94
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V

    .line 95
    return-void
.end method


# virtual methods
.method public PhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public postHoneycombGetContactEmailsAndPhones(Landroid/database/Cursor;)V
    .locals 10
    .param p1, "dataCursor"    # Landroid/database/Cursor;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "phoneListToStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v1, "emailListToStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 219
    .local v2, "PHONE_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 220
    .local v3, "EMAIL_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getMimeIndex(Landroid/database/Cursor;)I

    move-result v4

    .line 222
    .local v4, "MIME_INDEX":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneType()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "phoneType":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailType()Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "emailType":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 227
    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 229
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 230
    :cond_0
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 231
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Type mismatch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ContactPicker"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 238
    .end local v7    # "type":Ljava/lang/String;
    goto :goto_0

    .line 239
    :cond_2
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumberList:Ljava/util/List;

    .line 240
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    .line 241
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 242
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddressList:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    goto :goto_2

    .line 244
    :cond_3
    const-string v7, ""

    iput-object v7, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    .line 247
    .end local v2    # "PHONE_INDEX":I
    .end local v3    # "EMAIL_INDEX":I
    .end local v4    # "MIME_INDEX":I
    .end local v5    # "phoneType":Ljava/lang/String;
    .end local v6    # "emailType":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void
.end method

.method public postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .param p1, "contactCursor"    # Landroid/database/Cursor;

    .line 196
    const-string v0, ""

    .line 197
    .local v0, "id":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContactIdIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 199
    .local v1, "CONTACT_ID_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 200
    .local v2, "NAME_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getThumbnailIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 201
    .local v3, "PHOTO_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v4

    .line 202
    .local v4, "PHONE_INDEX":I
    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    .line 203
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    .line 205
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    .line 207
    .end local v1    # "CONTACT_ID_INDEX":I
    .end local v2    # "NAME_INDEX":I
    .end local v3    # "PHOTO_INDEX":I
    .end local v4    # "PHONE_INDEX":I
    :cond_0
    return-object v0
.end method

.method public preHoneycombGetContactInfo(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 180
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    .line 183
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 184
    .local v0, "contactId":I
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 185
    .local v1, "cUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    .line 186
    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "emailId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    .line 189
    .end local v0    # "contactId":I
    .end local v1    # "cUri":Landroid/net/Uri;
    .end local v2    # "emailId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 123
    iget v0, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->requestCode:I

    if-ne p1, v0, :cond_7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received intent is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneNumberPicker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 127
    .local v0, "phoneUri":Landroid/net/Uri;
    const-string v2, ""

    .line 128
    .local v2, "desiredPhoneUri":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    const/16 v4, 0xc

    if-lt v3, v4, :cond_0

    .line 129
    const-string v2, "//com.android.contacts/data"

    move-object v8, v2

    goto :goto_0

    .line 131
    :cond_0
    const-string v2, "//contacts/phones"

    move-object v8, v2

    .line 134
    .end local v2    # "desiredPhoneUri":Ljava/lang/String;
    .local v8, "desiredPhoneUri":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0, v8}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 135
    const/4 v9, 0x0

    .line 136
    .local v9, "contactCursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 138
    .local v10, "dataCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 139
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameProjection()[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->NAME_PROJECTION:[Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->NAME_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v9, v2

    .line 142
    invoke-virtual {p0, v9}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "id":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataProjection()[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->DATA_PROJECTION:[Ljava/lang/String;

    .line 145
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    sget-object v4, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->DATA_PROJECTION:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v10, v3

    .line 146
    invoke-virtual {p0, v10}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->postHoneycombGetContactEmailsAndPhones(Landroid/database/Cursor;)V

    .line 147
    .end local v2    # "id":Ljava/lang/String;
    goto :goto_1

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v9, v2

    .line 150
    invoke-virtual {p0, v9}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->preHoneycombGetContactInfo(Landroid/database/Cursor;)V

    .line 153
    :goto_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->phoneNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->emailAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->contactPictureUri:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", phone number = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emailAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contactPhotoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz v9, :cond_2

    .line 164
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_2
    if-eqz v10, :cond_6

    .line 167
    goto :goto_2

    .line 163
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 156
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Exception in resultReturned"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/16 v1, 0x453

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->puntContactSelection(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_3

    .line 164
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_3
    if-eqz v10, :cond_6

    .line 167
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 163
    :goto_3
    if-eqz v9, :cond_4

    .line 164
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_4
    if-eqz v10, :cond_5

    .line 167
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_5
    throw v1

    .line 171
    .end local v9    # "contactCursor":Landroid/database/Cursor;
    .end local v10    # "dataCursor":Landroid/database/Cursor;
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PhoneNumberPicker;->AfterPicking()V

    .line 173
    .end local v0    # "phoneUri":Landroid/net/Uri;
    .end local v8    # "desiredPhoneUri":Ljava/lang/String;
    :cond_7
    return-void
.end method
