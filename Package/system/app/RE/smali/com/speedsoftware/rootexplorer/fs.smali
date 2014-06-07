.class public final Lcom/speedsoftware/rootexplorer/fs;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x989680

    sput v0, Lcom/speedsoftware/rootexplorer/fs;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "Database"

    iput-object v2, p0, Lcom/speedsoftware/rootexplorer/fs;->b:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/speedsoftware/rootexplorer/fs;->f:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/speedsoftware/rootexplorer/fs;->g:Z

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/fs;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/fs;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/fs;->e:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_0
    iput-boolean v0, p0, Lcom/speedsoftware/rootexplorer/fs;->h:Z

    :try_start_0
    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/fs;->h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v0, p2}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x11

    :try_start_1
    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :goto_1
    :try_start_2
    const-string v1, "sqlite_master"

    const/4 v2, 0x0

    const-string v3, "type in(\'table\',\'view\')"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_6
    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/fs;->h:Z

    if-nez v0, :cond_3

    sget-object v0, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v0, p3}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    const/16 v1, 0x10

    :try_start_6
    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    :try_start_7
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "android_metadata"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/speedsoftware/rootexplorer/fs;->g:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    move-object v1, v2

    :goto_7
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_6
    :goto_8
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_9
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_7
    :goto_9
    iget-boolean v1, p0, Lcom/speedsoftware/rootexplorer/fs;->h:Z

    if-nez v1, :cond_8

    sget-object v1, Lcom/speedsoftware/rootexplorer/i;->t:Lcom/speedsoftware/rootexplorer/fc;

    invoke-virtual {v1, p3}, Lcom/speedsoftware/rootexplorer/fc;->a(Ljava/lang/String;)Z

    :cond_8
    throw v0

    :cond_9
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/fs;->f:Ljava/util/ArrayList;

    new-instance v3, Lcom/speedsoftware/rootexplorer/di;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/speedsoftware/rootexplorer/di;-><init>(Lcom/speedsoftware/rootexplorer/fs;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v9

    goto :goto_7
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/fs;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/fs;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/fs;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fs;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/speedsoftware/rootexplorer/fs;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/rootexplorer/fs;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/speedsoftware/rootexplorer/fs;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fs;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/speedsoftware/rootexplorer/fs;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fs;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/di;
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fs;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/di;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/di;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public final a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fs;->f:Ljava/util/ArrayList;

    return-object v0
.end method
