.class public final Lcom/android/dx/util/Leb128Utils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static readSignedLeb128(Lcom/android/dx/util/ByteInput;)I
    .registers 8

    #@0
    const/16 v6, 0x80

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v0, -0x1

    #@4
    move v2, v1

    #@5
    :cond_5
    invoke-interface {p0}, Lcom/android/dx/util/ByteInput;->readByte()B

    #@8
    move-result v3

    #@9
    and-int/lit16 v3, v3, 0xff

    #@b
    and-int/lit8 v4, v3, 0x7f

    #@d
    mul-int/lit8 v5, v1, 0x7

    #@f
    shl-int/2addr v4, v5

    #@10
    or-int/2addr v2, v4

    #@11
    shl-int/lit8 v0, v0, 0x7

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    and-int/lit16 v4, v3, 0x80

    #@17
    if-ne v4, v6, :cond_1c

    #@19
    const/4 v4, 0x5

    #@1a
    if-lt v1, v4, :cond_5

    #@1c
    :cond_1c
    and-int/lit16 v1, v3, 0x80

    #@1e
    if-ne v1, v6, :cond_28

    #@20
    new-instance v0, Lcom/android/dx/util/DexException;

    #@22
    const-string v1, "invalid LEB128 sequence"

    #@24
    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    :cond_28
    shr-int/lit8 v1, v0, 0x1

    #@2a
    and-int/2addr v1, v2

    #@2b
    if-eqz v1, :cond_2e

    #@2d
    or-int/2addr v2, v0

    #@2e
    :cond_2e
    return v2
.end method

.method public static readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I
    .registers 7

    #@0
    const/16 v5, 0x80

    #@2
    const/4 v0, 0x0

    #@3
    move v1, v0

    #@4
    :cond_4
    invoke-interface {p0}, Lcom/android/dx/util/ByteInput;->readByte()B

    #@7
    move-result v2

    #@8
    and-int/lit16 v2, v2, 0xff

    #@a
    and-int/lit8 v3, v2, 0x7f

    #@c
    mul-int/lit8 v4, v0, 0x7

    #@e
    shl-int/2addr v3, v4

    #@f
    or-int/2addr v1, v3

    #@10
    add-int/lit8 v0, v0, 0x1

    #@12
    and-int/lit16 v3, v2, 0x80

    #@14
    if-ne v3, v5, :cond_19

    #@16
    const/4 v3, 0x5

    #@17
    if-lt v0, v3, :cond_4

    #@19
    :cond_19
    and-int/lit16 v0, v2, 0x80

    #@1b
    if-ne v0, v5, :cond_25

    #@1d
    new-instance v0, Lcom/android/dx/util/DexException;

    #@1f
    const-string v1, "invalid LEB128 sequence"

    #@21
    invoke-direct {v0, v1}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    return v1
.end method

.method public static signedLeb128Size(I)I
    .registers 8

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/high16 v0, -0x80000000

    #@4
    and-int/2addr v0, p0

    #@5
    if-nez v0, :cond_20

    #@7
    move v0, v1

    #@8
    :goto_8
    shr-int/lit8 v4, p0, 0x7

    #@a
    move v5, v1

    #@b
    move v2, v3

    #@c
    :goto_c
    if-eqz v2, :cond_24

    #@e
    if-ne v4, v0, :cond_18

    #@10
    and-int/lit8 v2, v4, 0x1

    #@12
    shr-int/lit8 v6, p0, 0x6

    #@14
    and-int/lit8 v6, v6, 0x1

    #@16
    if-eq v2, v6, :cond_22

    #@18
    :cond_18
    move v2, v3

    #@19
    :goto_19
    add-int/lit8 v5, v5, 0x1

    #@1b
    shr-int/lit8 v6, v4, 0x7

    #@1d
    move p0, v4

    #@1e
    move v4, v6

    #@1f
    goto :goto_c

    #@20
    :cond_20
    const/4 v0, -0x1

    #@21
    goto :goto_8

    #@22
    :cond_22
    move v2, v1

    #@23
    goto :goto_19

    #@24
    :cond_24
    return v5
.end method

.method public static unsignedLeb128Size(I)I
    .registers 3

    #@0
    shr-int/lit8 v0, p0, 0x7

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    if-eqz v0, :cond_a

    #@5
    shr-int/lit8 v0, v0, 0x7

    #@7
    add-int/lit8 v1, v1, 0x1

    #@9
    goto :goto_3

    #@a
    :cond_a
    add-int/lit8 v0, v1, 0x1

    #@c
    return v0
.end method

.method public static writeSignedLeb128(Lcom/android/dx/util/ByteOutput;I)V
    .registers 9

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/high16 v0, -0x80000000

    #@4
    and-int/2addr v0, p1

    #@5
    if-nez v0, :cond_28

    #@7
    move v0, v1

    #@8
    :goto_8
    shr-int/lit8 v5, p1, 0x7

    #@a
    move v3, v4

    #@b
    :goto_b
    if-eqz v3, :cond_2e

    #@d
    if-ne v5, v0, :cond_17

    #@f
    and-int/lit8 v2, v5, 0x1

    #@11
    shr-int/lit8 v3, p1, 0x6

    #@13
    and-int/lit8 v3, v3, 0x1

    #@15
    if-eq v2, v3, :cond_2a

    #@17
    :cond_17
    move v3, v4

    #@18
    :goto_18
    if-eqz v3, :cond_2c

    #@1a
    const/16 v2, 0x80

    #@1c
    :goto_1c
    and-int/lit8 v6, p1, 0x7f

    #@1e
    or-int/2addr v2, v6

    #@1f
    int-to-byte v2, v2

    #@20
    invoke-interface {p0, v2}, Lcom/android/dx/util/ByteOutput;->writeByte(I)V

    #@23
    shr-int/lit8 v2, v5, 0x7

    #@25
    move p1, v5

    #@26
    move v5, v2

    #@27
    goto :goto_b

    #@28
    :cond_28
    const/4 v0, -0x1

    #@29
    goto :goto_8

    #@2a
    :cond_2a
    move v3, v1

    #@2b
    goto :goto_18

    #@2c
    :cond_2c
    move v2, v1

    #@2d
    goto :goto_1c

    #@2e
    :cond_2e
    return-void
.end method

.method public static writeUnsignedLeb128(Lcom/android/dx/util/ByteOutput;I)V
    .registers 4

    #@0
    ushr-int/lit8 v0, p1, 0x7

    #@2
    :goto_2
    if-eqz v0, :cond_11

    #@4
    and-int/lit8 v1, p1, 0x7f

    #@6
    or-int/lit16 v1, v1, 0x80

    #@8
    int-to-byte v1, v1

    #@9
    invoke-interface {p0, v1}, Lcom/android/dx/util/ByteOutput;->writeByte(I)V

    #@c
    ushr-int/lit8 v1, v0, 0x7

    #@e
    move p1, v0

    #@f
    move v0, v1

    #@10
    goto :goto_2

    #@11
    :cond_11
    and-int/lit8 v0, p1, 0x7f

    #@13
    int-to-byte v0, v0

    #@14
    invoke-interface {p0, v0}, Lcom/android/dx/util/ByteOutput;->writeByte(I)V

    #@17
    return-void
.end method
