.class public final Lcom/android/dx/io/instructions/ShortArrayCodeOutput;
.super Lcom/android/dx/io/instructions/BaseCodeCursor;

# interfaces
.implements Lcom/android/dx/io/instructions/CodeOutput;


# instance fields
.field private final array:[S


# direct methods
.method public constructor <init>(I)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/android/dx/io/instructions/BaseCodeCursor;-><init>()V

    #@3
    if-gez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "maxSize < 0"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    new-array v0, p1, [S

    #@f
    iput-object v0, p0, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    #@11
    return-void
.end method


# virtual methods
.method public getArray()[S
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->cursor()I

    #@4
    move-result v1

    #@5
    iget-object v0, p0, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    #@7
    array-length v0, v0

    #@8
    if-ne v1, v0, :cond_d

    #@a
    iget-object v0, p0, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    new-array v0, v1, [S

    #@f
    iget-object v2, p0, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    #@11
    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14
    goto :goto_c
.end method

.method public write(S)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->array:[S

    #@2
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->cursor()I

    #@5
    move-result v1

    #@6
    int-to-short v2, p1

    #@7
    aput-short v2, v0, v1

    #@9
    const/4 v0, 0x1

    #@a
    invoke-virtual {p0, v0}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->advance(I)V

    #@d
    return-void
.end method

.method public write(SS)V
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@3
    invoke-virtual {p0, p2}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@6
    return-void
.end method

.method public write(SSS)V
    .registers 4

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@3
    invoke-virtual {p0, p2}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@6
    invoke-virtual {p0, p3}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@9
    return-void
.end method

.method public write(SSSS)V
    .registers 5

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@3
    invoke-virtual {p0, p2}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@6
    invoke-virtual {p0, p3}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@9
    invoke-virtual {p0, p4}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@c
    return-void
.end method

.method public write(SSSSS)V
    .registers 6

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@3
    invoke-virtual {p0, p2}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@6
    invoke-virtual {p0, p3}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@9
    invoke-virtual {p0, p4}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@c
    invoke-virtual {p0, p5}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@f
    return-void
.end method

.method public write([B)V
    .registers 9

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    array-length v5, p1

    #@3
    move v4, v1

    #@4
    move v0, v2

    #@5
    move v3, v1

    #@6
    :goto_6
    if-ge v4, v5, :cond_1d

    #@8
    aget-byte v6, p1, v4

    #@a
    if-eqz v0, :cond_13

    #@c
    and-int/lit16 v0, v6, 0xff

    #@e
    move v3, v0

    #@f
    move v0, v1

    #@10
    :goto_10
    add-int/lit8 v4, v4, 0x1

    #@12
    goto :goto_6

    #@13
    :cond_13
    shl-int/lit8 v0, v6, 0x8

    #@15
    or-int/2addr v0, v3

    #@16
    int-to-short v3, v0

    #@17
    invoke-virtual {p0, v3}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@1a
    move v3, v0

    #@1b
    move v0, v2

    #@1c
    goto :goto_10

    #@1d
    :cond_1d
    if-nez v0, :cond_23

    #@1f
    int-to-short v0, v3

    #@20
    invoke-virtual {p0, v0}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@23
    :cond_23
    return-void
.end method

.method public write([I)V
    .registers 5

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_c

    #@4
    aget v2, p1, v0

    #@6
    invoke-virtual {p0, v2}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->writeInt(I)V

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_2

    #@c
    :cond_c
    return-void
.end method

.method public write([J)V
    .registers 6

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_c

    #@4
    aget-wide v2, p1, v0

    #@6
    invoke-virtual {p0, v2, v3}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->writeLong(J)V

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_2

    #@c
    :cond_c
    return-void
.end method

.method public write([S)V
    .registers 5

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_c

    #@4
    aget-short v2, p1, v0

    #@6
    invoke-virtual {p0, v2}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_2

    #@c
    :cond_c
    return-void
.end method

.method public writeInt(I)V
    .registers 3

    #@0
    int-to-short v0, p1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@4
    shr-int/lit8 v0, p1, 0x10

    #@6
    int-to-short v0, v0

    #@7
    invoke-virtual {p0, v0}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@a
    return-void
.end method

.method public writeLong(J)V
    .registers 6

    #@0
    long-to-int v0, p1

    #@1
    int-to-short v0, v0

    #@2
    invoke-virtual {p0, v0}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@5
    const/16 v0, 0x10

    #@7
    shr-long v0, p1, v0

    #@9
    long-to-int v0, v0

    #@a
    int-to-short v0, v0

    #@b
    invoke-virtual {p0, v0}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@e
    const/16 v0, 0x20

    #@10
    shr-long v0, p1, v0

    #@12
    long-to-int v0, v0

    #@13
    int-to-short v0, v0

    #@14
    invoke-virtual {p0, v0}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@17
    const/16 v0, 0x30

    #@19
    shr-long v0, p1, v0

    #@1b
    long-to-int v0, v0

    #@1c
    int-to-short v0, v0

    #@1d
    invoke-virtual {p0, v0}, Lcom/android/dx/io/instructions/ShortArrayCodeOutput;->write(S)V

    #@20
    return-void
.end method
