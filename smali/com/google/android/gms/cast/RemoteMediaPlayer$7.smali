.class Lcom/google/android/gms/cast/RemoteMediaPlayer$7;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;->play(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field final synthetic Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic Bh:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Bh:Lorg/json/JSONObject;

    #@6
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V

    #@9
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->a(Lcom/google/android/gms/internal/gh;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gh;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@c
    move-result-object v0

    #@d
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@f
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_44

    #@12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@14
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/go;

    #@17
    move-result-object v0

    #@18
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Bq:Lcom/google/android/gms/internal/gq;

    #@1a
    iget-object v3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Bh:Lorg/json/JSONObject;

    #@1c
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/go;->c(Lcom/google/android/gms/internal/gq;Lorg/json/JSONObject;)J
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1f} :catch_2b
    .catchall {:try_start_12 .. :try_end_1f} :catchall_47

    #@1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@21
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@24
    move-result-object v0

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@29
    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_44

    #@2a
    return-void

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    :try_start_2c
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@2e
    const/4 v2, 0x1

    #@2f
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@32
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_47

    #@39
    :try_start_39
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@3b
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@3e
    move-result-object v0

    #@3f
    const/4 v2, 0x0

    #@40
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@43
    goto :goto_29

    #@44
    :catchall_44
    move-exception v0

    #@45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    #@46
    throw v0

    #@47
    :catchall_47
    move-exception v0

    #@48
    :try_start_48
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@4a
    invoke-static {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@4d
    move-result-object v2

    #@4e
    const/4 v3, 0x0

    #@4f
    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@52
    throw v0
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_44
.end method
