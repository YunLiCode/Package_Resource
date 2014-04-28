.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method getFlipper()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    .registers 4

    .prologue
    .line 24
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_15

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "child":Landroid/view/View;
    instance-of v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    if-eqz v2, :cond_12

    .line 27
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    .line 30
    .end local v0    # "child":Landroid/view/View;
    :goto_11
    return-object v0

    .line 24
    .restart local v0    # "child":Landroid/view/View;
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 30
    .end local v0    # "child":Landroid/view/View;
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hideBouncer(I)V
    .registers 3
    .param p1, "duration"    # I

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 42
    .local v0, "flipper":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_9

    .line 43
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->hideBouncer(I)V

    .line 45
    :cond_9
    return-void
.end method

.method public showBouncer(I)V
    .registers 3
    .param p1, "duration"    # I

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityContainer;->getFlipper()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;

    move-result-object v0

    .line 35
    .local v0, "flipper":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;
    if-eqz v0, :cond_9

    .line 36
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityViewFlipper;->showBouncer(I)V

    .line 38
    :cond_9
    return-void
.end method
