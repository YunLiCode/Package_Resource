.class final Lcom/speedsoftware/rootexplorer/dm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;

.field private final synthetic b:Lcom/speedsoftware/rootexplorer/cd;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/dm;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/dm;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->d:Landroid/content/Context;

    const-class v2, Lcom/speedsoftware/rootexplorer/DisplayText;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/dm;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/cd;->b(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "size"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/dm;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->e()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "permissions"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/dm;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "edit_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/dm;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/cd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const-string v1, "chmod_value"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/dm;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->I()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string v1, "owner"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/dm;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "group"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/dm;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/cd;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
