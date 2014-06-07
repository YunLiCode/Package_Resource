.class final Lcom/speedsoftware/rootexplorer/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ao;->a:Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ao;->a:Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->setResult(I)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ao;->a:Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/ChangeOwnerActivity;->finish()V

    return-void
.end method
