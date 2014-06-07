.class public final enum Lcom/speedsoftware/a/au;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/speedsoftware/a/au;

.field public static final enum b:Lcom/speedsoftware/a/au;

.field public static final enum c:Lcom/speedsoftware/a/au;

.field private static final synthetic e:[Lcom/speedsoftware/a/au;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/speedsoftware/a/au;

    const-string v1, "VM_FC"

    invoke-direct {v0, v1, v5, v3}, Lcom/speedsoftware/a/au;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    new-instance v0, Lcom/speedsoftware/a/au;

    const-string v1, "VM_FZ"

    invoke-direct {v0, v1, v3, v4}, Lcom/speedsoftware/a/au;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    new-instance v0, Lcom/speedsoftware/a/au;

    const-string v1, "VM_FS"

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v4, v2}, Lcom/speedsoftware/a/au;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/speedsoftware/a/au;

    sget-object v1, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    aput-object v1, v0, v5

    sget-object v1, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    aput-object v1, v0, v3

    sget-object v1, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    aput-object v1, v0, v4

    sput-object v0, Lcom/speedsoftware/a/au;->e:[Lcom/speedsoftware/a/au;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/speedsoftware/a/au;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/speedsoftware/a/au;
    .locals 1

    const-class v0, Lcom/speedsoftware/a/au;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/au;

    return-object v0
.end method

.method public static values()[Lcom/speedsoftware/a/au;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/speedsoftware/a/au;->e:[Lcom/speedsoftware/a/au;

    array-length v1, v0

    new-array v2, v1, [Lcom/speedsoftware/a/au;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/au;->d:I

    return v0
.end method
