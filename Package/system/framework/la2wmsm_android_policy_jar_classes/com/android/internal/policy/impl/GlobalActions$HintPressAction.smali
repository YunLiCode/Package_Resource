.class abstract Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "HintPressAction"
.end annotation


# instance fields
.field private final mHint:Ljava/lang/CharSequence;

.field private final mHintResId:I

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I


# direct methods
.method protected constructor <init>(III)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "messageResId"    # I
    .param p3, "hintResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 678
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mIconResId:I

    .line 680
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mMessageResId:I

    .line 681
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mHintResId:I

    .line 682
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mMessage:Ljava/lang/CharSequence;

    .line 683
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mHint:Ljava/lang/CharSequence;

    .line 684
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "iconResId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "hint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 686
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mIconResId:I

    .line 688
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mMessageResId:I

    .line 689
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mHintResId:I

    .line 690
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mMessage:Ljava/lang/CharSequence;

    .line 691
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mHint:Ljava/lang/CharSequence;

    .line 692
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 705
    const v4, 0x1090045

    const/4 v5, 0x0

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 707
    .local v3, "v":Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 708
    .local v0, "icon":Landroid/widget/ImageView;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 709
    .local v1, "messageView":Landroid/widget/TextView;
    const v4, 0x102028f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 711
    .local v2, "statusView":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mIconResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 712
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_43

    .line 713
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    :goto_39
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mHint:Ljava/lang/CharSequence;

    if-eqz v4, :cond_49

    .line 719
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    :goto_42
    return-object v3

    .line 715
    :cond_43
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mMessageResId:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_39

    .line 721
    :cond_49
    iget v4, p0, Lcom/android/internal/policy/impl/GlobalActions$HintPressAction;->mHintResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_42
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 694
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .registers 2

    .prologue
    .line 700
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
