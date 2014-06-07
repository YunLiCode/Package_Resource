.class final Lcom/speedsoftware/rootexplorer/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/DisplayText;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/DisplayText;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/by;->a:Lcom/speedsoftware/rootexplorer/DisplayText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/speedsoftware/rootexplorer/DisplayText;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/by;->a:Lcom/speedsoftware/rootexplorer/DisplayText;

    const v2, 0x7f0800c3

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/DisplayText;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/by;->a:Lcom/speedsoftware/rootexplorer/DisplayText;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/DisplayText;->finish()V

    return-void
.end method
