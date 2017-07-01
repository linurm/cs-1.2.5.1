.class Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;
.super Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadMetadataImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;->loadLeaderboardMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic PI:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

.field final synthetic PJ:Ljava/lang/String;

.field final synthetic Pe:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;Ljava/lang/String;Z)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->PI:Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->PJ:Ljava/lang/String;

    #@4
    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->Pe:Z

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$LoadMetadataImpl;-><init>(Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$1;)V

    #@a
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
    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->PJ:Ljava/lang/String;

    #@2
    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl$2;->Pe:Z

    #@4
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Z)V

    #@7
    return-void
.end method
