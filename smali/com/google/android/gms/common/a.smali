.class public Lcom/google/android/gms/common/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field CQ:Z

.field private final CR:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/common/a;->CQ:Z

    #@6
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    #@8
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/common/a;->CR:Ljava/util/concurrent/BlockingQueue;

    #@d
    return-void
.end method


# virtual methods
.method public ew()Landroid/os/IBinder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/common/a;->CQ:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@9
    throw v0

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Lcom/google/android/gms/common/a;->CQ:Z

    #@d
    iget-object v0, p0, Lcom/google/android/gms/common/a;->CR:Ljava/util/concurrent/BlockingQueue;

    #@f
    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/os/IBinder;

    #@15
    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/a;->CR:Ljava/util/concurrent/BlockingQueue;

    #@2
    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    #@0
    return-void
.end method
