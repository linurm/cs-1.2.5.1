.class final Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;
.super Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RoomBinderCallbacks"
.end annotation


# instance fields
.field final synthetic NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field private final OG:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field private final OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field private final OI:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    #@6
    const-string v0, "Callbacks must not be null"

    #@8
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@e
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OG:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@10
    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@12
    iput-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OI:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    #@14
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/AbstractGamesCallbacks;-><init>()V

    #@5
    const-string v0, "Callbacks must not be null"

    #@7
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@d
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OG:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@f
    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@11
    iput-object p4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OI:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    #@13
    return-void
.end method


# virtual methods
.method public A(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public a(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public b(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public c(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public d(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public e(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public f(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public onLeftRoom(ILjava/lang/String;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OG:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;ILjava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public onP2PConnected(Ljava/lang/String;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public onP2PDisconnected(Ljava/lang/String;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Ljava/lang/String;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OI:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public u(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OG:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public v(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OG:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public w(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public x(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public y(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OG:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method

.method public z(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomCallback;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->NE:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;->OH:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@8
    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/common/data/DataHolder;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@e
    return-void
.end method
