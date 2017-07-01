.class Lcom/facebook/widget/GraphObjectPagingLoader;
.super Landroid/support/v4/content/Loader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;,
        Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Landroid/support/v4/content/Loader",
        "<",
        "Lcom/facebook/widget/SimpleGraphObjectCursor",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private appendResults:Z

.field private currentRequest:Lcom/facebook/Request;

.field private cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private loading:Z

.field private nextRequest:Lcom/facebook/Request;

.field private onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

.field private originalRequest:Lcom/facebook/Request;

.field private skipRoundtripIfCached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    #@4
    iput-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    #@6
    iput-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    #@8
    iput-object p2, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->graphObjectClass:Ljava/lang/Class;

    #@a
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/Response;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->requestCompleted(Lcom/facebook/Response;)V

    #@3
    return-void
.end method

.method private addResults(Lcom/facebook/Response;)V
    .registers 9

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    #@4
    if-eqz v0, :cond_a

    #@6
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    #@8
    if-nez v0, :cond_50

    #@a
    :cond_a
    new-instance v0, Lcom/facebook/widget/SimpleGraphObjectCursor;

    #@c
    invoke-direct {v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;-><init>()V

    #@f
    move-object v1, v0

    #@10
    :goto_10
    const-class v0, Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;

    #@12
    invoke-virtual {p1, v0}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;

    #@18
    invoke-virtual {p1}, Lcom/facebook/Response;->getIsFromCache()Z

    #@1b
    move-result v4

    #@1c
    invoke-interface {v0}, Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;->getData()Lcom/facebook/model/GraphObjectList;

    #@1f
    move-result-object v0

    #@20
    iget-object v5, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->graphObjectClass:Ljava/lang/Class;

    #@22
    invoke-interface {v0, v5}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    #@25
    move-result-object v5

    #@26
    invoke-interface {v5}, Lcom/facebook/model/GraphObjectList;->size()I

    #@29
    move-result v0

    #@2a
    if-lez v0, :cond_59

    #@2c
    move v0, v2

    #@2d
    :goto_2d
    if-eqz v0, :cond_3d

    #@2f
    sget-object v6, Lcom/facebook/Response$PagingDirection;->NEXT:Lcom/facebook/Response$PagingDirection;

    #@31
    invoke-virtual {p1, v6}, Lcom/facebook/Response;->getRequestForPagedResults(Lcom/facebook/Response$PagingDirection;)Lcom/facebook/Request;

    #@34
    move-result-object v6

    #@35
    iput-object v6, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    #@37
    invoke-virtual {v1, v5, v4}, Lcom/facebook/widget/SimpleGraphObjectCursor;->addGraphObjects(Ljava/util/Collection;Z)V

    #@3a
    invoke-virtual {v1, v2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->setMoreObjectsAvailable(Z)V

    #@3d
    :cond_3d
    if-nez v0, :cond_48

    #@3f
    invoke-virtual {v1, v3}, Lcom/facebook/widget/SimpleGraphObjectCursor;->setMoreObjectsAvailable(Z)V

    #@42
    invoke-virtual {v1, v4}, Lcom/facebook/widget/SimpleGraphObjectCursor;->setFromCache(Z)V

    #@45
    const/4 v0, 0x0

    #@46
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    #@48
    :cond_48
    if-nez v4, :cond_4c

    #@4a
    iput-boolean v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    #@4c
    :cond_4c
    invoke-virtual {p0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    #@4f
    return-void

    #@50
    :cond_50
    new-instance v0, Lcom/facebook/widget/SimpleGraphObjectCursor;

    #@52
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    #@54
    invoke-direct {v0, v1}, Lcom/facebook/widget/SimpleGraphObjectCursor;-><init>(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    #@57
    move-object v1, v0

    #@58
    goto :goto_10

    #@59
    :cond_59
    move v0, v3

    #@5a
    goto :goto_2d
.end method

.method private putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/internal/CacheableRequestBatch;
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    new-instance v2, Lcom/facebook/internal/CacheableRequestBatch;

    #@4
    new-array v3, v0, [Lcom/facebook/Request;

    #@6
    aput-object p1, v3, v1

    #@8
    invoke-direct {v2, v3}, Lcom/facebook/internal/CacheableRequestBatch;-><init>([Lcom/facebook/Request;)V

    #@b
    if-nez p2, :cond_11

    #@d
    :goto_d
    invoke-virtual {v2, v0}, Lcom/facebook/internal/CacheableRequestBatch;->setForceRoundTrip(Z)V

    #@10
    return-object v2

    #@11
    :cond_11
    move v0, v1

    #@12
    goto :goto_d
.end method

.method private requestCompleted(Lcom/facebook/Response;)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p1}, Lcom/facebook/Response;->getRequest()Lcom/facebook/Request;

    #@4
    move-result-object v0

    #@5
    iget-object v2, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    #@7
    if-eq v0, v2, :cond_a

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    #@d
    iput-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    #@f
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@12
    move-result-object v0

    #@13
    if-nez v0, :cond_33

    #@15
    move-object v0, v1

    #@16
    :goto_16
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    #@19
    move-result-object v2

    #@1a
    if-nez v2, :cond_25

    #@1c
    if-nez v0, :cond_25

    #@1e
    new-instance v0, Lcom/facebook/FacebookException;

    #@20
    const-string v2, "GraphObjectPagingLoader received neither a result nor an error."

    #@22
    invoke-direct {v0, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@25
    :cond_25
    if-eqz v0, :cond_38

    #@27
    iput-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    #@29
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

    #@2b
    if-eqz v1, :cond_9

    #@2d
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

    #@2f
    invoke-interface {v1, v0, p0}, Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;->onError(Lcom/facebook/FacebookException;Lcom/facebook/widget/GraphObjectPagingLoader;)V

    #@32
    goto :goto_9

    #@33
    :cond_33
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    #@36
    move-result-object v0

    #@37
    goto :goto_16

    #@38
    :cond_38
    invoke-direct {p0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->addResults(Lcom/facebook/Response;)V

    #@3b
    goto :goto_9
.end method

.method private startLoading(Lcom/facebook/Request;ZJ)V
    .registers 10

    #@0
    iput-boolean p2, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    #@2
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    #@8
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    #@a
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    #@c
    new-instance v1, Lcom/facebook/widget/GraphObjectPagingLoader$2;

    #@e
    invoke-direct {v1, p0}, Lcom/facebook/widget/GraphObjectPagingLoader$2;-><init>(Lcom/facebook/widget/GraphObjectPagingLoader;)V

    #@11
    invoke-virtual {v0, v1}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    #@14
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    #@17
    new-instance v0, Lcom/facebook/widget/GraphObjectPagingLoader$3;

    #@19
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/GraphObjectPagingLoader;->putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/internal/CacheableRequestBatch;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader$3;-><init>(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/RequestBatch;)V

    #@20
    const-wide/16 v2, 0x0

    #@22
    cmp-long v1, p3, v2

    #@24
    if-nez v1, :cond_2a

    #@26
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    #@29
    :goto_29
    return-void

    #@2a
    :cond_2a
    new-instance v1, Landroid/os/Handler;

    #@2c
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@2f
    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@32
    goto :goto_29
.end method


# virtual methods
.method public clearResults()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    #@3
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    #@5
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    #@7
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    #@a
    return-void
.end method

.method public deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    #@2
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    #@4
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectPagingLoader;->isStarted()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1a

    #@a
    invoke-super {p0, p1}, Landroid/support/v4/content/Loader;->deliverResult(Ljava/lang/Object;)V

    #@d
    if-eqz v0, :cond_1a

    #@f
    if-eq v0, p1, :cond_1a

    #@11
    invoke-virtual {v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->isClosed()Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_1a

    #@17
    invoke-virtual {v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->close()V

    #@1a
    :cond_1a
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/facebook/widget/SimpleGraphObjectCursor;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    #@5
    return-void
.end method

.method public followNextLink()V
    .registers 4

    #@0
    const/4 v2, 0x1

    #@1
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    #@3
    if-eqz v0, :cond_22

    #@5
    iput-boolean v2, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    #@7
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    #@9
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    #@b
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    #@d
    new-instance v1, Lcom/facebook/widget/GraphObjectPagingLoader$1;

    #@f
    invoke-direct {v1, p0}, Lcom/facebook/widget/GraphObjectPagingLoader$1;-><init>(Lcom/facebook/widget/GraphObjectPagingLoader;)V

    #@12
    invoke-virtual {v0, v1}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    #@15
    iput-boolean v2, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    #@17
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    #@19
    iget-boolean v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    #@1b
    invoke-direct {p0, v0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/internal/CacheableRequestBatch;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    #@22
    :cond_22
    return-void
.end method

.method public getCursor()Lcom/facebook/widget/SimpleGraphObjectCursor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    #@2
    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

    #@2
    return-object v0
.end method

.method public isLoading()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    #@2
    return v0
.end method

.method protected onStartLoading()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    #@9
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    #@c
    :cond_c
    return-void
.end method

.method public refreshOriginalRequest(J)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Lcom/facebook/FacebookException;

    #@6
    const-string v1, "refreshOriginalRequest may not be called until after startLoading has been called."

    #@8
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    #@e
    const/4 v1, 0x0

    #@f
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/widget/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V

    #@12
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

    #@2
    return-void
.end method

.method public startLoading(Lcom/facebook/Request;Z)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    #@2
    const-wide/16 v0, 0x0

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V

    #@7
    return-void
.end method
