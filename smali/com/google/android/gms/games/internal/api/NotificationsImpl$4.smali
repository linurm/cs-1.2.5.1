.class Lcom/google/android/gms/games/internal/api/NotificationsImpl$4;
.super Lcom/google/android/gms/games/internal/api/NotificationsImpl$ContactSettingLoadImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/NotificationsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/NotificationsImpl$4;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2

    #@0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->i(Lcom/google/android/gms/common/api/a$d;)V

    #@3
    return-void
.end method
