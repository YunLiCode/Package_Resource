.class Lcom/android/phone/sip/SipSettings$2;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->registerForReceiveCallsCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$2;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 218
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 220
    .local v0, "enabled":Z
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/phone/sip/SipSettings$2$1;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/sip/SipSettings$2$1;-><init>(Lcom/android/phone/sip/SipSettings$2;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 225
    const/4 v1, 0x1

    return v1
.end method
