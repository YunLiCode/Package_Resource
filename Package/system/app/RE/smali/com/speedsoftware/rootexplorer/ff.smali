.class final Lcom/speedsoftware/rootexplorer/ff;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ff;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ff;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->J()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;)V

    return-void
.end method
