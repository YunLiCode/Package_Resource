.class Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "MSimCarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)V
    .registers 2

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .registers 8
    .param p1, "plmn"    # Ljava/lang/CharSequence;
    .param p2, "spn"    # Ljava/lang/CharSequence;
    .param p3, "sub"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v0

    aput-object p1, v0, p3

    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v0

    aput-object p2, v0, p3

    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .registers 7
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "sub"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    aput-object p1, v0, p2

    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->access$100(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
