.class final Lcom/speedsoftware/rootexplorer/eo;
.super Lcom/speedsoftware/rootexplorer/bc;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0, p1}, Lcom/speedsoftware/rootexplorer/bc;-><init>(Lcom/speedsoftware/rootexplorer/i;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/i;->l()I

    move-result v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;I)V

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->m:Lcom/speedsoftware/rootexplorer/cd;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->O(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/eo;->a(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/speedsoftware/rootexplorer/i;->m:Lcom/speedsoftware/rootexplorer/cd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->s()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->s()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eo;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/i;->s()V

    throw v0
.end method
