.class final Lcom/speedsoftware/rootexplorer/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/ScriptActivity;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/ScriptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ai;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ai;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->a(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/ai;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->b(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/ai;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ai;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->c(Lcom/speedsoftware/rootexplorer/ScriptActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ai;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->d(Lcom/speedsoftware/rootexplorer/ScriptActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ai;->a:Lcom/speedsoftware/rootexplorer/ScriptActivity;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/ScriptActivity;->finish()V

    goto :goto_0
.end method
