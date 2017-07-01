.class public final Lcom/android/dx/util/Mutf8;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static countBytes(Ljava/lang/String;Z)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    const-wide/16 v0, 0x0

    #@6
    const/4 v2, 0x0

    #@7
    :goto_7
    if-ge v2, v3, :cond_36

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_27

    #@f
    const/16 v5, 0x7f

    #@11
    if-gt v4, v5, :cond_27

    #@13
    const-wide/16 v4, 0x1

    #@15
    add-long/2addr v0, v4

    #@16
    :goto_16
    if-eqz p1, :cond_33

    #@18
    const-wide/32 v4, 0xffff

    #@1b
    cmp-long v4, v0, v4

    #@1d
    if-lez v4, :cond_33

    #@1f
    new-instance v0, Ljava/io/UTFDataFormatException;

    #@21
    const-string v1, "String more than 65535 UTF bytes long"

    #@23
    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    :cond_27
    const/16 v5, 0x7ff

    #@29
    if-gt v4, v5, :cond_2f

    #@2b
    const-wide/16 v4, 0x2

    #@2d
    add-long/2addr v0, v4

    #@2e
    goto :goto_16

    #@2f
    :cond_2f
    const-wide/16 v4, 0x3

    #@31
    add-long/2addr v0, v4

    #@32
    goto :goto_16

    #@33
    :cond_33
    add-int/lit8 v2, v2, 0x1

    #@35
    goto :goto_7

    #@36
    :cond_36
    return-wide v0
.end method

.method public static decode(Lcom/android/dx/util/ByteInput;[C)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/16 v6, 0x80

    #@3
    move v0, v1

    #@4
    :goto_4
    invoke-interface {p0}, Lcom/android/dx/util/ByteInput;->readByte()B

    #@7
    move-result v2

    #@8
    and-int/lit16 v2, v2, 0xff

    #@a
    int-to-char v2, v2

    #@b
    if-nez v2, :cond_13

    #@d
    new-instance v2, Ljava/lang/String;

    #@f
    invoke-direct {v2, p1, v1, v0}, Ljava/lang/String;-><init>([CII)V

    #@12
    return-object v2

    #@13
    :cond_13
    int-to-char v3, v2

    #@14
    aput-char v3, p1, v0

    #@16
    if-ge v2, v6, :cond_1b

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_4

    #@1b
    :cond_1b
    and-int/lit16 v3, v2, 0xe0

    #@1d
    const/16 v4, 0xc0

    #@1f
    if-ne v3, v4, :cond_41

    #@21
    invoke-interface {p0}, Lcom/android/dx/util/ByteInput;->readByte()B

    #@24
    move-result v3

    #@25
    and-int/lit16 v3, v3, 0xff

    #@27
    and-int/lit16 v4, v3, 0xc0

    #@29
    if-eq v4, v6, :cond_33

    #@2b
    new-instance v0, Ljava/io/UTFDataFormatException;

    #@2d
    const-string v1, "bad second byte"

    #@2f
    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    :cond_33
    and-int/lit8 v2, v2, 0x1f

    #@35
    shl-int/lit8 v2, v2, 0x6

    #@37
    and-int/lit8 v3, v3, 0x3f

    #@39
    or-int/2addr v2, v3

    #@3a
    int-to-char v2, v2

    #@3b
    int-to-char v2, v2

    #@3c
    aput-char v2, p1, v0

    #@3e
    add-int/lit8 v0, v0, 0x1

    #@40
    goto :goto_4

    #@41
    :cond_41
    and-int/lit16 v3, v2, 0xf0

    #@43
    const/16 v4, 0xe0

    #@45
    if-ne v3, v4, :cond_76

    #@47
    invoke-interface {p0}, Lcom/android/dx/util/ByteInput;->readByte()B

    #@4a
    move-result v3

    #@4b
    and-int/lit16 v3, v3, 0xff

    #@4d
    invoke-interface {p0}, Lcom/android/dx/util/ByteInput;->readByte()B

    #@50
    move-result v4

    #@51
    and-int/lit16 v4, v4, 0xff

    #@53
    and-int/lit16 v5, v3, 0xc0

    #@55
    if-ne v5, v6, :cond_5b

    #@57
    and-int/lit16 v5, v4, 0xc0

    #@59
    if-eq v5, v6, :cond_63

    #@5b
    :cond_5b
    new-instance v0, Ljava/io/UTFDataFormatException;

    #@5d
    const-string v1, "bad second or third byte"

    #@5f
    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    :cond_63
    and-int/lit8 v2, v2, 0xf

    #@65
    shl-int/lit8 v2, v2, 0xc

    #@67
    and-int/lit8 v3, v3, 0x3f

    #@69
    shl-int/lit8 v3, v3, 0x6

    #@6b
    or-int/2addr v2, v3

    #@6c
    and-int/lit8 v3, v4, 0x3f

    #@6e
    or-int/2addr v2, v3

    #@6f
    int-to-char v2, v2

    #@70
    int-to-char v2, v2

    #@71
    aput-char v2, p1, v0

    #@73
    add-int/lit8 v0, v0, 0x1

    #@75
    goto :goto_4

    #@76
    :cond_76
    new-instance v0, Ljava/io/UTFDataFormatException;

    #@78
    const-string v1, "bad byte"

    #@7a
    invoke-direct {v0, v1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v0
.end method

.method public static encode([BILjava/lang/String;)V
    .registers 9

    #@0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    if-ge v1, v2, :cond_5a

    #@8
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1c

    #@e
    const/16 v0, 0x7f

    #@10
    if-gt v3, v0, :cond_1c

    #@12
    add-int/lit8 v0, p1, 0x1

    #@14
    int-to-byte v3, v3

    #@15
    int-to-byte v3, v3

    #@16
    aput-byte v3, p0, p1

    #@18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    #@1a
    move p1, v0

    #@1b
    goto :goto_6

    #@1c
    :cond_1c
    const/16 v0, 0x7ff

    #@1e
    if-gt v3, v0, :cond_37

    #@20
    add-int/lit8 v4, p1, 0x1

    #@22
    shr-int/lit8 v0, v3, 0x6

    #@24
    and-int/lit8 v0, v0, 0x1f

    #@26
    or-int/lit16 v0, v0, 0xc0

    #@28
    int-to-byte v0, v0

    #@29
    int-to-byte v0, v0

    #@2a
    aput-byte v0, p0, p1

    #@2c
    add-int/lit8 v0, v4, 0x1

    #@2e
    and-int/lit8 v3, v3, 0x3f

    #@30
    or-int/lit16 v3, v3, 0x80

    #@32
    int-to-byte v3, v3

    #@33
    int-to-byte v3, v3

    #@34
    aput-byte v3, p0, v4

    #@36
    goto :goto_18

    #@37
    :cond_37
    add-int/lit8 v0, p1, 0x1

    #@39
    shr-int/lit8 v4, v3, 0xc

    #@3b
    and-int/lit8 v4, v4, 0xf

    #@3d
    or-int/lit16 v4, v4, 0xe0

    #@3f
    int-to-byte v4, v4

    #@40
    int-to-byte v4, v4

    #@41
    aput-byte v4, p0, p1

    #@43
    add-int/lit8 v4, v0, 0x1

    #@45
    shr-int/lit8 v5, v3, 0x6

    #@47
    and-int/lit8 v5, v5, 0x3f

    #@49
    or-int/lit16 v5, v5, 0x80

    #@4b
    int-to-byte v5, v5

    #@4c
    int-to-byte v5, v5

    #@4d
    aput-byte v5, p0, v0

    #@4f
    add-int/lit8 v0, v4, 0x1

    #@51
    and-int/lit8 v3, v3, 0x3f

    #@53
    or-int/lit16 v3, v3, 0x80

    #@55
    int-to-byte v3, v3

    #@56
    int-to-byte v3, v3

    #@57
    aput-byte v3, p0, v4

    #@59
    goto :goto_18

    #@5a
    :cond_5a
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Lcom/android/dx/util/Mutf8;->countBytes(Ljava/lang/String;Z)J

    #@4
    move-result-wide v0

    #@5
    long-to-int v0, v0

    #@6
    new-array v0, v0, [B

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v1, p0}, Lcom/android/dx/util/Mutf8;->encode([BILjava/lang/String;)V

    #@c
    return-object v0
.end method
