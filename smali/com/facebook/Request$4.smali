.class final Lcom/facebook/Request$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacks:Ljava/util/ArrayList;

.field final synthetic val$requests:Lcom/facebook/RequestBatch;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/RequestBatch;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/Request$4;->val$callbacks:Ljava/util/ArrayList;

    #@2
    iput-object p2, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/Request$4;->val$callbacks:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1e

    #@c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/util/Pair;

    #@12
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@14
    check-cast v1, Lcom/facebook/Request$Callback;

    #@16
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@18
    check-cast v0, Lcom/facebook/Response;

    #@1a
    invoke-interface {v1, v0}, Lcom/facebook/Request$Callback;->onCompleted(Lcom/facebook/Response;)V

    #@1d
    goto :goto_6

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    #@20
    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->getCallbacks()Ljava/util/List;

    #@23
    move-result-object v0

    #@24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_3a

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/facebook/RequestBatch$Callback;

    #@34
    iget-object v2, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    #@36
    invoke-interface {v0, v2}, Lcom/facebook/RequestBatch$Callback;->onBatchCompleted(Lcom/facebook/RequestBatch;)V

    #@39
    goto :goto_28

    #@3a
    :cond_3a
    return-void
.end method
