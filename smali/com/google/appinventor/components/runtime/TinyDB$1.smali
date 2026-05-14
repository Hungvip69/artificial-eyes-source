.class Lcom/google/appinventor/components/runtime/TinyDB$1;
.super Ljava/lang/Object;
.source "TinyDB.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyDB;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TinyDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/TinyDB;

    .line 114
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyDB$1;->this$0:Lcom/google/appinventor/components/runtime/TinyDB;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/google/appinventor/components/runtime/TinyDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/appinventor/components/runtime/TinyDB;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-void
.end method
