.class Lcom/google/android/gms/cast/RemoteMediaPlayer$11;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;->requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field final synthetic Bb:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/internal/gh;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->a(Lcom/google/android/gms/internal/gh;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gh;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@c
    move-result-object v0

    #@d
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@f
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_42

    #@12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@14
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/go;

    #@17
    move-result-object v0

    #@18
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->Bq:Lcom/google/android/gms/internal/gq;

    #@1a
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/go;->a(Lcom/google/android/gms/internal/gq;)J
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_29
    .catchall {:try_start_12 .. :try_end_1d} :catchall_45

    #@1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@22
    move-result-object v0

    #@23
    const/4 v2, 0x0

    #@24
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@27
    :goto_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_42

    #@28
    return-void

    #@29
    :catch_29
    move-exception v0

    #@2a
    :try_start_2a
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@2c
    const/4 v2, 0x1

    #@2d
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@30
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_45

    #@37
    :try_start_37
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@39
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@3c
    move-result-object v0

    #@3d
    const/4 v2, 0x0

    #@3e
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@41
    goto :goto_27

    #@42
    :catchall_42
    move-exception v0

    #@43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_42

    #@44
    throw v0

    #@45
    :catchall_45
    move-exception v0

    #@46
    :try_start_46
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@48
    invoke-static {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@4b
    move-result-object v2

    #@4c
    const/4 v3, 0x0

    #@4d
    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@50
    throw v0
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_42
.end method
