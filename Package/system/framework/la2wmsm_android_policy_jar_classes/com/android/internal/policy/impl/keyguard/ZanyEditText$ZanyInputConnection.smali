.class Lcom/android/internal/policy/impl/keyguard/ZanyEditText$ZanyInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "ZanyEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ZanyEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZanyInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ZanyEditText;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/ZanyEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .registers 4
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "mutable"    # Z

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZanyEditText$ZanyInputConnection;->this$0:Lcom/android/internal/policy/impl/keyguard/ZanyEditText;

    .line 52
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .registers 6
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 76
    # getter for: Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSurroundingText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x43

    const/4 v0, 0x1

    .line 57
    # getter for: Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendKeyEvent() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v4, :cond_33

    .line 60
    # getter for: Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "  action_down keyCode_del"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_32
    return v0

    .line 62
    :cond_33
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_4e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v1, v4, :cond_4e

    .line 64
    # getter for: Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/ZanyEditText;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "  action_up keyCode_del"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/ZanyEditText$ZanyInputConnection;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_32

    .line 70
    :cond_4e
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_32
.end method
