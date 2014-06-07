.class final Lcom/speedsoftware/rootexplorer/dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/cn;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/cn;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/dy;->a:Lcom/speedsoftware/rootexplorer/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dy;->a:Lcom/speedsoftware/rootexplorer/cn;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/cn;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->e(Lcom/speedsoftware/rootexplorer/i;Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dy;->a:Lcom/speedsoftware/rootexplorer/cn;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/cn;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->c(Lcom/speedsoftware/rootexplorer/i;Z)V

    return-void
.end method
