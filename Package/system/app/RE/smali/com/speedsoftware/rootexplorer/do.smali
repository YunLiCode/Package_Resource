.class final Lcom/speedsoftware/rootexplorer/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;

.field private final synthetic b:Lcom/speedsoftware/rootexplorer/cd;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/do;->a:Lcom/speedsoftware/rootexplorer/i;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/do;->b:Lcom/speedsoftware/rootexplorer/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/do;->b:Lcom/speedsoftware/rootexplorer/cd;

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/cd;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->z()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
