.class Lcom/android/phone/BlacklistSetting$1$1;
.super Ljava/lang/Object;
.source "BlacklistSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BlacklistSetting$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/BlacklistSetting$1;

.field final synthetic val$phone:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/BlacklistSetting$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/phone/BlacklistSetting$1$1;->this$1:Lcom/android/phone/BlacklistSetting$1;

    iput-object p2, p0, Lcom/android/phone/BlacklistSetting$1$1;->val$phone:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/BlacklistSetting$1$1;->this$1:Lcom/android/phone/BlacklistSetting$1;

    iget-object v0, v0, Lcom/android/phone/BlacklistSetting$1;->this$0:Lcom/android/phone/BlacklistSetting;

    # getter for: Lcom/android/phone/BlacklistSetting;->mBlacklist:Lcom/android/phone/Blacklist;
    invoke-static {v0}, Lcom/android/phone/BlacklistSetting;->access$000(Lcom/android/phone/BlacklistSetting;)Lcom/android/phone/Blacklist;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BlacklistSetting$1$1;->val$phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/Blacklist;->delete(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/phone/BlacklistSetting$1$1;->this$1:Lcom/android/phone/BlacklistSetting$1;

    iget-object v0, v0, Lcom/android/phone/BlacklistSetting$1;->this$0:Lcom/android/phone/BlacklistSetting;

    # invokes: Lcom/android/phone/BlacklistSetting;->updateBlacklist()V
    invoke-static {v0}, Lcom/android/phone/BlacklistSetting;->access$100(Lcom/android/phone/BlacklistSetting;)V

    .line 120
    return-void
.end method
