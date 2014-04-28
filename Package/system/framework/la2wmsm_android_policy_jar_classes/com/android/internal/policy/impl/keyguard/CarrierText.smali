.class public Lcom/android/internal/policy/impl/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/CarrierText$2;,
        Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static mSeparator:Ljava/lang/CharSequence;


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field protected mIsCDMA:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mSubscription:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    .line 43
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    .line 45
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;-><init>(Lcom/android/internal/policy/impl/keyguard/CarrierText;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 84
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    return-void
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 289
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    move v0, v2

    .line 290
    .local v0, "plmnValid":Z
    :goto_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    move v1, v2

    .line 297
    .local v1, "spnValid":Z
    :goto_10
    if-eqz v0, :cond_17

    .line 303
    .end local p0    # "plmn":Ljava/lang/CharSequence;
    :goto_12
    return-object p0

    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    .restart local p0    # "plmn":Ljava/lang/CharSequence;
    :cond_13
    move v0, v3

    .line 289
    goto :goto_9

    .restart local v0    # "plmnValid":Z
    :cond_15
    move v1, v3

    .line 290
    goto :goto_10

    .line 300
    .restart local v1    # "spnValid":Z
    :cond_17
    if-eqz v1, :cond_1b

    move-object p0, p1

    .line 301
    goto :goto_12

    .line 303
    :cond_1b
    const-string p0, ""

    goto :goto_12
.end method

.method private getCarrierHelpTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 8
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "carrierHelpTextId":I
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 313
    .local v1, "status":Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_58

    .line 343
    :goto_10
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 315
    :pswitch_17
    const v0, 0x1040315

    .line 316
    goto :goto_10

    .line 319
    :pswitch_1b
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    if-eqz v2, :cond_23

    const v0, 0x1040328

    .line 322
    :goto_22
    goto :goto_10

    .line 319
    :cond_23
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    if-nez v2, :cond_2b

    const v0, 0x10405bf

    goto :goto_22

    :cond_2b
    const v0, 0x1040327

    goto :goto_22

    .line 325
    :pswitch_2f
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    if-eqz v2, :cond_37

    const v0, 0x104032c

    .line 328
    :goto_36
    goto :goto_10

    .line 325
    :cond_37
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    if-nez v2, :cond_3f

    const v0, 0x10405c1

    goto :goto_36

    :cond_3f
    const v0, 0x104032b

    goto :goto_36

    .line 331
    :pswitch_43
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    if-eqz v2, :cond_4b

    const v0, 0x1040326

    .line 334
    :goto_4a
    goto :goto_10

    .line 331
    :cond_4b
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    if-nez v2, :cond_53

    const v0, 0x10405be

    goto :goto_4a

    :cond_53
    const v0, 0x1040325

    goto :goto_4a

    .line 313
    nop

    :pswitch_data_58
    .packed-switch 0x3
        :pswitch_17
        :pswitch_1b
        :pswitch_2f
        :pswitch_43
    .end packed-switch
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    .registers 5
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 254
    if-nez p1, :cond_5

    .line 255
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    .line 285
    :goto_4
    return-object v1

    .line 258
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_2c

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_19

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_2c

    :cond_19
    const/4 v0, 0x1

    .line 264
    .local v0, "missingAndNotProvisioned":Z
    :goto_1a
    if-eqz v0, :cond_1e

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 265
    :cond_1e
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4a

    .line 285
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 258
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_1a

    .line 267
    .restart local v0    # "missingAndNotProvisioned":Z
    :pswitch_2e
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 269
    :pswitch_31
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->PersoLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 271
    :pswitch_34
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 273
    :pswitch_37
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 275
    :pswitch_3a
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 277
    :pswitch_3d
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 279
    :pswitch_40
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 281
    :pswitch_43
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 283
    :pswitch_46
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->SimIOError:Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    goto :goto_4

    .line 265
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
    .end packed-switch
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isEmergencyCallCapable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 244
    invoke-static {p1, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 246
    .end local p1    # "simMessage":Ljava/lang/CharSequence;
    :cond_c
    return-object p1
.end method


# virtual methods
.method protected getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 14
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "carrierText":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 140
    .local v0, "airplaneMode":Z
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_f} :catch_136

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_23

    const/4 v0, 0x1

    .line 144
    :goto_14
    if-eqz v0, :cond_25

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040340

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    .line 235
    .end local v1    # "carrierText":Ljava/lang/CharSequence;
    .local v2, "carrierText":Ljava/lang/CharSequence;
    :goto_22
    return-object v2

    .line 140
    .end local v2    # "carrierText":Ljava/lang/CharSequence;
    .restart local v1    # "carrierText":Ljava/lang/CharSequence;
    :cond_23
    const/4 v0, 0x0

    goto :goto_14

    .line 149
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;

    move-result-object v5

    .line 151
    .local v5, "status":Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    const-string v3, ""

    .line 152
    .local v3, "localPlmn":Ljava/lang/String;
    const-string v4, ""

    .line 153
    .local v4, "localSpn":Ljava/lang/String;
    if-eqz p2, :cond_3f

    .line 154
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x1070036

    const v9, 0x1070037

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 158
    :cond_3f
    if-eqz p3, :cond_51

    .line 159
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x1070036

    const v9, 0x1070037

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->getLocalString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 165
    :cond_51
    sget-object v6, Lcom/android/internal/policy/impl/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_13a

    :goto_5c
    move-object v2, v1

    .line 235
    .end local v1    # "carrierText":Ljava/lang/CharSequence;
    .restart local v2    # "carrierText":Ljava/lang/CharSequence;
    goto :goto_22

    .line 167
    .end local v2    # "carrierText":Ljava/lang/CharSequence;
    .restart local v1    # "carrierText":Ljava/lang/CharSequence;
    :pswitch_5e
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 168
    goto :goto_5c

    .line 171
    :pswitch_63
    const/4 v1, 0x0

    .line 172
    goto :goto_5c

    .line 175
    :pswitch_65
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040338

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 178
    goto :goto_5c

    .line 185
    :pswitch_75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    if-eqz v6, :cond_8b

    const v6, 0x1040322

    :goto_80
    invoke-virtual {v7, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, ""

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 190
    goto :goto_5c

    .line 185
    :cond_8b
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    if-nez v6, :cond_93

    const v6, 0x10405bc

    goto :goto_80

    :cond_93
    const v6, 0x1040321

    goto :goto_80

    .line 193
    :pswitch_97
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    if-eqz v6, :cond_a7

    const v6, 0x104032a

    :goto_a2
    invoke-virtual {v7, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 196
    goto :goto_5c

    .line 193
    :cond_a7
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    if-nez v6, :cond_af

    const v6, 0x10405c0

    goto :goto_a2

    :cond_af
    const v6, 0x1040329

    goto :goto_a2

    .line 199
    :pswitch_b3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    if-eqz v6, :cond_c7

    const v6, 0x1040322

    :goto_be
    invoke-virtual {v7, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 204
    goto :goto_5c

    .line 199
    :cond_c7
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    if-nez v6, :cond_cf

    const v6, 0x10405bc

    goto :goto_be

    :cond_cf
    const v6, 0x1040321

    goto :goto_be

    .line 208
    :pswitch_d3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    if-eqz v6, :cond_e8

    const v6, 0x104033d

    :goto_de
    invoke-virtual {v7, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 213
    goto/16 :goto_5c

    .line 208
    :cond_e8
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    if-nez v6, :cond_f0

    const v6, 0x10405c5

    goto :goto_de

    :cond_f0
    const v6, 0x104033c

    goto :goto_de

    .line 216
    :pswitch_f4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    if-eqz v6, :cond_109

    const v6, 0x104033a

    :goto_ff
    invoke-virtual {v7, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 221
    goto/16 :goto_5c

    .line 216
    :cond_109
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    if-nez v6, :cond_111

    const v6, 0x10405c4

    goto :goto_ff

    :cond_111
    const v6, 0x1040339

    goto :goto_ff

    .line 225
    :pswitch_115
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    if-eqz v6, :cond_12a

    const v6, 0x1040334

    :goto_120
    invoke-virtual {v7, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto/16 :goto_5c

    :cond_12a
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    if-nez v6, :cond_132

    const v6, 0x10405c2

    goto :goto_120

    :cond_132
    const v6, 0x1040333

    goto :goto_120

    .line 142
    .end local v3    # "localPlmn":Ljava/lang/String;
    .end local v4    # "localSpn":Ljava/lang/String;
    .end local v5    # "status":Lcom/android/internal/policy/impl/keyguard/CarrierText$StatusMode;
    :catch_136
    move-exception v6

    goto/16 :goto_14

    .line 165
    nop

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_63
        :pswitch_65
        :pswitch_75
        :pswitch_97
        :pswitch_b3
        :pswitch_d3
        :pswitch_f4
        :pswitch_115
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 112
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 113
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v0, :cond_8

    .line 117
    :goto_7
    return-void

    .line 116
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    goto :goto_7
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 123
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040592

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->setSelected(Z)V

    .line 108
    return-void
.end method

.method protected updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 89
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3b

    const/4 v1, 0x1

    :goto_c
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    .line 91
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040312

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_29
    sget-boolean v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v1, :cond_3f

    .line 97
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_37
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_3a
    return-void

    .line 89
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_3b
    const/4 v1, 0x0

    goto :goto_c

    .line 97
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_3d
    const/4 v1, 0x0

    goto :goto_37

    .line 99
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a
.end method
