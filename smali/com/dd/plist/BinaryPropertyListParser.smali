.class public Lcom/dd/plist/BinaryPropertyListParser;
.super Ljava/lang/Object;


# instance fields
.field private bytes:[B

.field private numObjects:I

.field private objectRefSize:I

.field private offsetSize:I

.field private offsetTable:[I

.field private offsetTableOffset:I

.field private topObject:I


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static copyOfRange([BII)[B
    .registers 6

    #@0
    sub-int v0, p2, p1

    #@2
    if-gez v0, :cond_33

    #@4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "startIndex ("

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, ")"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, " > endIndex ("

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string v2, ")"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    :cond_33
    new-array v1, v0, [B

    #@35
    const/4 v2, 0x0

    #@36
    invoke-static {p0, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@39
    return-object v1
.end method

.method private doParse([B)Lcom/dd/plist/NSObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/16 v7, 0x18

    #@2
    const/16 v6, 0x10

    #@4
    const/4 v5, 0x7

    #@5
    const/4 v0, 0x0

    #@6
    const/16 v4, 0x8

    #@8
    iput-object p1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@a
    new-instance v1, Ljava/lang/String;

    #@c
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@e
    invoke-static {v2, v0, v4}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@11
    move-result-object v2

    #@12
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    #@15
    const-string v2, "bplist"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_36

    #@1d
    new-instance v0, Ljava/lang/Exception;

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v3, "The given data is no binary property list. Wrong magic bytes: "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    :cond_36
    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@38
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@3a
    array-length v2, v2

    #@3b
    add-int/lit8 v2, v2, -0x20

    #@3d
    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@3f
    array-length v3, v3

    #@40
    invoke-static {v1, v2, v3}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@43
    move-result-object v1

    #@44
    const/4 v2, 0x6

    #@45
    invoke-static {v1, v2, v5}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@48
    move-result-object v2

    #@49
    invoke-static {v2}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@4c
    move-result-wide v2

    #@4d
    long-to-int v2, v2

    #@4e
    iput v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetSize:I

    #@50
    invoke-static {v1, v5, v4}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@53
    move-result-object v2

    #@54
    invoke-static {v2}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@57
    move-result-wide v2

    #@58
    long-to-int v2, v2

    #@59
    iput v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@5b
    invoke-static {v1, v4, v6}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@5e
    move-result-object v2

    #@5f
    invoke-static {v2}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@62
    move-result-wide v2

    #@63
    long-to-int v2, v2

    #@64
    iput v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->numObjects:I

    #@66
    invoke-static {v1, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@69
    move-result-object v2

    #@6a
    invoke-static {v2}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@6d
    move-result-wide v2

    #@6e
    long-to-int v2, v2

    #@6f
    iput v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->topObject:I

    #@71
    const/16 v2, 0x20

    #@73
    invoke-static {v1, v7, v2}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@76
    move-result-object v1

    #@77
    invoke-static {v1}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@7a
    move-result-wide v2

    #@7b
    long-to-int v1, v2

    #@7c
    iput v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTableOffset:I

    #@7e
    iget v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->numObjects:I

    #@80
    new-array v1, v1, [I

    #@82
    iput-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    #@84
    :goto_84
    iget v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->numObjects:I

    #@86
    if-ge v0, v1, :cond_a8

    #@88
    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@8a
    iget v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTableOffset:I

    #@8c
    iget v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetSize:I

    #@8e
    mul-int/2addr v3, v0

    #@8f
    add-int/2addr v2, v3

    #@90
    iget v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTableOffset:I

    #@92
    add-int/lit8 v4, v0, 0x1

    #@94
    iget v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetSize:I

    #@96
    mul-int/2addr v4, v5

    #@97
    add-int/2addr v3, v4

    #@98
    invoke-static {v1, v2, v3}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@9b
    move-result-object v1

    #@9c
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    #@9e
    invoke-static {v1}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@a1
    move-result-wide v4

    #@a2
    long-to-int v1, v4

    #@a3
    aput v1, v2, v0

    #@a5
    add-int/lit8 v0, v0, 0x1

    #@a7
    goto :goto_84

    #@a8
    :cond_a8
    iget v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->topObject:I

    #@aa
    invoke-direct {p0, v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    #@ad
    move-result-object v0

    #@ae
    return-object v0
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    #@b
    move-result-wide v2

    #@c
    cmp-long v0, v0, v2

    #@e
    if-lez v0, :cond_45

    #@10
    new-instance v0, Ljava/lang/Exception;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "To little heap space available! Wanted to read "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p0}, Ljava/io/File;->length()J

    #@20
    move-result-wide v2

    #@21
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    const-string v2, " bytes, but only "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    #@32
    move-result-wide v2

    #@33
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string v2, " are available."

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    :cond_45
    new-instance v0, Ljava/io/FileInputStream;

    #@47
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    #@4a
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    #@4d
    move-result-object v0

    #@4e
    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const v0, 0x7fffffff

    #@3
    invoke-static {p0, v0}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    #@a
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/dd/plist/BinaryPropertyListParser;

    #@2
    invoke-direct {v0}, Lcom/dd/plist/BinaryPropertyListParser;-><init>()V

    #@5
    invoke-direct {v0, p0}, Lcom/dd/plist/BinaryPropertyListParser;->doParse([B)Lcom/dd/plist/NSObject;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static final parseDouble([B)D
    .registers 4

    #@0
    array-length v0, p0

    #@1
    const/16 v1, 0x8

    #@3
    if-ne v0, v1, :cond_e

    #@5
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([B)J

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@c
    move-result-wide v0

    #@d
    :goto_d
    return-wide v0

    #@e
    :cond_e
    array-length v0, p0

    #@f
    const/4 v1, 0x4

    #@10
    if-ne v0, v1, :cond_1d

    #@12
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([B)J

    #@15
    move-result-wide v0

    #@16
    long-to-int v0, v0

    #@17
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@1a
    move-result v0

    #@1b
    float-to-double v0, v0

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v2, "bad byte array length "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    array-length v2, p0

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
.end method

.method public static final parseLong([B)J
    .registers 7

    #@0
    const-wide/16 v0, 0x0

    #@2
    array-length v3, p0

    #@3
    const/4 v2, 0x0

    #@4
    :goto_4
    if-ge v2, v3, :cond_12

    #@6
    const/16 v4, 0x8

    #@8
    shl-long/2addr v0, v4

    #@9
    aget-byte v4, p0, v2

    #@b
    and-int/lit16 v4, v4, 0xff

    #@d
    int-to-long v4, v4

    #@e
    or-long/2addr v0, v4

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_4

    #@12
    :cond_12
    return-wide v0
.end method

.method private parseObject(I)Lcom/dd/plist/NSObject;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    const/16 v5, 0xf

    #@3
    const/4 v7, 0x3

    #@4
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@6
    const/4 v1, 0x1

    #@7
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    #@9
    aget v4, v0, p1

    #@b
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@d
    aget-byte v0, v0, v4

    #@f
    and-int/lit16 v2, v0, 0xf0

    #@11
    shr-int/lit8 v2, v2, 0x4

    #@13
    and-int/lit8 v0, v0, 0xf

    #@15
    packed-switch v2, :pswitch_data_582

    #@18
    :pswitch_18
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string v3, "Unknown object type: "

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    :goto_30
    const/4 v0, 0x0

    #@31
    :cond_31
    :goto_31
    return-object v0

    #@32
    :pswitch_32
    sparse-switch v0, :sswitch_data_5a2

    #@35
    goto :goto_30

    #@36
    :sswitch_36
    const/4 v0, 0x0

    #@37
    goto :goto_31

    #@38
    :sswitch_38
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@3a
    invoke-direct {v0, v3}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    #@3d
    goto :goto_31

    #@3e
    :sswitch_3e
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@40
    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    #@43
    goto :goto_31

    #@44
    :sswitch_44
    const/4 v0, 0x0

    #@45
    goto :goto_31

    #@46
    :pswitch_46
    int-to-double v0, v0

    #@47
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@4a
    move-result-wide v0

    #@4b
    double-to-int v1, v0

    #@4c
    int-to-long v6, v1

    #@4d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    #@54
    move-result-wide v8

    #@55
    cmp-long v0, v6, v8

    #@57
    if-gez v0, :cond_6a

    #@59
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@5b
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@5d
    add-int/lit8 v5, v4, 0x1

    #@5f
    add-int/lit8 v4, v4, 0x1

    #@61
    add-int/2addr v1, v4

    #@62
    invoke-static {v2, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@65
    move-result-object v1

    #@66
    invoke-direct {v0, v1, v3}, Lcom/dd/plist/NSNumber;-><init>([BI)V

    #@69
    goto :goto_31

    #@6a
    :cond_6a
    new-instance v0, Ljava/lang/Exception;

    #@6c
    new-instance v2, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string v3, "To little heap space available! Wanted to read "

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v1

    #@7b
    const-string v2, " bytes, but only "

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    #@88
    move-result-wide v2

    #@89
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    const-string v2, " are available."

    #@8f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v1

    #@93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v1

    #@97
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@9a
    throw v0

    #@9b
    :pswitch_9b
    int-to-double v2, v0

    #@9c
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@9f
    move-result-wide v2

    #@a0
    double-to-int v2, v2

    #@a1
    int-to-long v6, v2

    #@a2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@a5
    move-result-object v0

    #@a6
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    #@a9
    move-result-wide v8

    #@aa
    cmp-long v0, v6, v8

    #@ac
    if-gez v0, :cond_c0

    #@ae
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@b0
    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@b2
    add-int/lit8 v5, v4, 0x1

    #@b4
    add-int/lit8 v4, v4, 0x1

    #@b6
    add-int/2addr v2, v4

    #@b7
    invoke-static {v3, v5, v2}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@ba
    move-result-object v2

    #@bb
    invoke-direct {v0, v2, v1}, Lcom/dd/plist/NSNumber;-><init>([BI)V

    #@be
    goto/16 :goto_31

    #@c0
    :cond_c0
    new-instance v0, Ljava/lang/Exception;

    #@c2
    new-instance v1, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string v3, "To little heap space available! Wanted to read "

    #@c9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v1

    #@cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    const-string v2, " bytes, but only "

    #@d3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v1

    #@d7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@da
    move-result-object v2

    #@db
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    #@de
    move-result-wide v2

    #@df
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v1

    #@e3
    const-string v2, " are available."

    #@e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v1

    #@e9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v1

    #@ed
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@f0
    throw v0

    #@f1
    :pswitch_f1
    if-eq v0, v7, :cond_111

    #@f3
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f5
    new-instance v2, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string v3, "Unknown date type :"

    #@fc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v2

    #@100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@103
    move-result-object v0

    #@104
    const-string v2, ". Parsing anyway..."

    #@106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v0

    #@10a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10d
    move-result-object v0

    #@10e
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@111
    :cond_111
    new-instance v0, Lcom/dd/plist/NSDate;

    #@113
    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@115
    add-int/lit8 v2, v4, 0x1

    #@117
    add-int/lit8 v3, v4, 0x9

    #@119
    invoke-static {v1, v2, v3}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@11c
    move-result-object v1

    #@11d
    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>([B)V

    #@120
    goto/16 :goto_31

    #@122
    :pswitch_122
    if-ne v0, v5, :cond_57e

    #@124
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@126
    add-int/lit8 v2, v4, 0x1

    #@128
    aget-byte v0, v0, v2

    #@12a
    and-int/lit16 v2, v0, 0xf0

    #@12c
    div-int/lit8 v2, v2, 0xf

    #@12e
    if-eq v2, v1, :cond_148

    #@130
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@132
    new-instance v3, Ljava/lang/StringBuilder;

    #@134
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@137
    const-string v5, "UNEXPECTED LENGTH-INT TYPE! "

    #@139
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v3

    #@13d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@140
    move-result-object v2

    #@141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@144
    move-result-object v2

    #@145
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@148
    :cond_148
    and-int/lit8 v0, v0, 0xf

    #@14a
    int-to-double v0, v0

    #@14b
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@14e
    move-result-wide v0

    #@14f
    double-to-int v1, v0

    #@150
    add-int/lit8 v0, v1, 0x2

    #@152
    if-ge v1, v7, :cond_184

    #@154
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@156
    add-int/lit8 v3, v4, 0x2

    #@158
    add-int/lit8 v5, v4, 0x2

    #@15a
    add-int/2addr v1, v5

    #@15b
    invoke-static {v2, v3, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@15e
    move-result-object v1

    #@15f
    invoke-static {v1}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@162
    move-result-wide v2

    #@163
    long-to-int v1, v2

    #@164
    move v2, v1

    #@165
    move v1, v0

    #@166
    :goto_166
    int-to-long v6, v2

    #@167
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@16a
    move-result-object v0

    #@16b
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    #@16e
    move-result-wide v8

    #@16f
    cmp-long v0, v6, v8

    #@171
    if-gez v0, :cond_19b

    #@173
    new-instance v0, Lcom/dd/plist/NSData;

    #@175
    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@177
    add-int v5, v4, v1

    #@179
    add-int/2addr v1, v4

    #@17a
    add-int/2addr v1, v2

    #@17b
    invoke-static {v3, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@17e
    move-result-object v1

    #@17f
    invoke-direct {v0, v1}, Lcom/dd/plist/NSData;-><init>([B)V

    #@182
    goto/16 :goto_31

    #@184
    :cond_184
    new-instance v2, Ljava/math/BigInteger;

    #@186
    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@188
    add-int/lit8 v5, v4, 0x2

    #@18a
    add-int/lit8 v6, v4, 0x2

    #@18c
    add-int/2addr v1, v6

    #@18d
    invoke-static {v3, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@190
    move-result-object v1

    #@191
    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    #@194
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@197
    move-result v1

    #@198
    move v2, v1

    #@199
    move v1, v0

    #@19a
    goto :goto_166

    #@19b
    :cond_19b
    new-instance v0, Ljava/lang/Exception;

    #@19d
    new-instance v1, Ljava/lang/StringBuilder;

    #@19f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a2
    const-string v3, "To little heap space available! Wanted to read "

    #@1a4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a7
    move-result-object v1

    #@1a8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ab
    move-result-object v1

    #@1ac
    const-string v2, " bytes, but only "

    #@1ae
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v1

    #@1b2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@1b5
    move-result-object v2

    #@1b6
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    #@1b9
    move-result-wide v2

    #@1ba
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v1

    #@1be
    const-string v2, " are available."

    #@1c0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v1

    #@1c4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c7
    move-result-object v1

    #@1c8
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@1cb
    throw v0

    #@1cc
    :pswitch_1cc
    if-ne v0, v5, :cond_57b

    #@1ce
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@1d0
    add-int/lit8 v2, v4, 0x1

    #@1d2
    aget-byte v0, v0, v2

    #@1d4
    and-int/lit16 v2, v0, 0xf0

    #@1d6
    div-int/lit8 v2, v2, 0xf

    #@1d8
    if-eq v2, v1, :cond_1f2

    #@1da
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1dc
    new-instance v3, Ljava/lang/StringBuilder;

    #@1de
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e1
    const-string v5, "UNEXPECTED LENGTH-INT TYPE! "

    #@1e3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e6
    move-result-object v3

    #@1e7
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v2

    #@1eb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ee
    move-result-object v2

    #@1ef
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f2
    :cond_1f2
    and-int/lit8 v0, v0, 0xf

    #@1f4
    int-to-double v0, v0

    #@1f5
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@1f8
    move-result-wide v0

    #@1f9
    double-to-int v0, v0

    #@1fa
    add-int/lit8 v1, v0, 0x2

    #@1fc
    if-ge v0, v7, :cond_22f

    #@1fe
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@200
    add-int/lit8 v3, v4, 0x2

    #@202
    add-int/lit8 v5, v4, 0x2

    #@204
    add-int/2addr v0, v5

    #@205
    invoke-static {v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@208
    move-result-object v0

    #@209
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@20c
    move-result-wide v2

    #@20d
    long-to-int v0, v2

    #@20e
    move v2, v0

    #@20f
    :goto_20f
    int-to-long v6, v2

    #@210
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@213
    move-result-object v0

    #@214
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    #@217
    move-result-wide v8

    #@218
    cmp-long v0, v6, v8

    #@21a
    if-gez v0, :cond_245

    #@21c
    new-instance v0, Lcom/dd/plist/NSString;

    #@21e
    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@220
    add-int v5, v4, v1

    #@222
    add-int/2addr v1, v4

    #@223
    add-int/2addr v1, v2

    #@224
    invoke-static {v3, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@227
    move-result-object v1

    #@228
    const-string v2, "ASCII"

    #@22a
    invoke-direct {v0, v1, v2}, Lcom/dd/plist/NSString;-><init>([BLjava/lang/String;)V

    #@22d
    goto/16 :goto_31

    #@22f
    :cond_22f
    new-instance v2, Ljava/math/BigInteger;

    #@231
    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@233
    add-int/lit8 v5, v4, 0x2

    #@235
    add-int/lit8 v6, v4, 0x2

    #@237
    add-int/2addr v0, v6

    #@238
    invoke-static {v3, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@23b
    move-result-object v0

    #@23c
    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    #@23f
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@242
    move-result v0

    #@243
    move v2, v0

    #@244
    goto :goto_20f

    #@245
    :cond_245
    new-instance v0, Ljava/lang/Exception;

    #@247
    new-instance v1, Ljava/lang/StringBuilder;

    #@249
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24c
    const-string v3, "To little heap space available! Wanted to read "

    #@24e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@251
    move-result-object v1

    #@252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@255
    move-result-object v1

    #@256
    const-string v2, " bytes, but only "

    #@258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v1

    #@25c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@25f
    move-result-object v2

    #@260
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    #@263
    move-result-wide v2

    #@264
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@267
    move-result-object v1

    #@268
    const-string v2, " are available."

    #@26a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v1

    #@26e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@271
    move-result-object v1

    #@272
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@275
    throw v0

    #@276
    :pswitch_276
    if-ne v0, v5, :cond_2b8

    #@278
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@27a
    add-int/lit8 v2, v4, 0x1

    #@27c
    aget-byte v0, v0, v2

    #@27e
    and-int/lit16 v2, v0, 0xf0

    #@280
    div-int/lit8 v2, v2, 0xf

    #@282
    if-eq v2, v1, :cond_29c

    #@284
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@286
    new-instance v3, Ljava/lang/StringBuilder;

    #@288
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28b
    const-string v5, "UNEXPECTED LENGTH-INT TYPE! "

    #@28d
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v3

    #@291
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@294
    move-result-object v2

    #@295
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@298
    move-result-object v2

    #@299
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29c
    :cond_29c
    and-int/lit8 v0, v0, 0xf

    #@29e
    int-to-double v0, v0

    #@29f
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@2a2
    move-result-wide v0

    #@2a3
    double-to-int v0, v0

    #@2a4
    add-int/lit8 v1, v0, 0x2

    #@2a6
    if-ge v0, v7, :cond_2da

    #@2a8
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@2aa
    add-int/lit8 v3, v4, 0x2

    #@2ac
    add-int/lit8 v5, v4, 0x2

    #@2ae
    add-int/2addr v0, v5

    #@2af
    invoke-static {v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@2b2
    move-result-object v0

    #@2b3
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@2b6
    move-result-wide v2

    #@2b7
    long-to-int v0, v2

    #@2b8
    :cond_2b8
    :goto_2b8
    mul-int/lit8 v2, v0, 0x2

    #@2ba
    int-to-long v6, v2

    #@2bb
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@2be
    move-result-object v0

    #@2bf
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    #@2c2
    move-result-wide v8

    #@2c3
    cmp-long v0, v6, v8

    #@2c5
    if-gez v0, :cond_2ef

    #@2c7
    new-instance v0, Lcom/dd/plist/NSString;

    #@2c9
    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@2cb
    add-int v5, v4, v1

    #@2cd
    add-int/2addr v1, v4

    #@2ce
    add-int/2addr v1, v2

    #@2cf
    invoke-static {v3, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@2d2
    move-result-object v1

    #@2d3
    const-string v2, "UTF-16BE"

    #@2d5
    invoke-direct {v0, v1, v2}, Lcom/dd/plist/NSString;-><init>([BLjava/lang/String;)V

    #@2d8
    goto/16 :goto_31

    #@2da
    :cond_2da
    new-instance v2, Ljava/math/BigInteger;

    #@2dc
    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@2de
    add-int/lit8 v5, v4, 0x2

    #@2e0
    add-int/lit8 v6, v4, 0x2

    #@2e2
    add-int/2addr v0, v6

    #@2e3
    invoke-static {v3, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@2e6
    move-result-object v0

    #@2e7
    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    #@2ea
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@2ed
    move-result v0

    #@2ee
    goto :goto_2b8

    #@2ef
    :cond_2ef
    new-instance v0, Ljava/lang/Exception;

    #@2f1
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f6
    const-string v3, "To little heap space available! Wanted to read "

    #@2f8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fb
    move-result-object v1

    #@2fc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ff
    move-result-object v1

    #@300
    const-string v2, " bytes, but only "

    #@302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@305
    move-result-object v1

    #@306
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@309
    move-result-object v2

    #@30a
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    #@30d
    move-result-wide v2

    #@30e
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@311
    move-result-object v1

    #@312
    const-string v2, " are available."

    #@314
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@317
    move-result-object v1

    #@318
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31b
    move-result-object v1

    #@31c
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@31f
    throw v0

    #@320
    :pswitch_320
    add-int/lit8 v1, v0, 0x1

    #@322
    int-to-long v2, v1

    #@323
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@326
    move-result-object v0

    #@327
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    #@32a
    move-result-wide v6

    #@32b
    cmp-long v0, v2, v6

    #@32d
    if-gez v0, :cond_345

    #@32f
    new-instance v0, Lcom/dd/plist/UID;

    #@331
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@334
    move-result-object v2

    #@335
    iget-object v3, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@337
    add-int/lit8 v5, v4, 0x1

    #@339
    add-int/lit8 v4, v4, 0x1

    #@33b
    add-int/2addr v1, v4

    #@33c
    invoke-static {v3, v5, v1}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@33f
    move-result-object v1

    #@340
    invoke-direct {v0, v2, v1}, Lcom/dd/plist/UID;-><init>(Ljava/lang/String;[B)V

    #@343
    goto/16 :goto_31

    #@345
    :cond_345
    new-instance v0, Ljava/lang/Exception;

    #@347
    new-instance v2, Ljava/lang/StringBuilder;

    #@349
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@34c
    const-string v3, "To little heap space available! Wanted to read "

    #@34e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@351
    move-result-object v2

    #@352
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@355
    move-result-object v1

    #@356
    const-string v2, " bytes, but only "

    #@358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35b
    move-result-object v1

    #@35c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@35f
    move-result-object v2

    #@360
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    #@363
    move-result-wide v2

    #@364
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@367
    move-result-object v1

    #@368
    const-string v2, " are available."

    #@36a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v1

    #@36e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@371
    move-result-object v1

    #@372
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@375
    throw v0

    #@376
    :pswitch_376
    if-ne v0, v5, :cond_578

    #@378
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@37a
    add-int/lit8 v2, v4, 0x1

    #@37c
    aget-byte v0, v0, v2

    #@37e
    and-int/lit16 v2, v0, 0xf0

    #@380
    div-int/lit8 v2, v2, 0xf

    #@382
    if-eq v2, v1, :cond_39c

    #@384
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@386
    new-instance v5, Ljava/lang/StringBuilder;

    #@388
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@38b
    const-string v6, "UNEXPECTED LENGTH-INT TYPE! "

    #@38d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@390
    move-result-object v5

    #@391
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@394
    move-result-object v2

    #@395
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@398
    move-result-object v2

    #@399
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@39c
    :cond_39c
    and-int/lit8 v0, v0, 0xf

    #@39e
    int-to-double v0, v0

    #@39f
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@3a2
    move-result-wide v0

    #@3a3
    double-to-int v0, v0

    #@3a4
    add-int/lit8 v1, v0, 0x2

    #@3a6
    if-ge v0, v7, :cond_3d1

    #@3a8
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@3aa
    add-int/lit8 v5, v4, 0x2

    #@3ac
    add-int/lit8 v6, v4, 0x2

    #@3ae
    add-int/2addr v0, v6

    #@3af
    invoke-static {v2, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@3b2
    move-result-object v0

    #@3b3
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@3b6
    move-result-wide v6

    #@3b7
    long-to-int v0, v6

    #@3b8
    move v2, v0

    #@3b9
    :goto_3b9
    iget v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@3bb
    mul-int/2addr v0, v2

    #@3bc
    int-to-long v6, v0

    #@3bd
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3c0
    move-result-object v0

    #@3c1
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    #@3c4
    move-result-wide v8

    #@3c5
    cmp-long v0, v6, v8

    #@3c7
    if-lez v0, :cond_3e7

    #@3c9
    new-instance v0, Ljava/lang/Exception;

    #@3cb
    const-string v1, "To little heap space available!"

    #@3cd
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3d0
    throw v0

    #@3d1
    :cond_3d1
    new-instance v2, Ljava/math/BigInteger;

    #@3d3
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@3d5
    add-int/lit8 v6, v4, 0x2

    #@3d7
    add-int/lit8 v7, v4, 0x2

    #@3d9
    add-int/2addr v0, v7

    #@3da
    invoke-static {v5, v6, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@3dd
    move-result-object v0

    #@3de
    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    #@3e1
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@3e4
    move-result v0

    #@3e5
    move v2, v0

    #@3e6
    goto :goto_3b9

    #@3e7
    :cond_3e7
    new-instance v0, Lcom/dd/plist/NSArray;

    #@3e9
    invoke-direct {v0, v2}, Lcom/dd/plist/NSArray;-><init>(I)V

    #@3ec
    :goto_3ec
    if-ge v3, v2, :cond_31

    #@3ee
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@3f0
    add-int v6, v4, v1

    #@3f2
    iget v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@3f4
    mul-int/2addr v7, v3

    #@3f5
    add-int/2addr v6, v7

    #@3f6
    add-int v7, v4, v1

    #@3f8
    add-int/lit8 v8, v3, 0x1

    #@3fa
    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@3fc
    mul-int/2addr v8, v9

    #@3fd
    add-int/2addr v7, v8

    #@3fe
    invoke-static {v5, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@401
    move-result-object v5

    #@402
    invoke-static {v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@405
    move-result-wide v6

    #@406
    long-to-int v5, v6

    #@407
    invoke-direct {p0, v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    #@40a
    move-result-object v5

    #@40b
    invoke-virtual {v0, v3, v5}, Lcom/dd/plist/NSArray;->setValue(ILcom/dd/plist/NSObject;)V

    #@40e
    add-int/lit8 v3, v3, 0x1

    #@410
    goto :goto_3ec

    #@411
    :pswitch_411
    if-ne v0, v5, :cond_575

    #@413
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@415
    add-int/lit8 v2, v4, 0x1

    #@417
    aget-byte v0, v0, v2

    #@419
    and-int/lit16 v2, v0, 0xf0

    #@41b
    div-int/lit8 v2, v2, 0xf

    #@41d
    if-eq v2, v1, :cond_437

    #@41f
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@421
    new-instance v5, Ljava/lang/StringBuilder;

    #@423
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@426
    const-string v6, "UNEXPECTED LENGTH-INT TYPE! "

    #@428
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v5

    #@42c
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42f
    move-result-object v2

    #@430
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@433
    move-result-object v2

    #@434
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@437
    :cond_437
    and-int/lit8 v0, v0, 0xf

    #@439
    int-to-double v0, v0

    #@43a
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@43d
    move-result-wide v0

    #@43e
    double-to-int v0, v0

    #@43f
    add-int/lit8 v1, v0, 0x2

    #@441
    if-ge v0, v7, :cond_46c

    #@443
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@445
    add-int/lit8 v5, v4, 0x2

    #@447
    add-int/lit8 v6, v4, 0x2

    #@449
    add-int/2addr v0, v6

    #@44a
    invoke-static {v2, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@44d
    move-result-object v0

    #@44e
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@451
    move-result-wide v6

    #@452
    long-to-int v0, v6

    #@453
    move v2, v0

    #@454
    :goto_454
    iget v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@456
    mul-int/2addr v0, v2

    #@457
    int-to-long v6, v0

    #@458
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@45b
    move-result-object v0

    #@45c
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    #@45f
    move-result-wide v8

    #@460
    cmp-long v0, v6, v8

    #@462
    if-lez v0, :cond_482

    #@464
    new-instance v0, Ljava/lang/Exception;

    #@466
    const-string v1, "To little heap space available!"

    #@468
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@46b
    throw v0

    #@46c
    :cond_46c
    new-instance v2, Ljava/math/BigInteger;

    #@46e
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@470
    add-int/lit8 v6, v4, 0x2

    #@472
    add-int/lit8 v7, v4, 0x2

    #@474
    add-int/2addr v0, v7

    #@475
    invoke-static {v5, v6, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@478
    move-result-object v0

    #@479
    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    #@47c
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@47f
    move-result v0

    #@480
    move v2, v0

    #@481
    goto :goto_454

    #@482
    :cond_482
    new-instance v0, Lcom/dd/plist/NSSet;

    #@484
    invoke-direct {v0}, Lcom/dd/plist/NSSet;-><init>()V

    #@487
    :goto_487
    if-ge v3, v2, :cond_31

    #@489
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@48b
    add-int v6, v4, v1

    #@48d
    iget v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@48f
    mul-int/2addr v7, v3

    #@490
    add-int/2addr v6, v7

    #@491
    add-int v7, v4, v1

    #@493
    add-int/lit8 v8, v3, 0x1

    #@495
    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@497
    mul-int/2addr v8, v9

    #@498
    add-int/2addr v7, v8

    #@499
    invoke-static {v5, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@49c
    move-result-object v5

    #@49d
    invoke-static {v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@4a0
    move-result-wide v6

    #@4a1
    long-to-int v5, v6

    #@4a2
    invoke-direct {p0, v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    #@4a5
    move-result-object v5

    #@4a6
    invoke-virtual {v0, v5}, Lcom/dd/plist/NSSet;->addObject(Lcom/dd/plist/NSObject;)V

    #@4a9
    add-int/lit8 v3, v3, 0x1

    #@4ab
    goto :goto_487

    #@4ac
    :pswitch_4ac
    if-ne v0, v5, :cond_572

    #@4ae
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@4b0
    add-int/lit8 v2, v4, 0x1

    #@4b2
    aget-byte v0, v0, v2

    #@4b4
    and-int/lit16 v2, v0, 0xf0

    #@4b6
    div-int/lit8 v2, v2, 0xf

    #@4b8
    if-eq v2, v1, :cond_4d2

    #@4ba
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4bc
    new-instance v5, Ljava/lang/StringBuilder;

    #@4be
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c1
    const-string v6, "UNEXPECTED LENGTH-INT TYPE! "

    #@4c3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c6
    move-result-object v5

    #@4c7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4ca
    move-result-object v2

    #@4cb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4ce
    move-result-object v2

    #@4cf
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4d2
    :cond_4d2
    and-int/lit8 v0, v0, 0xf

    #@4d4
    int-to-double v0, v0

    #@4d5
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    #@4d8
    move-result-wide v0

    #@4d9
    double-to-int v0, v0

    #@4da
    add-int/lit8 v1, v0, 0x2

    #@4dc
    if-ge v0, v7, :cond_509

    #@4de
    iget-object v2, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@4e0
    add-int/lit8 v5, v4, 0x2

    #@4e2
    add-int/lit8 v6, v4, 0x2

    #@4e4
    add-int/2addr v0, v6

    #@4e5
    invoke-static {v2, v5, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@4e8
    move-result-object v0

    #@4e9
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@4ec
    move-result-wide v6

    #@4ed
    long-to-int v0, v6

    #@4ee
    move v2, v0

    #@4ef
    :goto_4ef
    mul-int/lit8 v0, v2, 0x2

    #@4f1
    iget v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@4f3
    mul-int/2addr v0, v5

    #@4f4
    int-to-long v6, v0

    #@4f5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@4f8
    move-result-object v0

    #@4f9
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    #@4fc
    move-result-wide v8

    #@4fd
    cmp-long v0, v6, v8

    #@4ff
    if-lez v0, :cond_51f

    #@501
    new-instance v0, Ljava/lang/Exception;

    #@503
    const-string v1, "To little heap space available!"

    #@505
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@508
    throw v0

    #@509
    :cond_509
    new-instance v2, Ljava/math/BigInteger;

    #@50b
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@50d
    add-int/lit8 v6, v4, 0x2

    #@50f
    add-int/lit8 v7, v4, 0x2

    #@511
    add-int/2addr v0, v7

    #@512
    invoke-static {v5, v6, v0}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@515
    move-result-object v0

    #@516
    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    #@519
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@51c
    move-result v0

    #@51d
    move v2, v0

    #@51e
    goto :goto_4ef

    #@51f
    :cond_51f
    new-instance v0, Lcom/dd/plist/NSDictionary;

    #@521
    invoke-direct {v0}, Lcom/dd/plist/NSDictionary;-><init>()V

    #@524
    :goto_524
    if-ge v3, v2, :cond_31

    #@526
    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@528
    add-int v6, v4, v1

    #@52a
    iget v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@52c
    mul-int/2addr v7, v3

    #@52d
    add-int/2addr v6, v7

    #@52e
    add-int v7, v4, v1

    #@530
    add-int/lit8 v8, v3, 0x1

    #@532
    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@534
    mul-int/2addr v8, v9

    #@535
    add-int/2addr v7, v8

    #@536
    invoke-static {v5, v6, v7}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@539
    move-result-object v5

    #@53a
    invoke-static {v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@53d
    move-result-wide v6

    #@53e
    long-to-int v5, v6

    #@53f
    iget-object v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    #@541
    add-int v7, v4, v1

    #@543
    iget v8, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@545
    mul-int/2addr v8, v2

    #@546
    add-int/2addr v7, v8

    #@547
    iget v8, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@549
    mul-int/2addr v8, v3

    #@54a
    add-int/2addr v7, v8

    #@54b
    add-int v8, v4, v1

    #@54d
    iget v9, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@54f
    mul-int/2addr v9, v2

    #@550
    add-int/2addr v8, v9

    #@551
    add-int/lit8 v9, v3, 0x1

    #@553
    iget v10, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    #@555
    mul-int/2addr v9, v10

    #@556
    add-int/2addr v8, v9

    #@557
    invoke-static {v6, v7, v8}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    #@55a
    move-result-object v6

    #@55b
    invoke-static {v6}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    #@55e
    move-result-wide v6

    #@55f
    long-to-int v6, v6

    #@560
    invoke-direct {p0, v5}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    #@563
    move-result-object v5

    #@564
    invoke-direct {p0, v6}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    #@567
    move-result-object v6

    #@568
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@56b
    move-result-object v5

    #@56c
    invoke-virtual {v0, v5, v6}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    #@56f
    add-int/lit8 v3, v3, 0x1

    #@571
    goto :goto_524

    #@572
    :cond_572
    move v2, v0

    #@573
    goto/16 :goto_4ef

    #@575
    :cond_575
    move v2, v0

    #@576
    goto/16 :goto_454

    #@578
    :cond_578
    move v2, v0

    #@579
    goto/16 :goto_3b9

    #@57b
    :cond_57b
    move v2, v0

    #@57c
    goto/16 :goto_20f

    #@57e
    :cond_57e
    move v2, v0

    #@57f
    goto/16 :goto_166

    #@581
    nop

    #@582
    :pswitch_data_582
    .packed-switch 0x0
        :pswitch_32
        :pswitch_46
        :pswitch_9b
        :pswitch_f1
        :pswitch_122
        :pswitch_1cc
        :pswitch_276
        :pswitch_18
        :pswitch_320
        :pswitch_18
        :pswitch_376
        :pswitch_18
        :pswitch_411
        :pswitch_4ac
    .end packed-switch

    #@5a2
    :sswitch_data_5a2
    .sparse-switch
        0x0 -> :sswitch_36
        0x8 -> :sswitch_38
        0x9 -> :sswitch_3e
        0xf -> :sswitch_44
    .end sparse-switch
.end method

.method public static final parseUnsignedInt([B)J
    .registers 7

    #@0
    const-wide/16 v0, 0x0

    #@2
    array-length v3, p0

    #@3
    const/4 v2, 0x0

    #@4
    :goto_4
    if-ge v2, v3, :cond_12

    #@6
    const/16 v4, 0x8

    #@8
    shl-long/2addr v0, v4

    #@9
    aget-byte v4, p0, v2

    #@b
    and-int/lit16 v4, v4, 0xff

    #@d
    int-to-long v4, v4

    #@e
    or-long/2addr v0, v4

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    goto :goto_4

    #@12
    :cond_12
    const-wide v2, 0xffffffffL

    #@17
    and-long/2addr v0, v2

    #@18
    return-wide v0
.end method
