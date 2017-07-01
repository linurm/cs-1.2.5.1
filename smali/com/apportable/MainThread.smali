.class public Lcom/apportable/MainThread;
.super Ljava/lang/Object;


# static fields
.field private static final STACK_SIZE:I = 0x500000

.field private static mHandler:Landroid/os/Handler;

.field private static mInNative:Z

.field private static mStarted:Z

.field private static mThread:Ljava/lang/Thread;

.field private static mTickActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$002(Landroid/os/Handler;)Landroid/os/Handler;
    .registers 1

    #@0
    sput-object p0, Lcom/apportable/MainThread;->mHandler:Landroid/os/Handler;

    #@2
    return-object p0
.end method

.method static synthetic access$100()V
    .registers 0

    #@0
    invoke-static {}, Lcom/apportable/MainThread;->nativeRun()V

    #@3
    return-void
.end method

.method public static addTickAction(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    sget-object v1, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    #@5
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    #@c
    throw v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/MainThread;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public static getThread()Ljava/lang/Thread;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/MainThread;->mThread:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method public static goNative()V
    .registers 2

    #@0
    const-class v0, Lcom/apportable/MainThread;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-boolean v0, Lcom/apportable/MainThread;->mStarted:Z

    #@5
    if-nez v0, :cond_14

    #@7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string v1, "thread is not running"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    #@f
    :catchall_f
    move-exception v0

    #@10
    const-class v1, Lcom/apportable/MainThread;

    #@12
    monitor-exit v1

    #@13
    throw v0

    #@14
    :cond_14
    :try_start_14
    sget-boolean v0, Lcom/apportable/MainThread;->mInNative:Z

    #@16
    if-eqz v0, :cond_20

    #@18
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1a
    const-string v1, "thread already running in native"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    :cond_20
    const/4 v0, 0x1

    #@21
    sput-boolean v0, Lcom/apportable/MainThread;->mInNative:Z

    #@23
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    #@26
    move-result-object v0

    #@27
    new-instance v1, Lcom/apportable/MainThread$2;

    #@29
    invoke-direct {v1}, Lcom/apportable/MainThread$2;-><init>()V

    #@2c
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_f

    #@2f
    const-class v0, Lcom/apportable/MainThread;

    #@31
    monitor-exit v0

    #@32
    return-void
.end method

.method public static isStarted()Z
    .registers 2

    #@0
    const-class v0, Lcom/apportable/MainThread;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-boolean v0, Lcom/apportable/MainThread;->mStarted:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    #@5
    const-class v1, Lcom/apportable/MainThread;

    #@7
    monitor-exit v1

    #@8
    return v0

    #@9
    :catchall_9
    move-exception v0

    #@a
    const-class v1, Lcom/apportable/MainThread;

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private static native nativeRun()V
.end method

.method public static removeTickAction(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    sget-object v1, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    #@5
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    #@c
    throw v0
.end method

.method private static runTickActions()V
    .registers 3

    #@0
    sget-object v1, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    sget-object v2, Lcom/apportable/MainThread;->mTickActions:Ljava/util/List;

    #@7
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@a
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_24

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_27

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/Runnable;

    #@1b
    :try_start_1b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    #@1e
    goto :goto_f

    #@1f
    :catch_1f
    move-exception v0

    #@20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@23
    goto :goto_f

    #@24
    :catchall_24
    move-exception v0

    #@25
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    #@26
    throw v0

    #@27
    :cond_27
    return-void
.end method

.method public static start()V
    .registers 6

    #@0
    const-class v0, Lcom/apportable/MainThread;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-boolean v0, Lcom/apportable/MainThread;->mStarted:Z

    #@5
    if-eqz v0, :cond_14

    #@7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string v1, "thread is already started"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    #@f
    :catchall_f
    move-exception v0

    #@10
    const-class v1, Lcom/apportable/MainThread;

    #@12
    monitor-exit v1

    #@13
    throw v0

    #@14
    :cond_14
    :try_start_14
    new-instance v2, Lcom/apportable/MainThread$1;

    #@16
    invoke-direct {v2}, Lcom/apportable/MainThread$1;-><init>()V

    #@19
    new-instance v0, Ljava/lang/Thread;

    #@1b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    #@22
    move-result-object v1

    #@23
    const-string v3, "MainThread"

    #@25
    const-wide/32 v4, 0x500000

    #@28
    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    #@2b
    sput-object v0, Lcom/apportable/MainThread;->mThread:Ljava/lang/Thread;

    #@2d
    monitor-enter v2
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_f

    #@2e
    :try_start_2e
    sget-object v0, Lcom/apportable/MainThread;->mThread:Ljava/lang/Thread;

    #@30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3e

    #@33
    :try_start_33
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_41
    .catchall {:try_start_33 .. :try_end_36} :catchall_3e

    #@36
    :goto_36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_3e

    #@37
    const/4 v0, 0x1

    #@38
    :try_start_38
    sput-boolean v0, Lcom/apportable/MainThread;->mStarted:Z
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_f

    #@3a
    const-class v0, Lcom/apportable/MainThread;

    #@3c
    monitor-exit v0

    #@3d
    return-void

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    #@40
    :try_start_40
    throw v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_f

    #@41
    :catch_41
    move-exception v0

    #@42
    goto :goto_36
.end method

.method private static tick()V
    .registers 1

    #@0
    :try_start_0
    invoke-static {}, Lcom/apportable/MainThread;->runTickActions()V

    #@3
    invoke-static {}, Lcom/apportable/utils/RunLoop;->processMessages()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    #@6
    :goto_6
    return-void

    #@7
    :catch_7
    move-exception v0

    #@8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@b
    goto :goto_6
.end method
