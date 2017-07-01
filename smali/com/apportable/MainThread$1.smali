.class final Lcom/apportable/MainThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/MainThread;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/utils/RunLoop;->prepare()V

    #@3
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    # setter for: Lcom/apportable/MainThread;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/MainThread;->access$002(Landroid/os/Handler;)Landroid/os/Handler;

    #@b
    monitor-enter p0

    #@c
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    #@f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    #@10
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method
