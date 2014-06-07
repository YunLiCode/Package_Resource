.class public final enum Lcom/speedsoftware/a/bf;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/speedsoftware/a/bf;

.field public static final enum b:Lcom/speedsoftware/a/bf;

.field public static final enum c:Lcom/speedsoftware/a/bf;

.field public static final enum d:Lcom/speedsoftware/a/bf;

.field public static final enum e:Lcom/speedsoftware/a/bf;

.field public static final enum f:Lcom/speedsoftware/a/bf;

.field private static final synthetic h:[Lcom/speedsoftware/a/bf;


# instance fields
.field private g:S


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/speedsoftware/a/bf;

    const-string v1, "EA_HEAD"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v4, v2}, Lcom/speedsoftware/a/bf;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/speedsoftware/a/bf;->a:Lcom/speedsoftware/a/bf;

    new-instance v0, Lcom/speedsoftware/a/bf;

    const-string v1, "UO_HEAD"

    const/16 v2, 0x101

    invoke-direct {v0, v1, v5, v2}, Lcom/speedsoftware/a/bf;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/speedsoftware/a/bf;->b:Lcom/speedsoftware/a/bf;

    new-instance v0, Lcom/speedsoftware/a/bf;

    const-string v1, "MAC_HEAD"

    const/16 v2, 0x102

    invoke-direct {v0, v1, v6, v2}, Lcom/speedsoftware/a/bf;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/speedsoftware/a/bf;->c:Lcom/speedsoftware/a/bf;

    new-instance v0, Lcom/speedsoftware/a/bf;

    const-string v1, "BEEA_HEAD"

    const/16 v2, 0x103

    invoke-direct {v0, v1, v7, v2}, Lcom/speedsoftware/a/bf;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/speedsoftware/a/bf;->d:Lcom/speedsoftware/a/bf;

    new-instance v0, Lcom/speedsoftware/a/bf;

    const-string v1, "NTACL_HEAD"

    const/16 v2, 0x104

    invoke-direct {v0, v1, v8, v2}, Lcom/speedsoftware/a/bf;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/speedsoftware/a/bf;->e:Lcom/speedsoftware/a/bf;

    new-instance v0, Lcom/speedsoftware/a/bf;

    const-string v1, "STREAM_HEAD"

    const/4 v2, 0x5

    const/16 v3, 0x105

    invoke-direct {v0, v1, v2, v3}, Lcom/speedsoftware/a/bf;-><init>(Ljava/lang/String;IS)V

    sput-object v0, Lcom/speedsoftware/a/bf;->f:Lcom/speedsoftware/a/bf;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/speedsoftware/a/bf;

    sget-object v1, Lcom/speedsoftware/a/bf;->a:Lcom/speedsoftware/a/bf;

    aput-object v1, v0, v4

    sget-object v1, Lcom/speedsoftware/a/bf;->b:Lcom/speedsoftware/a/bf;

    aput-object v1, v0, v5

    sget-object v1, Lcom/speedsoftware/a/bf;->c:Lcom/speedsoftware/a/bf;

    aput-object v1, v0, v6

    sget-object v1, Lcom/speedsoftware/a/bf;->d:Lcom/speedsoftware/a/bf;

    aput-object v1, v0, v7

    sget-object v1, Lcom/speedsoftware/a/bf;->e:Lcom/speedsoftware/a/bf;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/speedsoftware/a/bf;->f:Lcom/speedsoftware/a/bf;

    aput-object v2, v0, v1

    sput-object v0, Lcom/speedsoftware/a/bf;->h:[Lcom/speedsoftware/a/bf;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IS)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, Lcom/speedsoftware/a/bf;->g:S

    return-void
.end method

.method public static a(S)Lcom/speedsoftware/a/bf;
    .locals 1

    sget-object v0, Lcom/speedsoftware/a/bf;->a:Lcom/speedsoftware/a/bf;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/bf;->b(S)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/speedsoftware/a/bf;->a:Lcom/speedsoftware/a/bf;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/speedsoftware/a/bf;->b:Lcom/speedsoftware/a/bf;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/bf;->b(S)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/speedsoftware/a/bf;->b:Lcom/speedsoftware/a/bf;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/speedsoftware/a/bf;->c:Lcom/speedsoftware/a/bf;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/bf;->b(S)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/speedsoftware/a/bf;->c:Lcom/speedsoftware/a/bf;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/speedsoftware/a/bf;->d:Lcom/speedsoftware/a/bf;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/bf;->b(S)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/speedsoftware/a/bf;->d:Lcom/speedsoftware/a/bf;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/speedsoftware/a/bf;->e:Lcom/speedsoftware/a/bf;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/bf;->b(S)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/speedsoftware/a/bf;->e:Lcom/speedsoftware/a/bf;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/speedsoftware/a/bf;->f:Lcom/speedsoftware/a/bf;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/bf;->b(S)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/speedsoftware/a/bf;->f:Lcom/speedsoftware/a/bf;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(S)Z
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/bf;->g:S

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/speedsoftware/a/bf;
    .locals 1

    const-class v0, Lcom/speedsoftware/a/bf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/bf;

    return-object v0
.end method

.method public static values()[Lcom/speedsoftware/a/bf;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/speedsoftware/a/bf;->h:[Lcom/speedsoftware/a/bf;

    array-length v1, v0

    new-array v2, v1, [Lcom/speedsoftware/a/bf;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/bf;->g:S

    return v0
.end method
