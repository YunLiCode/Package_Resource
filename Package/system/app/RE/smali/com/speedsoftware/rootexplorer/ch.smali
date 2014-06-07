.class final Lcom/speedsoftware/rootexplorer/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ch;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ch;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->v(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ch;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->w(Lcom/speedsoftware/rootexplorer/i;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ch;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->w(Lcom/speedsoftware/rootexplorer/i;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ch;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->v(Lcom/speedsoftware/rootexplorer/i;)Lcom/speedsoftware/rootexplorer/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/aq;->a()Lcom/speedsoftware/rootexplorer/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/cd;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
