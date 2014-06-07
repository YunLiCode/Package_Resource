.class final Lcom/speedsoftware/rootexplorer/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/ViewTable;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/ViewTable;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/aw;->a:Lcom/speedsoftware/rootexplorer/ViewTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/aw;->a:Lcom/speedsoftware/rootexplorer/ViewTable;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/ViewTable;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/aw;->a:Lcom/speedsoftware/rootexplorer/ViewTable;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/ViewTable;->b(Lcom/speedsoftware/rootexplorer/ViewTable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
