.class public Lcom/google/android/gms/cast/RemoteMediaPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$a;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$a$a;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$b;,
        Lcom/google/android/gms/cast/RemoteMediaPlayer$c;
    }
.end annotation


# static fields
.field public static final RESUME_STATE_PAUSE:I = 0x2

.field public static final RESUME_STATE_PLAY:I = 0x1

.field public static final RESUME_STATE_UNCHANGED:I = 0x0

.field public static final STATUS_CANCELED:I = 0x2

.field public static final STATUS_FAILED:I = 0x1

.field public static final STATUS_REPLACED:I = 0x4

.field public static final STATUS_SUCCEEDED:I = 0x0

.field public static final STATUS_TIMED_OUT:I = 0x3


# instance fields
.field private final AW:Lcom/google/android/gms/internal/go;

.field private final AX:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

.field private AY:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;

.field private AZ:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;

.field private final ls:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->ls:Ljava/lang/Object;

    #@a
    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@c
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@11
    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;

    #@13
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$1;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V

    #@16
    iput-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AW:Lcom/google/android/gms/internal/go;

    #@18
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AW:Lcom/google/android/gms/internal/go;

    #@1a
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@1c
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/go;->a(Lcom/google/android/gms/internal/gp;)V

    #@1f
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->onStatusUpdated()V

    #@3
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/cast/RemoteMediaPlayer;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->onMetadataUpdated()V

    #@3
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->ls:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    #@2
    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/go;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AW:Lcom/google/android/gms/internal/go;

    #@2
    return-object v0
.end method

.method private onMetadataUpdated()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AY:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AY:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;->onMetadataUpdated()V

    #@9
    :cond_9
    return-void
.end method

.method private onStatusUpdated()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AZ:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AZ:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;->onStatusUpdated()V

    #@9
    :cond_9
    return-void
.end method


# virtual methods
.method public getApproximateStreamPosition()J
    .registers 5

    #@0
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AW:Lcom/google/android/gms/internal/go;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/go;->getApproximateStreamPosition()J

    #@8
    move-result-wide v2

    #@9
    monitor-exit v1

    #@a
    return-wide v2

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    #@d
    throw v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AW:Lcom/google/android/gms/internal/go;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/go;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    #@d
    throw v0
.end method

.method public getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AW:Lcom/google/android/gms/internal/go;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/go;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    #@d
    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AW:Lcom/google/android/gms/internal/go;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/go;->getNamespace()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStreamDuration()J
    .registers 5

    #@0
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AW:Lcom/google/android/gms/internal/go;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/go;->getStreamDuration()J

    #@8
    move-result-wide v2

    #@9
    monitor-exit v1

    #@a
    return-wide v2

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    #@d
    throw v0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/cast/MediaInfo;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v3, 0x1

    #@1
    const-wide/16 v4, 0x0

    #@3
    const/4 v6, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;Z)Lcom/google/android/gms/common/api/PendingResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    const-wide/16 v4, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move v3, p3

    #@7
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJ)Lcom/google/android/gms/common/api/PendingResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "ZJ)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-wide v4, p4

    #@6
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "ZJ",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;

    #@2
    move-object v2, p0

    #@3
    move-object v3, p1

    #@4
    move-object v4, p2

    #@5
    move v5, p3

    #@6
    move-wide v6, p4

    #@7
    move-object/from16 v8, p6

    #@9
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)V

    #@c
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AW:Lcom/google/android/gms/internal/go;

    #@2
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/go;->ai(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public pause(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->pause(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public pause(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$5;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$5;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public play(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->play(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public play(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$7;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$11;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public seek(Lcom/google/android/gms/common/api/GoogleApiClient;J)Lcom/google/android/gms/common/api/PendingResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "J)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-wide v2, p2

    #@5
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->seek(Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public seek(Lcom/google/android/gms/common/api/GoogleApiClient;JI)Lcom/google/android/gms/common/api/PendingResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "JI)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move v4, p4

    #@5
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->seek(Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public seek(Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "JI",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;

    #@2
    move-object v2, p0

    #@3
    move-object v3, p1

    #@4
    move-wide v4, p2

    #@5
    move v6, p4

    #@6
    move-object v7, p5

    #@7
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/cast/RemoteMediaPlayer$8;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)V

    #@a
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public setActiveMediaTracks(Lcom/google/android/gms/common/api/GoogleApiClient;[J)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[J)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;[J)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public setOnMetadataUpdatedListener(Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AY:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnMetadataUpdatedListener;

    #@2
    return-void
.end method

.method public setOnStatusUpdatedListener(Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer;->AZ:Lcom/google/android/gms/cast/RemoteMediaPlayer$OnStatusUpdatedListener;

    #@2
    return-void
.end method

.method public setStreamMute(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setStreamMute(Lcom/google/android/gms/common/api/GoogleApiClient;ZLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public setStreamMute(Lcom/google/android/gms/common/api/GoogleApiClient;ZLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;ZLorg/json/JSONObject;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public setStreamVolume(Lcom/google/android/gms/common/api/GoogleApiClient;D)Lcom/google/android/gms/common/api/PendingResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "D)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->setStreamVolume(Lcom/google/android/gms/common/api/GoogleApiClient;DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public setStreamVolume(Lcom/google/android/gms/common/api/GoogleApiClient;DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "D",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_25

    #@c
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "Volume cannot be "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    new-instance v1, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;

    #@27
    move-object v2, p0

    #@28
    move-object v3, p1

    #@29
    move-wide v4, p2

    #@2a
    move-object v6, p4

    #@2b
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;DLorg/json/JSONObject;)V

    #@2e
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/cast/TextTrackStyle;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$3;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$3;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/TextTrackStyle;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public stop(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->stop(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public stop(Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
