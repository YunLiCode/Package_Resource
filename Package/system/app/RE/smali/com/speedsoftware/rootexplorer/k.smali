.class final Lcom/speedsoftware/rootexplorer/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/dt;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/dt;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/k;->a:Lcom/speedsoftware/rootexplorer/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/k;->a:Lcom/speedsoftware/rootexplorer/dt;

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->b:Lcom/speedsoftware/rootexplorer/ce;

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/dt;->a(Lcom/speedsoftware/rootexplorer/dt;Lcom/speedsoftware/rootexplorer/ce;)V

    return-void
.end method
