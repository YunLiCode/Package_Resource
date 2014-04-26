.class public Lcom/android/phone/BlacklistSetting;
.super Landroid/preference/PreferenceActivity;
.source "BlacklistSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BlacklistSetting$ContactNameHolder;
    }
.end annotation


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private blackPreferenceListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mBlacklist:Lcom/android/phone/Blacklist;

.field private mBlacklistEnabled:Landroid/preference/CheckBoxPreference;

.field private mBlacklistPrivate:Landroid/preference/CheckBoxPreference;

.field private mBlacklistUnknown:Landroid/preference/CheckBoxPreference;

.field private mButtonAddBlacklistNumber:Lcom/android/phone/EditPhoneNumberPreference;

.field private mCatBlacklist:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/BlacklistSetting;->NUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 109
    new-instance v0, Lcom/android/phone/BlacklistSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BlacklistSetting$1;-><init>(Lcom/android/phone/BlacklistSetting;)V

    iput-object v0, p0, Lcom/android/phone/BlacklistSetting;->blackPreferenceListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/BlacklistSetting;)Lcom/android/phone/Blacklist;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BlacklistSetting;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/BlacklistSetting;->mBlacklist:Lcom/android/phone/Blacklist;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/BlacklistSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BlacklistSetting;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/phone/BlacklistSetting;->updateBlacklist()V

    return-void
.end method

.method private updateBlacklist()V
    .locals 13

    .prologue
    .line 190
    iget-object v12, p0, Lcom/android/phone/BlacklistSetting;->mCatBlacklist:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 192
    const-string v12, "country_detector"

    invoke-virtual {p0, v12}, Lcom/android/phone/BlacklistSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/CountryDetector;

    .line 193
    .local v3, "detector":Landroid/location/CountryDetector;
    invoke-virtual {v3}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v12

    invoke-virtual {v12}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "currentCountryIso":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/phone/BlacklistSetting;->mBlacklist:Lcom/android/phone/Blacklist;

    invoke-virtual {v12}, Lcom/android/phone/Blacklist;->getItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 196
    .local v8, "number":Ljava/lang/String;
    new-instance v10, Landroid/preference/Preference;

    invoke-direct {v10, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 197
    .local v10, "pref":Landroid/preference/Preference;
    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    move-object v7, v8

    .line 200
    .local v7, "normalizedNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 203
    invoke-static {v8, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "numberE164":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 206
    move-object v7, v9

    .line 209
    .end local v9    # "numberE164":Ljava/lang/String;
    :cond_0
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 210
    iget-object v12, p0, Lcom/android/phone/BlacklistSetting;->blackPreferenceListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v10, v12}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 211
    iget-object v12, p0, Lcom/android/phone/BlacklistSetting;->mCatBlacklist:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 214
    .end local v7    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "number":Ljava/lang/String;
    .end local v10    # "pref":Landroid/preference/Preference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/BlacklistSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 215
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v6, Lcom/android/phone/BlacklistSetting$2;

    invoke-direct {v6, p0, v1}, Lcom/android/phone/BlacklistSetting$2;-><init>(Lcom/android/phone/BlacklistSetting;Landroid/content/ContentResolver;)V

    .line 247
    .local v6, "lookupTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Landroid/preference/Preference;Lcom/android/phone/BlacklistSetting$ContactNameHolder;Ljava/lang/Void;>;"
    iget-object v12, p0, Lcom/android/phone/BlacklistSetting;->mCatBlacklist:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    .line 248
    .local v0, "count":I
    new-array v11, v0, [Landroid/preference/Preference;

    .line 249
    .local v11, "prefs":[Landroid/preference/Preference;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 250
    iget-object v12, p0, Lcom/android/phone/BlacklistSetting;->mCatBlacklist:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v4}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    aput-object v12, v11, v4

    .line 249
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {v6, v11}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 163
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/android/phone/BlacklistSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BlacklistSetting;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/phone/BlacklistSetting;->mButtonAddBlacklistNumber:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    .line 176
    :cond_2
    if-eqz v6, :cond_0

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 180
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/high16 v2, 0x7f060000

    invoke-virtual {p0, v2}, Lcom/android/phone/BlacklistSetting;->addPreferencesFromResource(I)V

    .line 80
    invoke-virtual {p0}, Lcom/android/phone/BlacklistSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 81
    .local v1, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v2, "button_enable_blacklist"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/BlacklistSetting;->mBlacklistEnabled:Landroid/preference/CheckBoxPreference;

    .line 82
    iget-object v2, p0, Lcom/android/phone/BlacklistSetting;->mBlacklistEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    const-string v2, "button_add_blacklist_number"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v2, p0, Lcom/android/phone/BlacklistSetting;->mButtonAddBlacklistNumber:Lcom/android/phone/EditPhoneNumberPreference;

    .line 84
    iget-object v2, p0, Lcom/android/phone/BlacklistSetting;->mButtonAddBlacklistNumber:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 85
    iget-object v2, p0, Lcom/android/phone/BlacklistSetting;->mButtonAddBlacklistNumber:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 86
    const-string v2, "cat_blacklist"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/phone/BlacklistSetting;->mCatBlacklist:Landroid/preference/PreferenceCategory;

    .line 87
    const-string v2, "button_blacklist_private_numbers"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/BlacklistSetting;->mBlacklistPrivate:Landroid/preference/CheckBoxPreference;

    .line 88
    iget-object v2, p0, Lcom/android/phone/BlacklistSetting;->mBlacklistPrivate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    const-string v2, "button_blacklist_unknown_numbers"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/BlacklistSetting;->mBlacklistUnknown:Landroid/preference/CheckBoxPreference;

    .line 91
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->blackList:Lcom/android/phone/Blacklist;

    iput-object v2, p0, Lcom/android/phone/BlacklistSetting;->mBlacklist:Lcom/android/phone/Blacklist;

    .line 93
    invoke-virtual {p0}, Lcom/android/phone/BlacklistSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 94
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 96
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 2
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/phone/BlacklistSetting;->mButtonAddBlacklistNumber:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/phone/BlacklistSetting;->mBlacklist:Lcom/android/phone/Blacklist;

    invoke-virtual {p1}, Lcom/android/phone/EditPhoneNumberPreference;->getRawPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/Blacklist;->add(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/phone/BlacklistSetting;->updateBlacklist()V

    .line 151
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 153
    :cond_1
    return-void
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 1
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 257
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 258
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 259
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->goUpToTopLevelSetting(Landroid/app/Activity;)V

    .line 260
    const/4 v1, 0x1

    .line 262
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    iget-object v3, p0, Lcom/android/phone/BlacklistSetting;->mBlacklistEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    .line 132
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 133
    .local v0, "checked":Z
    invoke-virtual {p0}, Lcom/android/phone/BlacklistSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone_blacklist_enabled"

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    .end local v0    # "checked":Z
    :cond_1
    :goto_0
    return v2

    .line 135
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/BlacklistSetting;->mBlacklistPrivate:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_1

    .line 136
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 137
    .restart local v0    # "checked":Z
    if-nez v0, :cond_1

    .line 138
    iget-object v3, p0, Lcom/android/phone/BlacklistSetting;->mBlacklistUnknown:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 103
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelBlacklistedCallNotification()V

    .line 104
    iget-object v1, p0, Lcom/android/phone/BlacklistSetting;->mBlacklistEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/BlacklistSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone_blacklist_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 106
    invoke-direct {p0}, Lcom/android/phone/BlacklistSetting;->updateBlacklist()V

    .line 107
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
