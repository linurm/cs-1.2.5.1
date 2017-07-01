.class Lcom/facebook/internal/WorkQueue$WorkNode;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/internal/WorkQueue$WorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkNode"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private isRunning:Z

.field private next:Lcom/facebook/internal/WorkQueue$WorkNode;

.field private prev:Lcom/facebook/internal/WorkQueue$WorkNode;

.field final synthetic this$0:Lcom/facebook/internal/WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/internal/WorkQueue;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_c

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    sput-boolean v0, Lcom/facebook/internal/WorkQueue$WorkNode;->$assertionsDisabled:Z

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_9
.end method

.method constructor <init>(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    #@7
    return-void
.end method


# virtual methods
.method addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;
    .registers 5

    #@0
    sget-boolean v0, Lcom/facebook/internal/WorkQueue$WorkNode;->$assertionsDisabled:Z

    #@2
    if-nez v0, :cond_e

    #@4
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@6
    if-eqz v0, :cond_e

    #@8
    new-instance v0, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@d
    throw v0

    #@e
    :cond_e
    sget-boolean v0, Lcom/facebook/internal/WorkQueue$WorkNode;->$assertionsDisabled:Z

    #@10
    if-nez v0, :cond_1c

    #@12
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@14
    if-eqz v0, :cond_1c

    #@16
    new-instance v0, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v0

    #@1c
    :cond_1c
    if-nez p1, :cond_26

    #@1e
    iput-object p0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@20
    iput-object p0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@22
    move-object v0, p0

    #@23
    :goto_23
    if-eqz p2, :cond_36

    #@25
    :goto_25
    return-object p0

    #@26
    :cond_26
    iput-object p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@28
    iget-object v0, p1, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2a
    iput-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2c
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2e
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@30
    iput-object p0, v1, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@32
    iput-object p0, v0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@34
    move-object v0, p1

    #@35
    goto :goto_23

    #@36
    :cond_36
    move-object p0, v0

    #@37
    goto :goto_25
.end method

.method public cancel()Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    #@2
    # getter for: Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/facebook/internal/WorkQueue;->access$100(Lcom/facebook/internal/WorkQueue;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    invoke-virtual {p0}, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1f

    #@d
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    #@f
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    #@11
    # getter for: Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;
    invoke-static {v2}, Lcom/facebook/internal/WorkQueue;->access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@18
    move-result-object v2

    #@19
    # setter for: Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;
    invoke-static {v0, v2}, Lcom/facebook/internal/WorkQueue;->access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@1c
    const/4 v0, 0x1

    #@1d
    monitor-exit v1

    #@1e
    :goto_1e
    return v0

    #@1f
    :cond_1f
    monitor-exit v1

    #@20
    const/4 v0, 0x0

    #@21
    goto :goto_1e

    #@22
    :catchall_22
    move-exception v0

    #@23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    #@24
    throw v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method getNext()Lcom/facebook/internal/WorkQueue$WorkNode;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2
    return-object v0
.end method

.method public isRunning()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning:Z

    #@2
    return v0
.end method

.method public moveToFront()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    #@2
    # getter for: Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/facebook/internal/WorkQueue;->access$100(Lcom/facebook/internal/WorkQueue;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    invoke-virtual {p0}, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_2c

    #@d
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    #@f
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    #@11
    # getter for: Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;
    invoke-static {v2}, Lcom/facebook/internal/WorkQueue;->access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {p0, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@18
    move-result-object v2

    #@19
    # setter for: Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;
    invoke-static {v0, v2}, Lcom/facebook/internal/WorkQueue;->access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@1c
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    #@1e
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    #@20
    # getter for: Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;
    invoke-static {v2}, Lcom/facebook/internal/WorkQueue;->access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@23
    move-result-object v2

    #@24
    const/4 v3, 0x1

    #@25
    invoke-virtual {p0, v2, v3}, Lcom/facebook/internal/WorkQueue$WorkNode;->addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@28
    move-result-object v2

    #@29
    # setter for: Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;
    invoke-static {v0, v2}, Lcom/facebook/internal/WorkQueue;->access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2c
    :cond_2c
    monitor-exit v1

    #@2d
    return-void

    #@2e
    :catchall_2e
    move-exception v0

    #@2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_2e

    #@30
    throw v0
.end method

.method removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    sget-boolean v1, Lcom/facebook/internal/WorkQueue$WorkNode;->$assertionsDisabled:Z

    #@3
    if-nez v1, :cond_f

    #@5
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@7
    if-nez v1, :cond_f

    #@9
    new-instance v0, Ljava/lang/AssertionError;

    #@b
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@e
    throw v0

    #@f
    :cond_f
    sget-boolean v1, Lcom/facebook/internal/WorkQueue$WorkNode;->$assertionsDisabled:Z

    #@11
    if-nez v1, :cond_1d

    #@13
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@15
    if-nez v1, :cond_1d

    #@17
    new-instance v0, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1c
    throw v0

    #@1d
    :cond_1d
    if-ne p1, p0, :cond_24

    #@1f
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@21
    if-ne v1, p0, :cond_35

    #@23
    move-object p1, v0

    #@24
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@26
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@28
    iput-object v2, v1, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2a
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2c
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2e
    iput-object v2, v1, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@30
    iput-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@32
    iput-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@34
    return-object p1

    #@35
    :cond_35
    iget-object p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@37
    goto :goto_24
.end method

.method setIsRunning(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning:Z

    #@2
    return-void
.end method

.method verify(Z)V
    .registers 3

    #@0
    sget-boolean v0, Lcom/facebook/internal/WorkQueue$WorkNode;->$assertionsDisabled:Z

    #@2
    if-nez v0, :cond_10

    #@4
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@6
    iget-object v0, v0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@8
    if-eq v0, p0, :cond_10

    #@a
    new-instance v0, Ljava/lang/AssertionError;

    #@c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@f
    throw v0

    #@10
    :cond_10
    sget-boolean v0, Lcom/facebook/internal/WorkQueue$WorkNode;->$assertionsDisabled:Z

    #@12
    if-nez v0, :cond_20

    #@14
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@16
    iget-object v0, v0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@18
    if-eq v0, p0, :cond_20

    #@1a
    new-instance v0, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v0

    #@20
    :cond_20
    sget-boolean v0, Lcom/facebook/internal/WorkQueue$WorkNode;->$assertionsDisabled:Z

    #@22
    if-nez v0, :cond_30

    #@24
    invoke-virtual {p0}, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning()Z

    #@27
    move-result v0

    #@28
    if-eq v0, p1, :cond_30

    #@2a
    new-instance v0, Ljava/lang/AssertionError;

    #@2c
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@2f
    throw v0

    #@30
    :cond_30
    return-void
.end method
