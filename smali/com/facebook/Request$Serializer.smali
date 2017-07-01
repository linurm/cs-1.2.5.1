.class Lcom/facebook/Request$Serializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$KeyValueSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation


# instance fields
.field private firstWrite:Z

.field private final logger:Lcom/facebook/internal/Logger;

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    #@6
    iput-object p1, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@8
    iput-object p2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@a
    return-void
.end method


# virtual methods
.method public varargs write(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    #@2
    if-eqz v0, :cond_28

    #@4
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@6
    const-string v1, "--"

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@f
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@11
    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    #@13
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@1a
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@1c
    const-string v1, "\r\n"

    #@1e
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@25
    const/4 v0, 0x0

    #@26
    iput-boolean v0, p0, Lcom/facebook/Request$Serializer;->firstWrite:Z

    #@28
    :cond_28
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@2a
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@35
    return-void
.end method

.method public writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-string v0, "image/png"

    #@2
    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    #@7
    const/16 v1, 0x64

    #@9
    iget-object v2, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@b
    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    #@e
    const-string v0, ""

    #@10
    const/4 v1, 0x0

    #@11
    new-array v1, v1, [Ljava/lang/Object;

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    #@16
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    #@19
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@1b
    if-eqz v0, :cond_37

    #@1d
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v2, "    "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    const-string v2, "<Image>"

    #@34
    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@37
    :cond_37
    return-void
.end method

.method public writeBytes(Ljava/lang/String;[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v5, 0x0

    #@1
    const-string v0, "content/unknown"

    #@3
    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@8
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    #@b
    const-string v0, ""

    #@d
    new-array v1, v5, [Ljava/lang/Object;

    #@f
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    #@12
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    #@15
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@17
    if-eqz v0, :cond_41

    #@19
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string v2, "    "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, "<Data: %d>"

    #@30
    const/4 v3, 0x1

    #@31
    new-array v3, v3, [Ljava/lang/Object;

    #@33
    array-length v4, p2

    #@34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v4

    #@38
    aput-object v4, v3, v5

    #@3a
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@41
    :cond_41
    return-void
.end method

.method public writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    #@4
    new-array v1, v4, [Ljava/lang/Object;

    #@6
    aput-object p1, v1, v3

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    #@b
    if-eqz p2, :cond_16

    #@d
    const-string v0, "; filename=\"%s\""

    #@f
    new-array v1, v4, [Ljava/lang/Object;

    #@11
    aput-object p2, v1, v3

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    #@16
    :cond_16
    const-string v0, ""

    #@18
    new-array v1, v3, [Ljava/lang/Object;

    #@1a
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1d
    if-eqz p3, :cond_2d

    #@1f
    const-string v0, "%s: %s"

    #@21
    const/4 v1, 0x2

    #@22
    new-array v1, v1, [Ljava/lang/Object;

    #@24
    const-string v2, "Content-Type"

    #@26
    aput-object v2, v1, v3

    #@28
    aput-object p3, v1, v4

    #@2a
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2d
    :cond_2d
    const-string v0, ""

    #@2f
    new-array v1, v3, [Ljava/lang/Object;

    #@31
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    #@34
    return-void
.end method

.method public writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    if-nez p3, :cond_6

    #@4
    const-string p3, "content/unknown"

    #@6
    :cond_6
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@b
    instance-of v0, v0, Lcom/facebook/ProgressNoopOutputStream;

    #@d
    if-eqz v0, :cond_51

    #@f
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@11
    check-cast v0, Lcom/facebook/ProgressNoopOutputStream;

    #@13
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    #@16
    move-result-wide v2

    #@17
    invoke-virtual {v0, v2, v3}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    #@1a
    move v0, v1

    #@1b
    :cond_1b
    :goto_1b
    const-string v2, ""

    #@1d
    new-array v3, v1, [Ljava/lang/Object;

    #@1f
    invoke-virtual {p0, v2, v3}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    #@22
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    #@25
    iget-object v2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@27
    if-eqz v2, :cond_50

    #@29
    iget-object v2, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@2b
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string v4, "    "

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    const-string v4, "<Data: %d>"

    #@40
    const/4 v5, 0x1

    #@41
    new-array v5, v5, [Ljava/lang/Object;

    #@43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v0

    #@47
    aput-object v0, v5, v1

    #@49
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v2, v3, v0}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@50
    :cond_50
    return-void

    #@51
    :cond_51
    :try_start_51
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    #@53
    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_7a

    #@56
    :try_start_56
    new-instance v4, Ljava/io/BufferedInputStream;

    #@58
    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_88

    #@5b
    const/16 v0, 0x2000

    #@5d
    :try_start_5d
    new-array v3, v0, [B

    #@5f
    move v0, v1

    #@60
    :goto_60
    invoke-virtual {v4, v3}, Ljava/io/BufferedInputStream;->read([B)I

    #@63
    move-result v5

    #@64
    const/4 v6, -0x1

    #@65
    if-eq v5, v6, :cond_6f

    #@67
    iget-object v6, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@69
    const/4 v7, 0x0

    #@6a
    invoke-virtual {v6, v3, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_8c

    #@6d
    add-int/2addr v0, v5

    #@6e
    goto :goto_60

    #@6f
    :cond_6f
    if-eqz v4, :cond_74

    #@71
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    #@74
    :cond_74
    if-eqz v2, :cond_1b

    #@76
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    #@79
    goto :goto_1b

    #@7a
    :catchall_7a
    move-exception v0

    #@7b
    move-object v1, v0

    #@7c
    move-object v0, v3

    #@7d
    :goto_7d
    if-eqz v3, :cond_82

    #@7f
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    #@82
    :cond_82
    if-eqz v0, :cond_87

    #@84
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    #@87
    :cond_87
    throw v1

    #@88
    :catchall_88
    move-exception v0

    #@89
    move-object v1, v0

    #@8a
    move-object v0, v2

    #@8b
    goto :goto_7d

    #@8c
    :catchall_8c
    move-exception v0

    #@8d
    move-object v3, v4

    #@8e
    move-object v1, v0

    #@8f
    move-object v0, v2

    #@90
    goto :goto_7d
.end method

.method public writeFile(Ljava/lang/String;Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->getFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->getMimeType()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    #@b
    return-void
.end method

.method public varargs writeLine(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    #@3
    const-string v0, "\r\n"

    #@5
    const/4 v1, 0x0

    #@6
    new-array v1, v1, [Ljava/lang/Object;

    #@8
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    #@b
    return-void
.end method

.method public writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@2
    instance-of v0, v0, Lcom/facebook/RequestOutputStream;

    #@4
    if-eqz v0, :cond_d

    #@6
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@8
    check-cast v0, Lcom/facebook/RequestOutputStream;

    #@a
    invoke-interface {v0, p3}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/Request;)V

    #@d
    :cond_d
    # invokes: Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z
    invoke-static {p2}, Lcom/facebook/Request;->access$100(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1b

    #@13
    # invokes: Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {p2}, Lcom/facebook/Request;->access$200(Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {p0, p1, v0}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    instance-of v0, p2, Landroid/graphics/Bitmap;

    #@1d
    if-eqz v0, :cond_25

    #@1f
    check-cast p2, Landroid/graphics/Bitmap;

    #@21
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    #@24
    goto :goto_1a

    #@25
    :cond_25
    instance-of v0, p2, [B

    #@27
    if-eqz v0, :cond_2f

    #@29
    check-cast p2, [B

    #@2b
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeBytes(Ljava/lang/String;[B)V

    #@2e
    goto :goto_1a

    #@2f
    :cond_2f
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    #@31
    if-eqz v0, :cond_3a

    #@33
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    #@35
    const/4 v0, 0x0

    #@36
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    #@39
    goto :goto_1a

    #@3a
    :cond_3a
    instance-of v0, p2, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    #@3c
    if-eqz v0, :cond_44

    #@3e
    check-cast p2, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    #@40
    invoke-virtual {p0, p1, p2}, Lcom/facebook/Request$Serializer;->writeFile(Ljava/lang/String;Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;)V

    #@43
    goto :goto_1a

    #@44
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@46
    const-string v1, "value is not a supported type: String, Bitmap, byte[]"

    #@48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0
.end method

.method public writeRecordBoundary()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-string v0, "--%s"

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    #@8
    aput-object v3, v1, v2

    #@a
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    #@d
    return-void
.end method

.method public writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@5
    instance-of v0, v0, Lcom/facebook/RequestOutputStream;

    #@7
    if-nez v0, :cond_11

    #@9
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, p1, v0}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    :cond_10
    :goto_10
    return-void

    #@11
    :cond_11
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->outputStream:Ljava/io/OutputStream;

    #@13
    check-cast v0, Lcom/facebook/RequestOutputStream;

    #@15
    invoke-virtual {p0, p1, v1, v1}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@18
    const-string v1, "["

    #@1a
    new-array v2, v3, [Ljava/lang/Object;

    #@1c
    invoke-virtual {p0, v1, v2}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1f
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v4

    #@23
    move v2, v3

    #@24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_58

    #@2a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Lcom/facebook/Request;

    #@30
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    #@33
    move-result-object v5

    #@34
    invoke-interface {v0, v1}, Lcom/facebook/RequestOutputStream;->setCurrentRequest(Lcom/facebook/Request;)V

    #@37
    if-lez v2, :cond_4a

    #@39
    const-string v1, ",%s"

    #@3b
    new-array v6, v7, [Ljava/lang/Object;

    #@3d
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    aput-object v5, v6, v3

    #@43
    invoke-virtual {p0, v1, v6}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    #@46
    :goto_46
    add-int/lit8 v1, v2, 0x1

    #@48
    move v2, v1

    #@49
    goto :goto_24

    #@4a
    :cond_4a
    const-string v1, "%s"

    #@4c
    new-array v6, v7, [Ljava/lang/Object;

    #@4e
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    aput-object v5, v6, v3

    #@54
    invoke-virtual {p0, v1, v6}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    #@57
    goto :goto_46

    #@58
    :cond_58
    const-string v0, "]"

    #@5a
    new-array v1, v3, [Ljava/lang/Object;

    #@5c
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->write(Ljava/lang/String;[Ljava/lang/Object;)V

    #@5f
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@61
    if-eqz v0, :cond_10

    #@63
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@65
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string v2, "    "

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@7f
    goto :goto_10
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/Request$Serializer;->writeContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    const-string v0, "%s"

    #@6
    const/4 v1, 0x1

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    const/4 v2, 0x0

    #@a
    aput-object p2, v1, v2

    #@c
    invoke-virtual {p0, v0, v1}, Lcom/facebook/Request$Serializer;->writeLine(Ljava/lang/String;[Ljava/lang/Object;)V

    #@f
    invoke-virtual {p0}, Lcom/facebook/Request$Serializer;->writeRecordBoundary()V

    #@12
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@14
    if-eqz v0, :cond_2e

    #@16
    iget-object v0, p0, Lcom/facebook/Request$Serializer;->logger:Lcom/facebook/internal/Logger;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string v2, "    "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2e
    :cond_2e
    return-void
.end method
