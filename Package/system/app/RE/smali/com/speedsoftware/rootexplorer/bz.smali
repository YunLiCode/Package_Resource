.class final Lcom/speedsoftware/rootexplorer/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/DisplayText;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/DisplayText;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/bz;->a:Lcom/speedsoftware/rootexplorer/DisplayText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bz;->a:Lcom/speedsoftware/rootexplorer/DisplayText;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/DisplayText;->b(Lcom/speedsoftware/rootexplorer/DisplayText;)Z

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bz;->a:Lcom/speedsoftware/rootexplorer/DisplayText;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/DisplayText;->finish()V

    return-void
.end method
