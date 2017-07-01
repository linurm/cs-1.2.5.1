.class Lcom/google/android/gms/cast/RemoteMediaPlayer$4;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field final synthetic Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic Be:Lcom/google/android/gms/cast/MediaInfo;

.field final synthetic Bf:Z

.field final synthetic Bg:J

.field final synthetic Bh:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)V
    .registers 9

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Be:Lcom/google/android/gms/cast/MediaInfo;

    #@6
    iput-boolean p4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Bf:Z

    #@8
    iput-wide p5, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Bg:J

    #@a
    iput-object p7, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Bh:Lorg/json/JSONObject;

    #@c
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V

    #@f
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->a(Lcom/google/android/gms/internal/gh;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gh;)V
    .registers 10

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    #@5
    move-result-object v7

    #@6
    monitor-enter v7

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_4a

    #@12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@14
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/go;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Bq:Lcom/google/android/gms/internal/gq;

    #@1a
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Be:Lcom/google/android/gms/cast/MediaInfo;

    #@1c
    iget-boolean v3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Bf:Z

    #@1e
    iget-wide v4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Bg:J

    #@20
    iget-object v6, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Bh:Lorg/json/JSONObject;

    #@22
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/go;->a(Lcom/google/android/gms/internal/gq;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)J
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_31
    .catchall {:try_start_12 .. :try_end_25} :catchall_4d

    #@25
    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@27
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@2a
    move-result-object v0

    #@2b
    const/4 v1, 0x0

    #@2c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@2f
    :goto_2f
    monitor-exit v7
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_4a

    #@30
    return-void

    #@31
    :catch_31
    move-exception v0

    #@32
    :try_start_32
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@34
    const/4 v1, 0x1

    #@35
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_4d

    #@3f
    :try_start_3f
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@41
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@44
    move-result-object v0

    #@45
    const/4 v1, 0x0

    #@46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@49
    goto :goto_2f

    #@4a
    :catchall_4a
    move-exception v0

    #@4b
    monitor-exit v7
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_4a

    #@4c
    throw v0

    #@4d
    :catchall_4d
    move-exception v0

    #@4e
    :try_start_4e
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@50
    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@53
    move-result-object v1

    #@54
    const/4 v2, 0x0

    #@55
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@58
    throw v0
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_4a
.end method
