.class abstract Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadOwnerCoverPhotoUrisImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/PlayersImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoadOwnerCoverPhotoUrisImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/Players$LoadOwnerCoverPhotoUrisResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public O(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadOwnerCoverPhotoUrisResult;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadOwnerCoverPhotoUrisImpl$1;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadOwnerCoverPhotoUrisImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadOwnerCoverPhotoUrisImpl;Lcom/google/android/gms/common/api/Status;)V

    #@5
    return-object v0
.end method

.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/PlayersImpl$LoadOwnerCoverPhotoUrisImpl;->O(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/Players$LoadOwnerCoverPhotoUrisResult;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
