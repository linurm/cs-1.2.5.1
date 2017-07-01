.class Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;
.super Lcom/google/android/gms/games/internal/events/EventIncrementCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameClientEventIncrementCache"
.end annotation


# instance fields
.field final synthetic NE:Lcom/google/android/gms/games/internal/GamesClientImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    const/16 v1, 0x3e8

    #@c
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/games/internal/events/EventIncrementCache;-><init>(Landroid/os/Looper;I)V

    #@f
    return-void
.end method


# virtual methods
.method protected o(Ljava/lang/String;I)V
    .registers 5

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@8
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->l(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    :goto_b
    return-void

    #@c
    :catch_c
    move-exception v0

    #@d
    const-string v0, "GamesClientImpl"

    #@f
    const-string v1, "service died"

    #@11
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    goto :goto_b
.end method
