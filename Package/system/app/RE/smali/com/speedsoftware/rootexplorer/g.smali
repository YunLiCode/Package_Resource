.class final Lcom/speedsoftware/rootexplorer/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/DataGrid;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/DataGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/g;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/g;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/DataGrid;->invalidate()V

    return-void
.end method
