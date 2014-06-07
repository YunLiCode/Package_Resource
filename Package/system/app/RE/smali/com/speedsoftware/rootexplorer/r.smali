.class public final enum Lcom/speedsoftware/rootexplorer/r;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/speedsoftware/rootexplorer/r;

.field public static final enum b:Lcom/speedsoftware/rootexplorer/r;

.field public static final enum c:Lcom/speedsoftware/rootexplorer/r;

.field public static final enum d:Lcom/speedsoftware/rootexplorer/r;

.field public static final enum e:Lcom/speedsoftware/rootexplorer/r;

.field private static final synthetic f:[Lcom/speedsoftware/rootexplorer/r;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/speedsoftware/rootexplorer/r;

    const-string v1, "Copy"

    invoke-direct {v0, v1, v2}, Lcom/speedsoftware/rootexplorer/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/speedsoftware/rootexplorer/r;->a:Lcom/speedsoftware/rootexplorer/r;

    new-instance v0, Lcom/speedsoftware/rootexplorer/r;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/speedsoftware/rootexplorer/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/speedsoftware/rootexplorer/r;->b:Lcom/speedsoftware/rootexplorer/r;

    new-instance v0, Lcom/speedsoftware/rootexplorer/r;

    const-string v1, "CopyMulti"

    invoke-direct {v0, v1, v4}, Lcom/speedsoftware/rootexplorer/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/speedsoftware/rootexplorer/r;->c:Lcom/speedsoftware/rootexplorer/r;

    new-instance v0, Lcom/speedsoftware/rootexplorer/r;

    const-string v1, "MoveMulti"

    invoke-direct {v0, v1, v5}, Lcom/speedsoftware/rootexplorer/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/speedsoftware/rootexplorer/r;->d:Lcom/speedsoftware/rootexplorer/r;

    new-instance v0, Lcom/speedsoftware/rootexplorer/r;

    const-string v1, "Link"

    invoke-direct {v0, v1, v6}, Lcom/speedsoftware/rootexplorer/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/speedsoftware/rootexplorer/r;->e:Lcom/speedsoftware/rootexplorer/r;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/speedsoftware/rootexplorer/r;

    sget-object v1, Lcom/speedsoftware/rootexplorer/r;->a:Lcom/speedsoftware/rootexplorer/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/speedsoftware/rootexplorer/r;->b:Lcom/speedsoftware/rootexplorer/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/speedsoftware/rootexplorer/r;->c:Lcom/speedsoftware/rootexplorer/r;

    aput-object v1, v0, v4

    sget-object v1, Lcom/speedsoftware/rootexplorer/r;->d:Lcom/speedsoftware/rootexplorer/r;

    aput-object v1, v0, v5

    sget-object v1, Lcom/speedsoftware/rootexplorer/r;->e:Lcom/speedsoftware/rootexplorer/r;

    aput-object v1, v0, v6

    sput-object v0, Lcom/speedsoftware/rootexplorer/r;->f:[Lcom/speedsoftware/rootexplorer/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/speedsoftware/rootexplorer/r;
    .locals 1

    const-class v0, Lcom/speedsoftware/rootexplorer/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/r;

    return-object v0
.end method

.method public static values()[Lcom/speedsoftware/rootexplorer/r;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/speedsoftware/rootexplorer/r;->f:[Lcom/speedsoftware/rootexplorer/r;

    array-length v1, v0

    new-array v2, v1, [Lcom/speedsoftware/rootexplorer/r;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
