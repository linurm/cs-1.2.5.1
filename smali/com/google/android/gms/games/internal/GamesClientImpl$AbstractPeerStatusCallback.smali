.class abstract Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusCallback;
.super Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractPeerStatusCallback"
.end annotation


# instance fields
.field final synthetic NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final NF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 9

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusCallback;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    #@5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusCallback;->NF:Ljava/util/ArrayList;

    #@c
    const/4 v0, 0x0

    #@d
    array-length v1, p4

    #@e
    :goto_e
    if-ge v0, v1, :cond_1a

    #@10
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusCallback;->NF:Ljava/util/ArrayList;

    #@12
    aget-object v3, p4, v0

    #@14
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_e

    #@1a
    :cond_1a
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusCallback;->NF:Ljava/util/ArrayList;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusCallback;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V

    #@5
    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
