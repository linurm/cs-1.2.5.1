.class public Lcom/dd/plist/NSData;
.super Lcom/dd/plist/NSObject;


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    invoke-virtual {p1}, Ljava/io/File;->length()J

    #@6
    move-result-wide v0

    #@7
    long-to-int v0, v0

    #@8
    new-array v0, v0, [B

    #@a
    iput-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@c
    new-instance v0, Ljava/io/RandomAccessFile;

    #@e
    const-string v1, "r"

    #@10
    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@13
    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@15
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    #@18
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    #@1b
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    const-string v0, "\\s+"

    #@5
    const-string v1, ""

    #@7
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-static {v0}, Lcom/dd/plist/Base64;->decode(Ljava/lang/String;)[B

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@11
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    iput-object p1, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@5
    return-void
.end method


# virtual methods
.method public bytes()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1c

    #@e
    check-cast p1, Lcom/dd/plist/NSData;

    #@10
    iget-object v0, p1, Lcom/dd/plist/NSData;->bytes:[B

    #@12
    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@14
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    const/4 v0, 0x1

    #@1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_1b
.end method

.method public getBase64EncodedData()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@2
    invoke-static {v0}, Lcom/dd/plist/Base64;->encodeBytes([B)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBytes(Ljava/nio/ByteBuffer;I)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@2
    const/4 v1, 0x0

    #@3
    iget-object v2, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@5
    array-length v2, v2

    #@6
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v2

    #@a
    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@d
    return-void
.end method

.method public getBytes(Ljava/nio/ByteBuffer;II)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@2
    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@4
    array-length v1, v1

    #@5
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    #@8
    move-result v1

    #@9
    invoke-virtual {p1, v0, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@c
    return-void
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    #@5
    move-result v0

    #@6
    add-int/lit16 v0, v0, 0x14f

    #@8
    return v0
.end method

.method public length()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .registers 7

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const/16 v0, 0x3c

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8
    sget-object v0, Lcom/dd/plist/NSData;->NEWLINE:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    #@d
    move-result v1

    #@e
    const/4 v0, 0x0

    #@f
    :goto_f
    iget-object v2, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@11
    array-length v2, v2

    #@12
    if-ge v0, v2, :cond_52

    #@14
    iget-object v2, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@16
    aget-byte v2, v2, v0

    #@18
    and-int/lit16 v2, v2, 0xff

    #@1a
    const/16 v3, 0x10

    #@1c
    if-ge v2, v3, :cond_23

    #@1e
    const-string v3, "0"

    #@20
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    :cond_23
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@2d
    move-result v2

    #@2e
    sub-int/2addr v2, v1

    #@2f
    const/16 v3, 0x50

    #@31
    if-le v2, v3, :cond_3f

    #@33
    sget-object v1, Lcom/dd/plist/NSData;->NEWLINE:Ljava/lang/String;

    #@35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@3b
    move-result v1

    #@3c
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_f

    #@3f
    :cond_3f
    add-int/lit8 v2, v0, 0x1

    #@41
    rem-int/lit8 v2, v2, 0x2

    #@43
    if-nez v2, :cond_3c

    #@45
    iget-object v2, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@47
    array-length v2, v2

    #@48
    add-int/lit8 v2, v2, -0x1

    #@4a
    if-eq v0, v2, :cond_3c

    #@4c
    const-string v2, " "

    #@4e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    goto :goto_3c

    #@52
    :cond_52
    const/16 v0, 0x3e

    #@54
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@57
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .registers 3

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->toASCII(Ljava/lang/StringBuilder;I)V

    #@3
    return-void
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x4

    #@1
    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@3
    array-length v1, v1

    #@4
    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    #@7
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    #@9
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    #@c
    return-void
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .registers 8

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "<data>"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    invoke-virtual {p0}, Lcom/dd/plist/NSData;->getBase64EncodedData()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    const-string v1, "\n"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    array-length v2, v1

    #@18
    const/4 v0, 0x0

    #@19
    :goto_19
    if-ge v0, v2, :cond_2d

    #@1b
    aget-object v3, v1, v0

    #@1d
    add-int/lit8 v4, p2, 0x1

    #@1f
    invoke-virtual {p0, p1, v4}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    #@22
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    sget-object v3, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@27
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_19

    #@2d
    :cond_2d
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    #@30
    const-string v0, "</data>"

    #@32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    return-void
.end method
