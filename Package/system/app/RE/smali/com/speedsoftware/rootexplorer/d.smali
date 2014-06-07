.class final Lcom/speedsoftware/rootexplorer/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/DataGrid;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/DataGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/d;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/d;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->l(Lcom/speedsoftware/rootexplorer/DataGrid;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/d;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/d;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->m(Lcom/speedsoftware/rootexplorer/DataGrid;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->a(Lcom/speedsoftware/rootexplorer/DataGrid;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/d;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->n(Lcom/speedsoftware/rootexplorer/DataGrid;)V

    :cond_0
    return-void
.end method
