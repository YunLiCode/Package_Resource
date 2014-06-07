.class final Lcom/speedsoftware/rootexplorer/dx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/cn;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/cn;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/dx;->a:Lcom/speedsoftware/rootexplorer/cn;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/dx;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dx;->a:Lcom/speedsoftware/rootexplorer/cn;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/cn;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0, v2}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dx;->b:Landroid/view/View;

    const v1, 0x7f090033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dx;->a:Lcom/speedsoftware/rootexplorer/cn;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/cn;->a:Lcom/speedsoftware/rootexplorer/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->b(Lcom/speedsoftware/rootexplorer/i;Z)V

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dx;->a:Lcom/speedsoftware/rootexplorer/cn;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/cn;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0, v2}, Lcom/speedsoftware/rootexplorer/i;->c(Lcom/speedsoftware/rootexplorer/i;Z)V

    return-void
.end method
