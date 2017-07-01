.class Lcom/facebook/internal/WorkQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/WorkQueue$WorkItem;,
        Lcom/facebook/internal/WorkQueue$WorkNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_MAX_CONCURRENT:I = 0x8


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final maxConcurrent:I

.field private pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

.field private runningCount:I

.field private runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

.field private final workLock:Ljava/lang/Object;


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
    sput-boolean v0, Lcom/facebook/internal/WorkQueue;->$assertionsDisabled:Z

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_9
.end method

.method constructor <init>()V
    .registers 2

    #@0
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    #@5
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    #@0
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/WorkQueue;-><init>(ILjava/util/concurrent/Executor;)V

    #@7
    return-void
.end method

.method constructor <init>(ILjava/util/concurrent/Executor;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    #@a
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@d
    const/4 v0, 0x0

    #@e
    iput v0, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    #@10
    iput p1, p0, Lcom/facebook/internal/WorkQueue;->maxConcurrent:I

    #@12
    iput-object p2, p0, Lcom/facebook/internal/WorkQueue;->executor:Ljava/util/concurrent/Executor;

    #@14
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/internal/WorkQueue;->finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/WorkQueue;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2
    return-object v0
.end method

.method static synthetic access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2
    return-object p1
.end method

.method private execute(Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue;->executor:Ljava/util/concurrent/Executor;

    #@2
    new-instance v1, Lcom/facebook/internal/WorkQueue$1;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/facebook/internal/WorkQueue$1;-><init>(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@a
    return-void
.end method

.method private finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    if-eqz p1, :cond_14

    #@6
    :try_start_6
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@8
    invoke-virtual {p1, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@b
    move-result-object v2

    #@c
    iput-object v2, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@e
    iget v2, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    #@10
    add-int/lit8 v2, v2, -0x1

    #@12
    iput v2, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    #@14
    :cond_14
    iget v2, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    #@16
    iget v3, p0, Lcom/facebook/internal/WorkQueue;->maxConcurrent:I

    #@18
    if-ge v2, v3, :cond_39

    #@1a
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@1c
    if-eqz v0, :cond_39

    #@1e
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@20
    invoke-virtual {v0, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@23
    move-result-object v2

    #@24
    iput-object v2, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@26
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@28
    const/4 v3, 0x0

    #@29
    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/WorkQueue$WorkNode;->addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2c
    move-result-object v2

    #@2d
    iput-object v2, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2f
    iget v2, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    #@31
    add-int/lit8 v2, v2, 0x1

    #@33
    iput v2, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    #@35
    const/4 v2, 0x1

    #@36
    invoke-virtual {v0, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->setIsRunning(Z)V

    #@39
    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_40

    #@3a
    if-eqz v0, :cond_3f

    #@3c
    invoke-direct {p0, v0}, Lcom/facebook/internal/WorkQueue;->execute(Lcom/facebook/internal/WorkQueue$WorkNode;)V

    #@3f
    :cond_3f
    return-void

    #@40
    :catchall_40
    move-exception v0

    #@41
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    #@42
    throw v0
.end method

.method private startItem()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/facebook/internal/WorkQueue;->finishItemAndStartNew(Lcom/facebook/internal/WorkQueue$WorkNode;)V

    #@4
    return-void
.end method


# virtual methods
.method addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;Z)Lcom/facebook/internal/WorkQueue$WorkItem;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method addActiveWorkItem(Ljava/lang/Runnable;Z)Lcom/facebook/internal/WorkQueue$WorkItem;
    .registers 6

    #@0
    new-instance v0, Lcom/facebook/internal/WorkQueue$WorkNode;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/facebook/internal/WorkQueue$WorkNode;-><init>(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    #@5
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    :try_start_8
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@a
    invoke-virtual {v0, v2, p2}, Lcom/facebook/internal/WorkQueue$WorkNode;->addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;

    #@d
    move-result-object v2

    #@e
    iput-object v2, p0, Lcom/facebook/internal/WorkQueue;->pendingJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    #@11
    invoke-direct {p0}, Lcom/facebook/internal/WorkQueue;->startItem()V

    #@14
    return-object v0

    #@15
    :catchall_15
    move-exception v0

    #@16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    #@17
    throw v0
.end method

.method validate()V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue;->workLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    :try_start_4
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@6
    if-eqz v1, :cond_18

    #@8
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@a
    :cond_a
    const/4 v3, 0x1

    #@b
    invoke-virtual {v1, v3}, Lcom/facebook/internal/WorkQueue$WorkNode;->verify(Z)V

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    invoke-virtual {v1}, Lcom/facebook/internal/WorkQueue$WorkNode;->getNext()Lcom/facebook/internal/WorkQueue$WorkNode;

    #@13
    move-result-object v1

    #@14
    iget-object v3, p0, Lcom/facebook/internal/WorkQueue;->runningJobs:Lcom/facebook/internal/WorkQueue$WorkNode;

    #@16
    if-ne v1, v3, :cond_a

    #@18
    :cond_18
    sget-boolean v1, Lcom/facebook/internal/WorkQueue;->$assertionsDisabled:Z

    #@1a
    if-nez v1, :cond_29

    #@1c
    iget v1, p0, Lcom/facebook/internal/WorkQueue;->runningCount:I

    #@1e
    if-eq v1, v0, :cond_29

    #@20
    new-instance v0, Ljava/lang/AssertionError;

    #@22
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@25
    throw v0

    #@26
    :catchall_26
    move-exception v0

    #@27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    #@28
    throw v0

    #@29
    :cond_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    #@2a
    return-void
.end method
