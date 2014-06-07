.class final Lcom/speedsoftware/rootexplorer/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->p(Lcom/speedsoftware/rootexplorer/i;)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->p(Lcom/speedsoftware/rootexplorer/i;)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1, v3}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;I)V

    :goto_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/speedsoftware/rootexplorer/i;->b(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->e(Ljava/lang/String;)V

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v1, v0}, Lcom/speedsoftware/rootexplorer/i;->c(I)V

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->g(Lcom/speedsoftware/rootexplorer/i;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->p:Lcom/speedsoftware/rootexplorer/dg;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->k()I

    move-result v2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/speedsoftware/rootexplorer/dg;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/c;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->l()I

    move-result v0

    goto :goto_0
.end method
