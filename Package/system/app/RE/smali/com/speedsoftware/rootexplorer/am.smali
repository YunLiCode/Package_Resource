.class final Lcom/speedsoftware/rootexplorer/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/am;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/am;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->i(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/am;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->j(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/am;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->h(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/am;->a:Lcom/speedsoftware/rootexplorer/OpenWithActivity;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/OpenWithActivity;->j(Lcom/speedsoftware/rootexplorer/OpenWithActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
