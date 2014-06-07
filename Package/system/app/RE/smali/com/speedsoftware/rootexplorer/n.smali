.class final Lcom/speedsoftware/rootexplorer/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/SearchCriteria;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/SearchCriteria;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/n;->a:Lcom/speedsoftware/rootexplorer/SearchCriteria;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/n;->a:Lcom/speedsoftware/rootexplorer/SearchCriteria;

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/SearchCriteria;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "text"

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/n;->a:Lcom/speedsoftware/rootexplorer/SearchCriteria;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/speedsoftware/rootexplorer/SearchCriteria;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/n;->a:Lcom/speedsoftware/rootexplorer/SearchCriteria;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/SearchCriteria;->finish()V

    return-void
.end method
