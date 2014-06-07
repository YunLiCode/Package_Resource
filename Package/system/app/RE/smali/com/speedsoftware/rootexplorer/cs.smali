.class final Lcom/speedsoftware/rootexplorer/cs;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/h;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/h;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(Lcom/speedsoftware/rootexplorer/DataGrid;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(Lcom/speedsoftware/rootexplorer/DataGrid;Z)V

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->b(Lcom/speedsoftware/rootexplorer/DataGrid;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->c(Lcom/speedsoftware/rootexplorer/DataGrid;)Lcom/speedsoftware/rootexplorer/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->d(Lcom/speedsoftware/rootexplorer/DataGrid;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->e(Lcom/speedsoftware/rootexplorer/DataGrid;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->f(Lcom/speedsoftware/rootexplorer/DataGrid;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->g(Lcom/speedsoftware/rootexplorer/DataGrid;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->h(Lcom/speedsoftware/rootexplorer/DataGrid;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->h(Lcom/speedsoftware/rootexplorer/DataGrid;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0, v2}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(Lcom/speedsoftware/rootexplorer/DataGrid;Z)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->c(Lcom/speedsoftware/rootexplorer/DataGrid;)Lcom/speedsoftware/rootexplorer/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->i(Lcom/speedsoftware/rootexplorer/DataGrid;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->i(Lcom/speedsoftware/rootexplorer/DataGrid;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cs;->a:Lcom/speedsoftware/rootexplorer/h;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v1, v2}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(Lcom/speedsoftware/rootexplorer/DataGrid;Z)V

    throw v0
.end method
