.class final Lcom/facebook/internal/FileLruCache$CopyingInputStream;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CopyingInputStream"
.end annotation


# instance fields
.field final input:Ljava/io/InputStream;

.field final output:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    #@5
    iput-object p2, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    #@7
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    #@5
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@a
    return-void

    #@b
    :catchall_b
    move-exception v0

    #@c
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    #@e
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    #@11
    throw v0
.end method

.method public mark(I)V
    .registers 3

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public markSupported()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_d

    #@8
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    #@a
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    #@d
    :cond_d
    return v0
.end method

.method public read([B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_e

    #@8
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    #@e
    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->input:Ljava/io/InputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_d

    #@8
    iget-object v1, p0, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->output:Ljava/io/OutputStream;

    #@a
    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    #@d
    :cond_d
    return v0
.end method

.method public reset()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@6
    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public skip(J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v0, 0x400

    #@2
    new-array v2, v0, [B

    #@4
    const-wide/16 v0, 0x0

    #@6
    :goto_6
    cmp-long v3, v0, p1

    #@8
    if-gez v3, :cond_1a

    #@a
    const/4 v3, 0x0

    #@b
    sub-long v4, p1, v0

    #@d
    array-length v6, v2

    #@e
    int-to-long v6, v6

    #@f
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@12
    move-result-wide v4

    #@13
    long-to-int v4, v4

    #@14
    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/internal/FileLruCache$CopyingInputStream;->read([BII)I

    #@17
    move-result v3

    #@18
    if-gez v3, :cond_1b

    #@1a
    :cond_1a
    return-wide v0

    #@1b
    :cond_1b
    int-to-long v4, v3

    #@1c
    add-long/2addr v0, v4

    #@1d
    goto :goto_6
.end method
