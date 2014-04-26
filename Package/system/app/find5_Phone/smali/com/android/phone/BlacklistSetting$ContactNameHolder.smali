.class final Lcom/android/phone/BlacklistSetting$ContactNameHolder;
.super Ljava/lang/Object;
.source "BlacklistSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BlacklistSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactNameHolder"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field pref:Landroid/preference/Preference;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BlacklistSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/BlacklistSetting$1;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/phone/BlacklistSetting$ContactNameHolder;-><init>()V

    return-void
.end method
