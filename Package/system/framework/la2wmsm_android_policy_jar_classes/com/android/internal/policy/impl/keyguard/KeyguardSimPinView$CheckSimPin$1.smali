.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;I)V
    .registers 3

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;

    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin$1;->val$result:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin$1;->this$1:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin$1;->val$result:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;->onSimCheckResponse(I)V

    .line 186
    return-void
.end method
