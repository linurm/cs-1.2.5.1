.class public Lbolts/Task$TaskCompletionSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskCompletionSource"
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;


# direct methods
.method private constructor <init>(Lbolts/Task;)V
    .registers 2

    #@0
    iput-object p1, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lbolts/Task;Lbolts/Task$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lbolts/Task$TaskCompletionSource;-><init>(Lbolts/Task;)V

    #@3
    return-void
.end method


# virtual methods
.method public getTask()Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@2
    return-object v0
.end method

.method public setCancelled()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lbolts/Task$TaskCompletionSource;->trySetCancelled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Cannot cancel a completed task."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    return-void
.end method

.method public setError(Ljava/lang/Exception;)V
    .registers 4

    #@0
    invoke-virtual {p0, p1}, Lbolts/Task$TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Cannot set the error on a completed task."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lbolts/Task$TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Cannot set the result of a completed task."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    return-void
.end method

.method public trySetCancelled()Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    iget-object v1, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@3
    # getter for: Lbolts/Task;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lbolts/Task;->access$500(Lbolts/Task;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    :try_start_8
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@a
    # getter for: Lbolts/Task;->complete:Z
    invoke-static {v2}, Lbolts/Task;->access$600(Lbolts/Task;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_13

    #@10
    const/4 v0, 0x0

    #@11
    monitor-exit v1

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@15
    const/4 v3, 0x1

    #@16
    # setter for: Lbolts/Task;->complete:Z
    invoke-static {v2, v3}, Lbolts/Task;->access$602(Lbolts/Task;Z)Z

    #@19
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@1b
    const/4 v3, 0x1

    #@1c
    # setter for: Lbolts/Task;->cancelled:Z
    invoke-static {v2, v3}, Lbolts/Task;->access$702(Lbolts/Task;Z)Z

    #@1f
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@21
    # getter for: Lbolts/Task;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lbolts/Task;->access$500(Lbolts/Task;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    #@28
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@2a
    # invokes: Lbolts/Task;->runContinuations()V
    invoke-static {v2}, Lbolts/Task;->access$800(Lbolts/Task;)V

    #@2d
    monitor-exit v1

    #@2e
    goto :goto_12

    #@2f
    :catchall_2f
    move-exception v0

    #@30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_2f

    #@31
    throw v0
.end method

.method public trySetError(Ljava/lang/Exception;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    iget-object v1, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@3
    # getter for: Lbolts/Task;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lbolts/Task;->access$500(Lbolts/Task;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    :try_start_8
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@a
    # getter for: Lbolts/Task;->complete:Z
    invoke-static {v2}, Lbolts/Task;->access$600(Lbolts/Task;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_13

    #@10
    const/4 v0, 0x0

    #@11
    monitor-exit v1

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@15
    const/4 v3, 0x1

    #@16
    # setter for: Lbolts/Task;->complete:Z
    invoke-static {v2, v3}, Lbolts/Task;->access$602(Lbolts/Task;Z)Z

    #@19
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@1b
    # setter for: Lbolts/Task;->error:Ljava/lang/Exception;
    invoke-static {v2, p1}, Lbolts/Task;->access$1002(Lbolts/Task;Ljava/lang/Exception;)Ljava/lang/Exception;

    #@1e
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@20
    # getter for: Lbolts/Task;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lbolts/Task;->access$500(Lbolts/Task;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    #@27
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@29
    # invokes: Lbolts/Task;->runContinuations()V
    invoke-static {v2}, Lbolts/Task;->access$800(Lbolts/Task;)V

    #@2c
    monitor-exit v1

    #@2d
    goto :goto_12

    #@2e
    :catchall_2e
    move-exception v0

    #@2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    #@30
    throw v0
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    iget-object v1, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@3
    # getter for: Lbolts/Task;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lbolts/Task;->access$500(Lbolts/Task;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    monitor-enter v1

    #@8
    :try_start_8
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@a
    # getter for: Lbolts/Task;->complete:Z
    invoke-static {v2}, Lbolts/Task;->access$600(Lbolts/Task;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_13

    #@10
    const/4 v0, 0x0

    #@11
    monitor-exit v1

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@15
    const/4 v3, 0x1

    #@16
    # setter for: Lbolts/Task;->complete:Z
    invoke-static {v2, v3}, Lbolts/Task;->access$602(Lbolts/Task;Z)Z

    #@19
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@1b
    # setter for: Lbolts/Task;->result:Ljava/lang/Object;
    invoke-static {v2, p1}, Lbolts/Task;->access$902(Lbolts/Task;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@20
    # getter for: Lbolts/Task;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lbolts/Task;->access$500(Lbolts/Task;)Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    #@27
    iget-object v2, p0, Lbolts/Task$TaskCompletionSource;->this$0:Lbolts/Task;

    #@29
    # invokes: Lbolts/Task;->runContinuations()V
    invoke-static {v2}, Lbolts/Task;->access$800(Lbolts/Task;)V

    #@2c
    monitor-exit v1

    #@2d
    goto :goto_12

    #@2e
    :catchall_2e
    move-exception v0

    #@2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    #@30
    throw v0
.end method
