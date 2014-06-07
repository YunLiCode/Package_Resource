.class final Lcom/speedsoftware/rootexplorer/dq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/dq;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dq;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->p:Lcom/speedsoftware/rootexplorer/dg;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dg;->f()I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/dq;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->p:Lcom/speedsoftware/rootexplorer/dg;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dg;->g()I

    move-result v1

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/dq;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->p:Lcom/speedsoftware/rootexplorer/dg;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/dg;->h()I

    move-result v2

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/dq;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/dq;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v4, v4, Lcom/speedsoftware/rootexplorer/i;->p:Lcom/speedsoftware/rootexplorer/dg;

    invoke-static {v3, v4}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/dg;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/dq;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v3, v0, v1, v2}, Lcom/speedsoftware/rootexplorer/i;->a(III)V

    :cond_0
    return-void
.end method
