.class Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$12;
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
.field final synthetic Pg:Ljava/lang/String;

.field final synthetic Pv:I


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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$12;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 8

    #@0
    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$12;->Pg:Ljava/lang/String;

    #@2
    iget v3, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$12;->Pv:I

    #@4
    const/4 v4, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    move-object v0, p1

    #@7
    move-object v1, p0

    #@8
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->c(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V

    #@b
    return-void
.end method
