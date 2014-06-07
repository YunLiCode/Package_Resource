.class public Lcom/speedsoftware/rootexplorer/RootExplorerPhone;
.super Landroid/app/ListActivity;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/speedsoftware/rootexplorer/aa;


# instance fields
.field private a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/speedsoftware/rootexplorer/t;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/t;->a:Lcom/speedsoftware/rootexplorer/t;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    check-cast p2, Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->finish()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_0

    new-instance v0, Lcom/speedsoftware/rootexplorer/cd;

    invoke-direct {v0}, Lcom/speedsoftware/rootexplorer/cd;-><init>()V

    const-string v1, "name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/cd;->a(Ljava/lang/String;)V

    const-string v1, "location"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/cd;->c(Ljava/lang/String;)V

    const-string v1, "flags"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/cd;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2, p3}, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/speedsoftware/rootexplorer/i;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, p3}, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/speedsoftware/rootexplorer/i;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/rootexplorer/i;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->b()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p1, p3}, Lcom/speedsoftware/rootexplorer/i;->a(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-static {p1}, Lcom/speedsoftware/rootexplorer/i;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->c()V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/i;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/rootexplorer/i;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p2, p3}, Lcom/speedsoftware/rootexplorer/i;->a(Landroid/view/View;I)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p2}, Lcom/speedsoftware/rootexplorer/i;->b(Landroid/view/MenuItem;)V

    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->x()V

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/rootexplorer/i;->b(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/rootexplorer/i;->b(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/i;->y()V

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/rootexplorer/i;->a(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/speedsoftware/rootexplorer/i;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p1, p2}, Lcom/speedsoftware/rootexplorer/i;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/RootExplorerPhone;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v0, p0}, Lcom/speedsoftware/rootexplorer/i;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    return-void
.end method
