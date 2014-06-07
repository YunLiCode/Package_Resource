.class final Lcom/speedsoftware/rootexplorer/bv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/bv;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bv;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bv;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
