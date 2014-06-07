.class final Lcom/speedsoftware/rootexplorer/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/dz;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dz;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->G(Lcom/speedsoftware/rootexplorer/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dz;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/dz;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->H(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/dg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/dg;)Z

    :cond_0
    return-void
.end method
