.class final Lcom/speedsoftware/rootexplorer/dp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;

.field private final synthetic b:Lcom/speedsoftware/rootexplorer/cd;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/dp;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/dp;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/dp;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->b(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;)V

    return-void
.end method
