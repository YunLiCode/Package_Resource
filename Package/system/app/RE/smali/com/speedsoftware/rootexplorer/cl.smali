.class final Lcom/speedsoftware/rootexplorer/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cl;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cl;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->p:Lcom/speedsoftware/rootexplorer/dg;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cl;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->s:Lcom/speedsoftware/rootexplorer/r;

    sget-object v1, Lcom/speedsoftware/rootexplorer/r;->b:Lcom/speedsoftware/rootexplorer/r;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cl;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cl;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->m:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/cd;)V

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cl;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->u()V

    goto :goto_0
.end method
