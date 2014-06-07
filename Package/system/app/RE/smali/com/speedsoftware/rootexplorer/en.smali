.class final Lcom/speedsoftware/rootexplorer/en;
.super Lcom/speedsoftware/rootexplorer/bc;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0, p1}, Lcom/speedsoftware/rootexplorer/bc;-><init>(Lcom/speedsoftware/rootexplorer/i;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/i;->l()I

    move-result v3

    invoke-static {v0, v3}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;I)V

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/speedsoftware/rootexplorer/i;->c(Lcom/speedsoftware/rootexplorer/i;Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/speedsoftware/rootexplorer/i;->b(Lcom/speedsoftware/rootexplorer/i;Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/speedsoftware/rootexplorer/i;->d(Lcom/speedsoftware/rootexplorer/i;Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/speedsoftware/rootexplorer/i;->e(Lcom/speedsoftware/rootexplorer/i;Z)V

    move v3, v2

    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->n:[Lcom/speedsoftware/rootexplorer/cd;

    array-length v0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object v9, v0, Lcom/speedsoftware/rootexplorer/i;->n:[Lcom/speedsoftware/rootexplorer/cd;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->t()V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->n:[Lcom/speedsoftware/rootexplorer/cd;

    aget-object v4, v0, v3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v4}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/speedsoftware/rootexplorer/i;->f(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/speedsoftware/rootexplorer/cd;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v6, v6, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    iget-object v7, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v7}, Lcom/speedsoftware/rootexplorer/i;->O(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/speedsoftware/rootexplorer/i;->f(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;)V

    move v0, v1

    :goto_3
    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v5}, Lcom/speedsoftware/rootexplorer/i;->T(Lcom/speedsoftware/rootexplorer/i;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->O(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/speedsoftware/rootexplorer/en;->a(Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_3
    const-string v0, "/"

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->P(Lcom/speedsoftware/rootexplorer/i;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->Q(Lcom/speedsoftware/rootexplorer/i;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v5, 0x1

    invoke-static {v0, v5}, Lcom/speedsoftware/rootexplorer/i;->c(Lcom/speedsoftware/rootexplorer/i;Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v5}, Lcom/speedsoftware/rootexplorer/i;->O(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/speedsoftware/rootexplorer/i;->g(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0, v4}, Lcom/speedsoftware/rootexplorer/i;->c(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v5, v5, Lcom/speedsoftware/rootexplorer/i;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_4
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->R(Lcom/speedsoftware/rootexplorer/i;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->Q(Lcom/speedsoftware/rootexplorer/i;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->S(Lcom/speedsoftware/rootexplorer/i;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object v9, v0, Lcom/speedsoftware/rootexplorer/i;->n:[Lcom/speedsoftware/rootexplorer/cd;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->t()V

    goto/16 :goto_1

    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->P(Lcom/speedsoftware/rootexplorer/i;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object v9, v1, Lcom/speedsoftware/rootexplorer/i;->n:[Lcom/speedsoftware/rootexplorer/cd;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/en;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/i;->t()V

    throw v0

    :cond_a
    move v0, v1

    goto/16 :goto_3
.end method
