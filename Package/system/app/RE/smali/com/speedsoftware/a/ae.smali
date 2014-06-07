.class public final Lcom/speedsoftware/a/ae;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/speedsoftware/a/av;


# direct methods
.method public constructor <init>(IILcom/speedsoftware/a/av;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/speedsoftware/a/ae;->a:I

    iput p2, p0, Lcom/speedsoftware/a/ae;->b:I

    iput-object p3, p0, Lcom/speedsoftware/a/ae;->c:Lcom/speedsoftware/a/av;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/ae;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/ae;->a:I

    return v0
.end method

.method public final c()Lcom/speedsoftware/a/av;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/ae;->c:Lcom/speedsoftware/a/av;

    return-object v0
.end method
