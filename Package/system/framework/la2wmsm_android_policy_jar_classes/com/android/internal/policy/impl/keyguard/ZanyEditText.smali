.class public Lcom/android/internal/policy/impl/keyguard/ZanyEditText;
.super Landroid/widget/EditText;
.source "ZanyEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ZanyEditText$ZanyInputConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private r:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->r:Ljava/util/Random;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->r:Ljava/util/Random;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->r:Ljava/util/Random;

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 45
    .local v0, "target":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_d

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZanyEditText$ZanyInputConnection;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/internal/policy/impl/keyguard/ZanyEditText$ZanyInputConnection;-><init>(Lcom/android/internal/policy/impl/keyguard/ZanyEditText;Landroid/view/inputmethod/InputConnection;Z)V

    move-object v0, v1

    .end local v0    # "target":Landroid/view/inputmethod/InputConnection;
    :cond_d
    return-object v0
.end method

.method public setRandomBackgroundColor()V
    .registers 5

    .prologue
    const/16 v3, 0x100

    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->r:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->r:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->r:Ljava/util/Random;

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->setBackgroundColor(I)V

    .line 39
    return-void
.end method
