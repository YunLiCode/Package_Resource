.class public final Lcom/speedsoftware/rootexplorer/di;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private synthetic k:Lcom/speedsoftware/rootexplorer/fs;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/fs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->e:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/speedsoftware/rootexplorer/di;->f:Z

    iput-object v2, p0, Lcom/speedsoftware/rootexplorer/di;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/speedsoftware/rootexplorer/di;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/speedsoftware/rootexplorer/di;->i:Z

    iput-boolean v1, p0, Lcom/speedsoftware/rootexplorer/di;->j:Z

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/di;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/di;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/speedsoftware/rootexplorer/di;->c:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/speedsoftware/rootexplorer/di;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/fs;->a(Lcom/speedsoftware/rootexplorer/fs;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x11

    invoke-static {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/fs;->b(Lcom/speedsoftware/rootexplorer/fs;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/di;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/di;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "1=2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :try_start_3
    array-length v1, v2

    new-array v1, v1, [I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-object v0, v1

    move-object v1, v2

    :goto_1
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/di;->c:Ljava/lang/String;

    const-string v3, "table"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "(?xsi)\\bcreate\\b.*?\\btable.*?((\\b\\w*\\b)|(\"%s\")|(\'%s\')|(`%s`)|(\\[%s\\])).*?\\("

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/di;->a:Ljava/lang/String;

    aput-object v4, v3, v9

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/di;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/di;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/di;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x62

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    array-length v5, v1

    move v3, v9

    move v4, v2

    move v2, v9

    :goto_2
    if-lt v2, v5, :cond_6

    move v2, v9

    :goto_3
    array-length v3, v0

    if-lt v2, v3, :cond_7

    :cond_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v3, v8

    move-object v0, v8

    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_2
    :goto_5
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v8

    :goto_6
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_9
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_3
    :goto_7
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_4
    :goto_8
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_1

    :cond_6
    aget-object v6, v1, v2

    const-string v7, " "

    const-string v8, "\\ "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(?xsi)(?<=(\\(|,| ))(("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")|(\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\")|(`"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "`)|(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\')|(\\["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\\])"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")(\\)|,| )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x60

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->find(I)Z

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    add-int/lit8 v4, v3, 0x1

    aput v7, v0, v3

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    move v10, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v3, v2, 0x1

    array-length v4, v0

    if-ge v3, v4, :cond_9

    aget v3, v0, v2

    add-int/lit8 v4, v2, 0x1

    aget v4, v0, v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_8
    :goto_9
    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    new-instance v5, Lcom/speedsoftware/rootexplorer/au;

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    aget-object v7, v1, v2

    invoke-direct {v5, v6, v7, v3}, Lcom/speedsoftware/rootexplorer/au;-><init>(Lcom/speedsoftware/rootexplorer/fs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_9
    aget v3, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_a
    array-length v0, v1

    :goto_a
    if-ge v9, v0, :cond_1

    aget-object v2, v1, v9

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    new-instance v4, Lcom/speedsoftware/rootexplorer/au;

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-direct {v4, v5, v2, v8}, Lcom/speedsoftware/rootexplorer/au;-><init>(Lcom/speedsoftware/rootexplorer/fs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_6

    :catchall_2
    move-exception v1

    move-object v8, v3

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_6

    :catchall_3
    move-exception v0

    move-object v8, v2

    goto/16 :goto_6

    :catch_7
    move-exception v1

    move-object v2, v8

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_4

    :catch_8
    move-exception v1

    move-object v2, v3

    move-object v3, v0

    move-object v0, v8

    goto/16 :goto_4

    :catch_9
    move-exception v1

    move-object v10, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_4

    :cond_b
    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lcom/speedsoftware/rootexplorer/DataGrid;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->e:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/fs;->c(Lcom/speedsoftware/rootexplorer/fs;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/fs;->e(Lcom/speedsoftware/rootexplorer/fs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/fs;->b(Lcom/speedsoftware/rootexplorer/fs;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/rootexplorer/di;->a(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    move v3, v9

    :goto_0
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v3, v1, :cond_8

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v3, "_ROWID_"

    aput-object v3, v2, v1

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/di;->f:Z

    if-eqz v1, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->g:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->g:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIKE \'%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/di;->j:Z

    if-nez v1, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v3, Lcom/speedsoftware/rootexplorer/fs;->a:I

    if-lt v1, v3, :cond_b

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    iput-boolean v1, p0, Lcom/speedsoftware/rootexplorer/di;->i:Z

    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/di;->j:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/fs;->c(Lcom/speedsoftware/rootexplorer/fs;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/fs;->d(Lcom/speedsoftware/rootexplorer/fs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    :cond_7
    :goto_4
    return-void

    :cond_8
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/speedsoftware/rootexplorer/au;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/au;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    :cond_9
    move v3, v9

    :goto_5
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1

    if-lez v3, :cond_a

    const-string v1, " OR "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/speedsoftware/rootexplorer/au;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/au;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " LIKE \'%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    :cond_b
    :try_start_6
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v9

    :goto_6
    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v1, v4, :cond_f

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " %,d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/speedsoftware/rootexplorer/di;->e:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p1, v1}, Lcom/speedsoftware/rootexplorer/DataGrid;->a([Ljava/lang/String;)V

    :cond_c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v5

    div-long/2addr v3, v5

    const-wide/16 v5, 0x50

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2

    new-instance v1, Ljava/lang/OutOfMemoryError;

    invoke-direct {v1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_d
    :goto_8
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    :try_start_9
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :cond_e
    :goto_9
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/fs;->c(Lcom/speedsoftware/rootexplorer/fs;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/fs;->d(Lcom/speedsoftware/rootexplorer/fs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    goto/16 :goto_4

    :cond_f
    :try_start_a
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    aput-object v4, v3, v1

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_10
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v4

    :try_start_b
    aput-object p3, v3, v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v1

    move-object v8, v2

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_b
    if-eqz v8, :cond_11

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_11

    :try_start_c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    :cond_11
    :goto_c
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_12

    :try_start_d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    :cond_12
    :goto_d
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v1}, Lcom/speedsoftware/rootexplorer/fs;->c(Lcom/speedsoftware/rootexplorer/fs;)Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/di;->k:Lcom/speedsoftware/rootexplorer/fs;

    invoke-static {v2}, Lcom/speedsoftware/rootexplorer/fs;->d(Lcom/speedsoftware/rootexplorer/fs;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    :cond_13
    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_b

    :catchall_2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v1, v8

    goto/16 :goto_7

    :catch_9
    move-exception v1

    move-object v10, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v10

    goto/16 :goto_7

    :cond_14
    move-object v3, v8

    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/di;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/di;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/di;->f:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/di;->f:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/di;->i:Z

    return v0
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/di;->j:Z

    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/di;->j:Z

    return v0
.end method

.method public final i()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/di;->i:Z

    return-void
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/di;->c:Ljava/lang/String;

    const-string v1, "table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
