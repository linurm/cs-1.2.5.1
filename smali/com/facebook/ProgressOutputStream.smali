.class Lcom/facebook/ProgressOutputStream;
.super Ljava/io/FilterOutputStream;

# interfaces
.implements Lcom/facebook/RequestOutputStream;


# instance fields
.field private batchProgress:J

.field private currentRequestProgress:Lcom/facebook/RequestProgress;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private final progressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/Request;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation
.end field

.field private final requests:Lcom/facebook/RequestBatch;

.field private final threshold:J


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lcom/facebook/RequestBatch;Ljava/util/Map;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/facebook/RequestBatch;",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/Request;",
            "Lcom/facebook/RequestProgress;",
            ">;J)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    iput-object p2, p0, Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/RequestBatch;

    #@5
    iput-object p3, p0, Lcom/facebook/ProgressOutputStream;->progressMap:Ljava/util/Map;

    #@7
    iput-wide p4, p0, Lcom/facebook/ProgressOutputStream;->maxProgress:J

    #@9
    invoke-static {}, Lcom/facebook/Settings;->getOnProgressThreshold()J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Lcom/facebook/ProgressOutputStream;->threshold:J

    #@f
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/ProgressOutputStream;)Lcom/facebook/RequestBatch;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/RequestBatch;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/ProgressOutputStream;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    #@2
    return-wide v0
.end method

.method static synthetic access$200(Lcom/facebook/ProgressOutputStream;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->maxProgress:J

    #@2
    return-wide v0
.end method

.method private addProgress(J)V
    .registers 10

    #@0
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/facebook/RequestProgress;->addProgress(J)V

    #@9
    :cond_9
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    #@b
    add-long/2addr v0, p1

    #@c
    iput-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    #@e
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    #@10
    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->lastReportedProgress:J

    #@12
    iget-wide v4, p0, Lcom/facebook/ProgressOutputStream;->threshold:J

    #@14
    add-long/2addr v2, v4

    #@15
    cmp-long v0, v0, v2

    #@17
    if-gez v0, :cond_21

    #@19
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    #@1b
    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->maxProgress:J

    #@1d
    cmp-long v0, v0, v2

    #@1f
    if-ltz v0, :cond_24

    #@21
    :cond_21
    invoke-direct {p0}, Lcom/facebook/ProgressOutputStream;->reportBatchProgress()V

    #@24
    :cond_24
    return-void
.end method

.method private reportBatchProgress()V
    .registers 8

    #@0
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    #@2
    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->lastReportedProgress:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_43

    #@8
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/RequestBatch;

    #@a
    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->getCallbacks()Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v6

    #@12
    :cond_12
    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_3f

    #@18
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/facebook/RequestBatch$Callback;

    #@1e
    instance-of v1, v0, Lcom/facebook/RequestBatch$OnProgressCallback;

    #@20
    if-eqz v1, :cond_12

    #@22
    iget-object v1, p0, Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/RequestBatch;

    #@24
    invoke-virtual {v1}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    #@27
    move-result-object v1

    #@28
    check-cast v0, Lcom/facebook/RequestBatch$OnProgressCallback;

    #@2a
    if-nez v1, :cond_36

    #@2c
    iget-object v1, p0, Lcom/facebook/ProgressOutputStream;->requests:Lcom/facebook/RequestBatch;

    #@2e
    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    #@30
    iget-wide v4, p0, Lcom/facebook/ProgressOutputStream;->maxProgress:J

    #@32
    invoke-interface/range {v0 .. v5}, Lcom/facebook/RequestBatch$OnProgressCallback;->onBatchProgress(Lcom/facebook/RequestBatch;JJ)V

    #@35
    goto :goto_12

    #@36
    :cond_36
    new-instance v2, Lcom/facebook/ProgressOutputStream$1;

    #@38
    invoke-direct {v2, p0, v0}, Lcom/facebook/ProgressOutputStream$1;-><init>(Lcom/facebook/ProgressOutputStream;Lcom/facebook/RequestBatch$OnProgressCallback;)V

    #@3b
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@3e
    goto :goto_12

    #@3f
    :cond_3f
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    #@41
    iput-wide v0, p0, Lcom/facebook/ProgressOutputStream;->lastReportedProgress:J

    #@43
    :cond_43
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    #@3
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->progressMap:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1d

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/facebook/RequestProgress;

    #@19
    invoke-virtual {v0}, Lcom/facebook/RequestProgress;->reportProgress()V

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    invoke-direct {p0}, Lcom/facebook/ProgressOutputStream;->reportBatchProgress()V

    #@20
    return-void
.end method

.method getBatchProgress()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->batchProgress:J

    #@2
    return-wide v0
.end method

.method getMaxProgress()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->maxProgress:J

    #@2
    return-wide v0
.end method

.method public setCurrentRequest(Lcom/facebook/Request;)V
    .registers 3

    #@0
    if-eqz p1, :cond_d

    #@2
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->progressMap:Ljava/util/Map;

    #@4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/facebook/RequestProgress;

    #@a
    :goto_a
    iput-object v0, p0, Lcom/facebook/ProgressOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    #@c
    return-void

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_a
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    const-wide/16 v0, 0x1

    #@7
    invoke-direct {p0, v0, v1}, Lcom/facebook/ProgressOutputStream;->addProgress(J)V

    #@a
    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    #@5
    array-length v0, p1

    #@6
    int-to-long v0, v0

    #@7
    invoke-direct {p0, v0, v1}, Lcom/facebook/ProgressOutputStream;->addProgress(J)V

    #@a
    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@5
    int-to-long v0, p3

    #@6
    invoke-direct {p0, v0, v1}, Lcom/facebook/ProgressOutputStream;->addProgress(J)V

    #@9
    return-void
.end method
