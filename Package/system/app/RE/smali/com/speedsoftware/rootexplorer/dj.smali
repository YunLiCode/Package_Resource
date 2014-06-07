.class final Lcom/speedsoftware/rootexplorer/dj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;

.field private final synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/dj;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/dj;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dj;->b:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/dj;->b:Landroid/content/Intent;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Landroid/content/Intent;I)V

    return-void
.end method
