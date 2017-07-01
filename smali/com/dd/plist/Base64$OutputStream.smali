.class public Lcom/dd/plist/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dd/plist/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/dd/plist/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 7

    #@0
    const/4 v3, 0x4

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@6
    and-int/lit8 v0, p2, 0x8

    #@8
    if-eqz v0, :cond_33

    #@a
    move v0, v1

    #@b
    :goto_b
    iput-boolean v0, p0, Lcom/dd/plist/Base64$OutputStream;->breakLines:Z

    #@d
    and-int/lit8 v0, p2, 0x1

    #@f
    if-eqz v0, :cond_35

    #@11
    :goto_11
    iput-boolean v1, p0, Lcom/dd/plist/Base64$OutputStream;->encode:Z

    #@13
    iget-boolean v0, p0, Lcom/dd/plist/Base64$OutputStream;->encode:Z

    #@15
    if-eqz v0, :cond_37

    #@17
    const/4 v0, 0x3

    #@18
    :goto_18
    iput v0, p0, Lcom/dd/plist/Base64$OutputStream;->bufferLength:I

    #@1a
    iget v0, p0, Lcom/dd/plist/Base64$OutputStream;->bufferLength:I

    #@1c
    new-array v0, v0, [B

    #@1e
    iput-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->buffer:[B

    #@20
    iput v2, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@22
    iput v2, p0, Lcom/dd/plist/Base64$OutputStream;->lineLength:I

    #@24
    iput-boolean v2, p0, Lcom/dd/plist/Base64$OutputStream;->suspendEncoding:Z

    #@26
    new-array v0, v3, [B

    #@28
    iput-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->b4:[B

    #@2a
    iput p2, p0, Lcom/dd/plist/Base64$OutputStream;->options:I

    #@2c
    # invokes: Lcom/dd/plist/Base64;->getDecodabet(I)[B
    invoke-static {p2}, Lcom/dd/plist/Base64;->access$000(I)[B

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->decodabet:[B

    #@32
    return-void

    #@33
    :cond_33
    move v0, v2

    #@34
    goto :goto_b

    #@35
    :cond_35
    move v1, v2

    #@36
    goto :goto_11

    #@37
    :cond_37
    move v0, v3

    #@38
    goto :goto_18
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/dd/plist/Base64$OutputStream;->flushBase64()V

    #@4
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    #@7
    iput-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->buffer:[B

    #@9
    iput-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #@b
    return-void
.end method

.method public flushBase64()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget v0, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@2
    if-lez v0, :cond_1c

    #@4
    iget-boolean v0, p0, Lcom/dd/plist/Base64$OutputStream;->encode:Z

    #@6
    if-eqz v0, :cond_1d

    #@8
    iget-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #@a
    iget-object v1, p0, Lcom/dd/plist/Base64$OutputStream;->b4:[B

    #@c
    iget-object v2, p0, Lcom/dd/plist/Base64$OutputStream;->buffer:[B

    #@e
    iget v3, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@10
    iget v4, p0, Lcom/dd/plist/Base64$OutputStream;->options:I

    #@12
    # invokes: Lcom/dd/plist/Base64;->encode3to4([B[BII)[B
    invoke-static {v1, v2, v3, v4}, Lcom/dd/plist/Base64;->access$300([B[BII)[B

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@19
    const/4 v0, 0x0

    #@1a
    iput v0, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@1c
    :cond_1c
    return-void

    #@1d
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    #@1f
    const-string v1, "Base64 input not properly padded."

    #@21
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public resumeEncoding()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/dd/plist/Base64$OutputStream;->suspendEncoding:Z

    #@3
    return-void
.end method

.method public suspendEncoding()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/dd/plist/Base64$OutputStream;->flushBase64()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/dd/plist/Base64$OutputStream;->suspendEncoding:Z

    #@6
    return-void
.end method

.method public write(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v2, -0x5

    #@1
    const/4 v5, 0x0

    #@2
    iget-boolean v0, p0, Lcom/dd/plist/Base64$OutputStream;->suspendEncoding:Z

    #@4
    if-eqz v0, :cond_c

    #@6
    iget-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #@8
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@b
    :cond_b
    :goto_b
    return-void

    #@c
    :cond_c
    iget-boolean v0, p0, Lcom/dd/plist/Base64$OutputStream;->encode:Z

    #@e
    if-eqz v0, :cond_4f

    #@10
    iget-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->buffer:[B

    #@12
    iget v1, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@14
    add-int/lit8 v2, v1, 0x1

    #@16
    iput v2, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@18
    int-to-byte v2, p1

    #@19
    int-to-byte v2, v2

    #@1a
    aput-byte v2, v0, v1

    #@1c
    iget v0, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@1e
    iget v1, p0, Lcom/dd/plist/Base64$OutputStream;->bufferLength:I

    #@20
    if-lt v0, v1, :cond_b

    #@22
    iget-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #@24
    iget-object v1, p0, Lcom/dd/plist/Base64$OutputStream;->b4:[B

    #@26
    iget-object v2, p0, Lcom/dd/plist/Base64$OutputStream;->buffer:[B

    #@28
    iget v3, p0, Lcom/dd/plist/Base64$OutputStream;->bufferLength:I

    #@2a
    iget v4, p0, Lcom/dd/plist/Base64$OutputStream;->options:I

    #@2c
    # invokes: Lcom/dd/plist/Base64;->encode3to4([B[BII)[B
    invoke-static {v1, v2, v3, v4}, Lcom/dd/plist/Base64;->access$300([B[BII)[B

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@33
    iget v0, p0, Lcom/dd/plist/Base64$OutputStream;->lineLength:I

    #@35
    add-int/lit8 v0, v0, 0x4

    #@37
    iput v0, p0, Lcom/dd/plist/Base64$OutputStream;->lineLength:I

    #@39
    iget-boolean v0, p0, Lcom/dd/plist/Base64$OutputStream;->breakLines:Z

    #@3b
    if-eqz v0, :cond_4c

    #@3d
    iget v0, p0, Lcom/dd/plist/Base64$OutputStream;->lineLength:I

    #@3f
    const/16 v1, 0x4c

    #@41
    if-lt v0, v1, :cond_4c

    #@43
    iget-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #@45
    const/16 v1, 0xa

    #@47
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@4a
    iput v5, p0, Lcom/dd/plist/Base64$OutputStream;->lineLength:I

    #@4c
    :cond_4c
    iput v5, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@4e
    goto :goto_b

    #@4f
    :cond_4f
    iget-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->decodabet:[B

    #@51
    and-int/lit8 v1, p1, 0x7f

    #@53
    aget-byte v0, v0, v1

    #@55
    if-le v0, v2, :cond_7d

    #@57
    iget-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->buffer:[B

    #@59
    iget v1, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@5b
    add-int/lit8 v2, v1, 0x1

    #@5d
    iput v2, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@5f
    int-to-byte v2, p1

    #@60
    int-to-byte v2, v2

    #@61
    aput-byte v2, v0, v1

    #@63
    iget v0, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@65
    iget v1, p0, Lcom/dd/plist/Base64$OutputStream;->bufferLength:I

    #@67
    if-lt v0, v1, :cond_b

    #@69
    iget-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->buffer:[B

    #@6b
    iget-object v1, p0, Lcom/dd/plist/Base64$OutputStream;->b4:[B

    #@6d
    iget v2, p0, Lcom/dd/plist/Base64$OutputStream;->options:I

    #@6f
    # invokes: Lcom/dd/plist/Base64;->decode4to3([BI[BII)I
    invoke-static {v0, v5, v1, v5, v2}, Lcom/dd/plist/Base64;->access$200([BI[BII)I

    #@72
    move-result v0

    #@73
    iget-object v1, p0, Lcom/dd/plist/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #@75
    iget-object v2, p0, Lcom/dd/plist/Base64$OutputStream;->b4:[B

    #@77
    invoke-virtual {v1, v2, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    #@7a
    iput v5, p0, Lcom/dd/plist/Base64$OutputStream;->position:I

    #@7c
    goto :goto_b

    #@7d
    :cond_7d
    iget-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->decodabet:[B

    #@7f
    and-int/lit8 v1, p1, 0x7f

    #@81
    aget-byte v0, v0, v1

    #@83
    if-eq v0, v2, :cond_b

    #@85
    new-instance v0, Ljava/io/IOException;

    #@87
    const-string v1, "Invalid character in Base64 data."

    #@89
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v0
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Lcom/dd/plist/Base64$OutputStream;->suspendEncoding:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/dd/plist/Base64$OutputStream;->out:Ljava/io/OutputStream;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@9
    :cond_9
    return-void

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    :goto_b
    if-ge v0, p3, :cond_9

    #@d
    add-int v1, p2, v0

    #@f
    aget-byte v1, p1, v1

    #@11
    invoke-virtual {p0, v1}, Lcom/dd/plist/Base64$OutputStream;->write(I)V

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_b
.end method
