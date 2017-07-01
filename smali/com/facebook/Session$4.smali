.class Lcom/facebook/Session$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Session;

.field final synthetic val$exception:Ljava/lang/Exception;

.field final synthetic val$newState:Lcom/facebook/SessionState;


# direct methods
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    #@2
    iput-object p2, p0, Lcom/facebook/Session$4;->val$newState:Lcom/facebook/SessionState;

    #@4
    iput-object p3, p0, Lcom/facebook/Session$4;->val$exception:Ljava/lang/Exception;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    #@2
    # getter for: Lcom/facebook/Session;->callbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/facebook/Session;->access$1200(Lcom/facebook/Session;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    #@9
    # getter for: Lcom/facebook/Session;->callbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/facebook/Session;->access$1200(Lcom/facebook/Session;)Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_2f

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/facebook/Session$StatusCallback;

    #@1d
    new-instance v3, Lcom/facebook/Session$4$1;

    #@1f
    invoke-direct {v3, p0, v0}, Lcom/facebook/Session$4$1;-><init>(Lcom/facebook/Session$4;Lcom/facebook/Session$StatusCallback;)V

    #@22
    iget-object v0, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    #@24
    # getter for: Lcom/facebook/Session;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/facebook/Session;->access$1300(Lcom/facebook/Session;)Landroid/os/Handler;

    #@27
    move-result-object v0

    #@28
    # invokes: Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    invoke-static {v0, v3}, Lcom/facebook/Session;->access$1400(Landroid/os/Handler;Ljava/lang/Runnable;)V

    #@2b
    goto :goto_11

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2c

    #@2e
    throw v0

    #@2f
    :cond_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    #@30
    return-void
.end method
