.class final Lbolts/Task$3;
.super Ljava/lang/Object;

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$allFinished:Lbolts/Task$TaskCompletionSource;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$errorLock:Ljava/lang/Object;

.field final synthetic val$errors:Ljava/util/ArrayList;

.field final synthetic val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lbolts/Task$TaskCompletionSource;)V
    .registers 6

    #@0
    iput-object p1, p0, Lbolts/Task$3;->val$errorLock:Ljava/lang/Object;

    #@2
    iput-object p2, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    #@4
    iput-object p3, p0, Lbolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6
    iput-object p4, p0, Lbolts/Task$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@8
    iput-object p5, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lbolts/Task$3;->then(Lbolts/Task;)Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_15

    #@8
    iget-object v1, p0, Lbolts/Task$3;->val$errorLock:Ljava/lang/Object;

    #@a
    monitor-enter v1

    #@b
    :try_start_b
    iget-object v0, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    #@d
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_47

    #@15
    :cond_15
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_20

    #@1b
    iget-object v0, p0, Lbolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1d
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@20
    :cond_20
    iget-object v0, p0, Lbolts/Task$3;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    #@22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    #@25
    move-result v0

    #@26
    if-nez v0, :cond_46

    #@28
    iget-object v0, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_57

    #@30
    iget-object v0, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v0

    #@36
    if-ne v0, v3, :cond_4a

    #@38
    iget-object v1, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    #@3a
    iget-object v0, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    #@3c
    const/4 v2, 0x0

    #@3d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Ljava/lang/Exception;

    #@43
    invoke-virtual {v1, v0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    #@46
    :cond_46
    :goto_46
    return-object v4

    #@47
    :catchall_47
    move-exception v0

    #@48
    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    #@49
    throw v0

    #@4a
    :cond_4a
    iget-object v0, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    #@4c
    new-instance v1, Lbolts/AggregateException;

    #@4e
    iget-object v2, p0, Lbolts/Task$3;->val$errors:Ljava/util/ArrayList;

    #@50
    invoke-direct {v1, v2}, Lbolts/AggregateException;-><init>(Ljava/util/List;)V

    #@53
    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    #@56
    goto :goto_46

    #@57
    :cond_57
    iget-object v0, p0, Lbolts/Task$3;->val$isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5c
    move-result v0

    #@5d
    if-eqz v0, :cond_65

    #@5f
    iget-object v0, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    #@61
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    #@64
    goto :goto_46

    #@65
    :cond_65
    iget-object v0, p0, Lbolts/Task$3;->val$allFinished:Lbolts/Task$TaskCompletionSource;

    #@67
    invoke-virtual {v0, v4}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    #@6a
    goto :goto_46
.end method
