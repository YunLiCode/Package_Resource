.class Lcom/android/phone/Blacklist;
.super Ljava/lang/Object;
.source "Blacklist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Blacklist$PhoneNumber;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/android/phone/Blacklist;->migrateOldDataIfPresent()V

    .line 39
    return-void
.end method

.method private migrateOldDataIfPresent()V
    .locals 16

    .prologue
    const/4 v15, 0x0

    const/4 v14, 0x1

    .line 64
    const/4 v8, 0x0

    .line 65
    .local v8, "ois":Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 68
    .local v3, "data":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/phone/Blacklist$PhoneNumber;>;"
    :try_start_0
    new-instance v9, Ljava/io/ObjectInputStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    const-string v13, "blacklist.dat"

    invoke-virtual {v12, v13}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .local v9, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v7

    .line 70
    .local v7, "o":Ljava/lang/Object;
    if-eqz v7, :cond_0

    instance-of v12, v7, Ljava/lang/Integer;

    if-eqz v12, :cond_0

    .line 72
    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v11, v0

    .line 73
    .local v11, "version":Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v14, :cond_0

    .line 74
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 75
    .local v6, "numbers":Ljava/lang/Object;
    instance-of v12, v6, Ljava/util/HashSet;

    if-eqz v12, :cond_0

    .line 76
    move-object v0, v6

    check-cast v0, Ljava/util/HashSet;

    move-object v3, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .end local v6    # "numbers":Ljava/lang/Object;
    .end local v11    # "version":Ljava/lang/Integer;
    :cond_0
    if-eqz v9, :cond_4

    .line 87
    :try_start_2
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 91
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    const-string v13, "blacklist.dat"

    invoke-virtual {v12, v13}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-object v8, v9

    .line 94
    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "ois":Ljava/io/ObjectInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    :cond_1
    :goto_1
    if-eqz v3, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 96
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v12, "phone"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/Blacklist$PhoneNumber;

    .line 100
    .local v5, "number":Lcom/android/phone/Blacklist$PhoneNumber;
    sget-object v12, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    iget-object v13, v5, Lcom/android/phone/Blacklist$PhoneNumber;->phone:Ljava/lang/String;

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 102
    .local v10, "uri":Landroid/net/Uri;
    const-string v12, "number"

    iget-object v13, v5, Lcom/android/phone/Blacklist$PhoneNumber;->phone:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v10, v2, v15, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 80
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "number":Lcom/android/phone/Blacklist$PhoneNumber;
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 85
    :goto_3
    if-eqz v8, :cond_1

    .line 87
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 91
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    const-string v13, "blacklist.dat"

    invoke-virtual {v12, v13}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 82
    :catch_1
    move-exception v12

    .line 85
    :goto_5
    if-eqz v8, :cond_1

    .line 87
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 91
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    const-string v13, "blacklist.dat"

    invoke-virtual {v12, v13}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1

    .line 85
    :catchall_0
    move-exception v12

    :goto_7
    if-eqz v8, :cond_2

    .line 87
    :try_start_5
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 91
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    const-string v14, "blacklist.dat"

    invoke-virtual {v13, v14}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_2
    throw v12

    .line 88
    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v9    # "ois":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v12

    goto :goto_0

    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "ois":Ljava/io/ObjectInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v12

    goto :goto_4

    :catch_4
    move-exception v12

    goto :goto_6

    :catch_5
    move-exception v13

    goto :goto_8

    .line 106
    :cond_3
    return-void

    .line 85
    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .restart local v9    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v12

    move-object v8, v9

    .end local v9    # "ois":Ljava/io/ObjectInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_7

    .line 82
    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .restart local v9    # "ois":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v12

    move-object v8, v9

    .end local v9    # "ois":Ljava/io/ObjectInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_5

    .line 80
    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .restart local v9    # "ois":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v12

    move-object v8, v9

    .end local v9    # "ois":Ljava/io/ObjectInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_3

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .restart local v7    # "o":Ljava/lang/Object;
    .restart local v9    # "ois":Ljava/io/ObjectInputStream;
    :cond_4
    move-object v8, v9

    .end local v9    # "ois":Ljava/io/ObjectInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "number"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v3, "phone"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    iget-object v3, p0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 120
    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 173
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Blacklist;->CONTENT_PHONE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 176
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 177
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 178
    .local v7, "columnIndex":I
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 179
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 185
    .end local v7    # "columnIndex":I
    :cond_1
    return-object v8
.end method

.method public isListed(Ljava/lang/String;)I
    .locals 13
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils$PhoneSettings;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v10, v11

    .line 169
    :cond_0
    :goto_0
    return v10

    .line 135
    :cond_1
    const-string v0, "0000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils$PhoneSettings;->isBlacklistPrivateNumberEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v10, v12

    .line 137
    goto :goto_0

    :cond_2
    move v10, v11

    .line 139
    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils$PhoneSettings;->isBlacklistUnknownNumberEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v8

    .line 144
    .local v8, "ci":Lcom/android/internal/telephony/CallerInfo;
    iget-boolean v0, v8, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_4

    .line 145
    const/4 v10, 0x2

    goto :goto_0

    .line 149
    .end local v8    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_4
    sget-object v0, Landroid/provider/Telephony$Blacklist;->CONTENT_FILTER_BYNUMBER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 150
    .local v6, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v6, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    iget-object v0, p0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils$PhoneSettings;->isBlacklistRegexEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    const-string v0, "regex"

    const-string v1, "1"

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    :cond_5
    const/4 v10, 0x0

    .line 156
    .local v10, "result":I
    iget-object v0, p0, Lcom/android/phone/Blacklist;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "phone != 0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 158
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 159
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v12, :cond_7

    .line 161
    const/4 v10, 0x4

    .line 166
    :cond_6
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 162
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    const-string v0, "is_regex"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    move v9, v12

    .line 164
    .local v9, "isRegex":Z
    :goto_2
    if-eqz v9, :cond_9

    const/4 v10, 0x4

    :goto_3
    goto :goto_1

    .end local v9    # "isRegex":Z
    :cond_8
    move v9, v11

    .line 163
    goto :goto_2

    .line 164
    .restart local v9    # "isRegex":Z
    :cond_9
    const/4 v10, 0x3

    goto :goto_3
.end method
