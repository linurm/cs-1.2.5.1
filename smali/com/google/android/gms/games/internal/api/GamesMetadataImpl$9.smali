.class Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$9;
.super Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadExtendedGamesImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pe:Z

.field final synthetic Pu:Ljava/lang/String;

.field final synthetic Pv:I

.field final synthetic Pw:Z


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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$9;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 10

    #@0
    const/4 v4, 0x0

    #@1
    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$9;->Pu:Ljava/lang/String;

    #@3
    iget v3, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$9;->Pv:I

    #@5
    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$9;->Pe:Z

    #@7
    iget-boolean v7, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$9;->Pw:Z

    #@9
    move-object v0, p1

    #@a
    move-object v1, p0

    #@b
    move v5, v4

    #@c
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZZZ)V

    #@f
    return-void
.end method
