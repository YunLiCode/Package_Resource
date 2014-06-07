.class final Lcom/speedsoftware/rootexplorer/bm;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    const-wide/16 v1, 0xfa0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->A()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x41eb57b372000000L

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->B()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/i;->d(Lcom/speedsoftware/rootexplorer/i;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->a()Lcom/speedsoftware/rootexplorer/dw;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/speedsoftware/rootexplorer/cd;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x0

    array-length v7, v4

    const/4 v1, 0x0

    move/from16 v17, v1

    move-object v1, v2

    move/from16 v2, v17

    :goto_1
    if-lt v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1, v5, v6}, Lcom/speedsoftware/rootexplorer/dw;->b(J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_2
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->E()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/speedsoftware/rootexplorer/i;->a(Lcom/speedsoftware/rootexplorer/i;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const-wide/32 v1, 0xea60

    :try_start_6
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_7
    aget-object v3, v4, v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v8, v8, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v8, v3}, Lcom/speedsoftware/rootexplorer/dw;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/zip/CRC32;->update([B)V

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual {v12}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v15

    cmp-long v3, v15, v13

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_5

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v3, v3, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v3, v8, v9}, Lcom/speedsoftware/rootexplorer/dw;->c(J)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    if-eqz v1, :cond_8

    :try_start_9
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v3, v1

    :goto_5
    const-wide/16 v8, 0x32

    :try_start_a
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :try_start_b
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/speedsoftware/rootexplorer/cd;->a:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v3

    if-eqz v1, :cond_8

    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v3, v1

    goto :goto_5

    :cond_6
    :try_start_d
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/speedsoftware/rootexplorer/cd;->a:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    if-eqz v2, :cond_7

    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_7
    :goto_6
    :try_start_f
    throw v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catch_3
    move-exception v1

    :try_start_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_2

    :catch_4
    move-exception v1

    goto/16 :goto_2

    :catch_5
    move-exception v3

    move-object v3, v1

    goto/16 :goto_5

    :catch_6
    move-exception v3

    :cond_8
    move-object v3, v1

    goto/16 :goto_5

    :catchall_1
    move-exception v1

    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/dw;->c()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/rootexplorer/bm;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v2, v2, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/dw;->b()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :cond_9
    :goto_7
    :try_start_12
    throw v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :catch_7
    move-exception v1

    goto/16 :goto_2

    :catch_8
    move-exception v1

    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    const-wide/32 v1, 0xea60

    :try_start_14
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    const-wide/32 v2, 0xea60

    :try_start_15
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_a

    :goto_8
    throw v1

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_8

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v2

    goto :goto_7

    :catch_d
    move-exception v2

    goto :goto_6
.end method
