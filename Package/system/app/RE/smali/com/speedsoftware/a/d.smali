.class public final Lcom/speedsoftware/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/speedsoftware/a/k;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/d;->c:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/d;->c:I

    return-void
.end method

.method public final a(Lcom/speedsoftware/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/a/d;->a:Lcom/speedsoftware/a/k;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/d;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/d;->b:I

    return-void
.end method

.method public final c()Lcom/speedsoftware/a/k;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/d;->a:Lcom/speedsoftware/a/k;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/d;->d:I

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/d;->d:I

    return v0
.end method
