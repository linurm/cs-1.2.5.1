.class final Lbolts/Executors;
.super Ljava/lang/Object;


# static fields
.field static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field static final KEEP_ALIVE_TIME:J = 0x1L

.field static final MAX_POOL_SIZE:I

.field static final MAX_QUEUE_SIZE:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    #@7
    move-result v0

    #@8
    sput v0, Lbolts/Executors;->CPU_COUNT:I

    #@a
    sget v0, Lbolts/Executors;->CPU_COUNT:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    sput v0, Lbolts/Executors;->CORE_POOL_SIZE:I

    #@10
    sget v0, Lbolts/Executors;->CPU_COUNT:I

    #@12
    mul-int/lit8 v0, v0, 0x2

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    sput v0, Lbolts/Executors;->MAX_POOL_SIZE:I

    #@18
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x9

    #@4
    if-lt v0, v1, :cond_9

    #@6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    #@9
    :cond_9
    return-void
.end method

.method public static newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .registers 8

    #@0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    sget v2, Lbolts/Executors;->CORE_POOL_SIZE:I

    #@4
    sget v3, Lbolts/Executors;->MAX_POOL_SIZE:I

    #@6
    const-wide/16 v4, 0x1

    #@8
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@a
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@c
    const/16 v0, 0x80

    #@e
    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    #@11
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    #@14
    const/4 v0, 0x1

    #@15
    invoke-static {v1, v0}, Lbolts/Executors;->allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    #@18
    return-object v1
.end method

.method public static newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .registers 10

    #@0
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    sget v2, Lbolts/Executors;->CORE_POOL_SIZE:I

    #@4
    sget v3, Lbolts/Executors;->MAX_POOL_SIZE:I

    #@6
    const-wide/16 v4, 0x1

    #@8
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@a
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    #@c
    const/16 v0, 0x80

    #@e
    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    #@11
    move-object v8, p0

    #@12
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@15
    const/4 v0, 0x1

    #@16
    invoke-static {v1, v0}, Lbolts/Executors;->allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    #@19
    return-object v1
.end method
