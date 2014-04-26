.class Lcom/android/phone/BlacklistSetting$2;
.super Landroid/os/AsyncTask;
.source "BlacklistSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BlacklistSetting;->updateBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/preference/Preference;",
        "Lcom/android/phone/BlacklistSetting$ContactNameHolder;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BlacklistSetting;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/phone/BlacklistSetting;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/phone/BlacklistSetting$2;->this$0:Lcom/android/phone/BlacklistSetting;

    iput-object p2, p0, Lcom/android/phone/BlacklistSetting$2;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 216
    check-cast p1, [Landroid/preference/Preference;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/BlacklistSetting$2;->doInBackground([Landroid/preference/Preference;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/preference/Preference;)Ljava/lang/Void;
    .locals 14
    .param p1, "params"    # [Landroid/preference/Preference;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 219
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v12

    .line 221
    .local v2, "projection":[Ljava/lang/String;
    move-object v6, p1

    .local v6, "arr$":[Landroid/preference/Preference;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v11, v6, v9

    .line 222
    .local v11, "pref":Landroid/preference/Preference;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 224
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/BlacklistSetting$2;->val$cr:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 225
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 226
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v8, Lcom/android/phone/BlacklistSetting$ContactNameHolder;

    invoke-direct {v8, v3}, Lcom/android/phone/BlacklistSetting$ContactNameHolder;-><init>(Lcom/android/phone/BlacklistSetting$1;)V

    .line 228
    .local v8, "holder":Lcom/android/phone/BlacklistSetting$ContactNameHolder;
    iput-object v11, v8, Lcom/android/phone/BlacklistSetting$ContactNameHolder;->pref:Landroid/preference/Preference;

    .line 229
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/phone/BlacklistSetting$ContactNameHolder;->name:Ljava/lang/String;

    .line 230
    new-array v0, v13, [Lcom/android/phone/BlacklistSetting$ContactNameHolder;

    aput-object v8, v0, v12

    invoke-virtual {p0, v0}, Lcom/android/phone/BlacklistSetting$2;->publishProgress([Ljava/lang/Object;)V

    .line 232
    .end local v8    # "holder":Lcom/android/phone/BlacklistSetting$ContactNameHolder;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 236
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v11    # "pref":Landroid/preference/Preference;
    :cond_2
    return-object v3
.end method

.method protected varargs onProgressUpdate([Lcom/android/phone/BlacklistSetting$ContactNameHolder;)V
    .locals 6
    .param p1, "entries"    # [Lcom/android/phone/BlacklistSetting$ContactNameHolder;

    .prologue
    .line 241
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/phone/BlacklistSetting$ContactNameHolder;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 242
    .local v1, "entry":Lcom/android/phone/BlacklistSetting$ContactNameHolder;
    iget-object v4, v1, Lcom/android/phone/BlacklistSetting$ContactNameHolder;->pref:Landroid/preference/Preference;

    iget-object v5, v1, Lcom/android/phone/BlacklistSetting$ContactNameHolder;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "entry":Lcom/android/phone/BlacklistSetting$ContactNameHolder;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 216
    check-cast p1, [Lcom/android/phone/BlacklistSetting$ContactNameHolder;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/phone/BlacklistSetting$2;->onProgressUpdate([Lcom/android/phone/BlacklistSetting$ContactNameHolder;)V

    return-void
.end method
