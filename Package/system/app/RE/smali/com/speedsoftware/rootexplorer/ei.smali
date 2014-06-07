.class final Lcom/speedsoftware/rootexplorer/ei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/PermissionsActivity;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/PermissionsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ei;->a:Lcom/speedsoftware/rootexplorer/PermissionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->a()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "r"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->b()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "w"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->c()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->d()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "s"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->e()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "r"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->f()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "w"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->g()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->h()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "s"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->i()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "r"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->j()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "w"

    :goto_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->k()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->l()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "t"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "permissions"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ei;->a:Lcom/speedsoftware/rootexplorer/PermissionsActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ei;->a:Lcom/speedsoftware/rootexplorer/PermissionsActivity;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "-"

    goto/16 :goto_0

    :cond_1
    const-string v0, "-"

    goto/16 :goto_1

    :cond_2
    const-string v0, "x"

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->d()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "S"

    goto/16 :goto_2

    :cond_4
    const-string v0, "-"

    goto/16 :goto_2

    :cond_5
    const-string v0, "-"

    goto/16 :goto_3

    :cond_6
    const-string v0, "-"

    goto/16 :goto_4

    :cond_7
    const-string v0, "x"

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->h()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "S"

    goto/16 :goto_5

    :cond_9
    const-string v0, "-"

    goto/16 :goto_5

    :cond_a
    const-string v0, "-"

    goto :goto_6

    :cond_b
    const-string v0, "-"

    goto :goto_7

    :cond_c
    const-string v0, "x"

    goto :goto_8

    :cond_d
    invoke-static {}, Lcom/speedsoftware/rootexplorer/PermissionsActivity;->l()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "T"

    goto :goto_8

    :cond_e
    const-string v0, "-"

    goto :goto_8
.end method
