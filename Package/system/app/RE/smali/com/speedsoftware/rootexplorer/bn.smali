.class final Lcom/speedsoftware/rootexplorer/bn;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/bn;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-wide/16 v4, -0x1

    const-wide/16 v0, 0x15e

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->A()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41eb57b372000000L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->B()V

    :cond_0
    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bn;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bn;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->b(Lcom/speedsoftware/rootexplorer/i;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bn;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bn;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/speedsoftware/rootexplorer/i;->f:Z

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bn;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->c(Lcom/speedsoftware/rootexplorer/i;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->C()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bn;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->c(Lcom/speedsoftware/rootexplorer/i;)J

    move-result-wide v0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->C()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->B()V

    :cond_2
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
