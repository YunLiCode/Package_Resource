.class public final Lcom/speedsoftware/a/ay;
.super Lcom/speedsoftware/a/t;


# instance fields
.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/speedsoftware/a/t;[B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/t;-><init>(Lcom/speedsoftware/a/t;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/ay;->f:I

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/ay;->g:I

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    invoke-super {p0}, Lcom/speedsoftware/a/t;->h()V

    return-void
.end method
