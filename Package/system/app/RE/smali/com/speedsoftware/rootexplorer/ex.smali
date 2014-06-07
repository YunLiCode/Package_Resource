.class final Lcom/speedsoftware/rootexplorer/ex;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;

.field private final synthetic b:Lcom/speedsoftware/rootexplorer/cd;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ex;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/ex;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ex;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ex;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/cd;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ex;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->I(Lcom/speedsoftware/rootexplorer/i;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v2, "%s%s%s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ex;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->n()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ex;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->n()Ljava/lang/String;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->d:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080082

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080083

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ex;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->B(Lcom/speedsoftware/rootexplorer/i;)V

    return-void

    :cond_0
    const-string v0, "/"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ex;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/ex;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-static {v0, v2, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->d:Landroid/content/Context;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080084

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
