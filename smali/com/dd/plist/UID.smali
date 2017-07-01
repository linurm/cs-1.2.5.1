.class public Lcom/dd/plist/UID;
.super Lcom/dd/plist/NSObject;


# instance fields
.field private bytes:[B

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    iput-object p1, p0, Lcom/dd/plist/UID;->name:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/dd/plist/UID;->bytes:[B

    #@7
    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/UID;->bytes:[B

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/UID;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .registers 6

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/UID;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "\""

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    iget-object v1, p0, Lcom/dd/plist/UID;->bytes:[B

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_25

    #@e
    iget-object v1, p0, Lcom/dd/plist/UID;->bytes:[B

    #@10
    aget-byte v1, v1, v0

    #@12
    const/16 v2, 0x10

    #@14
    if-ge v1, v2, :cond_1b

    #@16
    const-string v2, "0"

    #@18
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    :cond_1b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_9

    #@25
    :cond_25
    const-string v0, "\""

    #@27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .registers 3

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/UID;->toASCII(Ljava/lang/StringBuilder;I)V

    #@3
    return-void
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/dd/plist/UID;->bytes:[B

    #@2
    array-length v0, v0

    #@3
    add-int/lit16 v0, v0, 0x80

    #@5
    add-int/lit8 v0, v0, -0x1

    #@7
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@a
    iget-object v0, p0, Lcom/dd/plist/UID;->bytes:[B

    #@c
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    #@f
    return-void
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .registers 6

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/UID;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "<string>"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    iget-object v1, p0, Lcom/dd/plist/UID;->bytes:[B

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_25

    #@e
    iget-object v1, p0, Lcom/dd/plist/UID;->bytes:[B

    #@10
    aget-byte v1, v1, v0

    #@12
    const/16 v2, 0x10

    #@14
    if-ge v1, v2, :cond_1b

    #@16
    const-string v2, "0"

    #@18
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    :cond_1b
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_9

    #@25
    :cond_25
    const-string v0, "</string>"

    #@27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    return-void
.end method
