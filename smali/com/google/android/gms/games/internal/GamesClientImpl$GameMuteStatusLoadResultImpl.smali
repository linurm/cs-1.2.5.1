.class final Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GameMuteStatusLoadResultImpl"
.end annotation


# instance fields
.field private final NL:Ljava/lang/String;

.field private final NM:Z

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    :try_start_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@5
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    #@8
    move-result v1

    #@9
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->yz:Lcom/google/android/gms/common/api/Status;

    #@e
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    #@11
    move-result v0

    #@12
    if-lez v0, :cond_2c

    #@14
    const-string v0, "external_game_id"

    #@16
    const/4 v1, 0x0

    #@17
    const/4 v2, 0x0

    #@18
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->NL:Ljava/lang/String;

    #@1e
    const-string v0, "muted"

    #@20
    const/4 v1, 0x0

    #@21
    const/4 v2, 0x0

    #@22
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    #@25
    move-result v0

    #@26
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->NM:Z
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_33

    #@28
    :goto_28
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    #@2b
    return-void

    #@2c
    :cond_2c
    const/4 v0, 0x0

    #@2d
    :try_start_2d
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->NL:Ljava/lang/String;

    #@2f
    const/4 v0, 0x0

    #@30
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->NM:Z
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_33

    #@32
    goto :goto_28

    #@33
    :catchall_33
    move-exception v0

    #@34
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    #@37
    throw v0
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;->yz:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method
