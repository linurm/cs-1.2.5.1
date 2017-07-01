.class public abstract Lcom/google/android/gms/internal/hb$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic Gi:Lcom/google/android/gms/internal/hb;

.field private Gj:Z

.field private mListener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hb;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hb$b;->Gi:Lcom/google/android/gms/internal/hb;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/hb$b;->mListener:Ljava/lang/Object;

    #@7
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hb$b;->Gj:Z

    #@a
    return-void
.end method


# virtual methods
.method protected abstract d(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract fu()V
.end method

.method public fv()V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$b;->mListener:Ljava/lang/Object;

    #@3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/hb$b;->Gj:Z

    #@5
    if-eqz v1, :cond_25

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "GmsClient"

    #@e
    const-string v3, "Callback proxy "

    #@10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string v3, " being reused. This is not safe."

    #@1a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_34

    #@26
    if-eqz v0, :cond_3c

    #@28
    :try_start_28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hb$b;->d(Ljava/lang/Object;)V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2b} :catch_37

    #@2b
    :goto_2b
    monitor-enter p0

    #@2c
    const/4 v0, 0x1

    #@2d
    :try_start_2d
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hb$b;->Gj:Z

    #@2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_40

    #@30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb$b;->unregister()V

    #@33
    return-void

    #@34
    :catchall_34
    move-exception v0

    #@35
    :try_start_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    #@36
    throw v0

    #@37
    :catch_37
    move-exception v0

    #@38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb$b;->fu()V

    #@3b
    throw v0

    #@3c
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb$b;->fu()V

    #@3f
    goto :goto_2b

    #@40
    :catchall_40
    move-exception v0

    #@41
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    #@42
    throw v0
.end method

.method public fw()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    const/4 v0, 0x0

    #@2
    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/hb$b;->mListener:Ljava/lang/Object;

    #@4
    monitor-exit p0

    #@5
    return-void

    #@6
    :catchall_6
    move-exception v0

    #@7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    #@8
    throw v0
.end method

.method public unregister()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb$b;->fw()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$b;->Gi:Lcom/google/android/gms/internal/hb;

    #@5
    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->b(Lcom/google/android/gms/internal/hb;)Ljava/util/ArrayList;

    #@8
    move-result-object v1

    #@9
    monitor-enter v1

    #@a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$b;->Gi:Lcom/google/android/gms/internal/hb;

    #@c
    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->b(Lcom/google/android/gms/internal/hb;)Ljava/util/ArrayList;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@13
    monitor-exit v1

    #@14
    return-void

    #@15
    :catchall_15
    move-exception v0

    #@16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_15

    #@17
    throw v0
.end method
