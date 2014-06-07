.class final Lcom/speedsoftware/rootexplorer/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/speedsoftware/rootexplorer/DataGrid;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/DataGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/h;->a:Lcom/speedsoftware/rootexplorer/DataGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    new-instance v0, Lcom/speedsoftware/rootexplorer/cs;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/cs;-><init>(Lcom/speedsoftware/rootexplorer/h;)V

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cs;->start()V

    return-void
.end method
