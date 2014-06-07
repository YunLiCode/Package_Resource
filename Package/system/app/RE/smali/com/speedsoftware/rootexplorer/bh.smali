.class final Lcom/speedsoftware/rootexplorer/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/bh;->a:Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bh;->a:Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->a(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/bh;->a:Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->b(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/speedsoftware/rootexplorer/ViewDatabase;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/bh;->a:Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->c(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "permissions"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bh;->a:Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->d(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "make_writeable_cmd"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bh;->a:Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->e(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_permissions_cmd"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bh;->a:Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->f(Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/bh;->a:Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/speedsoftware/rootexplorer/SQLiteEditorAdvert;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
