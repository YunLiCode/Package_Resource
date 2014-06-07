.class public Lcom/speedsoftware/rootexplorer/BookmarkList;
.super Landroid/app/ListActivity;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:Lcom/speedsoftware/rootexplorer/dw;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/speedsoftware/rootexplorer/BookmarkList;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/speedsoftware/rootexplorer/BookmarkList;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    return-object v0
.end method

.method private a(Lcom/speedsoftware/rootexplorer/az;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "location"

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/az;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/az;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "flags"

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/az;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->finish()V

    return-void
.end method

.method private b()Ljava/util/ArrayList;
    .locals 8

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    new-instance v0, Lcom/speedsoftware/rootexplorer/az;

    const v1, 0x7f0800a8

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const-string v4, ""

    const-string v5, "dr-xr-xr-x"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/az;-><init>(Lcom/speedsoftware/rootexplorer/BookmarkList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/speedsoftware/rootexplorer/az;

    const v1, 0x7f0800a9

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "dr-xr-xr-x"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/az;-><init>(Lcom/speedsoftware/rootexplorer/BookmarkList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->a()Lcom/speedsoftware/rootexplorer/dw;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->d()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_1
    :goto_2
    return-object v7

    :cond_2
    :try_start_4
    new-instance v0, Lcom/speedsoftware/rootexplorer/az;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/speedsoftware/rootexplorer/az;-><init>(Lcom/speedsoftware/rootexplorer/BookmarkList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v6

    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_6
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_4
    :goto_5
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_8
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    :goto_6
    throw v0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v0, v6

    goto :goto_3
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/BookmarkList;)V
    .locals 2

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/speedsoftware/rootexplorer/o;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/speedsoftware/rootexplorer/o;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/az;

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/az;)V

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/az;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0800ab

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800ad

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080072

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/speedsoftware/rootexplorer/s;

    invoke-direct {v4, p0, v0}, Lcom/speedsoftware/rootexplorer/s;-><init>(Lcom/speedsoftware/rootexplorer/BookmarkList;Lcom/speedsoftware/rootexplorer/az;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f080075

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/az;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/az;->n()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/az;->n()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/az;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/az;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "location"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "name"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "flags"

    const-string v3, "d---------"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/speedsoftware/rootexplorer/BookmarkList;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->b()V

    :cond_0
    iput-object v7, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->finish()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/az;

    const-string v3, "com.speedsoftware.rootexplorer_preferences"

    invoke-virtual {p0, v3, v2}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/az;->q()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f08006b

    invoke-virtual {p0, v4}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/az;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.speedsoftware.rootexplorer"

    const-string v4, ".RootExplorer"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/speedsoftware/rootexplorer/cd;->b(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->E()I

    move-result v0

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/ae;->b(I)I

    move-result v0

    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/speedsoftware/rootexplorer/BookmarkList;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->setContentView(I)V

    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/speedsoftware/rootexplorer/dw;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/dw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/speedsoftware/rootexplorer/o;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/speedsoftware/rootexplorer/o;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/BookmarkList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "home_pref"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->d:Ljava/lang/String;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/az;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const v1, 0x7f0800aa

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-le v1, v4, :cond_0

    const/4 v1, 0x2

    const v2, 0x7f0800ab

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/az;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    const v2, 0x7f0800ac

    invoke-virtual {p0, v2}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/az;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object p3, v1

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
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

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/az;

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/az;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 1

    sput-object p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/speedsoftware/rootexplorer/dw;

    invoke-direct {v0, p0}, Lcom/speedsoftware/rootexplorer/dw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/BookmarkList;->c:Lcom/speedsoftware/rootexplorer/dw;

    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    return-void
.end method
