.class Lcom/google/android/gms/cast/RemoteMediaPlayer$9;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer;->setStreamVolume(Lcom/google/android/gms/common/api/GoogleApiClient;DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field final synthetic Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic Bh:Lorg/json/JSONObject;

.field final synthetic Bk:D


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;DLorg/json/JSONObject;)V
    .registers 7

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@4
    iput-wide p3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Bk:D

    #@6
    iput-object p5, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Bh:Lorg/json/JSONObject;

    #@8
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V

    #@b
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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->a(Lcom/google/android/gms/internal/gh;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/gh;)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@c
    move-result-object v0

    #@d
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Bb:Lcom/google/android/gms/common/api/GoogleApiClient;

    #@f
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_46

    #@12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@14
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/go;

    #@17
    move-result-object v0

    #@18
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Bq:Lcom/google/android/gms/internal/gq;

    #@1a
    iget-wide v4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Bk:D

    #@1c
    iget-object v3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Bh:Lorg/json/JSONObject;

    #@1e
    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/google/android/gms/internal/go;->a(Lcom/google/android/gms/internal/gq;DLorg/json/JSONObject;)J
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_21} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_21} :catch_49
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_62
    .catchall {:try_start_12 .. :try_end_21} :catchall_7b

    #@21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@23
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@26
    move-result-object v0

    #@27
    const/4 v2, 0x0

    #@28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@2b
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_46

    #@2c
    return-void

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    :try_start_2e
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@30
    const/4 v2, 0x1

    #@31
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@34
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_7b

    #@3b
    :try_start_3b
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@3d
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@40
    move-result-object v0

    #@41
    const/4 v2, 0x0

    #@42
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@45
    goto :goto_2b

    #@46
    :catchall_46
    move-exception v0

    #@47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_46

    #@48
    throw v0

    #@49
    :catch_49
    move-exception v0

    #@4a
    :try_start_4a
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@4c
    const/4 v2, 0x1

    #@4d
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_7b

    #@57
    :try_start_57
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@59
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@5c
    move-result-object v0

    #@5d
    const/4 v2, 0x0

    #@5e
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_46

    #@61
    goto :goto_2b

    #@62
    :catch_62
    move-exception v0

    #@63
    :try_start_63
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@65
    const/4 v2, 0x1

    #@66
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@69
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_7b

    #@70
    :try_start_70
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@72
    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@75
    move-result-object v0

    #@76
    const/4 v2, 0x0

    #@77
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@7a
    goto :goto_2b

    #@7b
    :catchall_7b
    move-exception v0

    #@7c
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->Ba:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    #@7e
    invoke-static {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@81
    move-result-object v2

    #@82
    const/4 v3, 0x0

    #@83
    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@86
    throw v0
    :try_end_87
    .catchall {:try_start_70 .. :try_end_87} :catchall_46
.end method
