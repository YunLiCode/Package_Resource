.class public final Lcom/speedsoftware/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[B

.field private l:Lcom/speedsoftware/b/f;

.field private m:Lcom/speedsoftware/b/h;

.field private n:Lcom/speedsoftware/b/d;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/speedsoftware/b/f;

    invoke-direct {v0, p1}, Lcom/speedsoftware/b/f;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/speedsoftware/b/c;->l:Lcom/speedsoftware/b/f;

    invoke-direct {p0}, Lcom/speedsoftware/b/c;->d()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/speedsoftware/b/c;-><init>(Ljava/io/InputStream;C)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;C)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/speedsoftware/b/c;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/speedsoftware/b/h;

    invoke-direct {v0, p1}, Lcom/speedsoftware/b/h;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/speedsoftware/b/c;->m:Lcom/speedsoftware/b/h;

    invoke-direct {p0}, Lcom/speedsoftware/b/c;->d()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/speedsoftware/b/c;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/speedsoftware/b/c;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/speedsoftware/b/c;->j:Ljava/lang/String;

    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/b/c;->i:Ljava/lang/String;

    iput v1, p0, Lcom/speedsoftware/b/c;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/speedsoftware/b/c;->e:Ljava/lang/String;

    iput v1, p0, Lcom/speedsoftware/b/c;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/speedsoftware/b/c;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/speedsoftware/b/c;->b:Z

    iput-boolean v1, p0, Lcom/speedsoftware/b/c;->a:Z

    iput-boolean v1, p0, Lcom/speedsoftware/b/c;->c:Z

    iput-object v2, p0, Lcom/speedsoftware/b/c;->n:Lcom/speedsoftware/b/d;

    iget-object v0, p0, Lcom/speedsoftware/b/c;->l:Lcom/speedsoftware/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/b/c;->l:Lcom/speedsoftware/b/f;

    invoke-virtual {v0}, Lcom/speedsoftware/b/f;->a()I

    move-result v0

    :goto_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/speedsoftware/b/c;->k:[B

    return-void

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/b/c;->m:Lcom/speedsoftware/b/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/b/c;->m:Lcom/speedsoftware/b/h;

    invoke-virtual {v0}, Lcom/speedsoftware/b/h;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/c;->l:Lcom/speedsoftware/b/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/b/c;->l:Lcom/speedsoftware/b/f;

    invoke-virtual {v0}, Lcom/speedsoftware/b/f;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/b/c;->m:Lcom/speedsoftware/b/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/b/c;->m:Lcom/speedsoftware/b/h;

    invoke-virtual {v0}, Lcom/speedsoftware/b/h;->close()V

    goto :goto_0
.end method

.method public final b()Lcom/speedsoftware/b/f;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/c;->l:Lcom/speedsoftware/b/f;

    return-object v0
.end method

.method public final c()Lcom/speedsoftware/b/h;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/c;->m:Lcom/speedsoftware/b/h;

    return-object v0
.end method
