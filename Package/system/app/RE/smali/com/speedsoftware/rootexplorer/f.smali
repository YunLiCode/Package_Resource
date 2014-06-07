.class final Lcom/speedsoftware/rootexplorer/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/DataGrid;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/DataGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/f;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/f;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->j(Lcom/speedsoftware/rootexplorer/DataGrid;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/f;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/f;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->j(Lcom/speedsoftware/rootexplorer/DataGrid;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(Lcom/speedsoftware/rootexplorer/DataGrid;F)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/f;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/f;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->j(Lcom/speedsoftware/rootexplorer/DataGrid;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->b(Lcom/speedsoftware/rootexplorer/DataGrid;F)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/f;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->invalidate()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/f;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->e(Lcom/speedsoftware/rootexplorer/DataGrid;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/f;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->k(Lcom/speedsoftware/rootexplorer/DataGrid;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
