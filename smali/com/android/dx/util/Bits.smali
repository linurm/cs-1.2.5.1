.class public final Lcom/android/dx/util/Bits;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static anyInRange([III)Z
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/android/dx/util/Bits;->findFirst([II)I

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_a

    #@6
    if-ge v0, p2, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public static bitCount([I)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    array-length v2, p0

    #@2
    move v1, v0

    #@3
    :goto_3
    if-ge v0, v2, :cond_f

    #@5
    aget v3, p0, v0

    #@7
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    #@a
    move-result v3

    #@b
    add-int/2addr v1, v3

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_3

    #@f
    :cond_f
    return v1
.end method

.method public static clear([II)V
    .registers 5

    #@0
    shr-int/lit8 v0, p1, 0x5

    #@2
    const/4 v1, 0x1

    #@3
    and-int/lit8 v2, p1, 0x1f

    #@5
    shl-int/2addr v1, v2

    #@6
    xor-int/lit8 v1, v1, -0x1

    #@8
    aget v2, p0, v0

    #@a
    and-int/2addr v1, v2

    #@b
    aput v1, p0, v0

    #@d
    return-void
.end method

.method public static findFirst(II)I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    shl-int/2addr v0, p1

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    xor-int/lit8 v0, v0, -0x1

    #@6
    and-int/2addr v0, p0

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@a
    move-result v0

    #@b
    const/16 v1, 0x20

    #@d
    if-ne v0, v1, :cond_10

    #@f
    const/4 v0, -0x1

    #@10
    :cond_10
    return v0
.end method

.method public static findFirst([II)I
    .registers 6

    #@0
    array-length v2, p0

    #@1
    and-int/lit8 v0, p1, 0x1f

    #@3
    shr-int/lit8 v1, p1, 0x5

    #@5
    :goto_5
    if-ge v1, v2, :cond_19

    #@7
    aget v3, p0, v1

    #@9
    if-eqz v3, :cond_15

    #@b
    invoke-static {v3, v0}, Lcom/android/dx/util/Bits;->findFirst(II)I

    #@e
    move-result v0

    #@f
    if-ltz v0, :cond_15

    #@11
    shl-int/lit8 v1, v1, 0x5

    #@13
    add-int/2addr v0, v1

    #@14
    :goto_14
    return v0

    #@15
    :cond_15
    const/4 v0, 0x0

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_5

    #@19
    :cond_19
    const/4 v0, -0x1

    #@1a
    goto :goto_14
.end method

.method public static get([II)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    shr-int/lit8 v1, p1, 0x5

    #@3
    aget v1, p0, v1

    #@5
    and-int/lit8 v2, p1, 0x1f

    #@7
    shl-int v2, v0, v2

    #@9
    and-int/2addr v1, v2

    #@a
    if-eqz v1, :cond_d

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_c
.end method

.method public static getMax([I)I
    .registers 2

    #@0
    array-length v0, p0

    #@1
    mul-int/lit8 v0, v0, 0x20

    #@3
    return v0
.end method

.method public static isEmpty([I)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    array-length v2, p0

    #@2
    move v1, v0

    #@3
    :goto_3
    if-ge v1, v2, :cond_d

    #@5
    aget v3, p0, v1

    #@7
    if-eqz v3, :cond_a

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    add-int/lit8 v1, v1, 0x1

    #@c
    goto :goto_3

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    goto :goto_9
.end method

.method public static makeBitSet(I)[I
    .registers 2

    #@0
    add-int/lit8 v0, p0, 0x1f

    #@2
    shr-int/lit8 v0, v0, 0x5

    #@4
    new-array v0, v0, [I

    #@6
    return-object v0
.end method

.method public static or([I[I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_e

    #@4
    aget v1, p0, v0

    #@6
    aget v2, p1, v0

    #@8
    or-int/2addr v1, v2

    #@9
    aput v1, p0, v0

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_1

    #@e
    :cond_e
    return-void
.end method

.method public static set([II)V
    .registers 5

    #@0
    shr-int/lit8 v0, p1, 0x5

    #@2
    const/4 v1, 0x1

    #@3
    and-int/lit8 v2, p1, 0x1f

    #@5
    shl-int/2addr v1, v2

    #@6
    aget v2, p0, v0

    #@8
    or-int/2addr v1, v2

    #@9
    aput v1, p0, v0

    #@b
    return-void
.end method

.method public static set([IIZ)V
    .registers 6

    #@0
    shr-int/lit8 v0, p1, 0x5

    #@2
    const/4 v1, 0x1

    #@3
    and-int/lit8 v2, p1, 0x1f

    #@5
    shl-int/2addr v1, v2

    #@6
    if-eqz p2, :cond_e

    #@8
    aget v2, p0, v0

    #@a
    or-int/2addr v1, v2

    #@b
    aput v1, p0, v0

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    xor-int/lit8 v1, v1, -0x1

    #@10
    aget v2, p0, v0

    #@12
    and-int/2addr v1, v2

    #@13
    aput v1, p0, v0

    #@15
    goto :goto_d
.end method

.method public static toHuman([I)Ljava/lang/String;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const/16 v1, 0x7b

    #@8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b
    array-length v3, p0

    #@c
    move v1, v0

    #@d
    :goto_d
    mul-int/lit8 v4, v3, 0x20

    #@f
    if-ge v1, v4, :cond_25

    #@11
    invoke-static {p0, v1}, Lcom/android/dx/util/Bits;->get([II)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_22

    #@17
    if-eqz v0, :cond_1e

    #@19
    const/16 v0, 0x2c

    #@1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    :cond_1e
    const/4 v0, 0x1

    #@1f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    :cond_22
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_d

    #@25
    :cond_25
    const/16 v0, 0x7d

    #@27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method
