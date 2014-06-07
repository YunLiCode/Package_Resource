.class final Lcom/speedsoftware/rootexplorer/aj;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/aj;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/aj;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/aj;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->k(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->a(Lcom/speedsoftware/rootexplorer/OpenWithActivity;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/aj;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->l(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V

    return-void
.end method
