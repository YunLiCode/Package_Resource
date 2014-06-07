.class final Lcom/speedsoftware/rootexplorer/eu;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/eh;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/eh;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v3, v3, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/i;->M(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/cd;)V

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/speedsoftware/rootexplorer/i;->z:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " \"%s\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v6, v6, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v6}, Lcom/speedsoftware/rootexplorer/i;->M(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v6

    invoke-virtual {v6}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\"

    const-string v8, "\\\\"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\""

    const-string v8, "\\\""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/fc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ct;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->M(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080074

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/speedsoftware/rootexplorer/i;->e(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->K:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->B(Lcom/speedsoftware/rootexplorer/i;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->q()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v3, v3, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/i;->M(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080073

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/speedsoftware/rootexplorer/i;->e(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->d:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080074

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->B(Lcom/speedsoftware/rootexplorer/i;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->q()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    :goto_3
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->B(Lcom/speedsoftware/rootexplorer/i;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/eu;->a:Lcom/speedsoftware/rootexplorer/eh;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/eh;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/i;->q()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2
.end method
