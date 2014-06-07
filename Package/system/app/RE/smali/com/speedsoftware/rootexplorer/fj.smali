.class final Lcom/speedsoftware/rootexplorer/fj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/CreateArchive;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/CreateArchive;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/fj;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fj;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->k(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fj;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->k(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/q;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fj;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->k(Lcom/speedsoftware/rootexplorer/CreateArchive;)Lcom/speedsoftware/rootexplorer/q;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/q;->a(Lcom/speedsoftware/rootexplorer/q;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fj;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->l(Lcom/speedsoftware/rootexplorer/CreateArchive;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fj;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->m(Lcom/speedsoftware/rootexplorer/CreateArchive;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/fj;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/CreateArchive;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fj;->a:Lcom/speedsoftware/rootexplorer/CreateArchive;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/CreateArchive;->finish()V

    goto :goto_0
.end method
