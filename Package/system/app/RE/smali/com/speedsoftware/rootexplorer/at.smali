.class final Lcom/speedsoftware/rootexplorer/at;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/ea;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/ea;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/i;->l()I

    move-result v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;I)V

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->r()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->o()Z

    move-result v2

    if-eqz v2, :cond_0

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

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

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

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080074

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/speedsoftware/rootexplorer/i;->e(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->r()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->J(Lcom/speedsoftware/rootexplorer/i;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/i;->r()V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/at;->a:Lcom/speedsoftware/rootexplorer/ea;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/ea;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->G:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
