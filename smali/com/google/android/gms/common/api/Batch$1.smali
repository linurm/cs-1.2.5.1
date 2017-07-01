.class Lcom/google/android/gms/common/api/Batch$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DD:Lcom/google/android/gms/common/api/Batch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Batch;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public n(Lcom/google/android/gms/common/api/Status;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->a(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Batch;->isCanceled()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_11

    #@f
    monitor-exit v1

    #@10
    :goto_10
    return-void

    #@11
    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isCanceled()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_3c

    #@17
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@19
    const/4 v2, 0x1

    #@1a
    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/Batch;->a(Lcom/google/android/gms/common/api/Batch;Z)Z

    #@1d
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->b(Lcom/google/android/gms/common/api/Batch;)I

    #@22
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@24
    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->c(Lcom/google/android/gms/common/api/Batch;)I

    #@27
    move-result v0

    #@28
    if-nez v0, :cond_37

    #@2a
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@2c
    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->d(Lcom/google/android/gms/common/api/Batch;)Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_49

    #@32
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@34
    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->e(Lcom/google/android/gms/common/api/Batch;)V

    #@37
    :cond_37
    :goto_37
    monitor-exit v1

    #@38
    goto :goto_10

    #@39
    :catchall_39
    move-exception v0

    #@3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_39

    #@3b
    throw v0

    #@3c
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    #@3f
    move-result v0

    #@40
    if-nez v0, :cond_1d

    #@42
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@44
    const/4 v2, 0x1

    #@45
    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/Batch;->b(Lcom/google/android/gms/common/api/Batch;Z)Z

    #@48
    goto :goto_1d

    #@49
    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@4b
    invoke-static {v0}, Lcom/google/android/gms/common/api/Batch;->f(Lcom/google/android/gms/common/api/Batch;)Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_69

    #@51
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@53
    const/16 v2, 0xd

    #@55
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@58
    :goto_58
    iget-object v2, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@5a
    new-instance v3, Lcom/google/android/gms/common/api/BatchResult;

    #@5c
    iget-object v4, p0, Lcom/google/android/gms/common/api/Batch$1;->DD:Lcom/google/android/gms/common/api/Batch;

    #@5e
    invoke-static {v4}, Lcom/google/android/gms/common/api/Batch;->g(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;

    #@61
    move-result-object v4

    #@62
    invoke-direct {v3, v0, v4}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V

    #@65
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Batch;->b(Lcom/google/android/gms/common/api/Result;)V

    #@68
    goto :goto_37

    #@69
    :cond_69
    sget-object v0, Lcom/google/android/gms/common/api/Status;->En:Lcom/google/android/gms/common/api/Status;
    :try_end_6b
    .catchall {:try_start_3c .. :try_end_6b} :catchall_39

    #@6b
    goto :goto_58
.end method
