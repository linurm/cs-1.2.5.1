.class Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;
.super Lcom/google/android/gms/games/internal/api/AchievementsImpl$LoadImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/AchievementsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pe:Z

.field final synthetic Pg:Ljava/lang/String;

.field final synthetic Ph:Ljava/lang/String;


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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method public a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->Pg:Ljava/lang/String;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->Ph:Ljava/lang/String;

    #@4
    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/AchievementsImpl$10;->Pe:Z

    #@6
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;Z)V

    #@9
    return-void
.end method
