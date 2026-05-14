.class public Lcom/google/appinventor/components/runtime/util/HashDbInitialize$HashTable;
.super Ljava/lang/Object;
.source "HashDbInitialize.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/HashDbInitialize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashTable"
.end annotation


# static fields
.field public static final COLUMN_1_NAME:Ljava/lang/String; = "fileName"

.field public static final COLUMN_2_NAME:Ljava/lang/String; = "hashFile"

.field public static final COLUMN_3_NAME:Ljava/lang/String; = "timeStamp"

.field public static final TABLE_NAME:Ljava/lang/String; = "HashDatabase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
