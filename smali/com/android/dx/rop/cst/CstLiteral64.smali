.class public abstract Lcom/android/dx/rop/cst/CstLiteral64;
.super Lcom/android/dx/rop/cst/CstLiteralBits;


# instance fields
.field private final bits:J


# direct methods
.method constructor <init>(J)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/android/dx/rop/cst/CstLiteralBits;-><init>()V

    #@3
    iput-wide p1, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@5
    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .registers 6

    #@0
    check-cast p1, Lcom/android/dx/rop/cst/CstLiteral64;

    #@2
    iget-wide v0, p1, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@4
    iget-wide v2, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@6
    cmp-long v2, v2, v0

    #@8
    if-gez v2, :cond_c

    #@a
    const/4 v0, -0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    iget-wide v2, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@e
    cmp-long v0, v2, v0

    #@10
    if-lez v0, :cond_14

    #@12
    const/4 v0, 0x1

    #@13
    goto :goto_b

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_b
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    if-eqz p1, :cond_18

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v1

    #@a
    if-ne v0, v1, :cond_18

    #@c
    iget-wide v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@e
    check-cast p1, Lcom/android/dx/rop/cst/CstLiteral64;

    #@10
    iget-wide v2, p1, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@12
    cmp-long v0, v0, v2

    #@14
    if-nez v0, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    :goto_17
    return v0

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    goto :goto_17
.end method

.method public final fitsInInt()Z
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@2
    long-to-int v0, v0

    #@3
    int-to-long v0, v0

    #@4
    iget-wide v2, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method public final getIntBits()I
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method

.method public final getLongBits()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@2
    return-wide v0
.end method

.method public final hashCode()I
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@2
    long-to-int v0, v0

    #@3
    iget-wide v2, p0, Lcom/android/dx/rop/cst/CstLiteral64;->bits:J

    #@5
    const/16 v1, 0x20

    #@7
    shr-long/2addr v2, v1

    #@8
    long-to-int v1, v2

    #@9
    xor-int/2addr v0, v1

    #@a
    return v0
.end method

.method public final isCategory2()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
