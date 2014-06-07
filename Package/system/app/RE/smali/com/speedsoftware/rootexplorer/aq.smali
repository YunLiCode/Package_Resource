.class final Lcom/speedsoftware/rootexplorer/aq;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private b:Lcom/speedsoftware/rootexplorer/cd;

.field private synthetic c:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;)V
    .locals 1

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/aq;->c:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/aq;->a:Z

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/aq;->b:Lcom/speedsoftware/rootexplorer/cd;

    return-void
.end method


# virtual methods
.method public final a()Lcom/speedsoftware/rootexplorer/cd;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/aq;->b:Lcom/speedsoftware/rootexplorer/cd;

    return-object v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/aq;->a:Z

    return-void
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/aq;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/cd;->i(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/aq;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/aq;->c:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/aq;->c:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->D(Lcom/speedsoftware/rootexplorer/i;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
