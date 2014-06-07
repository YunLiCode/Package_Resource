.class final Lcom/speedsoftware/rootexplorer/fd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/bj;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/fd;->a:Lcom/speedsoftware/rootexplorer/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method
