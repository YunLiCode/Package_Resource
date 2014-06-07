.class final Lcom/speedsoftware/rootexplorer/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/ViewTable;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/ViewTable;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ay;->a:Lcom/speedsoftware/rootexplorer/ViewTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ay;->a:Lcom/speedsoftware/rootexplorer/ViewTable;

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/ViewTable;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ay;->a:Lcom/speedsoftware/rootexplorer/ViewTable;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/ay;->a:Lcom/speedsoftware/rootexplorer/ViewTable;

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Lcom/speedsoftware/rootexplorer/ViewTable;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/speedsoftware/rootexplorer/ViewTable;->a(Lcom/speedsoftware/rootexplorer/ViewTable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
