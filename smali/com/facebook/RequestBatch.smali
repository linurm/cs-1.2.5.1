.class public Lcom/facebook/RequestBatch;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/RequestBatch$Callback;,
        Lcom/facebook/RequestBatch$OnProgressCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/facebook/Request;",
        ">;"
    }
.end annotation


# static fields
.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private batchApplicationId:Ljava/lang/String;

.field private callbackHandler:Landroid/os/Handler;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/RequestBatch$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutInMilliseconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@5
    sput-object v0, Lcom/facebook/RequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@a
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    #@d
    sget-object v0, Lcom/facebook/RequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/facebook/RequestBatch;->id:Ljava/lang/String;

    #@1d
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    #@24
    new-instance v0, Ljava/util/ArrayList;

    #@26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@29
    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2b
    return-void
.end method

.method public constructor <init>(Lcom/facebook/RequestBatch;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@a
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    #@d
    sget-object v0, Lcom/facebook/RequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/facebook/RequestBatch;->id:Ljava/lang/String;

    #@1d
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    #@24
    new-instance v0, Ljava/util/ArrayList;

    #@26
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@29
    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2b
    iget-object v0, p1, Lcom/facebook/RequestBatch;->callbackHandler:Landroid/os/Handler;

    #@2d
    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbackHandler:Landroid/os/Handler;

    #@2f
    iget v0, p1, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    #@31
    iput v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    #@33
    new-instance v0, Ljava/util/ArrayList;

    #@35
    iget-object v1, p1, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    #@37
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@3a
    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    #@3c
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@a
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    #@d
    sget-object v0, Lcom/facebook/RequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/facebook/RequestBatch;->id:Ljava/lang/String;

    #@1d
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    #@24
    new-instance v0, Ljava/util/ArrayList;

    #@26
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@29
    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2b
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/Request;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@a
    const/4 v0, 0x0

    #@b
    iput v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    #@d
    sget-object v0, Lcom/facebook/RequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/facebook/RequestBatch;->id:Ljava/lang/String;

    #@1d
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    #@24
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2a
    return-void
.end method


# virtual methods
.method public final add(ILcom/facebook/Request;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@5
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    #@0
    check-cast p2, Lcom/facebook/Request;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/facebook/RequestBatch;->add(ILcom/facebook/Request;)V

    #@5
    return-void
.end method

.method public final add(Lcom/facebook/Request;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    #@0
    check-cast p1, Lcom/facebook/Request;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/RequestBatch;->add(Lcom/facebook/Request;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addCallback(Lcom/facebook/RequestBatch$Callback;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_d

    #@8
    iget-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    #@a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    :cond_d
    return-void
.end method

.method public final clear()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    return-void
.end method

.method public final executeAndWait()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->executeAndWaitImpl()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method executeAndWaitImpl()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/facebook/Request;->executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/RequestAsyncTask;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->executeAsyncImpl()Lcom/facebook/RequestAsyncTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method executeAsyncImpl()Lcom/facebook/RequestAsyncTask;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final get(I)Lcom/facebook/Request;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/Request;

    #@8
    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method final getBatchApplicationId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->batchApplicationId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method final getCallbackHandler()Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->callbackHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method final getCallbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/RequestBatch$Callback;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    #@2
    return-object v0
.end method

.method final getId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->id:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method final getRequests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getTimeout()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    #@2
    return v0
.end method

.method public final remove(I)Lcom/facebook/Request;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/Request;

    #@8
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/RequestBatch;->remove(I)Lcom/facebook/Request;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public removeCallback(Lcom/facebook/RequestBatch$Callback;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->callbacks:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public final set(ILcom/facebook/Request;)Lcom/facebook/Request;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/Request;

    #@8
    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    #@0
    check-cast p2, Lcom/facebook/Request;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/facebook/RequestBatch;->set(ILcom/facebook/Request;)Lcom/facebook/Request;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method final setBatchApplicationId(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/RequestBatch;->batchApplicationId:Ljava/lang/String;

    #@2
    return-void
.end method

.method final setCallbackHandler(Landroid/os/Handler;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/RequestBatch;->callbackHandler:Landroid/os/Handler;

    #@2
    return-void
.end method

.method public setTimeout(I)V
    .registers 4

    #@0
    if-gez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "Argument timeoutInMilliseconds must be >= 0."

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iput p1, p0, Lcom/facebook/RequestBatch;->timeoutInMilliseconds:I

    #@c
    return-void
.end method

.method public final size()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/RequestBatch;->requests:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
