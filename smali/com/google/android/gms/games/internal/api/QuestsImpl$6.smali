.class Lcom/google/android/gms/games/internal/api/QuestsImpl$6;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pe:Z

.field final synthetic Ph:Ljava/lang/String;

.field final synthetic Qr:[Ljava/lang/String;

.field final synthetic Qs:Ljava/lang/String;


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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 8

    #@0
    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->Ph:Ljava/lang/String;

    #@2
    iget-object v3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->Qs:Ljava/lang/String;

    #@4
    iget-boolean v4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->Pe:Z

    #@6
    iget-object v5, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->Qr:[Ljava/lang/String;

    #@8
    move-object v0, p1

    #@9
    move-object v1, p0

    #@a
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    #@d
    return-void
.end method
