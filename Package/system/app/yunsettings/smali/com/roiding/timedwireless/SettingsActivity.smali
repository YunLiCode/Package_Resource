.class public Lcom/roiding/timedwireless/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final ABOUT:I = 0x3

.field private static final OFF_TIME_PICKER:I = 0x2

.field private static final ON_TIME_PICKER:I = 0x1


# instance fields
.field private am:Landroid/app/AlarmManager;

.field private enable:Landroid/preference/CheckBoxPreference;

.field private locale:Landroid/preference/ListPreference;

.field private offTime:Landroid/preference/Preference;

.field private offTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private onTime:Landroid/preference/Preference;

.field private onTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private pref:Landroid/content/SharedPreferences;

.field private sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    iput-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity;->sdf:Ljava/text/SimpleDateFormat;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity;->am:Landroid/app/AlarmManager;

    .line 184
    new-instance v0, Lcom/roiding/timedwireless/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/roiding/timedwireless/SettingsActivity$1;-><init>(Lcom/roiding/timedwireless/SettingsActivity;)V

    iput-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity;->onTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 194
    new-instance v0, Lcom/roiding/timedwireless/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/roiding/timedwireless/SettingsActivity$2;-><init>(Lcom/roiding/timedwireless/SettingsActivity;)V

    iput-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity;->offTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/roiding/timedwireless/SettingsActivity;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lcom/roiding/timedwireless/SettingsActivity;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/roiding/timedwireless/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity;->onTime:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$2(Lcom/roiding/timedwireless/SettingsActivity;)Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity;->offTime:Landroid/preference/Preference;

    return-object v0
.end method

.method private formatTime(II)Ljava/lang/String;
    .locals 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 215
    const-string v1, ""

    .line 216
    .local v1, "time":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 217
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 218
    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 220
    iget-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity;->sdf:Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity;->sdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 222
    return-object v1
.end method

.method private setPreference()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const-string v4, "on_time"

    const-string v8, "off_time"

    const-string v7, " "

    .line 205
    const-string v2, "on_time"

    invoke-virtual {p0, v4}, Lcom/roiding/timedwireless/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity;->onTime:Landroid/preference/Preference;

    .line 206
    iget-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "on_time"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "time":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity;->onTime:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roiding/timedwireless/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    const-string v2, "off_time"

    invoke-virtual {p0, v8}, Lcom/roiding/timedwireless/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity;->offTime:Landroid/preference/Preference;

    .line 210
    iget-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity;->pref:Landroid/content/SharedPreferences;

    const-string v3, "off_time"

    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "dtime":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity;->offTime:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/roiding/timedwireless/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v1, 0x7f030000

    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/roiding/timedwireless/SettingsActivity;->addPreferencesFromResource(I)V

    .line 49
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/roiding/timedwireless/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity;->am:Landroid/app/AlarmManager;

    .line 50
    invoke-virtual {p0}, Lcom/roiding/timedwireless/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity;->pref:Landroid/content/SharedPreferences;

    .line 55
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .param p1, "id"    # I

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0xc

    const/16 v11, 0xb

    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 126
    packed-switch p1, :pswitch_data_0

    .line 177
    const/4 v0, 0x0

    .local v0, "d":Landroid/app/Dialog;
    :goto_0
    move-object v1, v0

    .line 181
    .end local v0    # "d":Landroid/app/Dialog;
    :goto_1
    return-object v1

    .line 128
    :pswitch_0
    iget-object v1, p0, Lcom/roiding/timedwireless/SettingsActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "on_time"

    invoke-interface {v1, v2, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "time":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "hour":I
    const/4 v4, 0x0

    .line 131
    .local v4, "minute":I
    if-nez v8, :cond_0

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 134
    .local v7, "calendar":Ljava/util/Calendar;
    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 135
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 141
    .end local v7    # "calendar":Ljava/util/Calendar;
    :goto_2
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity;->onTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 142
    .restart local v0    # "d":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/roiding/timedwireless/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_0
    const-string v1, ":"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, "timeArr":[Ljava/lang/String;
    aget-object v1, v9, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 139
    .restart local v3    # "hour":I
    aget-object v1, v9, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "minute":I
    goto :goto_2

    .line 146
    .end local v8    # "time":Ljava/lang/String;
    .end local v9    # "timeArr":[Ljava/lang/String;
    .end local v3    # "hour":I
    .end local v4    # "minute":I
    :pswitch_1
    iget-object v1, p0, Lcom/roiding/timedwireless/SettingsActivity;->pref:Landroid/content/SharedPreferences;

    const-string v2, "off_time"

    invoke-interface {v1, v2, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .restart local v8    # "time":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "hour":I
    const/4 v4, 0x0

    .line 149
    .restart local v4    # "minute":I
    if-nez v8, :cond_1

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 152
    .restart local v7    # "calendar":Ljava/util/Calendar;
    invoke-virtual {v7, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 153
    .restart local v3    # "hour":I
    invoke-virtual {v7, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 159
    .end local v7    # "calendar":Ljava/util/Calendar;
    .restart local v4    # "minute":I
    :goto_3
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity;->offTimeListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 160
    .restart local v0    # "d":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/roiding/timedwireless/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    .end local v0    # "d":Landroid/app/Dialog;
    :cond_1
    const-string v1, ":"

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 156
    .restart local v9    # "timeArr":[Ljava/lang/String;
    aget-object v1, v9, v10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 157
    .restart local v3    # "hour":I
    aget-object v1, v9, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .restart local v4    # "minute":I
    goto :goto_3

    .line 163
    .end local v8    # "time":Ljava/lang/String;
    .end local v9    # "timeArr":[Ljava/lang/String;
    .end local v3    # "hour":I
    .end local v4    # "minute":I
    :pswitch_2
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v6, "aboutView":Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/about.html"

    invoke-virtual {v6, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v6, v10}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 167
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 169
    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 170
    const v2, 0x7f040001

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 171
    const v2, 0x7f040002

    new-instance v5, Lcom/roiding/timedwireless/SettingsActivity$4;

    invoke-direct {v5, p0}, Lcom/roiding/timedwireless/SettingsActivity$4;-><init>(Lcom/roiding/timedwireless/SettingsActivity;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_1

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x4

    .line 72
    const/4 v1, 0x0

    const v2, 0x7f040001

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 73
    .local v0, "aboutItem":Landroid/view/MenuItem;
    const/high16 v1, 0x7f020000

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 74
    new-instance v1, Lcom/roiding/timedwireless/SettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/roiding/timedwireless/SettingsActivity$3;-><init>(Lcom/roiding/timedwireless/SettingsActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 82
    const/4 v1, 0x1

    return v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 68
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/roiding/timedwireless/SettingsActivity;->showDialog(I)V

    .line 121
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/roiding/timedwireless/SettingsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 61
    invoke-direct {p0}, Lcom/roiding/timedwireless/SettingsActivity;->setPreference()V

    .line 62
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const-string v7, "enable"

    const-string v6, "on_time"

    const-string v5, "off_time"

    .line 87
    const-string v3, "enable"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const-string v3, "enable"

    const/4 v3, 0x1

    invoke-interface {p1, v7, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    .local v0, "enable":Z
    if-eqz v0, :cond_3

    .line 90
    const-string v3, "on_time"

    invoke-interface {p1, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "onTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/roiding/timedwireless/SettingsActivity;->am:Landroid/app/AlarmManager;

    invoke-static {p0, v3, v2}, Lcom/roiding/timedwireless/Helper;->scheduleTurnOn(Landroid/content/Context;Landroid/app/AlarmManager;Ljava/lang/String;)V

    .line 93
    const-string v3, "off_time"

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "offTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/roiding/timedwireless/SettingsActivity;->am:Landroid/app/AlarmManager;

    invoke-static {p0, v3, v1}, Lcom/roiding/timedwireless/Helper;->scheduleTurnOff(Landroid/content/Context;Landroid/app/AlarmManager;Ljava/lang/String;)V

    .line 101
    .end local v0    # "enable":Z
    .end local v2    # "onTime":Ljava/lang/String;
    .end local v1    # "offTime":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v3, "on_time"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    const-string v3, "on_time"

    invoke-interface {p1, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .restart local v2    # "onTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/roiding/timedwireless/SettingsActivity;->am:Landroid/app/AlarmManager;

    invoke-static {p0, v3}, Lcom/roiding/timedwireless/Helper;->cancelScheduleTurnOn(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 104
    iget-object v3, p0, Lcom/roiding/timedwireless/SettingsActivity;->am:Landroid/app/AlarmManager;

    invoke-static {p0, v3, v2}, Lcom/roiding/timedwireless/Helper;->scheduleTurnOn(Landroid/content/Context;Landroid/app/AlarmManager;Ljava/lang/String;)V

    .line 107
    .end local v2    # "onTime":Ljava/lang/String;
    :cond_1
    const-string v3, "off_time"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    const-string v3, "off_time"

    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .restart local v1    # "offTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/roiding/timedwireless/SettingsActivity;->am:Landroid/app/AlarmManager;

    invoke-static {p0, v3}, Lcom/roiding/timedwireless/Helper;->cancelScheduleTurnOff(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 110
    iget-object v3, p0, Lcom/roiding/timedwireless/SettingsActivity;->am:Landroid/app/AlarmManager;

    invoke-static {p0, v3, v1}, Lcom/roiding/timedwireless/Helper;->scheduleTurnOff(Landroid/content/Context;Landroid/app/AlarmManager;Ljava/lang/String;)V

    .line 112
    .end local v1    # "offTime":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/roiding/timedwireless/SettingsActivity;->setPreference()V

    .line 113
    return-void

    .line 96
    .restart local v0    # "enable":Z
    :cond_3
    iget-object v3, p0, Lcom/roiding/timedwireless/SettingsActivity;->am:Landroid/app/AlarmManager;

    invoke-static {p0, v3}, Lcom/roiding/timedwireless/Helper;->cancelScheduleTurnOn(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 97
    iget-object v3, p0, Lcom/roiding/timedwireless/SettingsActivity;->am:Landroid/app/AlarmManager;

    invoke-static {p0, v3}, Lcom/roiding/timedwireless/Helper;->cancelScheduleTurnOff(Landroid/content/Context;Landroid/app/AlarmManager;)V

    goto :goto_0
.end method
