.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/Property;
.super Ljava/lang/Object;
.source "Property.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJSONObject(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .locals 4
    .param p0, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;-><init>()V

    .line 45
    .local v0, "jo":Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Properties;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 47
    .local v1, "enumProperties":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;

    .line 50
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v1    # "enumProperties":Ljava/util/Enumeration;
    :cond_0
    return-object v0
.end method

.method public static toProperties(Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;)Ljava/util/Properties;
    .locals 4
    .param p0, "jo"    # Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 64
    .local v0, "properties":Ljava/util/Properties;
    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 67
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v1    # "keys":Ljava/util/Iterator;
    :cond_0
    return-object v0
.end method
