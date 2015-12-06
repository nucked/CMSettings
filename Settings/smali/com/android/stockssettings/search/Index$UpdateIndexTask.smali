.class Lcom/android/stockssettings/search/Index$UpdateIndexTask;
.super Landroid/os/AsyncTask;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateIndexTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/stockssettings/search/Index$UpdateData;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/search/Index;


# direct methods
.method private constructor <init>(Lcom/android/stockssettings/search/Index;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->this$0:Lcom/android/stockssettings/search/Index;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stockssettings/search/Index;Lcom/android/stockssettings/search/Index$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/stockssettings/search/Index;
    .param p2, "x1"    # Lcom/android/stockssettings/search/Index$1;

    .prologue
    .line 1163
    invoke-direct {p0, p1}, Lcom/android/stockssettings/search/Index$UpdateIndexTask;-><init>(Lcom/android/stockssettings/search/Index;)V

    return-void
.end method

.method private delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1266
    .local v1, "whereClause":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    .line 1268
    .local v0, "whereArgs":[Ljava/lang/String;
    const-string v2, "prefs_index"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private isLocaleAlreadyIndexed(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 13
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 1272
    const/4 v10, 0x0

    .line 1273
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1274
    .local v11, "result":Z
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v0, "locale"

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v12, "sb":Ljava/lang/StringBuilder;
    const-string v0, " = "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-static {v12, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1279
    :try_start_0
    const-string v1, "prefs_index"

    const/4 v2, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1281
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1282
    .local v9, "count":I
    const/4 v0, 0x1

    if-lt v9, v0, :cond_1

    const/4 v11, 0x1

    .line 1284
    :goto_0
    if-eqz v10, :cond_0

    .line 1285
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1288
    :cond_0
    return v11

    .line 1282
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1284
    .end local v9    # "count":I
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_2

    .line 1285
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private processDataToDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)Z
    .locals 16
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1237
    .local p3, "dataToDelete":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    const/4 v10, 0x0

    .line 1238
    .local v10, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1240
    .local v4, "current":J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    .line 1241
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_0
    if-ge v6, v2, :cond_3

    .line 1242
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/SearchIndexableData;

    .line 1243
    .local v3, "data":Landroid/provider/SearchIndexableData;
    if-nez v3, :cond_1

    .line 1241
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1246
    :cond_1
    iget-object v11, v3, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1247
    const-string v11, "class_name"

    iget-object v12, v3, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1249
    :cond_2
    instance-of v11, v3, Lcom/android/stockssettings/search/SearchIndexableRaw;

    if-eqz v11, :cond_0

    move-object v7, v3

    .line 1250
    check-cast v7, Lcom/android/stockssettings/search/SearchIndexableRaw;

    .line 1251
    .local v7, "raw":Lcom/android/stockssettings/search/SearchIndexableRaw;
    iget-object v11, v7, Lcom/android/stockssettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1252
    const-string v11, "data_title"

    iget-object v12, v7, Lcom/android/stockssettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1258
    .end local v3    # "data":Landroid/provider/SearchIndexableData;
    .end local v7    # "raw":Lcom/android/stockssettings/search/SearchIndexableRaw;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1259
    .local v8, "now":J
    const-string v11, "Index"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Deleting data for locale \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v8, v4

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " millis"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return v10
.end method

.method private processDataToUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)Z
    .locals 18
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "localeStr"    # Ljava/lang/String;
    .param p5, "forceUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)Z"
        }
    .end annotation

    .prologue
    .line 1209
    .local p3, "dataToUpdate":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    .local p4, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p5, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->isLocaleAlreadyIndexed(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1210
    const-string v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Locale \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' is already indexed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/4 v12, 0x1

    .line 1231
    :goto_0
    return v12

    .line 1214
    :cond_0
    const/4 v12, 0x0

    .line 1215
    .local v12, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1217
    .local v6, "current":J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    .line 1218
    .local v4, "count":I
    const/4 v9, 0x0

    .local v9, "n":I
    :goto_1
    if-ge v9, v4, :cond_1

    .line 1219
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/SearchIndexableData;

    .line 1221
    .local v5, "data":Landroid/provider/SearchIndexableData;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->this$0:Lcom/android/stockssettings/search/Index;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    # invokes: Lcom/android/stockssettings/search/Index;->indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    invoke-static {v13, v0, v1, v5, v2}, Lcom/android/stockssettings/search/Index;->access$400(Lcom/android/stockssettings/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1222
    :catch_0
    move-exception v8

    .line 1223
    .local v8, "e":Ljava/lang/Exception;
    const-string v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot index: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v5, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for locale: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1228
    .end local v5    # "data":Landroid/provider/SearchIndexableData;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1229
    .local v10, "now":J
    const-string v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Indexing locale \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' took "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v16, v10, v6

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " millis"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1163
    check-cast p1, [Lcom/android/stockssettings/search/Index$UpdateData;

    invoke-virtual {p0, p1}, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->doInBackground([Lcom/android/stockssettings/search/Index$UpdateData;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/stockssettings/search/Index$UpdateData;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Lcom/android/stockssettings/search/Index$UpdateData;

    .prologue
    const/4 v7, 0x0

    .line 1179
    aget-object v0, p1, v7

    iget-object v3, v0, Lcom/android/stockssettings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    .line 1180
    .local v3, "dataToUpdate":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    aget-object v0, p1, v7

    iget-object v6, v0, Lcom/android/stockssettings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    .line 1181
    .local v6, "dataToDelete":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableData;>;"
    aget-object v0, p1, v7

    iget-object v4, v0, Lcom/android/stockssettings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    .line 1183
    .local v4, "nonIndexableKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    aget-object v0, p1, v7

    iget-boolean v5, v0, Lcom/android/stockssettings/search/Index$UpdateData;->forceUpdate:Z

    .line 1185
    .local v5, "forceUpdate":Z
    iget-object v0, p0, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->this$0:Lcom/android/stockssettings/search/Index;

    # invokes: Lcom/android/stockssettings/search/Index;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/android/stockssettings/search/Index;->access$300(Lcom/android/stockssettings/search/Index;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1186
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1189
    .local v2, "localeStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1190
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1191
    invoke-direct {p0, v1, v2, v6}, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->processDataToDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)Z

    .line 1193
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move-object v0, p0

    .line 1194
    invoke-direct/range {v0 .. v5}, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->processDataToUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)Z

    .line 1197
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1202
    const/4 v0, 0x0

    return-object v0

    .line 1199
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1163
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 1173
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1174
    iget-object v0, p0, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->this$0:Lcom/android/stockssettings/search/Index;

    # getter for: Lcom/android/stockssettings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/stockssettings/search/Index;->access$200(Lcom/android/stockssettings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1175
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1167
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1168
    iget-object v0, p0, Lcom/android/stockssettings/search/Index$UpdateIndexTask;->this$0:Lcom/android/stockssettings/search/Index;

    # getter for: Lcom/android/stockssettings/search/Index;->mIsAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/stockssettings/search/Index;->access$200(Lcom/android/stockssettings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1169
    return-void
.end method
