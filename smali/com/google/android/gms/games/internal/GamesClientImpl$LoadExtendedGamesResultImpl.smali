.class final Lcom/google/android/gms/games/internal/GamesClientImpl$LoadExtendedGamesResultImpl;
.super Lcom/google/android/gms/common/api/b;

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadExtendedGamesResultImpl"
.end annotation


# instance fields
.field private final NV:Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    new-instance v0, Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;

    #@5
    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$LoadExtendedGamesResultImpl;->NV:Lcom/google/android/gms/games/internal/game/ExtendedGameBuffer;

    #@a
    return-void
.end method
