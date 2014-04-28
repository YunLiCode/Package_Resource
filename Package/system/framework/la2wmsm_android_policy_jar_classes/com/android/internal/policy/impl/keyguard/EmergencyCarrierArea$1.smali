.class Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea$1;
.super Ljava/lang/Object;
.source "EmergencyCarrierArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 59
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 53
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->mCarrierTextContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_7

    .line 56
    :pswitch_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea$1;->this$0:Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->mCarrierTextContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_7

    .line 51
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_9
        :pswitch_18
    .end packed-switch
.end method
