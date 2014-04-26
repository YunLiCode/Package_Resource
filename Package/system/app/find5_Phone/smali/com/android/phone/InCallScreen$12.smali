.class Lcom/android/phone/InCallScreen$12;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->confirmAddBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2846
    iput-object p1, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$12;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 2848
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->blackList:Lcom/android/phone/Blacklist;

    iget-object v1, p0, Lcom/android/phone/InCallScreen$12;->val$number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/Blacklist;->add(Ljava/lang/String;)Z

    .line 2849
    iget-object v0, p0, Lcom/android/phone/InCallScreen$12;->this$0:Lcom/android/phone/InCallScreen;

    # invokes: Lcom/android/phone/InCallScreen;->internalHangup()V
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;)V

    .line 2850
    return-void
.end method
