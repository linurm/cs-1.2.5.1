.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestReceivedBinderCallback"
.end annotation


# instance fields
.field final synthetic NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final Oz:Lcom/google/android/gms/games/request/OnRequestReceivedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->Oz:Lcom/google/android/gms/games/request/OnRequestReceivedListener;

    #@7
    return-void
.end method


# virtual methods
.method public o(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    #@0
    new-instance v1, Lcom/google/android/gms/games/request/GameRequestBuffer;

    #@2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/request/GameRequestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@5
    const/4 v0, 0x0

    #@6
    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->getCount()I

    #@9
    move-result v2

    #@a
    if-lez v2, :cond_19

    #@c
    const/4 v0, 0x0

    #@d
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/request/GameRequestBuffer;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/gms/games/request/GameRequest;

    #@13
    invoke-interface {v0}, Lcom/google/android/gms/games/request/GameRequest;->freeze()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/games/request/GameRequest;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_2d

    #@19
    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->close()V

    #@1c
    if-eqz v0, :cond_2c

    #@1e
    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@20
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedCallback;

    #@22
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@24
    iget-object v4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->Oz:Lcom/google/android/gms/games/request/OnRequestReceivedListener;

    #@26
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/request/OnRequestReceivedListener;Lcom/google/android/gms/games/request/GameRequest;)V

    #@29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@2c
    :cond_2c
    return-void

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->close()V

    #@31
    throw v0
.end method

.method public onRequestRemoved(Ljava/lang/String;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;->Oz:Lcom/google/android/gms/games/request/OnRequestReceivedListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/request/OnRequestReceivedListener;Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method
