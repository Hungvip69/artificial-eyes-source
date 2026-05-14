.class Lcom/google/appinventor/components/runtime/CloudDB$2;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .line 665
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 667
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 668
    .local v0, "pendingValueList":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .line 669
    .local v2, "pendingTag":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    .line 676
    .end local v0    # "pendingValueList":Lorg/json/JSONArray;
    .local v2, "pendingValueList":Lorg/json/JSONArray;
    .local v3, "pendingTag":Ljava/lang/String;
    .local v4, "pendingValue":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetstoreQueue(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 680
    :try_start_1
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetstoreQueue(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 681
    .local v0, "size":I
    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 685
    const/4 v7, 0x0

    .local v7, "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    goto :goto_1

    .line 690
    .end local v7    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :cond_0
    iget-object v7, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetstoreQueue(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;

    .line 695
    .end local v0    # "size":I
    .restart local v7    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    const/4 v0, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-nez v7, :cond_2

    .line 701
    if-eqz v3, :cond_1

    .line 702
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    .line 706
    .local v10, "jsonValueList":Ljava/lang/String;
    iget-object v11, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v12, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string v13, "765978e4c340012f50733280368a0ccc4a14dfb7"

    iget-object v14, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v14}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetprojectID(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v14

    new-array v8, v8, [Ljava/lang/String;

    aput-object v3, v8, v6

    aput-object v4, v8, v9

    aput-object v10, v8, v5

    aput-object v14, v8, v0

    invoke-virtual {v11, v12, v13, v9, v8}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;

    .line 707
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v5, "StoreValue"

    invoke-virtual {v0, v3, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->UpdateDone(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 709
    .end local v10    # "jsonValueList":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisException;
    :try_start_3
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 711
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5, v9}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$mflushJedis(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    goto :goto_3

    .line 712
    .end local v0    # "e":Lredis/clients/jedis/exceptions/JedisException;
    :cond_1
    :goto_2
    nop

    .line 713
    :goto_3
    return-void

    .line 716
    :cond_2
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->getTag()Ljava/lang/String;

    move-result-object v10

    .line 717
    .local v10, "tag":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->getValueList()Lorg/json/JSONArray;

    move-result-object v11

    .line 718
    .local v11, "valueList":Lorg/json/JSONArray;
    nop

    .line 727
    if-nez v3, :cond_3

    .line 728
    move-object v3, v10

    .line 729
    move-object v2, v11

    .line 730
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .end local v4    # "pendingValue":Ljava/lang/String;
    .local v0, "pendingValue":Ljava/lang/String;
    goto :goto_4

    .line 731
    .end local v0    # "pendingValue":Ljava/lang/String;
    .restart local v4    # "pendingValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 732
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 733
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 736
    :cond_4
    :try_start_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12

    .line 740
    .local v12, "jsonValueList":Ljava/lang/String;
    iget-object v13, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v14, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string v15, "765978e4c340012f50733280368a0ccc4a14dfb7"

    iget-object v0, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetprojectID(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v0

    new-array v8, v8, [Ljava/lang/String;

    aput-object v3, v8, v6

    aput-object v4, v8, v9

    aput-object v12, v8, v5

    const/4 v5, 0x3

    aput-object v0, v8, v5

    invoke-virtual {v13, v14, v15, v9, v8}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 746
    .end local v12    # "jsonValueList":Ljava/lang/String;
    nop

    .line 747
    move-object v3, v10

    .line 748
    move-object v2, v11

    .line 749
    :try_start_5
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 751
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "valueList":Lorg/json/JSONArray;
    :goto_4
    goto/16 :goto_0

    .line 741
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v11    # "valueList":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 742
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisException;
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 743
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5, v9}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$mflushJedis(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 744
    iget-object v5, v1, Lcom/google/appinventor/components/runtime/CloudDB$2;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->-$$Nest$fgetstoreQueue(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 745
    return-void

    .line 695
    .end local v0    # "e":Lredis/clients/jedis/exceptions/JedisException;
    .end local v7    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    .end local v10    # "tag":Ljava/lang/String;
    .end local v11    # "valueList":Lorg/json/JSONArray;
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v2    # "pendingValueList":Lorg/json/JSONArray;
    .end local v3    # "pendingTag":Ljava/lang/String;
    .end local v4    # "pendingValue":Ljava/lang/String;
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 752
    .restart local v2    # "pendingValueList":Lorg/json/JSONArray;
    .restart local v3    # "pendingTag":Ljava/lang/String;
    .restart local v4    # "pendingValue":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CloudDB"

    const-string v6, "Exception in store worker!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
