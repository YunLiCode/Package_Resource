.class Lcom/android/phone/BlacklistSetting$1;
.super Ljava/lang/Object;
.source "BlacklistSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BlacklistSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BlacklistSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/BlacklistSetting;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/phone/BlacklistSetting$1;->this$0:Lcom/android/phone/BlacklistSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "p"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 111
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "phone":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/BlacklistSetting$1;->this$0:Lcom/android/phone/BlacklistSetting;

    const v4, 0x7f09003e

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/BlacklistSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/phone/BlacklistSetting$1;->this$0:Lcom/android/phone/BlacklistSetting;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09003d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090072

    new-instance v5, Lcom/android/phone/BlacklistSetting$1$1;

    invoke-direct {v5, p0, v2}, Lcom/android/phone/BlacklistSetting$1$1;-><init>(Lcom/android/phone/BlacklistSetting$1;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090076

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 124
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 125
    return v7
.end method
