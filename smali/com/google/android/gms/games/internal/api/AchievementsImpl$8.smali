.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$8;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/AchievementsImpl;->setSteps(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pf:Lcom/google/android/gms/games/internal/api/AchievementsImpl;

.field final synthetic Pi:Ljava/lang/String;

.field final synthetic Pj:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AchievementsImpl;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$8;->Pf:Lcom/google/android/gms/games/internal/api/AchievementsImpl;

    #@2
    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$8;->Pi:Ljava/lang/String;

    #@4
    iput p4, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$8;->Pj:I

    #@6
    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$UpdateImpl;-><init>(Ljava/lang/String;)V

    #@9
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$8;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method public a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$8;->Pi:Ljava/lang/String;

    #@3
    iget v2, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$8;->Pj:I

    #@5
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I)V

    #@8
    return-void
.end method
