.class Lcom/facebook/ProgressNoopOutputStream;
.super Ljava/io/OutputStream;

# interfaces
.implements Lcom/facebook/RequestOutputStream;


# instance fields
.field private batchMax:I

.field private final callbackHandler:Landroid/os/Handler;

.field private currentRequest:Lcom/facebook/Request;

.field private currentRequestProgress:Lcom/facebook/RequestProgress;

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


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    #@a
    iput-object p1, p0, Lcom/facebook/ProgressNoopOutputStream;->callbackHandler:Landroid/os/Handler;

    #@c
    return-void
.end method


# virtual methods
.method addProgress(J)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    #@2
    if-nez v0, :cond_18

    #@4
    new-instance v0, Lcom/facebook/RequestProgress;

    #@6
    iget-object v1, p0, Lcom/facebook/ProgressNoopOutputStream;->callbackHandler:Landroid/os/Handler;

    #@8
    iget-object v2, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequest:Lcom/facebook/Request;

    #@a
    invoke-direct {v0, v1, v2}, Lcom/facebook/RequestProgress;-><init>(Landroid/os/Handler;Lcom/facebook/Request;)V

    #@d
    iput-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    #@f
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    #@11
    iget-object v1, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequest:Lcom/facebook/Request;

    #@13
    iget-object v2, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    #@15
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    :cond_18
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    #@1a
    invoke-virtual {v0, p1, p2}, Lcom/facebook/RequestProgress;->addToMax(J)V

    #@1d
    iget v0, p0, Lcom/facebook/ProgressNoopOutputStream;->batchMax:I

    #@1f
    int-to-long v0, v0

    #@20
    add-long/2addr v0, p1

    #@21
    long-to-int v0, v0

    #@22
    iput v0, p0, Lcom/facebook/ProgressNoopOutputStream;->batchMax:I

    #@24
    return-void
.end method

.method getMaxProgress()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ProgressNoopOutputStream;->batchMax:I

    #@2
    return v0
.end method

.method getProgressMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/Request;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public setCurrentRequest(Lcom/facebook/Request;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequest:Lcom/facebook/Request;

    #@2
    if-eqz p1, :cond_f

    #@4
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    #@6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/facebook/RequestProgress;

    #@c
    :goto_c
    iput-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    #@e
    return-void

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    goto :goto_c
.end method

.method public write(I)V
    .registers 4

    #@0
    const-wide/16 v0, 0x1

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    #@5
    return-void
.end method

.method public write([B)V
    .registers 4

    #@0
    array-length v0, p1

    #@1
    int-to-long v0, v0

    #@2
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    #@5
    return-void
.end method

.method public write([BII)V
    .registers 6

    #@0
    int-to-long v0, p3

    #@1
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    #@4
    return-void
.end method
