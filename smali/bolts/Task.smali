.class public Lbolts/Task;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/Task$ImmediateExecutor;,
        Lbolts/Task$TaskCompletionSource;,
        Lbolts/Task$UIThreadExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private cancelled:Z

.field private complete:Z

.field private continuations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbolts/Continuation",
            "<TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Exception;

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {}, Lbolts/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    #@4
    move-result-object v0

    #@5
    sput-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    #@7
    new-instance v0, Lbolts/Task$ImmediateExecutor;

    #@9
    invoke-direct {v0, v1}, Lbolts/Task$ImmediateExecutor;-><init>(Lbolts/Task$1;)V

    #@c
    sput-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    #@e
    new-instance v0, Lbolts/Task$UIThreadExecutor;

    #@10
    invoke-direct {v0, v1}, Lbolts/Task$UIThreadExecutor;-><init>(Lbolts/Task$1;)V

    #@13
    sput-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    #@15
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lbolts/Task;->continuations:Ljava/util/List;

    #@11
    return-void
.end method

.method static synthetic access$1002(Lbolts/Task;Ljava/lang/Exception;)Ljava/lang/Exception;
    .registers 2

    #@0
    iput-object p1, p0, Lbolts/Task;->error:Ljava/lang/Exception;

    #@2
    return-object p1
.end method

.method static synthetic access$300(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
    .registers 4

    #@0
    invoke-static {p0, p1, p2, p3}, Lbolts/Task;->completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
    .registers 4

    #@0
    invoke-static {p0, p1, p2, p3}, Lbolts/Task;->completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    #@3
    return-void
.end method

.method static synthetic access$500(Lbolts/Task;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic access$600(Lbolts/Task;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lbolts/Task;->complete:Z

    #@2
    return v0
.end method

.method static synthetic access$602(Lbolts/Task;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lbolts/Task;->complete:Z

    #@2
    return p1
.end method

.method static synthetic access$702(Lbolts/Task;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lbolts/Task;->cancelled:Z

    #@2
    return p1
.end method

.method static synthetic access$800(Lbolts/Task;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lbolts/Task;->runContinuations()V

    #@3
    return-void
.end method

.method static synthetic access$902(Lbolts/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    iput-object p1, p0, Lbolts/Task;->result:Ljava/lang/Object;

    #@2
    return-object p1
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    #@0
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    #@2
    invoke-static {p0, v0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    #@0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lbolts/Task$2;

    #@6
    invoke-direct {v1, v0, p0}, Lbolts/Task$2;-><init>(Lbolts/Task$TaskCompletionSource;Ljava/util/concurrent/Callable;)V

    #@9
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@c
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    #@0
    sget-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    #@2
    invoke-static {p0, v0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static cancelled()Lbolts/Task;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    #@0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->setCancelled()V

    #@7
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private static completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TTContinuationResult;>.TaskCompletionSource;",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Lbolts/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    #@0
    new-instance v0, Lbolts/Task$10;

    #@2
    invoke-direct {v0, p1, p2, p0}, Lbolts/Task$10;-><init>(Lbolts/Continuation;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)V

    #@5
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method private static completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TTContinuationResult;>.TaskCompletionSource;",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Lbolts/Task",
            "<TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    #@0
    new-instance v0, Lbolts/Task$9;

    #@2
    invoke-direct {v0, p1, p2, p0}, Lbolts/Task$9;-><init>(Lbolts/Continuation;Lbolts/Task;Lbolts/Task$TaskCompletionSource;)V

    #@5
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public static create()Lbolts/Task$TaskCompletionSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTResult;>.TaskCompletionSource;"
        }
    .end annotation

    #@0
    new-instance v0, Lbolts/Task;

    #@2
    invoke-direct {v0}, Lbolts/Task;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    new-instance v1, Lbolts/Task$TaskCompletionSource;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v1, v0, v2}, Lbolts/Task$TaskCompletionSource;-><init>(Lbolts/Task;Lbolts/Task$1;)V

    #@e
    return-object v1
.end method

.method public static forError(Ljava/lang/Exception;)Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    #@0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    #@7
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static forResult(Ljava/lang/Object;)Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    #@0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p0}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    #@7
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method private runContinuations()V
    .registers 4

    #@0
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->continuations:Ljava/util/List;

    #@5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_25

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lbolts/Continuation;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    #@15
    :try_start_15
    invoke-interface {v0, p0}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_1e
    .catchall {:try_start_15 .. :try_end_18} :catchall_1b

    #@18
    goto :goto_9

    #@19
    :catch_19
    move-exception v0

    #@1a
    :try_start_1a
    throw v0

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1b

    #@1d
    throw v0

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    :try_start_1f
    new-instance v2, Ljava/lang/RuntimeException;

    #@21
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v2

    #@25
    :cond_25
    const/4 v0, 0x0

    #@26
    iput-object v0, p0, Lbolts/Task;->continuations:Ljava/util/List;

    #@28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_1b

    #@29
    return-void
.end method

.method public static whenAll(Ljava/util/Collection;)Lbolts/Task;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lbolts/Task",
            "<*>;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    const/4 v0, 0x0

    #@7
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    #@a
    move-result-object v0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    #@f
    move-result-object v5

    #@10
    new-instance v2, Ljava/util/ArrayList;

    #@12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@15
    new-instance v1, Ljava/lang/Object;

    #@17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@1a
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    #@1c
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    #@1f
    move-result v0

    #@20
    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@23
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@25
    const/4 v0, 0x0

    #@26
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@29
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v7

    #@2d
    :goto_2d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_43

    #@33
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    move-object v6, v0

    #@38
    check-cast v6, Lbolts/Task;

    #@3a
    new-instance v0, Lbolts/Task$3;

    #@3c
    invoke-direct/range {v0 .. v5}, Lbolts/Task$3;-><init>(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicInteger;Lbolts/Task$TaskCompletionSource;)V

    #@3f
    invoke-virtual {v6, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    #@42
    goto :goto_2d

    #@43
    :cond_43
    invoke-virtual {v5}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    #@46
    move-result-object v0

    #@47
    goto :goto_b
.end method


# virtual methods
.method public cast()Lbolts/Task;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOut:",
            "Ljava/lang/Object;",
            ">()",
            "Lbolts/Task",
            "<TTOut;>;"
        }
    .end annotation

    #@0
    return-object p0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v5, Lbolts/Capture;

    #@2
    invoke-direct {v5}, Lbolts/Capture;-><init>()V

    #@5
    new-instance v0, Lbolts/Task$4;

    #@7
    move-object v1, p0

    #@8
    move-object v2, p1

    #@9
    move-object v3, p2

    #@a
    move-object v4, p3

    #@b
    invoke-direct/range {v0 .. v5}, Lbolts/Task$4;-><init>(Lbolts/Task;Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/Capture;)V

    #@e
    invoke-virtual {v5, v0}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    #@11
    invoke-virtual {p0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v5}, Lbolts/Capture;->get()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lbolts/Continuation;

    #@1b
    invoke-virtual {v1, v0, p3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public continueWith(Lbolts/Continuation;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    #@0
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    #@2
    invoke-virtual {p0, p1, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    #@0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    invoke-virtual {p0}, Lbolts/Task;->isCompleted()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_17

    #@d
    iget-object v3, p0, Lbolts/Task;->continuations:Ljava/util/List;

    #@f
    new-instance v4, Lbolts/Task$5;

    #@11
    invoke-direct {v4, p0, v0, p1, p2}, Lbolts/Task$5;-><init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;)V

    #@14
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_22

    #@18
    if-eqz v2, :cond_1d

    #@1a
    invoke-static {v0, p1, p0, p2}, Lbolts/Task;->completeImmediately(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    #@1d
    :cond_1d
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    :catchall_22
    move-exception v0

    #@23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    #@24
    throw v0
.end method

.method public continueWithTask(Lbolts/Continuation;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    #@0
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    #@2
    invoke-virtual {p0, p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    #@0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    invoke-virtual {p0}, Lbolts/Task;->isCompleted()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_17

    #@d
    iget-object v3, p0, Lbolts/Task;->continuations:Ljava/util/List;

    #@f
    new-instance v4, Lbolts/Task$6;

    #@11
    invoke-direct {v4, p0, v0, p1, p2}, Lbolts/Task$6;-><init>(Lbolts/Task;Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;)V

    #@14
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_22

    #@18
    if-eqz v2, :cond_1d

    #@1a
    invoke-static {v0, p1, p0, p2}, Lbolts/Task;->completeAfterTask(Lbolts/Task$TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;)V

    #@1d
    :cond_1d
    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    :catchall_22
    move-exception v0

    #@23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    #@24
    throw v0
.end method

.method public getError()Ljava/lang/Exception;
    .registers 3

    #@0
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->error:Ljava/lang/Exception;

    #@5
    monitor-exit v1

    #@6
    return-object v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    #@0
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->result:Ljava/lang/Object;

    #@5
    monitor-exit v1

    #@6
    return-object v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public isCancelled()Z
    .registers 3

    #@0
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lbolts/Task;->cancelled:Z

    #@5
    monitor-exit v1

    #@6
    return v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public isCompleted()Z
    .registers 3

    #@0
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lbolts/Task;->complete:Z

    #@5
    monitor-exit v1

    #@6
    return v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public isFaulted()Z
    .registers 3

    #@0
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lbolts/Task;->error:Ljava/lang/Exception;

    #@5
    if-eqz v0, :cond_a

    #@7
    const/4 v0, 0x1

    #@8
    :goto_8
    monitor-exit v1

    #@9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_8

    #@c
    :catchall_c
    move-exception v0

    #@d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    #@e
    throw v0
.end method

.method public makeVoid()Lbolts/Task;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lbolts/Task$1;

    #@2
    invoke-direct {v0, p0}, Lbolts/Task$1;-><init>(Lbolts/Task;)V

    #@5
    invoke-virtual {p0, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public onSuccess(Lbolts/Continuation;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    #@0
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    #@2
    invoke-virtual {p0, p1, v0}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lbolts/Task$7;

    #@2
    invoke-direct {v0, p0, p1}, Lbolts/Task$7;-><init>(Lbolts/Task;Lbolts/Continuation;)V

    #@5
    invoke-virtual {p0, v0, p2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public onSuccessTask(Lbolts/Continuation;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;)",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    #@0
    sget-object v0, Lbolts/Task;->IMMEDIATE_EXECUTOR:Ljava/util/concurrent/Executor;

    #@2
    invoke-virtual {p0, p1, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Continuation",
            "<TTResult;",
            "Lbolts/Task",
            "<TTContinuationResult;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lbolts/Task",
            "<TTContinuationResult;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lbolts/Task$8;

    #@2
    invoke-direct {v0, p0, p1}, Lbolts/Task$8;-><init>(Lbolts/Task;Lbolts/Continuation;)V

    #@5
    invoke-virtual {p0, v0, p2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public waitForCompletion()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    iget-object v1, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-virtual {p0}, Lbolts/Task;->isCompleted()Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_e

    #@9
    iget-object v0, p0, Lbolts/Task;->lock:Ljava/lang/Object;

    #@b
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    #@e
    :cond_e
    monitor-exit v1

    #@f
    return-void

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method
