.class Lcom/facebook/RequestProgress;
.super Ljava/lang/Object;


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private progress:J

.field private final request:Lcom/facebook/Request;

.field private final threshold:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/facebook/Request;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p2, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/Request;

    #@5
    iput-object p1, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    #@7
    invoke-static {}, Lcom/facebook/Settings;->getOnProgressThreshold()J

    #@a
    move-result-wide v0

    #@b
    iput-wide v0, p0, Lcom/facebook/RequestProgress;->threshold:J

    #@d
    return-void
.end method


# virtual methods
.method addProgress(J)V
    .registers 10

    #@0
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    #@5
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    #@7
    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    #@9
    iget-wide v4, p0, Lcom/facebook/RequestProgress;->threshold:J

    #@b
    add-long/2addr v2, v4

    #@c
    cmp-long v0, v0, v2

    #@e
    if-gez v0, :cond_18

    #@10
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    #@12
    iget-wide v2, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    #@14
    cmp-long v0, v0, v2

    #@16
    if-ltz v0, :cond_1b

    #@18
    :cond_18
    invoke-virtual {p0}, Lcom/facebook/RequestProgress;->reportProgress()V

    #@1b
    :cond_1b
    return-void
.end method

.method addToMax(J)V
    .registers 6

    #@0
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    #@5
    return-void
.end method

.method getMaxProgress()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    #@2
    return-wide v0
.end method

.method getProgress()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    #@2
    return-wide v0
.end method

.method reportProgress()V
    .registers 9

    #@0
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    #@2
    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_2b

    #@8
    iget-object v0, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/Request;

    #@a
    invoke-virtual {v0}, Lcom/facebook/Request;->getCallback()Lcom/facebook/Request$Callback;

    #@d
    move-result-object v3

    #@e
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    #@10
    const-wide/16 v4, 0x0

    #@12
    cmp-long v0, v0, v4

    #@14
    if-lez v0, :cond_2b

    #@16
    instance-of v0, v3, Lcom/facebook/Request$OnProgressCallback;

    #@18
    if-eqz v0, :cond_2b

    #@1a
    iget-wide v4, p0, Lcom/facebook/RequestProgress;->progress:J

    #@1c
    iget-wide v6, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    #@1e
    check-cast v3, Lcom/facebook/Request$OnProgressCallback;

    #@20
    iget-object v0, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    #@22
    if-nez v0, :cond_2c

    #@24
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/facebook/Request$OnProgressCallback;->onProgress(JJ)V

    #@27
    :goto_27
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    #@29
    iput-wide v0, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    #@2b
    :cond_2b
    return-void

    #@2c
    :cond_2c
    iget-object v0, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    #@2e
    new-instance v1, Lcom/facebook/RequestProgress$1;

    #@30
    move-object v2, p0

    #@31
    invoke-direct/range {v1 .. v7}, Lcom/facebook/RequestProgress$1;-><init>(Lcom/facebook/RequestProgress;Lcom/facebook/Request$OnProgressCallback;JJ)V

    #@34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@37
    goto :goto_27
.end method
