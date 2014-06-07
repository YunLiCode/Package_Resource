.class final Lcom/speedsoftware/rootexplorer/es;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/es;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/es;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->u(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/ak;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/es;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->u(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/ak;->b()V

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/es;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->v(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/aq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/es;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->v(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/aq;->b()V

    :cond_1
    return-void
.end method
