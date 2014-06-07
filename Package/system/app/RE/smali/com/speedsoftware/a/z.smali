.class public final enum Lcom/speedsoftware/a/z;
.super Ljava/lang/Enum;


# static fields
.field private static enum a:Lcom/speedsoftware/a/z;

.field private static enum b:Lcom/speedsoftware/a/z;

.field private static enum c:Lcom/speedsoftware/a/z;

.field private static enum d:Lcom/speedsoftware/a/z;

.field private static enum e:Lcom/speedsoftware/a/z;

.field private static enum f:Lcom/speedsoftware/a/z;

.field private static final synthetic h:[Lcom/speedsoftware/a/z;


# instance fields
.field private g:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/speedsoftware/a/z;

    const-string v1, "msdos"

    invoke-direct {v0, v1, v4, v4}, Lcom/speedsoftware/a/z;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/speedsoftware/a/z;->a:Lcom/speedsoftware/a/z;

    new-instance v0, Lcom/speedsoftware/a/z;

    const-string v1, "os2"

    invoke-direct {v0, v1, v5, v5}, Lcom/speedsoftware/a/z;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/speedsoftware/a/z;->b:Lcom/speedsoftware/a/z;

    new-instance v0, Lcom/speedsoftware/a/z;

    const-string v1, "win32"

    invoke-direct {v0, v1, v6, v6}, Lcom/speedsoftware/a/z;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/speedsoftware/a/z;->c:Lcom/speedsoftware/a/z;

    new-instance v0, Lcom/speedsoftware/a/z;

    const-string v1, "unix"

    invoke-direct {v0, v1, v7, v7}, Lcom/speedsoftware/a/z;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/speedsoftware/a/z;->d:Lcom/speedsoftware/a/z;

    new-instance v0, Lcom/speedsoftware/a/z;

    const-string v1, "macos"

    invoke-direct {v0, v1, v8, v8}, Lcom/speedsoftware/a/z;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/speedsoftware/a/z;->e:Lcom/speedsoftware/a/z;

    new-instance v0, Lcom/speedsoftware/a/z;

    const-string v1, "beos"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/speedsoftware/a/z;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/speedsoftware/a/z;->f:Lcom/speedsoftware/a/z;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/speedsoftware/a/z;

    sget-object v1, Lcom/speedsoftware/a/z;->a:Lcom/speedsoftware/a/z;

    aput-object v1, v0, v4

    sget-object v1, Lcom/speedsoftware/a/z;->b:Lcom/speedsoftware/a/z;

    aput-object v1, v0, v5

    sget-object v1, Lcom/speedsoftware/a/z;->c:Lcom/speedsoftware/a/z;

    aput-object v1, v0, v6

    sget-object v1, Lcom/speedsoftware/a/z;->d:Lcom/speedsoftware/a/z;

    aput-object v1, v0, v7

    sget-object v1, Lcom/speedsoftware/a/z;->e:Lcom/speedsoftware/a/z;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/speedsoftware/a/z;->f:Lcom/speedsoftware/a/z;

    aput-object v2, v0, v1

    sput-object v0, Lcom/speedsoftware/a/z;->h:[Lcom/speedsoftware/a/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/speedsoftware/a/z;->g:B

    return-void
.end method

.method public static a(B)Lcom/speedsoftware/a/z;
    .locals 1

    sget-object v0, Lcom/speedsoftware/a/z;->a:Lcom/speedsoftware/a/z;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/z;->b(B)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/speedsoftware/a/z;->a:Lcom/speedsoftware/a/z;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/speedsoftware/a/z;->b:Lcom/speedsoftware/a/z;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/z;->b(B)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/speedsoftware/a/z;->b:Lcom/speedsoftware/a/z;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/speedsoftware/a/z;->c:Lcom/speedsoftware/a/z;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/z;->b(B)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/speedsoftware/a/z;->c:Lcom/speedsoftware/a/z;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/speedsoftware/a/z;->d:Lcom/speedsoftware/a/z;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/z;->b(B)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/speedsoftware/a/z;->d:Lcom/speedsoftware/a/z;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/speedsoftware/a/z;->e:Lcom/speedsoftware/a/z;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/z;->b(B)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/speedsoftware/a/z;->e:Lcom/speedsoftware/a/z;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/speedsoftware/a/z;->f:Lcom/speedsoftware/a/z;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/z;->b(B)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/speedsoftware/a/z;->f:Lcom/speedsoftware/a/z;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(B)Z
    .locals 1

    iget-byte v0, p0, Lcom/speedsoftware/a/z;->g:B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/speedsoftware/a/z;
    .locals 1

    const-class v0, Lcom/speedsoftware/a/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/z;

    return-object v0
.end method

.method public static values()[Lcom/speedsoftware/a/z;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/speedsoftware/a/z;->h:[Lcom/speedsoftware/a/z;

    array-length v1, v0

    new-array v2, v1, [Lcom/speedsoftware/a/z;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
