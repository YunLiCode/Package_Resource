.class final Lcom/speedsoftware/rootexplorer/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/an;->a:Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "owner"

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/an;->a:Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->a(Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->a()Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cm;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "group"

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/an;->a:Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->a(Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->b()Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cm;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/an;->a:Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/an;->a:Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->finish()V

    return-void
.end method
