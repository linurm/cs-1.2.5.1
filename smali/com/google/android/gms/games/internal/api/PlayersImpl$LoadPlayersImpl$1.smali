.class Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadPlayersResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;->P(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadPlayersResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qk:Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;

.field final synthetic yJ:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl$1;->Qk:Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public getPlayers()Lcom/google/android/gms/games/PlayerBuffer;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/games/PlayerBuffer;

    #@2
    const/16 v1, 0xe

    #@4
    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@b
    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadPlayersImpl$1;->yJ:Lcom/google/android/gms/common/api/Status;

    #@2
    return-object v0
.end method

.method public release()V
    .registers 1

    #@0
    return-void
.end method
