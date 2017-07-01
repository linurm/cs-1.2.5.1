.class Lcom/google/android/gms/cast/RemoteMediaPlayer$8;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;->seek(Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field final synthetic Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic Bh:Lorg/json/JSONObject;

.field final synthetic Bi:J

.field final synthetic Bj:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)V
    .registers 8

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@4
    iput-wide p3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Bi:J

    #@6
    iput p5, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Bj:I

    #@8
    iput-object p6, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Bh:Lorg/json/JSONObject;

    #@a
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V

    #@d
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->a(Lcom/google/android/gms/internal/gh;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gh;)V
    .registers 9

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    #@5
    move-result-object v6

    #@6
    monitor-enter v6

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@f
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_48

    #@12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@14
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/go;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Bq:Lcom/google/android/gms/internal/gq;

    #@1a
    iget-wide v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Bi:J

    #@1c
    iget v4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Bj:I

    #@1e
    iget-object v5, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Bh:Lorg/json/JSONObject;

    #@20
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/go;->a(Lcom/google/android/gms/internal/gq;JILorg/json/JSONObject;)J
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_23} :catch_2f
    .catchall {:try_start_12 .. :try_end_23} :catchall_4b

    #@23
    :try_start_23
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@25
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@28
    move-result-object v0

    #@29
    const/4 v1, 0x0

    #@2a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@2d
    :goto_2d
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_48

    #@2e
    return-void

    #@2f
    :catch_2f
    move-exception v0

    #@30
    :try_start_30
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@32
    const/4 v1, 0x1

    #@33
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_4b

    #@3d
    :try_start_3d
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@3f
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@42
    move-result-object v0

    #@43
    const/4 v1, 0x0

    #@44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@47
    goto :goto_2d

    #@48
    :catchall_48
    move-exception v0

    #@49
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_48

    #@4a
    throw v0

    #@4b
    :catchall_4b
    move-exception v0

    #@4c
    :try_start_4c
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@4e
    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@51
    move-result-object v1

    #@52
    const/4 v2, 0x0

    #@53
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@56
    throw v0
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_48
.end method
