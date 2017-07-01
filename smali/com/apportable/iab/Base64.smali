.class public Lcom/apportable/iab/Base64;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field public static final DECODE:Z = false

.field public static final ENCODE:Z = true

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:B = 0xat

.field private static final WEBSAFE_ALPHABET:[B

.field private static final WEBSAFE_DECODABET:[B

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/16 v2, 0x80

    #@2
    const/16 v1, 0x40

    #@4
    const-class v0, Lcom/apportable/iab/Base64;

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_2c

    #@c
    const/4 v0, 0x1

    #@d
    :goto_d
    sput-boolean v0, Lcom/apportable/iab/Base64;->$assertionsDisabled:Z

    #@f
    new-array v0, v1, [B

    #@11
    fill-array-data v0, :array_2e

    #@14
    sput-object v0, Lcom/apportable/iab/Base64;->ALPHABET:[B

    #@16
    new-array v0, v1, [B

    #@18
    fill-array-data v0, :array_52

    #@1b
    sput-object v0, Lcom/apportable/iab/Base64;->WEBSAFE_ALPHABET:[B

    #@1d
    new-array v0, v2, [B

    #@1f
    fill-array-data v0, :array_76

    #@22
    sput-object v0, Lcom/apportable/iab/Base64;->DECODABET:[B

    #@24
    new-array v0, v2, [B

    #@26
    fill-array-data v0, :array_ba

    #@29
    sput-object v0, Lcom/apportable/iab/Base64;->WEBSAFE_DECODABET:[B

    #@2b
    return-void

    #@2c
    :cond_2c
    const/4 v0, 0x0

    #@2d
    goto :goto_d

    #@2e
    :array_2e
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    #@52
    :array_52
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    #@76
    :array_76
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    #@ba
    :array_ba
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/Base64DecoderException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    array-length v2, v0

    #@6
    invoke-static {v0, v1, v2}, Lcom/apportable/iab/Base64;->decode([BII)[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static decode([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/Base64DecoderException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p0

    #@2
    invoke-static {p0, v0, v1}, Lcom/apportable/iab/Base64;->decode([BII)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static decode([BII)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/Base64DecoderException;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/apportable/iab/Base64;->DECODABET:[B

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/apportable/iab/Base64;->decode([BII[B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static decode([BII[B)[B
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/Base64DecoderException;
        }
    .end annotation

    #@0
    const/16 v11, 0x3d

    #@2
    const/4 v10, 0x4

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    mul-int/lit8 v0, p2, 0x3

    #@7
    div-int/lit8 v0, v0, 0x4

    #@9
    add-int/lit8 v0, v0, 0x2

    #@b
    new-array v5, v0, [B

    #@d
    new-array v6, v10, [B

    #@f
    move v4, v2

    #@10
    move v3, v2

    #@11
    move v0, v2

    #@12
    :goto_12
    if-ge v4, p2, :cond_bc

    #@14
    add-int v1, v4, p1

    #@16
    aget-byte v1, p0, v1

    #@18
    and-int/lit8 v1, v1, 0x7f

    #@1a
    int-to-byte v7, v1

    #@1b
    aget-byte v1, p3, v7

    #@1d
    const/4 v8, -0x5

    #@1e
    if-lt v1, v8, :cond_8f

    #@20
    const/4 v8, -0x1

    #@21
    if-lt v1, v8, :cond_e9

    #@23
    if-ne v7, v11, :cond_7d

    #@25
    sub-int v1, p2, v4

    #@27
    add-int/lit8 v7, p2, -0x1

    #@29
    add-int/2addr v7, p1

    #@2a
    aget-byte v7, p0, v7

    #@2c
    and-int/lit8 v7, v7, 0x7f

    #@2e
    int-to-byte v7, v7

    #@2f
    if-eqz v3, :cond_33

    #@31
    if-ne v3, v9, :cond_4c

    #@33
    :cond_33
    new-instance v0, Lcom/apportable/iab/Base64DecoderException;

    #@35
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string v2, "invalid padding byte \'=\' at byte offset "

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-direct {v0, v1}, Lcom/apportable/iab/Base64DecoderException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0

    #@4c
    :cond_4c
    const/4 v8, 0x3

    #@4d
    if-ne v3, v8, :cond_52

    #@4f
    const/4 v8, 0x2

    #@50
    if-gt v1, v8, :cond_56

    #@52
    :cond_52
    if-ne v3, v10, :cond_6f

    #@54
    if-le v1, v9, :cond_6f

    #@56
    :cond_56
    new-instance v0, Lcom/apportable/iab/Base64DecoderException;

    #@58
    new-instance v1, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string v2, "padding byte \'=\' falsely signals end of encoded value at offset "

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    invoke-direct {v0, v1}, Lcom/apportable/iab/Base64DecoderException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v0

    #@6f
    :cond_6f
    if-eq v7, v11, :cond_bc

    #@71
    const/16 v1, 0xa

    #@73
    if-eq v7, v1, :cond_bc

    #@75
    new-instance v0, Lcom/apportable/iab/Base64DecoderException;

    #@77
    const-string v1, "encoded value has invalid trailing byte"

    #@79
    invoke-direct {v0, v1}, Lcom/apportable/iab/Base64DecoderException;-><init>(Ljava/lang/String;)V

    #@7c
    throw v0

    #@7d
    :cond_7d
    add-int/lit8 v1, v3, 0x1

    #@7f
    int-to-byte v7, v7

    #@80
    aput-byte v7, v6, v3

    #@82
    if-ne v1, v10, :cond_8a

    #@84
    invoke-static {v6, v2, v5, v0, p3}, Lcom/apportable/iab/Base64;->decode4to3([BI[BI[B)I

    #@87
    move-result v1

    #@88
    add-int/2addr v0, v1

    #@89
    move v1, v2

    #@8a
    :cond_8a
    :goto_8a
    add-int/lit8 v3, v4, 0x1

    #@8c
    move v4, v3

    #@8d
    move v3, v1

    #@8e
    goto :goto_12

    #@8f
    :cond_8f
    new-instance v0, Lcom/apportable/iab/Base64DecoderException;

    #@91
    new-instance v1, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string v2, "Bad Base64 input character at "

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    const-string v2, ": "

    #@a2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v1

    #@a6
    add-int v2, v4, p1

    #@a8
    aget-byte v2, p0, v2

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    const-string v2, "(decimal)"

    #@b0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v1

    #@b4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v1

    #@b8
    invoke-direct {v0, v1}, Lcom/apportable/iab/Base64DecoderException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v0

    #@bc
    :cond_bc
    if-eqz v3, :cond_e3

    #@be
    if-ne v3, v9, :cond_db

    #@c0
    new-instance v0, Lcom/apportable/iab/Base64DecoderException;

    #@c2
    new-instance v1, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string v2, "single trailing character at offset "

    #@c9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v1

    #@cd
    add-int/lit8 v2, p2, -0x1

    #@cf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v1

    #@d3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d6
    move-result-object v1

    #@d7
    invoke-direct {v0, v1}, Lcom/apportable/iab/Base64DecoderException;-><init>(Ljava/lang/String;)V

    #@da
    throw v0

    #@db
    :cond_db
    int-to-byte v1, v11

    #@dc
    aput-byte v1, v6, v3

    #@de
    invoke-static {v6, v2, v5, v0, p3}, Lcom/apportable/iab/Base64;->decode4to3([BI[BI[B)I

    #@e1
    move-result v1

    #@e2
    add-int/2addr v0, v1

    #@e3
    :cond_e3
    new-array v1, v0, [B

    #@e5
    invoke-static {v5, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e8
    return-object v1

    #@e9
    :cond_e9
    move v1, v3

    #@ea
    goto :goto_8a
.end method

.method private static decode4to3([BI[BI[B)I
    .registers 8

    #@0
    const/16 v1, 0x3d

    #@2
    add-int/lit8 v0, p1, 0x2

    #@4
    aget-byte v0, p0, v0

    #@6
    if-ne v0, v1, :cond_23

    #@8
    aget-byte v0, p0, p1

    #@a
    aget-byte v0, p4, v0

    #@c
    shl-int/lit8 v0, v0, 0x18

    #@e
    ushr-int/lit8 v0, v0, 0x6

    #@10
    add-int/lit8 v1, p1, 0x1

    #@12
    aget-byte v1, p0, v1

    #@14
    aget-byte v1, p4, v1

    #@16
    shl-int/lit8 v1, v1, 0x18

    #@18
    ushr-int/lit8 v1, v1, 0xc

    #@1a
    or-int/2addr v0, v1

    #@1b
    ushr-int/lit8 v0, v0, 0x10

    #@1d
    int-to-byte v0, v0

    #@1e
    int-to-byte v0, v0

    #@1f
    aput-byte v0, p2, p3

    #@21
    const/4 v0, 0x1

    #@22
    :goto_22
    return v0

    #@23
    :cond_23
    add-int/lit8 v0, p1, 0x3

    #@25
    aget-byte v0, p0, v0

    #@27
    if-ne v0, v1, :cond_57

    #@29
    aget-byte v0, p0, p1

    #@2b
    aget-byte v0, p4, v0

    #@2d
    shl-int/lit8 v0, v0, 0x18

    #@2f
    ushr-int/lit8 v0, v0, 0x6

    #@31
    add-int/lit8 v1, p1, 0x1

    #@33
    aget-byte v1, p0, v1

    #@35
    aget-byte v1, p4, v1

    #@37
    shl-int/lit8 v1, v1, 0x18

    #@39
    ushr-int/lit8 v1, v1, 0xc

    #@3b
    or-int/2addr v0, v1

    #@3c
    add-int/lit8 v1, p1, 0x2

    #@3e
    aget-byte v1, p0, v1

    #@40
    aget-byte v1, p4, v1

    #@42
    shl-int/lit8 v1, v1, 0x18

    #@44
    ushr-int/lit8 v1, v1, 0x12

    #@46
    or-int/2addr v0, v1

    #@47
    ushr-int/lit8 v1, v0, 0x10

    #@49
    int-to-byte v1, v1

    #@4a
    int-to-byte v1, v1

    #@4b
    aput-byte v1, p2, p3

    #@4d
    add-int/lit8 v1, p3, 0x1

    #@4f
    ushr-int/lit8 v0, v0, 0x8

    #@51
    int-to-byte v0, v0

    #@52
    int-to-byte v0, v0

    #@53
    aput-byte v0, p2, v1

    #@55
    const/4 v0, 0x2

    #@56
    goto :goto_22

    #@57
    :cond_57
    aget-byte v0, p0, p1

    #@59
    aget-byte v0, p4, v0

    #@5b
    shl-int/lit8 v0, v0, 0x18

    #@5d
    ushr-int/lit8 v0, v0, 0x6

    #@5f
    add-int/lit8 v1, p1, 0x1

    #@61
    aget-byte v1, p0, v1

    #@63
    aget-byte v1, p4, v1

    #@65
    shl-int/lit8 v1, v1, 0x18

    #@67
    ushr-int/lit8 v1, v1, 0xc

    #@69
    or-int/2addr v0, v1

    #@6a
    add-int/lit8 v1, p1, 0x2

    #@6c
    aget-byte v1, p0, v1

    #@6e
    aget-byte v1, p4, v1

    #@70
    shl-int/lit8 v1, v1, 0x18

    #@72
    ushr-int/lit8 v1, v1, 0x12

    #@74
    or-int/2addr v0, v1

    #@75
    add-int/lit8 v1, p1, 0x3

    #@77
    aget-byte v1, p0, v1

    #@79
    aget-byte v1, p4, v1

    #@7b
    shl-int/lit8 v1, v1, 0x18

    #@7d
    ushr-int/lit8 v1, v1, 0x18

    #@7f
    or-int/2addr v0, v1

    #@80
    shr-int/lit8 v1, v0, 0x10

    #@82
    int-to-byte v1, v1

    #@83
    int-to-byte v1, v1

    #@84
    aput-byte v1, p2, p3

    #@86
    add-int/lit8 v1, p3, 0x1

    #@88
    shr-int/lit8 v2, v0, 0x8

    #@8a
    int-to-byte v2, v2

    #@8b
    int-to-byte v2, v2

    #@8c
    aput-byte v2, p2, v1

    #@8e
    add-int/lit8 v1, p3, 0x2

    #@90
    int-to-byte v0, v0

    #@91
    int-to-byte v0, v0

    #@92
    aput-byte v0, p2, v1

    #@94
    const/4 v0, 0x3

    #@95
    goto :goto_22
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/Base64DecoderException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    array-length v2, v0

    #@6
    invoke-static {v0, v1, v2}, Lcom/apportable/iab/Base64;->decodeWebSafe([BII)[B

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static decodeWebSafe([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/Base64DecoderException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p0

    #@2
    invoke-static {p0, v0, v1}, Lcom/apportable/iab/Base64;->decodeWebSafe([BII)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static decodeWebSafe([BII)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/Base64DecoderException;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/apportable/iab/Base64;->WEBSAFE_DECODABET:[B

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/apportable/iab/Base64;->decode([BII[B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p0

    #@2
    sget-object v2, Lcom/apportable/iab/Base64;->ALPHABET:[B

    #@4
    const/4 v3, 0x1

    #@5
    invoke-static {p0, v0, v1, v2, v3}, Lcom/apportable/iab/Base64;->encode([BII[BZ)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static encode([BII[BZ)Ljava/lang/String;
    .registers 9

    #@0
    const v0, 0x7fffffff

    #@3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/apportable/iab/Base64;->encode([BII[BI)[B

    #@6
    move-result-object v1

    #@7
    array-length v0, v1

    #@8
    :goto_8
    if-nez p4, :cond_14

    #@a
    if-lez v0, :cond_14

    #@c
    add-int/lit8 v2, v0, -0x1

    #@e
    aget-byte v2, v1, v2

    #@10
    const/16 v3, 0x3d

    #@12
    if-eq v2, v3, :cond_1b

    #@14
    :cond_14
    new-instance v2, Ljava/lang/String;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([BII)V

    #@1a
    return-object v2

    #@1b
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    #@1d
    goto :goto_8
.end method

.method public static encode([BII[BI)[B
    .registers 14

    #@0
    const/16 v8, 0xa

    #@2
    const/4 v1, 0x0

    #@3
    add-int/lit8 v0, p2, 0x2

    #@5
    div-int/lit8 v0, v0, 0x3

    #@7
    mul-int/lit8 v0, v0, 0x4

    #@9
    div-int v2, v0, p4

    #@b
    add-int/2addr v0, v2

    #@c
    new-array v3, v0, [B

    #@e
    move v2, v1

    #@f
    move v6, v1

    #@10
    move v4, v1

    #@11
    :goto_11
    add-int/lit8 v0, p2, -0x2

    #@13
    if-ge v2, v0, :cond_69

    #@15
    add-int v0, v2, p1

    #@17
    aget-byte v0, p0, v0

    #@19
    shl-int/lit8 v0, v0, 0x18

    #@1b
    ushr-int/lit8 v0, v0, 0x8

    #@1d
    add-int/lit8 v5, v2, 0x1

    #@1f
    add-int/2addr v5, p1

    #@20
    aget-byte v5, p0, v5

    #@22
    shl-int/lit8 v5, v5, 0x18

    #@24
    ushr-int/lit8 v5, v5, 0x10

    #@26
    or-int/2addr v0, v5

    #@27
    add-int/lit8 v5, v2, 0x2

    #@29
    add-int/2addr v5, p1

    #@2a
    aget-byte v5, p0, v5

    #@2c
    shl-int/lit8 v5, v5, 0x18

    #@2e
    ushr-int/lit8 v5, v5, 0x18

    #@30
    or-int/2addr v0, v5

    #@31
    ushr-int/lit8 v5, v0, 0x12

    #@33
    aget-byte v5, p3, v5

    #@35
    int-to-byte v5, v5

    #@36
    aput-byte v5, v3, v4

    #@38
    add-int/lit8 v5, v4, 0x1

    #@3a
    ushr-int/lit8 v7, v0, 0xc

    #@3c
    and-int/lit8 v7, v7, 0x3f

    #@3e
    aget-byte v7, p3, v7

    #@40
    int-to-byte v7, v7

    #@41
    aput-byte v7, v3, v5

    #@43
    add-int/lit8 v5, v4, 0x2

    #@45
    ushr-int/lit8 v7, v0, 0x6

    #@47
    and-int/lit8 v7, v7, 0x3f

    #@49
    aget-byte v7, p3, v7

    #@4b
    int-to-byte v7, v7

    #@4c
    aput-byte v7, v3, v5

    #@4e
    add-int/lit8 v5, v4, 0x3

    #@50
    and-int/lit8 v0, v0, 0x3f

    #@52
    aget-byte v0, p3, v0

    #@54
    int-to-byte v0, v0

    #@55
    aput-byte v0, v3, v5

    #@57
    add-int/lit8 v0, v6, 0x4

    #@59
    if-ne v0, p4, :cond_63

    #@5b
    add-int/lit8 v0, v4, 0x4

    #@5d
    int-to-byte v5, v8

    #@5e
    aput-byte v5, v3, v0

    #@60
    add-int/lit8 v4, v4, 0x1

    #@62
    move v0, v1

    #@63
    :cond_63
    add-int/lit8 v2, v2, 0x3

    #@65
    add-int/lit8 v4, v4, 0x4

    #@67
    move v6, v0

    #@68
    goto :goto_11

    #@69
    :cond_69
    if-ge v2, p2, :cond_81

    #@6b
    add-int v1, v2, p1

    #@6d
    sub-int v2, p2, v2

    #@6f
    move-object v0, p0

    #@70
    move-object v5, p3

    #@71
    invoke-static/range {v0 .. v5}, Lcom/apportable/iab/Base64;->encode3to4([BII[BI[B)[B

    #@74
    add-int/lit8 v0, v6, 0x4

    #@76
    if-ne v0, p4, :cond_7f

    #@78
    add-int/lit8 v0, v4, 0x4

    #@7a
    int-to-byte v1, v8

    #@7b
    aput-byte v1, v3, v0

    #@7d
    add-int/lit8 v4, v4, 0x1

    #@7f
    :cond_7f
    add-int/lit8 v4, v4, 0x4

    #@81
    :cond_81
    sget-boolean v0, Lcom/apportable/iab/Base64;->$assertionsDisabled:Z

    #@83
    if-nez v0, :cond_8e

    #@85
    array-length v0, v3

    #@86
    if-eq v4, v0, :cond_8e

    #@88
    new-instance v0, Ljava/lang/AssertionError;

    #@8a
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@8d
    throw v0

    #@8e
    :cond_8e
    return-object v3
.end method

.method private static encode3to4([BII[BI[B)[B
    .registers 11

    #@0
    const/16 v4, 0x3d

    #@2
    const/4 v0, 0x0

    #@3
    if-lez p2, :cond_28

    #@5
    aget-byte v1, p0, p1

    #@7
    shl-int/lit8 v1, v1, 0x18

    #@9
    ushr-int/lit8 v1, v1, 0x8

    #@b
    move v2, v1

    #@c
    :goto_c
    const/4 v1, 0x1

    #@d
    if-le p2, v1, :cond_2a

    #@f
    add-int/lit8 v1, p1, 0x1

    #@11
    aget-byte v1, p0, v1

    #@13
    shl-int/lit8 v1, v1, 0x18

    #@15
    ushr-int/lit8 v1, v1, 0x10

    #@17
    :goto_17
    const/4 v3, 0x2

    #@18
    if-le p2, v3, :cond_22

    #@1a
    add-int/lit8 v0, p1, 0x2

    #@1c
    aget-byte v0, p0, v0

    #@1e
    shl-int/lit8 v0, v0, 0x18

    #@20
    ushr-int/lit8 v0, v0, 0x18

    #@22
    :cond_22
    or-int/2addr v1, v2

    #@23
    or-int/2addr v0, v1

    #@24
    packed-switch p2, :pswitch_data_94

    #@27
    :goto_27
    return-object p3

    #@28
    :cond_28
    move v2, v0

    #@29
    goto :goto_c

    #@2a
    :cond_2a
    move v1, v0

    #@2b
    goto :goto_17

    #@2c
    :pswitch_2c
    ushr-int/lit8 v1, v0, 0x12

    #@2e
    aget-byte v1, p5, v1

    #@30
    int-to-byte v1, v1

    #@31
    aput-byte v1, p3, p4

    #@33
    add-int/lit8 v1, p4, 0x1

    #@35
    ushr-int/lit8 v2, v0, 0xc

    #@37
    and-int/lit8 v2, v2, 0x3f

    #@39
    aget-byte v2, p5, v2

    #@3b
    int-to-byte v2, v2

    #@3c
    aput-byte v2, p3, v1

    #@3e
    add-int/lit8 v1, p4, 0x2

    #@40
    ushr-int/lit8 v2, v0, 0x6

    #@42
    and-int/lit8 v2, v2, 0x3f

    #@44
    aget-byte v2, p5, v2

    #@46
    int-to-byte v2, v2

    #@47
    aput-byte v2, p3, v1

    #@49
    add-int/lit8 v1, p4, 0x3

    #@4b
    and-int/lit8 v0, v0, 0x3f

    #@4d
    aget-byte v0, p5, v0

    #@4f
    int-to-byte v0, v0

    #@50
    aput-byte v0, p3, v1

    #@52
    goto :goto_27

    #@53
    :pswitch_53
    ushr-int/lit8 v1, v0, 0x12

    #@55
    aget-byte v1, p5, v1

    #@57
    int-to-byte v1, v1

    #@58
    aput-byte v1, p3, p4

    #@5a
    add-int/lit8 v1, p4, 0x1

    #@5c
    ushr-int/lit8 v2, v0, 0xc

    #@5e
    and-int/lit8 v2, v2, 0x3f

    #@60
    aget-byte v2, p5, v2

    #@62
    int-to-byte v2, v2

    #@63
    aput-byte v2, p3, v1

    #@65
    add-int/lit8 v1, p4, 0x2

    #@67
    ushr-int/lit8 v0, v0, 0x6

    #@69
    and-int/lit8 v0, v0, 0x3f

    #@6b
    aget-byte v0, p5, v0

    #@6d
    int-to-byte v0, v0

    #@6e
    aput-byte v0, p3, v1

    #@70
    add-int/lit8 v0, p4, 0x3

    #@72
    int-to-byte v1, v4

    #@73
    aput-byte v1, p3, v0

    #@75
    goto :goto_27

    #@76
    :pswitch_76
    ushr-int/lit8 v1, v0, 0x12

    #@78
    aget-byte v1, p5, v1

    #@7a
    int-to-byte v1, v1

    #@7b
    aput-byte v1, p3, p4

    #@7d
    add-int/lit8 v1, p4, 0x1

    #@7f
    ushr-int/lit8 v0, v0, 0xc

    #@81
    and-int/lit8 v0, v0, 0x3f

    #@83
    aget-byte v0, p5, v0

    #@85
    int-to-byte v0, v0

    #@86
    aput-byte v0, p3, v1

    #@88
    add-int/lit8 v0, p4, 0x2

    #@8a
    int-to-byte v1, v4

    #@8b
    aput-byte v1, p3, v0

    #@8d
    add-int/lit8 v0, p4, 0x3

    #@8f
    int-to-byte v1, v4

    #@90
    aput-byte v1, p3, v0

    #@92
    goto :goto_27

    #@93
    nop

    #@94
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_76
        :pswitch_53
        :pswitch_2c
    .end packed-switch
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p0

    #@2
    sget-object v2, Lcom/apportable/iab/Base64;->WEBSAFE_ALPHABET:[B

    #@4
    invoke-static {p0, v0, v1, v2, p1}, Lcom/apportable/iab/Base64;->encode([BII[BZ)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
