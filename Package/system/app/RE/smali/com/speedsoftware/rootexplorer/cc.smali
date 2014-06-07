.class final Lcom/speedsoftware/rootexplorer/cc;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/bp;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->a()Lcom/speedsoftware/rootexplorer/dw;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v3, v3, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, v3, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/dw;->f()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v3, v3, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, v3, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v3}, Lcom/speedsoftware/rootexplorer/dw;->g()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->h()V

    new-instance v0, Lcom/speedsoftware/rootexplorer/cd;

    invoke-direct {v0}, Lcom/speedsoftware/rootexplorer/cd;-><init>()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/cd;->a(Lcom/speedsoftware/rootexplorer/dw;)V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->i()V

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->j()V

    :cond_3
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->f()Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->g()Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    sput-boolean v0, Lcom/speedsoftware/rootexplorer/cd;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_5
    :goto_3
    return-void

    :cond_6
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/speedsoftware/rootexplorer/i;->a(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v2, :cond_7

    sget-object v3, Lcom/speedsoftware/rootexplorer/cd;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/speedsoftware/rootexplorer/cd;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    :try_start_6
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_9
    const/4 v0, 0x1

    :try_start_7
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/speedsoftware/rootexplorer/i;->a(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v2, :cond_a

    sget-object v3, Lcom/speedsoftware/rootexplorer/cd;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/speedsoftware/rootexplorer/cd;->c:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_b
    :goto_5
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    :try_start_9
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/cc;->a:Lcom/speedsoftware/rootexplorer/bp;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/bp;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_c
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

    goto/16 :goto_2

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v1

    goto :goto_6
.end method
