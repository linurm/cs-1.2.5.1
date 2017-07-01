.class public Lcom/dd/plist/Base64$InputStream;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dd/plist/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/dd/plist/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 6

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@5
    iput p2, p0, Lcom/dd/plist/Base64$InputStream;->options:I

    #@7
    and-int/lit8 v0, p2, 0x8

    #@9
    if-lez v0, :cond_2d

    #@b
    move v0, v1

    #@c
    :goto_c
    iput-boolean v0, p0, Lcom/dd/plist/Base64$InputStream;->breakLines:Z

    #@e
    and-int/lit8 v0, p2, 0x1

    #@10
    if-lez v0, :cond_2f

    #@12
    :goto_12
    iput-boolean v1, p0, Lcom/dd/plist/Base64$InputStream;->encode:Z

    #@14
    iget-boolean v0, p0, Lcom/dd/plist/Base64$InputStream;->encode:Z

    #@16
    if-eqz v0, :cond_31

    #@18
    const/4 v0, 0x4

    #@19
    :goto_19
    iput v0, p0, Lcom/dd/plist/Base64$InputStream;->bufferLength:I

    #@1b
    iget v0, p0, Lcom/dd/plist/Base64$InputStream;->bufferLength:I

    #@1d
    new-array v0, v0, [B

    #@1f
    iput-object v0, p0, Lcom/dd/plist/Base64$InputStream;->buffer:[B

    #@21
    const/4 v0, -0x1

    #@22
    iput v0, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    #@24
    iput v2, p0, Lcom/dd/plist/Base64$InputStream;->lineLength:I

    #@26
    # invokes: Lcom/dd/plist/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/dd/plist/Base64;->access$000(I)[B

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Lcom/dd/plist/Base64$InputStream;->decodabet:[B

    #@2c
    return-void

    #@2d
    :cond_2d
    move v0, v2

    #@2e
    goto :goto_c

    #@2f
    :cond_2f
    move v1, v2

    #@30
    goto :goto_12

    #@31
    :cond_31
    const/4 v0, 0x3

    #@32
    goto :goto_19
.end method


# virtual methods
.method public read()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v5, 0x3

    #@1
    const/4 v7, 0x4

    #@2
    const/4 v6, -0x1

    #@3
    const/4 v1, 0x0

    #@4
    iget v0, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    #@6
    if-gez v0, :cond_31

    #@8
    iget-boolean v0, p0, Lcom/dd/plist/Base64$InputStream;->encode:Z

    #@a
    if-eqz v0, :cond_3f

    #@c
    new-array v0, v5, [B

    #@e
    move v2, v1

    #@f
    move v3, v1

    #@10
    :goto_10
    if-ge v3, v5, :cond_23

    #@12
    iget-object v4, p0, Lcom/dd/plist/Base64$InputStream;->in:Ljava/io/InputStream;

    #@14
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    #@17
    move-result v4

    #@18
    if-ltz v4, :cond_23

    #@1a
    int-to-byte v4, v4

    #@1b
    int-to-byte v4, v4

    #@1c
    aput-byte v4, v0, v3

    #@1e
    add-int/lit8 v3, v3, 0x1

    #@20
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_10

    #@23
    :cond_23
    if-lez v2, :cond_3d

    #@25
    iget-object v3, p0, Lcom/dd/plist/Base64$InputStream;->buffer:[B

    #@27
    iget v5, p0, Lcom/dd/plist/Base64$InputStream;->options:I

    #@29
    move v4, v1

    #@2a
    # invokes: Lcom/dd/plist/Base64;->encode3to4([BII[BII)[B
    invoke-static/range {v0 .. v5}, Lcom/dd/plist/Base64;->access$100([BII[BII)[B

    #@2d
    iput v1, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    #@2f
    iput v7, p0, Lcom/dd/plist/Base64$InputStream;->numSigBytes:I

    #@31
    :cond_31
    :goto_31
    iget v0, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    #@33
    if-ltz v0, :cond_a7

    #@35
    iget v0, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    #@37
    iget v2, p0, Lcom/dd/plist/Base64$InputStream;->numSigBytes:I

    #@39
    if-lt v0, v2, :cond_79

    #@3b
    move v0, v6

    #@3c
    :goto_3c
    return v0

    #@3d
    :cond_3d
    move v0, v6

    #@3e
    goto :goto_3c

    #@3f
    :cond_3f
    new-array v2, v7, [B

    #@41
    move v0, v1

    #@42
    :goto_42
    if-ge v0, v7, :cond_57

    #@44
    :cond_44
    iget-object v3, p0, Lcom/dd/plist/Base64$InputStream;->in:Ljava/io/InputStream;

    #@46
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    #@49
    move-result v3

    #@4a
    if-ltz v3, :cond_55

    #@4c
    iget-object v4, p0, Lcom/dd/plist/Base64$InputStream;->decodabet:[B

    #@4e
    and-int/lit8 v5, v3, 0x7f

    #@50
    aget-byte v4, v4, v5

    #@52
    const/4 v5, -0x5

    #@53
    if-le v4, v5, :cond_44

    #@55
    :cond_55
    if-gez v3, :cond_66

    #@57
    :cond_57
    if-ne v0, v7, :cond_6d

    #@59
    iget-object v0, p0, Lcom/dd/plist/Base64$InputStream;->buffer:[B

    #@5b
    iget v3, p0, Lcom/dd/plist/Base64$InputStream;->options:I

    #@5d
    # invokes: Lcom/dd/plist/Base64;->decode4to3([BI[BII)I
    invoke-static {v2, v1, v0, v1, v3}, Lcom/dd/plist/Base64;->access$200([BI[BII)I

    #@60
    move-result v0

    #@61
    iput v0, p0, Lcom/dd/plist/Base64$InputStream;->numSigBytes:I

    #@63
    iput v1, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    #@65
    goto :goto_31

    #@66
    :cond_66
    int-to-byte v3, v3

    #@67
    int-to-byte v3, v3

    #@68
    aput-byte v3, v2, v0

    #@6a
    add-int/lit8 v0, v0, 0x1

    #@6c
    goto :goto_42

    #@6d
    :cond_6d
    if-nez v0, :cond_71

    #@6f
    move v0, v6

    #@70
    goto :goto_3c

    #@71
    :cond_71
    new-instance v0, Ljava/io/IOException;

    #@73
    const-string v1, "Improperly padded Base64 input."

    #@75
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@78
    throw v0

    #@79
    :cond_79
    iget-boolean v0, p0, Lcom/dd/plist/Base64$InputStream;->encode:Z

    #@7b
    if-eqz v0, :cond_8c

    #@7d
    iget-boolean v0, p0, Lcom/dd/plist/Base64$InputStream;->breakLines:Z

    #@7f
    if-eqz v0, :cond_8c

    #@81
    iget v0, p0, Lcom/dd/plist/Base64$InputStream;->lineLength:I

    #@83
    const/16 v2, 0x4c

    #@85
    if-lt v0, v2, :cond_8c

    #@87
    iput v1, p0, Lcom/dd/plist/Base64$InputStream;->lineLength:I

    #@89
    const/16 v0, 0xa

    #@8b
    goto :goto_3c

    #@8c
    :cond_8c
    iget v0, p0, Lcom/dd/plist/Base64$InputStream;->lineLength:I

    #@8e
    add-int/lit8 v0, v0, 0x1

    #@90
    iput v0, p0, Lcom/dd/plist/Base64$InputStream;->lineLength:I

    #@92
    iget-object v0, p0, Lcom/dd/plist/Base64$InputStream;->buffer:[B

    #@94
    iget v1, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    #@96
    add-int/lit8 v2, v1, 0x1

    #@98
    iput v2, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    #@9a
    aget-byte v0, v0, v1

    #@9c
    iget v1, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    #@9e
    iget v2, p0, Lcom/dd/plist/Base64$InputStream;->bufferLength:I

    #@a0
    if-lt v1, v2, :cond_a4

    #@a2
    iput v6, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    #@a4
    :cond_a4
    and-int/lit16 v0, v0, 0xff

    #@a6
    goto :goto_3c

    #@a7
    :cond_a7
    new-instance v0, Ljava/io/IOException;

    #@a9
    const-string v1, "Error in Base64 code reading stream."

    #@ab
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    if-ge v0, p3, :cond_15

    #@3
    invoke-virtual {p0}, Lcom/dd/plist/Base64$InputStream;->read()I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_12

    #@9
    add-int v2, p2, v0

    #@b
    int-to-byte v1, v1

    #@c
    int-to-byte v1, v1

    #@d
    aput-byte v1, p1, v2

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_1

    #@12
    :cond_12
    if-nez v0, :cond_15

    #@14
    const/4 v0, -0x1

    #@15
    :cond_15
    return v0
.end method
