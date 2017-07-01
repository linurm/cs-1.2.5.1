.class Lcom/google/android/gms/games/internal/GamesClientImpl$1;
.super Lcom/google/android/gms/games/internal/events/EventIncrementManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic NE:Lcom/google/android/gms/games/internal/GamesClientImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$1;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public hx()Lcom/google/android/gms/games/internal/events/EventIncrementCache;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$1;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@7
    return-object v0
.end method
