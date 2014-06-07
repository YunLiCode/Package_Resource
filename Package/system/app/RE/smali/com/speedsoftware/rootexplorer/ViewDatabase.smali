.class public Lcom/speedsoftware/rootexplorer/ViewDatabase;
.super Landroid/app/ListActivity;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Lcom/speedsoftware/rootexplorer/fs;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->b:Lcom/speedsoftware/rootexplorer/fs;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->f:Landroid/net/Uri;

    return-void
.end method

.method private a(Lcom/speedsoftware/rootexplorer/di;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/speedsoftware/rootexplorer/ViewDatabase;->a:Landroid/content/Context;

    const-class v2, Lcom/speedsoftware/rootexplorer/ViewTable;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->f:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "table"

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/di;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "make_writeable_cmd"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "restore_permissions_cmd"

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080063

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f0800f4

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/speedsoftware/rootexplorer/ac;

    invoke-direct {v2, p0}, Lcom/speedsoftware/rootexplorer/ac;-><init>(Lcom/speedsoftware/rootexplorer/ViewDatabase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "ViewDatabase"

    const-string v3, "bad menuInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->b:Lcom/speedsoftware/rootexplorer/fs;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/fs;->a()Ljava/util/ArrayList;

    move-result-object v1

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/di;

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->a(Lcom/speedsoftware/rootexplorer/di;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->setContentView(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->f:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->c:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "make_writeable_cmd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "restore_permissions_cmd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f090014

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :try_start_0
    new-instance v0, Lcom/speedsoftware/rootexplorer/fs;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/speedsoftware/rootexplorer/fs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->b:Lcom/speedsoftware/rootexplorer/fs;

    new-instance v0, Lcom/speedsoftware/rootexplorer/du;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->b:Lcom/speedsoftware/rootexplorer/fs;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/fs;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/speedsoftware/rootexplorer/du;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800f2

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0800f3

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/speedsoftware/rootexplorer/ad;

    invoke-direct {v2, p0}, Lcom/speedsoftware/rootexplorer/ad;-><init>(Lcom/speedsoftware/rootexplorer/ViewDatabase;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f0800f5

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->b:Lcom/speedsoftware/rootexplorer/fs;

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->b:Lcom/speedsoftware/rootexplorer/fs;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/fs;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/di;

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/ViewDatabase;->a(Lcom/speedsoftware/rootexplorer/di;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 0

    sput-object p0, Lcom/speedsoftware/rootexplorer/ViewDatabase;->a:Landroid/content/Context;

    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    return-void
.end method
