.class final Lcom/speedsoftware/rootexplorer/dv;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/fc;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/fc;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/dv;->a:Lcom/speedsoftware/rootexplorer/fc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dv;->a:Lcom/speedsoftware/rootexplorer/fc;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/fc;->a(Lcom/speedsoftware/rootexplorer/fc;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dv;->a:Lcom/speedsoftware/rootexplorer/fc;

    const-string v1, "su"

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->b(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ct;

    move-result-object v0

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ct;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dv;->a:Lcom/speedsoftware/rootexplorer/fc;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/fc;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dv;->a:Lcom/speedsoftware/rootexplorer/fc;

    const-string v1, "# "

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Lcom/speedsoftware/rootexplorer/fc;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dv;->a:Lcom/speedsoftware/rootexplorer/fc;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/fc;->b(Lcom/speedsoftware/rootexplorer/fc;)V

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dv;->a:Lcom/speedsoftware/rootexplorer/fc;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/dv;->a:Lcom/speedsoftware/rootexplorer/fc;

    const-string v2, "pwd"

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Lcom/speedsoftware/rootexplorer/fc;Z)V

    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/dv;->a:Lcom/speedsoftware/rootexplorer/fc;

    iput-object v0, v2, Lcom/speedsoftware/rootexplorer/fc;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
