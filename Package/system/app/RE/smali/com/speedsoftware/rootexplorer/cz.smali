.class final Lcom/speedsoftware/rootexplorer/cz;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private b:Lcom/speedsoftware/rootexplorer/cd;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/ArrayList;

.field private synthetic f:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;ILjava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cz;->f:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/cz;->b:Lcom/speedsoftware/rootexplorer/cd;

    iput p3, p0, Lcom/speedsoftware/rootexplorer/cz;->d:I

    iput-object p4, p0, Lcom/speedsoftware/rootexplorer/cz;->c:Ljava/lang/String;

    iput p5, p0, Lcom/speedsoftware/rootexplorer/cz;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/cz;->e:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/speedsoftware/rootexplorer/i;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/cz;->f:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/cz;->c:Ljava/lang/String;

    iput p3, p0, Lcom/speedsoftware/rootexplorer/cz;->a:I

    iput-object p4, p0, Lcom/speedsoftware/rootexplorer/cz;->e:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/speedsoftware/rootexplorer/cz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cz;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/speedsoftware/rootexplorer/cz;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cz;->e:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/speedsoftware/rootexplorer/cd;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/cz;->b:Lcom/speedsoftware/rootexplorer/cd;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/cz;->d:I

    return v0
.end method
