.class public final Lcom/google/android/gms/internal/ik;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/InputStream;Z)[B
    .registers 6

    #@0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    const/16 v1, 0x2710

    #@7
    new-array v1, v1, [B

    #@9
    :goto_9
    :try_start_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    #@c
    move-result v2

    #@d
    const/4 v3, -0x1

    #@e
    if-eq v2, v3, :cond_1c

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_15

    #@14
    goto :goto_9

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v1, Ljava/lang/RuntimeException;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1

    #@1c
    :cond_1c
    if-eqz p1, :cond_21

    #@1e
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_15

    #@21
    :cond_21
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    #@3
    if-eqz v0, :cond_e

    #@5
    iget-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    #@7
    array-length v0, v0

    #@8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_1b

    #@e
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    #@11
    move-result-object v0

    #@12
    iput-object v0, p1, Landroid/database/CharArrayBuffer;->data:[C

    #@14
    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result v0

    #@18
    iput v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    #@1a
    return-void

    #@1b
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1e
    move-result v0

    #@1f
    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    #@21
    invoke-virtual {p0, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    #@24
    goto :goto_14
.end method
