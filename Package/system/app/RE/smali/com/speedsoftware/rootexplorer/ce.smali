.class public final enum Lcom/speedsoftware/rootexplorer/ce;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/speedsoftware/rootexplorer/ce;

.field public static final enum b:Lcom/speedsoftware/rootexplorer/ce;

.field public static final enum c:Lcom/speedsoftware/rootexplorer/ce;

.field public static final enum d:Lcom/speedsoftware/rootexplorer/ce;

.field private static final synthetic e:[Lcom/speedsoftware/rootexplorer/ce;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/speedsoftware/rootexplorer/ce;

    const-string v1, "zip"

    invoke-direct {v0, v1, v2}, Lcom/speedsoftware/rootexplorer/ce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/speedsoftware/rootexplorer/ce;->a:Lcom/speedsoftware/rootexplorer/ce;

    new-instance v0, Lcom/speedsoftware/rootexplorer/ce;

    const-string v1, "tar"

    invoke-direct {v0, v1, v3}, Lcom/speedsoftware/rootexplorer/ce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/speedsoftware/rootexplorer/ce;->b:Lcom/speedsoftware/rootexplorer/ce;

    new-instance v0, Lcom/speedsoftware/rootexplorer/ce;

    const-string v1, "tgz"

    invoke-direct {v0, v1, v4}, Lcom/speedsoftware/rootexplorer/ce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/speedsoftware/rootexplorer/ce;->c:Lcom/speedsoftware/rootexplorer/ce;

    new-instance v0, Lcom/speedsoftware/rootexplorer/ce;

    const-string v1, "rar"

    invoke-direct {v0, v1, v5}, Lcom/speedsoftware/rootexplorer/ce;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/speedsoftware/rootexplorer/ce;->d:Lcom/speedsoftware/rootexplorer/ce;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/speedsoftware/rootexplorer/ce;

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->a:Lcom/speedsoftware/rootexplorer/ce;

    aput-object v1, v0, v2

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->b:Lcom/speedsoftware/rootexplorer/ce;

    aput-object v1, v0, v3

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->c:Lcom/speedsoftware/rootexplorer/ce;

    aput-object v1, v0, v4

    sget-object v1, Lcom/speedsoftware/rootexplorer/ce;->d:Lcom/speedsoftware/rootexplorer/ce;

    aput-object v1, v0, v5

    sput-object v0, Lcom/speedsoftware/rootexplorer/ce;->e:[Lcom/speedsoftware/rootexplorer/ce;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/ce;
    .locals 1

    const-class v0, Lcom/speedsoftware/rootexplorer/ce;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/ce;

    return-object v0
.end method

.method public static values()[Lcom/speedsoftware/rootexplorer/ce;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/speedsoftware/rootexplorer/ce;->e:[Lcom/speedsoftware/rootexplorer/ce;

    array-length v1, v0

    new-array v2, v1, [Lcom/speedsoftware/rootexplorer/ce;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
