.class public Lcom/google/appinventor/components/runtime/TinyDB;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "TinyDB.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/ObservableDataSource;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "TinyDB is a non-visible component that stores data for an app. <p> Apps created with App Inventor are initialized each time they run: If an app sets the value of a variable and the user then quits the app, the value of that variable will not be remembered the next time the app is run. In contrast, TinyDB is a <em> persistent </em> data store for the app, that is, the data stored there will be available each time the app is run. An example might be a game that saves the high score and retrieves it each time the game is played. </<p> <p> Data items are strings stored under <em>tags</em> . To store a data item, you specify the tag it should be stored under.  Subsequently, you can retrieve the data that was stored under a given tag. </p><p> There is only one data store per app. Even if you have multiple TinyDB components, they will use the same data store. To get the effect of separate stores, use different keys. Also each app has its own data store. You cannot use TinyDB to pass data between two different apps on the phone, although you <em>can</em> use TinyDb to shares data between the different screens of a multi-screen app. </p> <p>When you are developing apps using the AI Companion, all the apps using that companion will share the same TinyDb.  That sharing will disappear once the apps are packaged.  But, during development, you should be careful to clear the TinyDb each time you start working on a new app.</p>"
    iconName = "images/tinyDB.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;",
        "Lcom/google/appinventor/components/runtime/Component;",
        "Lcom/google/appinventor/components/runtime/Deleteable;",
        "Lcom/google/appinventor/components/runtime/ObservableDataSource<",
        "Ljava/lang/String;",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_NAMESPACE:Ljava/lang/String; = "TinyDB1"


# instance fields
.field private context:Landroid/content/Context;

.field private dataSourceObservers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/appinventor/components/runtime/DataSourceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private namespace:Ljava/lang/String;

.field private final sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 111
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->dataSourceObservers:Ljava/util/HashSet;

    .line 112
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->context:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/google/appinventor/components/runtime/TinyDB$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/TinyDB$1;-><init>(Lcom/google/appinventor/components/runtime/TinyDB;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 122
    const-string v0, "TinyDB1"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TinyDB;->Namespace(Ljava/lang/String;)V

    .line 123
    return-void
.end method


# virtual methods
.method public ClearAll()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear the entire data store."
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/google/appinventor/components/runtime/TinyDB;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public ClearTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear the entry with the given tag."
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    return-void
.end method

.method public GetEntries()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieves all data entries of TinyDB in form of Dictionaries"
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 295
    .local v0, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 297
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 299
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 301
    .local v2, "dictionary":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 302
    .local v4, "aKey":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/TinyDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .end local v4    # "aKey":Ljava/lang/String;
    goto :goto_0

    .line 305
    :cond_0
    return-object v2
.end method

.method public GetTags()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return a list of all the tags in the data store."
    .end annotation

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 209
    .local v1, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 211
    return-object v0
.end method

.method public GetValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueIfTagNotThere"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Retrieve the value stored under the given tag. If there\'s no such tag, then return valueIfTagNotThere."
    .end annotation

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    .line 194
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Value failed to convert from JSON."

    const-string v3, "JSON Creation Error."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public Namespace()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Namespace for storing data."
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public Namespace(Ljava/lang/String;)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "TinyDB1"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Namespace for storing data."
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->namespace:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 149
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 150
    return-void
.end method

.method public StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueToStore"    # Ljava/lang/Object;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Store the given value under the given tag.  The storage persists on the phone when the app is restarted."
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    nop

    .line 175
    return-void

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v3, "Value failed to convert to JSON."

    const-string v4, "JSON Creation Error."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public addDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    return-void
.end method

.method public getDataValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 257
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TinyDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v1, :cond_0

    .line 261
    move-object v1, v0

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v1

    .line 265
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getDataValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TinyDB;->getDataValue(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic notifyDataObservers(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/TinyDB;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " observers."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tag"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 284
    .local v1, "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataSourceChangeListener;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    .end local v1    # "dataComponent":Lcom/google/appinventor/components/runtime/DataSourceChangeListener;
    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    .local v0, "sharedPrefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/google/appinventor/components/runtime/TinyDB;->notifyDataObservers(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    return-void
.end method

.method public removeDataObserver(Lcom/google/appinventor/components/runtime/DataSourceChangeListener;)V
    .locals 1
    .param p1, "dataComponent"    # Lcom/google/appinventor/components/runtime/DataSourceChangeListener;

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyDB;->dataSourceObservers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method
