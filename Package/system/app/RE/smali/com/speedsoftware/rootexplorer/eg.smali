.class final Lcom/speedsoftware/rootexplorer/eg;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;

.field private final synthetic b:Lcom/speedsoftware/rootexplorer/cd;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/eg;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->K(Lcom/speedsoftware/rootexplorer/i;)V

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->L(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->i()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->L(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->L(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/eg;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->L(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->j()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->L(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/eg;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v4}, Lcom/speedsoftware/rootexplorer/i;->L(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedsoftware/rootexplorer/cd;->k()Z

    move-result v4

    invoke-static {v2, v3, v1, v4}, Lcom/speedsoftware/rootexplorer/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->L(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/eg;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eg;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->I:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
