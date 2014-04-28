.class public Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;
.super Landroid/widget/LinearLayout;
.source "EmergencyCarrierArea.java"


# instance fields
.field private mCarrierTextContainer:Landroid/view/View;

.field private mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->mCarrierTextContainer:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 43
    const v0, 0x10202b5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->mCarrierTextContainer:Landroid/view/View;

    .line 44
    const v0, 0x10202b9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/internal/policy/impl/keyguard/EmergencyButton;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea$1;-><init>(Lcom/android/internal/policy/impl/keyguard/EmergencyCarrierArea;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/EmergencyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    return-void
.end method
