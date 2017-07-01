.class public final Lcom/android/dx/util/ByteArray;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/util/ByteArray$GetCursor;,
        Lcom/android/dx/util/ByteArray$MyDataInputStream;,
        Lcom/android/dx/util/ByteArray$MyInputStream;
    }
.end annotation


# instance fields
.field private final bytes:[B

.field private final size:I

.field private final start:I


# direct methods
.method public constructor <init>([B)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p1

    #@2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/dx/util/ByteArray;-><init>([BII)V

    #@5
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "bytes == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-gez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string v1, "start < 0"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    if-ge p3, p2, :cond_21

    #@19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string v1, "end < start"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    array-length v0, p1

    #@22
    if-le p3, v0, :cond_2c

    #@24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    const-string v1, "end > bytes.length"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    :cond_2c
    iput-object p1, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    #@2e
    iput p2, p0, Lcom/android/dx/util/ByteArray;->start:I

    #@30
    sub-int v0, p3, p2

    #@32
    iput v0, p0, Lcom/android/dx/util/ByteArray;->size:I

    #@34
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/util/ByteArray;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArray;->size:I

    #@2
    return v0
.end method

.method static synthetic access$100(Lcom/android/dx/util/ByteArray;I)I
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$200(Lcom/android/dx/util/ByteArray;)[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    #@2
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dx/util/ByteArray;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArray;->start:I

    #@2
    return v0
.end method

.method private checkOffsets(II)V
    .registers 6

    #@0
    if-ltz p1, :cond_8

    #@2
    if-lt p2, p1, :cond_8

    #@4
    iget v0, p0, Lcom/android/dx/util/ByteArray;->size:I

    #@6
    if-le p2, v0, :cond_37

    #@8
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "bad range: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string v2, ".."

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string v2, "; actual size "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Lcom/android/dx/util/ByteArray;->size:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    return-void
.end method

.method private getByte0(I)I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    #@2
    iget v1, p0, Lcom/android/dx/util/ByteArray;->start:I

    #@4
    add-int/2addr v1, p1

    #@5
    aget-byte v0, v0, v1

    #@7
    return v0
.end method

.method private getUnsignedByte0(I)I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    #@2
    iget v1, p0, Lcom/android/dx/util/ByteArray;->start:I

    #@4
    add-int/2addr v1, p1

    #@5
    aget-byte v0, v0, v1

    #@7
    and-int/lit16 v0, v0, 0xff

    #@9
    return v0
.end method


# virtual methods
.method public getByte(I)I
    .registers 3

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    #@5
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getByte0(I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getBytes([BI)V
    .registers 6

    #@0
    array-length v0, p1

    #@1
    sub-int/2addr v0, p2

    #@2
    iget v1, p0, Lcom/android/dx/util/ByteArray;->size:I

    #@4
    if-ge v0, v1, :cond_e

    #@6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    const-string v1, "(out.length - offset) < size()"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iget-object v0, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    #@10
    iget v1, p0, Lcom/android/dx/util/ByteArray;->start:I

    #@12
    iget v2, p0, Lcom/android/dx/util/ByteArray;->size:I

    #@14
    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17
    return-void
.end method

.method public getInt(I)I
    .registers 4

    #@0
    add-int/lit8 v0, p1, 0x4

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    #@5
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getByte0(I)I

    #@8
    move-result v0

    #@9
    shl-int/lit8 v0, v0, 0x18

    #@b
    add-int/lit8 v1, p1, 0x1

    #@d
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@10
    move-result v1

    #@11
    shl-int/lit8 v1, v1, 0x10

    #@13
    or-int/2addr v0, v1

    #@14
    add-int/lit8 v1, p1, 0x2

    #@16
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@19
    move-result v1

    #@1a
    shl-int/lit8 v1, v1, 0x8

    #@1c
    or-int/2addr v0, v1

    #@1d
    add-int/lit8 v1, p1, 0x3

    #@1f
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@22
    move-result v1

    #@23
    or-int/2addr v0, v1

    #@24
    return v0
.end method

.method public getLong(I)J
    .registers 10

    #@0
    add-int/lit8 v0, p1, 0x8

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    #@5
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getByte0(I)I

    #@8
    move-result v0

    #@9
    add-int/lit8 v1, p1, 0x1

    #@b
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@e
    move-result v1

    #@f
    add-int/lit8 v2, p1, 0x2

    #@11
    invoke-direct {p0, v2}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@14
    move-result v2

    #@15
    add-int/lit8 v3, p1, 0x3

    #@17
    invoke-direct {p0, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@1a
    move-result v3

    #@1b
    add-int/lit8 v4, p1, 0x4

    #@1d
    invoke-direct {p0, v4}, Lcom/android/dx/util/ByteArray;->getByte0(I)I

    #@20
    move-result v4

    #@21
    shl-int/lit8 v4, v4, 0x18

    #@23
    add-int/lit8 v5, p1, 0x5

    #@25
    invoke-direct {p0, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@28
    move-result v5

    #@29
    shl-int/lit8 v5, v5, 0x10

    #@2b
    or-int/2addr v4, v5

    #@2c
    add-int/lit8 v5, p1, 0x6

    #@2e
    invoke-direct {p0, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@31
    move-result v5

    #@32
    shl-int/lit8 v5, v5, 0x8

    #@34
    or-int/2addr v4, v5

    #@35
    add-int/lit8 v5, p1, 0x7

    #@37
    invoke-direct {p0, v5}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@3a
    move-result v5

    #@3b
    or-int/2addr v4, v5

    #@3c
    int-to-long v4, v4

    #@3d
    const-wide v6, 0xffffffffL

    #@42
    and-long/2addr v4, v6

    #@43
    shl-int/lit8 v0, v0, 0x18

    #@45
    shl-int/lit8 v1, v1, 0x10

    #@47
    or-int/2addr v0, v1

    #@48
    shl-int/lit8 v1, v2, 0x8

    #@4a
    or-int/2addr v0, v1

    #@4b
    or-int/2addr v0, v3

    #@4c
    int-to-long v0, v0

    #@4d
    const/16 v2, 0x20

    #@4f
    shl-long/2addr v0, v2

    #@50
    or-long/2addr v0, v4

    #@51
    return-wide v0
.end method

.method public getShort(I)I
    .registers 4

    #@0
    add-int/lit8 v0, p1, 0x2

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    #@5
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getByte0(I)I

    #@8
    move-result v0

    #@9
    shl-int/lit8 v0, v0, 0x8

    #@b
    add-int/lit8 v1, p1, 0x1

    #@d
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@10
    move-result v1

    #@11
    or-int/2addr v0, v1

    #@12
    return v0
.end method

.method public getUnsignedByte(I)I
    .registers 3

    #@0
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    #@5
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getUnsignedShort(I)I
    .registers 4

    #@0
    add-int/lit8 v0, p1, 0x2

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    #@5
    invoke-direct {p0, p1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@8
    move-result v0

    #@9
    shl-int/lit8 v0, v0, 0x8

    #@b
    add-int/lit8 v1, p1, 0x1

    #@d
    invoke-direct {p0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte0(I)I

    #@10
    move-result v1

    #@11
    or-int/2addr v0, v1

    #@12
    return v0
.end method

.method public makeDataInputStream()Lcom/android/dx/util/ByteArray$MyDataInputStream;
    .registers 3

    #@0
    new-instance v0, Lcom/android/dx/util/ByteArray$MyDataInputStream;

    #@2
    invoke-virtual {p0}, Lcom/android/dx/util/ByteArray;->makeInputStream()Lcom/android/dx/util/ByteArray$MyInputStream;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/dx/util/ByteArray$MyDataInputStream;-><init>(Lcom/android/dx/util/ByteArray$MyInputStream;)V

    #@9
    return-object v0
.end method

.method public makeInputStream()Lcom/android/dx/util/ByteArray$MyInputStream;
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/util/ByteArray$MyInputStream;

    #@2
    invoke-direct {v0, p0}, Lcom/android/dx/util/ByteArray$MyInputStream;-><init>(Lcom/android/dx/util/ByteArray;)V

    #@5
    return-object v0
.end method

.method public size()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/util/ByteArray;->size:I

    #@2
    return v0
.end method

.method public slice(II)Lcom/android/dx/util/ByteArray;
    .registers 7

    #@0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/util/ByteArray;->checkOffsets(II)V

    #@3
    new-instance v0, Lcom/android/dx/util/ByteArray;

    #@5
    iget-object v1, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    #@7
    iget v2, p0, Lcom/android/dx/util/ByteArray;->start:I

    #@9
    add-int/2addr v2, p1

    #@a
    iget v3, p0, Lcom/android/dx/util/ByteArray;->start:I

    #@c
    add-int/2addr v3, p2

    #@d
    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/util/ByteArray;-><init>([BII)V

    #@10
    return-object v0
.end method

.method public underlyingOffset(I[B)I
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/util/ByteArray;->bytes:[B

    #@2
    if-eq p2, v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string v1, "wrong bytes"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/android/dx/util/ByteArray;->start:I

    #@e
    add-int/2addr v0, p1

    #@f
    return v0
.end method
