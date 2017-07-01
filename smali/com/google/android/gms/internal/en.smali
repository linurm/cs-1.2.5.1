.class public final Lcom/google/android/gms/internal/en;
.super Ljava/lang/Object;


# static fields
.field private static final sh:Ljava/util/concurrent/ThreadFactory;

.field private static final si:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    #@0
    new-instance v0, Lcom/google/android/gms/internal/en$2;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/en$2;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/en;->sh:Ljava/util/concurrent/ThreadFactory;

    #@7
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    #@9
    const/4 v2, 0x0

    #@a
    const/16 v3, 0xa

    #@c
    const-wide/16 v4, 0x41

    #@e
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    #@10
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    #@12
    const/4 v0, 0x1

    #@13
    invoke-direct {v7, v0}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    #@16
    sget-object v8, Lcom/google/android/gms/internal/en;->sh:Ljava/util/concurrent/ThreadFactory;

    #@18
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    #@1b
    sput-object v1, Lcom/google/android/gms/internal/en;->si:Ljava/util/concurrent/ThreadPoolExecutor;

    #@1d
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 4

    #@0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/en;->si:Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/en$1;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/en$1;-><init>(Ljava/lang/Runnable;)V

    #@7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    #@a
    :goto_a
    return-void

    #@b
    :catch_b
    move-exception v0

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string v2, "Too many background threads already running. Aborting task.  Current pool size: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-static {}, Lcom/google/android/gms/internal/en;->getPoolSize()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    goto :goto_a
.end method

.method public static getPoolSize()I
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/en;->si:Ljava/util/concurrent/ThreadPoolExecutor;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method
