.class final Lcom/speedsoftware/rootexplorer/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/AboutActivity;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/AboutActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ab;->a:Lcom/speedsoftware/rootexplorer/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ab;->a:Lcom/speedsoftware/rootexplorer/AboutActivity;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/AboutActivity;->finish()V

    return-void
.end method
