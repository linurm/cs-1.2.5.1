.class public Lcom/apportable/GooglePlayServices/GoogleMultiplayerListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;
.implements Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;
.implements Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public native onConnectedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method public native onDisconnectedFromRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method public native onInvitationReceived(Lcom/google/android/gms/games/multiplayer/Invitation;)V
.end method

.method public native onInvitationRemoved(Ljava/lang/String;)V
.end method

.method public native onJoinedRoom(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method public native onLeftRoom(ILjava/lang/String;)V
.end method

.method public native onP2PConnected(Ljava/lang/String;)V
.end method

.method public native onP2PDisconnected(Ljava/lang/String;)V
.end method

.method public native onPeerDeclined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onPeerInvitedToRoom(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onPeerJoined(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onPeerLeft(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onPeersConnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onPeersDisconnected(Lcom/google/android/gms/games/multiplayer/realtime/Room;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/multiplayer/realtime/Room;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public native onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
.end method

.method public native onRealTimeMessageSent(IILjava/lang/String;)V
.end method

.method public native onRoomAutoMatching(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method public native onRoomConnected(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method public native onRoomConnecting(Lcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method

.method public native onRoomCreated(ILcom/google/android/gms/games/multiplayer/realtime/Room;)V
.end method
