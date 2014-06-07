.class final Lcom/speedsoftware/rootexplorer/cj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cj;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cj;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cj;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cj;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object v2, v0, Lcom/speedsoftware/rootexplorer/i;->m:Lcom/speedsoftware/rootexplorer/cd;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cj;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object v2, v0, Lcom/speedsoftware/rootexplorer/i;->n:[Lcom/speedsoftware/rootexplorer/cd;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cj;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->G(Lcom/speedsoftware/rootexplorer/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cj;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cj;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->H(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/dg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/dg;)Z

    :cond_0
    return-void
.end method
