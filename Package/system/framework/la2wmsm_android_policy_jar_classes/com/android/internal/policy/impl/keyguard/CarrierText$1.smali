.class Lcom/android/internal/policy/impl/keyguard/CarrierText$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPlmn:Ljava/lang/CharSequence;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CarrierText;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    .line 53
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSpn:Ljava/lang/CharSequence;

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 6
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
