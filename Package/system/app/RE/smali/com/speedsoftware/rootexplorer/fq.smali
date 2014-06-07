.class final Lcom/speedsoftware/rootexplorer/fq;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/cr;

.field private final synthetic b:Lcom/speedsoftware/rootexplorer/cd;

.field private final synthetic c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/cr;Lcom/speedsoftware/rootexplorer/cd;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/fq;->a:Lcom/speedsoftware/rootexplorer/cr;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/fq;->b:Lcom/speedsoftware/rootexplorer/cd;

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/fq;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fq;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->K()Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/fq;->b:Lcom/speedsoftware/rootexplorer/cd;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/fq;->a:Lcom/speedsoftware/rootexplorer/cr;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/cr;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/cd;->b(Lcom/speedsoftware/rootexplorer/dw;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/cd;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/fq;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/fq;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fq;->a:Lcom/speedsoftware/rootexplorer/cr;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/cr;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-boolean v3, v0, Lcom/speedsoftware/rootexplorer/i;->R:Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fq;->a:Lcom/speedsoftware/rootexplorer/cr;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/cr;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-boolean v3, v0, Lcom/speedsoftware/rootexplorer/i;->R:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/fq;->a:Lcom/speedsoftware/rootexplorer/cr;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/cr;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-boolean v3, v1, Lcom/speedsoftware/rootexplorer/i;->R:Z

    throw v0
.end method
