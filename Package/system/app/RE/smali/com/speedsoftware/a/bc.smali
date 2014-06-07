.class public final Lcom/speedsoftware/a/bc;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x100

    const/4 v2, 0x0

    new-array v0, v5, [I

    sput-object v0, Lcom/speedsoftware/a/bc;->a:[I

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    return-void

    :cond_0
    move v1, v2

    move v0, v3

    :goto_1
    const/16 v4, 0x8

    if-lt v1, v4, :cond_1

    sget-object v1, Lcom/speedsoftware/a/bc;->a:[I

    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2

    ushr-int/lit8 v0, v0, 0x1

    const v4, -0x12477ce0

    xor-int/2addr v0, v4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[BII)I
    .locals 4

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return p0

    :cond_0
    sget-object v2, Lcom/speedsoftware/a/bc;->a:[I

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    xor-int/2addr v3, p0

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    ushr-int/lit8 v3, p0, 0x8

    xor-int p0, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(S[BI)S
    .locals 4

    array-length v0, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return p0

    :cond_0
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    add-int/2addr v2, p0

    int-to-short v2, v2

    and-int/lit8 v2, v2, -0x1

    int-to-short v2, v2

    shl-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    and-int/lit8 v2, v2, -0x1

    int-to-short p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
