.class public final Lcom/speedsoftware/a/s;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/speedsoftware/a/an;Lcom/speedsoftware/a/y;)Z
    .locals 11

    const/4 v3, 0x0

    const/16 v10, 0x3a

    const/16 v9, 0x30

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/speedsoftware/a/y;->c()Lcom/speedsoftware/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/bm;->o()B

    move-result v4

    const/16 v5, 0x14

    if-lt v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/speedsoftware/a/bm;->i()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {p1}, Lcom/speedsoftware/a/y;->a()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/speedsoftware/a/bm;->i()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Data Bad CRC"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/a/an;->g()Lcom/speedsoftware/a/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/bd;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/speedsoftware/a/an;->h()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/speedsoftware/a/an;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    move v4, v0

    :goto_1
    if-ltz v4, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/speedsoftware/a/s;->a(C)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-ltz v0, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/speedsoftware/a/s;->a(C)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    if-gez v0, :cond_7

    move-object v0, v3

    :goto_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/an;->e()Lcom/speedsoftware/a/u;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/speedsoftware/a/u;->a()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_3
    :goto_4
    return v1

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v5, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    sub-int v8, v4, v0

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [C

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v0, v4, v8, v1}, Ljava/lang/String;->getChars(II[CI)V

    array-length v0, v8

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_8

    aget-char v4, v8, v0

    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    aput-char v4, v8, v0

    if-eq v4, v10, :cond_a

    :cond_8
    if-gez v0, :cond_9

    const/16 v0, 0x31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_a
    aput-char v9, v8, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x4

    if-le v0, v4, :cond_c

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2e

    if-eq v4, v6, :cond_d

    :cond_c
    move-object v0, v3

    goto :goto_3

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, -0x3

    invoke-virtual {v3, v5, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/speedsoftware/a/s;->a(C)Z

    move-result v6

    if-eqz v6, :cond_e

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/speedsoftware/a/s;->a(C)Z

    move-result v6

    if-nez v6, :cond_f

    :cond_e
    const-string v0, "r00"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_f
    const/4 v6, 0x3

    new-array v6, v6, [C

    invoke-virtual {v5, v4, v0, v6, v1}, Ljava/lang/String;->getChars(II[CI)V

    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    :goto_7
    aget-char v4, v6, v0

    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    aput-char v4, v6, v0

    if-eq v4, v10, :cond_10

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_10
    aput-char v9, v6, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_11
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/speedsoftware/a/an;->a(Ljava/io/File;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/an;->d()Lcom/speedsoftware/a/bm;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/y;->a(Lcom/speedsoftware/a/bm;)V

    move v1, v2

    goto/16 :goto_4
.end method
