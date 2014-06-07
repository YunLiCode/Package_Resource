.class final Lcom/speedsoftware/rootexplorer/af;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/ScriptActivity;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/ScriptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/af;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/af;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/af;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->e(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Lcom/speedsoftware/rootexplorer/fc;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/af;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {v3}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->b(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, "\\\\"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, "\\\""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/fc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ct;

    move-result-object v1

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/ct;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->a(Lcom/speedsoftware/rootexplorer/ScriptActivity;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/af;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->f(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/af;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/ScriptActivity;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/af;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/af;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->b()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/af;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->b()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/af;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->setRequestedOrientation(I)V

    throw v0
.end method
