.class public Lcom/android/phone/MSISDNEditPreference;
.super Landroid/preference/EditTextPreference;
.source "MSISDNEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MSISDNEditPreference$1;,
        Lcom/android/phone/MSISDNEditPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/phone/MSISDNEditPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/MSISDNEditPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/MSISDNEditPreference;->DBG:Z

    .line 40
    new-instance v0, Lcom/android/phone/MSISDNEditPreference$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MSISDNEditPreference$MyHandler;-><init>(Lcom/android/phone/MSISDNEditPreference;Lcom/android/phone/MSISDNEditPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/MSISDNEditPreference;->mHandler:Lcom/android/phone/MSISDNEditPreference$MyHandler;

    .line 50
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/MSISDNEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 51
    iput-object p1, p0, Lcom/android/phone/MSISDNEditPreference;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/MSISDNEditPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/MSISDNEditPreference;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/MSISDNEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    return-object v0
.end method


# virtual methods
.method init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/TimeConsumingPreferenceListener;
    .param p2, "skipReading"    # Z

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/phone/MSISDNEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    .line 115
    if-nez p2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/phone/MSISDNEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/MSISDNEditPreference;->setText(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 9
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v8, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 62
    if-eqz p1, :cond_3

    .line 63
    iget-object v5, p0, Lcom/android/phone/MSISDNEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/phone/MSISDNEditPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09004e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_0
    iget-object v5, p0, Lcom/android/phone/MSISDNEditPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/MSISDNEditPreference;->getText()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/MSISDNEditPreference;->mHandler:Lcom/android/phone/MSISDNEditPreference$MyHandler;

    invoke-virtual {v7, v8}, Lcom/android/phone/MSISDNEditPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v5, v0, v6, v7}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 71
    iget-object v5, p0, Lcom/android/phone/MSISDNEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v5, :cond_1

    .line 72
    iget-object v5, p0, Lcom/android/phone/MSISDNEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    invoke-interface {v5, p0, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onStarted(Landroid/preference/Preference;Z)V

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/MSISDNEditPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 77
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lcom/android/phone/MSISDNEditPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "phoneNum":Ljava/lang/String;
    const-string v5, "phone_number"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "savedNum":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 84
    const/4 v2, 0x0

    .line 87
    :cond_2
    if-nez v2, :cond_4

    if-nez v4, :cond_4

    .line 88
    const-string v5, "MSISDNListPreference"

    const-string v6, "No phone number set yet"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "phoneNum":Ljava/lang/String;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    .end local v4    # "savedNum":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 89
    .restart local v0    # "alphaTag":Ljava/lang/String;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "phoneNum":Ljava/lang/String;
    .restart local v3    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "savedNum":Ljava/lang/String;
    :cond_4
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 96
    const-string v5, "phone_number"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 98
    :cond_5
    if-nez v2, :cond_3

    if-eqz v4, :cond_3

    .line 105
    const-string v5, "phone_number"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
