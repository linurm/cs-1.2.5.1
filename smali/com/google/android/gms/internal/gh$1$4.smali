.class Lcom/google/android/gms/internal/gh$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gh$1;->g(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ce:Lcom/google/android/gms/internal/gh$1;

.field final synthetic Ch:Ljava/lang/String;

.field final synthetic zU:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gh$1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gh$1$4;->Ce:Lcom/google/android/gms/internal/gh$1;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/gh$1$4;->zU:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/internal/gh$1$4;->Ch:Ljava/lang/String;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1$4;->Ce:Lcom/google/android/gms/internal/gh$1;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@4
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->f(Lcom/google/android/gms/internal/gh;)Ljava/util/Map;

    #@7
    move-result-object v1

    #@8
    monitor-enter v1

    #@9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1$4;->Ce:Lcom/google/android/gms/internal/gh$1;

    #@b
    iget-object v0, v0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@d
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->f(Lcom/google/android/gms/internal/gh;)Ljava/util/Map;

    #@10
    move-result-object v0

    #@11
    iget-object v2, p0, Lcom/google/android/gms/internal/gh$1$4;->zU:Ljava/lang/String;

    #@13
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    #@19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_2c

    #@1a
    if-eqz v0, :cond_2f

    #@1c
    iget-object v1, p0, Lcom/google/android/gms/internal/gh$1$4;->Ce:Lcom/google/android/gms/internal/gh$1;

    #@1e
    iget-object v1, v1, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@20
    invoke-static {v1}, Lcom/google/android/gms/internal/gh;->g(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/cast/CastDevice;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Lcom/google/android/gms/internal/gh$1$4;->zU:Ljava/lang/String;

    #@26
    iget-object v3, p0, Lcom/google/android/gms/internal/gh$1$4;->Ch:Ljava/lang/String;

    #@28
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;->onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    :goto_2b
    return-void

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    #@2e
    throw v0

    #@2f
    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/gh;->ek()Lcom/google/android/gms/internal/gn;

    #@32
    move-result-object v0

    #@33
    const-string v1, "Discarded message for unknown namespace \'%s\'"

    #@35
    const/4 v2, 0x1

    #@36
    new-array v2, v2, [Ljava/lang/Object;

    #@38
    const/4 v3, 0x0

    #@39
    iget-object v4, p0, Lcom/google/android/gms/internal/gh$1$4;->zU:Ljava/lang/String;

    #@3b
    aput-object v4, v2, v3

    #@3d
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@40
    goto :goto_2b
.end method
