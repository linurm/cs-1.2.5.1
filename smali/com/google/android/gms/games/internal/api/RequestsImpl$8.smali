.class Lcom/google/android/gms/games/internal/api/RequestsImpl$8;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qs:Ljava/lang/String;

.field final synthetic Qz:I


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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$8;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$8;->Qs:Ljava/lang/String;

    #@2
    iget v1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$8;->Qz:I

    #@4
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->f(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I)V

    #@7
    return-void
.end method
