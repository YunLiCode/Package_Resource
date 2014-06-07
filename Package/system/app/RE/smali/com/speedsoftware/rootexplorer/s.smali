.class final Lcom/speedsoftware/rootexplorer/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/BookmarkList;

.field private final synthetic b:Lcom/speedsoftware/rootexplorer/az;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/BookmarkList;Lcom/speedsoftware/rootexplorer/az;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/s;->b:Lcom/speedsoftware/rootexplorer/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->a()Lcom/speedsoftware/rootexplorer/dw;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/s;->b:Lcom/speedsoftware/rootexplorer/az;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/az;->p()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/speedsoftware/rootexplorer/dw;->a(J)Z

    invoke-static {}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    const v2, 0x7f0800ae

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->b(Lcom/speedsoftware/rootexplorer/BookmarkList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    const v2, 0x7f080074

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/BookmarkList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_4
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/s;->a:Lcom/speedsoftware/rootexplorer/BookmarkList;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/BookmarkList;->a(Lcom/speedsoftware/rootexplorer/BookmarkList;)Lcom/speedsoftware/rootexplorer/dw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method
