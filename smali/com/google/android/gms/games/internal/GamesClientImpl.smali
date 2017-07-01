.class public final Lcom/google/android/gms/games/internal/GamesClientImpl;
.super Lcom/google/android/gms/internal/hb;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractPeerStatusCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AbstractRoomStatusCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CancelMatchResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$CommitSnapshotResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ConnectedToRoomCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingLoadResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$DeleteSnapshotResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$DisconnectedFromRoomCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameClientEventIncrementCache;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangeResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InitiateMatchResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationRemovedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$JoinedRoomCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardMetadataResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LeaveMatchResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LeftRoomCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAchievementsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadAclResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadEventResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadExtendedGamesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameInstancesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGameSearchSuggestionsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadGamesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadInvitationsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadMatchesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadOwnerCoverPhotoUrisResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayerScoreResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadPlayersResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadQuestsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestSummariesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadRequestsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadScoresResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadSnapshotsResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpForGameCategoriesResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$LoadXpStreamResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$MatchRemovedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$MessageReceivedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclUpdatedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$OpenSnapshotResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$OwnerCoverPhotoUrisLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$P2PConnectedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$P2PDisconnectedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerConnectedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDeclinedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerDisconnectedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerInvitedToRoomCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerJoinedRoomCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PeerLeftRoomCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$QuestCompletedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeMessageSentCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestRemovedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RoomAutoMatchingCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RoomConnectingCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$RoomCreatedCallback;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SendRequestResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchResult;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateAchievementResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateMatchResultImpl;,
        Lcom/google/android/gms/games/internal/GamesClientImpl$UpdateRequestsResultImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/games/internal/IGamesService;",
        ">;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field private final NA:Z

.field private final NB:I

.field private final NC:Z

.field private final ND:Ljava/lang/String;

.field Np:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

.field private final Nq:Ljava/lang/String;

.field private final Nr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;",
            ">;"
        }
    .end annotation
.end field

.field private Ns:Lcom/google/android/gms/games/PlayerEntity;

.field private Nt:Lcom/google/android/gms/games/GameEntity;

.field private final Nu:Lcom/google/android/gms/games/internal/PopupManager;

.field private Nv:Z

.field private Nw:Z

.field private Nx:I

.field private final Ny:Landroid/os/Binder;

.field private final Nz:J

.field private final yQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;ZZIZILjava/lang/String;)V
    .registers 24

    #@0
    move-object v2, p0

    #@1
    move-object v3, p1

    #@2
    move-object v4, p2

    #@3
    move-object v5, p5

    #@4
    move-object v6, p6

    #@5
    move-object v7, p7

    #@6
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@9
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$1;

    #@b
    invoke-direct {v2, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl$1;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    #@e
    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Np:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    #@10
    const/4 v2, 0x0

    #@11
    iput-boolean v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nv:Z

    #@13
    const/4 v2, 0x0

    #@14
    iput-boolean v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nw:Z

    #@16
    iput-object p3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nq:Ljava/lang/String;

    #@18
    invoke-static {p4}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/lang/String;

    #@1e
    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->yQ:Ljava/lang/String;

    #@20
    new-instance v2, Landroid/os/Binder;

    #@22
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@25
    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Ny:Landroid/os/Binder;

    #@27
    new-instance v2, Ljava/util/HashMap;

    #@29
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@2c
    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nr:Ljava/util/Map;

    #@2e
    move/from16 v0, p8

    #@30
    invoke-static {p0, v0}, Lcom/google/android/gms/games/internal/PopupManager;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;I)Lcom/google/android/gms/games/internal/PopupManager;

    #@33
    move-result-object v2

    #@34
    iput-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@36
    move-object/from16 v0, p9

    #@38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->f(Landroid/view/View;)V

    #@3b
    move/from16 v0, p11

    #@3d
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nw:Z

    #@3f
    move/from16 v0, p12

    #@41
    iput v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nx:I

    #@43
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@46
    move-result v2

    #@47
    int-to-long v2, v2

    #@48
    iput-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@4a
    move/from16 v0, p10

    #@4c
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->NA:Z

    #@4e
    move/from16 v0, p13

    #@50
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->NC:Z

    #@52
    move/from16 v0, p14

    #@54
    iput v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->NB:I

    #@56
    move-object/from16 v0, p15

    #@58
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->ND:Ljava/lang/String;

    #@5a
    invoke-virtual {p0, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    #@5d
    invoke-virtual {p0, p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    #@60
    return-void
.end method

.method private Q(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .registers 5

    #@0
    new-instance v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;

    #@2
    invoke-direct {v1, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@5
    const/4 v0, 0x0

    #@6
    :try_start_6
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->getCount()I

    #@9
    move-result v2

    #@a
    if-lez v2, :cond_19

    #@c
    const/4 v0, 0x0

    #@d
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;

    #@13
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/Room;
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    #@19
    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->close()V

    #@1c
    return-object v0

    #@1d
    :catchall_1d
    move-exception v0

    #@1e
    invoke-virtual {v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomBuffer;->close()V

    #@21
    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->Q(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/multiplayer/realtime/Room;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private aT(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@7
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->bb(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_1f

    #@d
    const-string v0, "GamesClientImpl"

    #@f
    const-string v3, "Created native libjingle socket."

    #@11
    invoke-static {v0, v3}, Lcom/google/android/gms/games/internal/GamesLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    new-instance v0, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;

    #@16
    invoke-direct {v0, v2}, Lcom/google/android/gms/games/internal/LibjingleNativeSocket;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@19
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nr:Ljava/util/Map;

    #@1b
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    :goto_1e
    return-object v0

    #@1f
    :cond_1f
    const-string v0, "GamesClientImpl"

    #@21
    const-string v2, "Unable to create native libjingle socket, resorting to old socket."

    #@23
    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@2c
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->aW(Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    if-nez v0, :cond_34

    #@32
    move-object v0, v1

    #@33
    goto :goto_1e

    #@34
    :cond_34
    new-instance v2, Landroid/net/LocalSocket;

    #@36
    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_39} :catch_4c

    #@39
    :try_start_39
    new-instance v3, Landroid/net/LocalSocketAddress;

    #@3b
    invoke-direct {v3, v0}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    #@3e
    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_41} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_41} :catch_4c

    #@41
    :try_start_41
    new-instance v0, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;

    #@43
    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/games/internal/RealTimeSocketImpl;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    #@46
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nr:Ljava/util/Map;

    #@48
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4b} :catch_4c

    #@4b
    goto :goto_1e

    #@4c
    :catch_4c
    move-exception v0

    #@4d
    const-string v0, "GamesClientImpl"

    #@4f
    const-string v2, "Unable to create socket. Service died."

    #@51
    invoke-static {v0, v2}, Lcom/google/android/gms/games/internal/GamesLog;->k(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    move-object v0, v1

    #@55
    goto :goto_1e

    #@56
    :catch_56
    move-exception v0

    #@57
    :try_start_57
    new-instance v2, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string v3, "GamesClientImpl"

    #@5e
    const-string v4, "connect() call failed on socket: "

    #@60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    invoke-static {v3, v0}, Lcom/google/android/gms/games/internal/GamesLog;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_73} :catch_4c

    #@73
    move-object v0, v1

    #@74
    goto :goto_1e
.end method

.method private gY()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Ns:Lcom/google/android/gms/games/PlayerEntity;

    #@3
    return-void
.end method

.method private hv()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nr:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_23

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    #@16
    :try_start_16
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    #@19
    goto :goto_a

    #@1a
    :catch_1a
    move-exception v0

    #@1b
    const-string v2, "GamesClientImpl"

    #@1d
    const-string v3, "IOException:"

    #@1f
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/games/internal/GamesLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    goto :goto_a

    #@23
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nr:Ljava/util/Map;

    #@25
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@28
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;[BLjava/lang/String;Ljava/lang/String;)I
    .registers 7

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RealTimeReliableMessageBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer$ReliableMessageSentCallback;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[BLjava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    #@e
    move-result v0

    #@f
    :goto_f
    return v0

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v0, "GamesClientImpl"

    #@13
    const-string v1, "service died"

    #@15
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    const/4 v0, -0x1

    #@19
    goto :goto_f
.end method

.method public a([BLjava/lang/String;[Ljava/lang/String;)I
    .registers 6

    #@0
    const-string v0, "Participant IDs must not be null"

    #@2
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->b([BLjava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_10

    #@e
    move-result v0

    #@f
    :goto_f
    return v0

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v0, "GamesClientImpl"

    #@13
    const-string v1, "service died"

    #@15
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    const/4 v0, -0x1

    #@19
    goto :goto_f
.end method

.method public a(IIZ)Landroid/content/Intent;
    .registers 6

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(IIZ)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public a(I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1, p2, p3, p5}, Lcom/google/android/gms/games/internal/IGamesService;->a(I[BILjava/lang/String;)Landroid/content/Intent;

    #@9
    move-result-object v0

    #@a
    const-string v1, "Must provide a non null icon"

    #@c
    invoke-static {p4, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    const-string v1, "com.google.android.gms.games.REQUEST_ITEM_ICON"

    #@11
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    #@14
    :goto_14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v0, "GamesClientImpl"

    #@18
    const-string v1, "service died"

    #@1a
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    const/4 v0, 0x0

    #@1e
    goto :goto_14
.end method

.method public a(Lcom/google/android/gms/games/multiplayer/realtime/Room;I)Landroid/content/Intent;
    .registers 5

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {p1}, Lcom/google/android/gms/games/multiplayer/realtime/Room;->freeze()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;

    #@c
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/multiplayer/realtime/RoomEntity;I)Landroid/content/Intent;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    #@f
    move-result-object v0

    #@10
    :goto_10
    return-object v0

    #@11
    :catch_11
    move-exception v0

    #@12
    const-string v0, "GamesClientImpl"

    #@14
    const-string v1, "service died"

    #@16
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    const/4 v0, 0x0

    #@1a
    goto :goto_10
.end method

.method public a(Ljava/lang/String;ZZI)Landroid/content/Intent;
    .registers 7

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Ljava/lang/String;ZZI)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public a([I)Landroid/content/Intent;
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->a([I)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5

    #@0
    if-nez p1, :cond_c

    #@2
    if-eqz p3, :cond_c

    #@4
    const-string v0, "show_welcome_popup"

    #@6
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nv:Z

    #@c
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/hb;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@f
    return-void
.end method

.method public a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@c
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    #@f
    :cond_f
    :goto_f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v0, "GamesClientImpl"

    #@13
    const-string v1, "service died"

    #@15
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    goto :goto_f
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
            ">;III)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;III)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;IIZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;IIZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;IIZZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v0, "GamesClientImpl"

    #@16
    const-string v1, "service died"

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    goto :goto_12
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;I[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;I[I)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;I[I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;",
            "II)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->iA()Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->iB()Landroid/os/Bundle;

    #@12
    move-result-object v2

    #@13
    invoke-interface {v0, v1, v2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/Bundle;II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    #@16
    :goto_16
    return-void

    #@17
    :catch_17
    move-exception v0

    #@18
    const-string v0, "GamesClientImpl"

    #@1a
    const-string v1, "service died"

    #@1c
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    goto :goto_16
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getVariant()I

    #@e
    move-result v2

    #@f
    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->iH()I

    #@12
    move-result v3

    #@13
    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getInvitedPlayerIds()[Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {p2}, Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMatchConfig;->getAutoMatchCriteria()Landroid/os/Bundle;

    #@1a
    move-result-object v5

    #@1b
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;II[Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    #@1e
    :goto_1e
    return-void

    #@1f
    :catch_1f
    move-exception v0

    #@20
    const-string v0, "GamesClientImpl"

    #@22
    const-string v1, "service died"

    #@24
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    goto :goto_1e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;",
            ">;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            ")V"
        }
    .end annotation

    #@0
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getContents()Lcom/google/android/gms/drive/Contents;

    #@3
    move-result-object v1

    #@4
    const-string v0, "Must provide a previously opened Snapshot"

    #@6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    invoke-virtual {p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->iN()Lcom/google/android/gms/common/data/a;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_1a

    #@f
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/File;)V

    #@1a
    :cond_1a
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->iM()V

    #@1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@23
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;

    #@25
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotCommittedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@28
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->getMetadata()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    #@2b
    move-result-object v3

    #@2c
    invoke-interface {v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getSnapshotId()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-interface {v0, v2, v3, p3, v1}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_33} :catch_34

    #@33
    :goto_33
    return-void

    #@34
    :catch_34
    move-exception v0

    #@35
    const-string v0, "GamesClientImpl"

    #@37
    const-string v1, "service died"

    #@39
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    goto :goto_33
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_1b

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@9
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@b
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->hN()Landroid/os/IBinder;

    #@e
    move-result-object v4

    #@f
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@11
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->hM()Landroid/os/Bundle;

    #@14
    move-result-object v5

    #@15
    move-object v2, p2

    #@16
    move v3, p3

    #@17
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    #@1d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_20} :catch_21

    #@20
    goto :goto_3

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v0, "GamesClientImpl"

    #@24
    const-string v1, "service died"

    #@26
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    goto :goto_1a
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IIIZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    move v6, p6

    #@10
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    #@0
    const-string v0, "played_with"

    #@2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_21

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "Invalid player collection: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@27
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@29
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@2c
    move-object v2, p2

    #@2d
    move v3, p3

    #@2e
    move v4, p4

    #@2f
    move v5, p5

    #@30
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_33} :catch_34

    #@33
    :goto_33
    return-void

    #@34
    :catch_34
    move-exception v0

    #@35
    const-string v0, "GamesClientImpl"

    #@37
    const-string v1, "service died"

    #@39
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@3c
    goto :goto_33
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    move v6, p6

    #@10
    move v7, p7

    #@11
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZZZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    #@14
    :goto_14
    return-void

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v0, "GamesClientImpl"

    #@18
    const-string v1, "service died"

    #@1a
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    goto :goto_14
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I[I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchesResult;",
            ">;",
            "Ljava/lang/String;",
            "I[I)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchesLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I[I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;JLjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_10

    #@2
    const/4 v2, 0x0

    #@3
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    #@9
    move-object v3, p2

    #@a
    move-wide v4, p3

    #@b
    move-object v6, p5

    #@c
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;JLjava/lang/String;)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;

    #@12
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SubmitScoreBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_15} :catch_16

    #@15
    goto :goto_3

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v0, "GamesClientImpl"

    #@19
    const-string v1, "service died"

    #@1b
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    goto :goto_f
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerLeaderboardScoreLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v0, "GamesClientImpl"

    #@16
    const-string v1, "service died"

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    goto :goto_12
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    move v6, p6

    #@10
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    move v6, p6

    #@10
    move v7, p7

    #@11
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    #@14
    :goto_14
    return-void

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v0, "GamesClientImpl"

    #@18
    const-string v1, "service died"

    #@1a
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    goto :goto_14
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    #@0
    const-string v0, "played_with"

    #@2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_29

    #@8
    const-string v0, "circled"

    #@a
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_29

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "Invalid player collection: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    :try_start_29
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@2f
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@31
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@34
    move-object v2, p2

    #@35
    move-object v3, p3

    #@36
    move v4, p4

    #@37
    move v5, p5

    #@38
    move v6, p6

    #@39
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3c} :catch_3d

    #@3c
    :goto_3c
    return-void

    #@3d
    :catch_3d
    move-exception v0

    #@3e
    const-string v0, "GamesClientImpl"

    #@40
    const-string v1, "service died"

    #@42
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@45
    goto :goto_3c
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            "Lcom/google/android/gms/drive/Contents;",
            ")V"
        }
    .end annotation

    #@0
    invoke-virtual {p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->iN()Lcom/google/android/gms/common/data/a;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_11

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/File;)V

    #@11
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@17
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;

    #@19
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@1c
    move-object v2, p2

    #@1d
    move-object v3, p3

    #@1e
    move-object v4, p4

    #@1f
    move-object v5, p5

    #@20
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/drive/Contents;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_23} :catch_24

    #@23
    :goto_23
    return-void

    #@24
    :catch_24
    move-exception v0

    #@25
    const-string v0, "GamesClientImpl"

    #@27
    const-string v1, "service died"

    #@29
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@2c
    goto :goto_23
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v4, p5

    #@e
    move v5, p4

    #@f
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v0, "GamesClientImpl"

    #@16
    const-string v1, "service died"

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    goto :goto_12
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;[IIZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[IIZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    move v5, p5

    #@f
    move v6, p6

    #@10
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[IIZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    move-object v5, p5

    #@f
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[BLjava/lang/String;[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v0, "GamesClientImpl"

    #@16
    const-string v1, "service died"

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    goto :goto_12
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$UpdateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "[B[",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[B[Lcom/google/android/gms/games/multiplayer/ParticipantResult;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;[Ljava/lang/String;I[BI)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/request/Requests$SendRequestResult;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I[BI)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSentBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move v4, p4

    #@e
    move-object v5, p5

    #@f
    move v6, p6

    #@10
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;[Ljava/lang/String;I[BI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;ZLandroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;Z",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsUpdatedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;ZLandroid/os/Bundle;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public varargs a(Lcom/google/android/gms/common/api/a$d;Z[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Np:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@10
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z[Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;[IIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;[IIZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Np:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@10
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[IIZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
    .registers 6

    #@0
    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationReceivedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@d
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    #@10
    :goto_10
    return-void

    #@11
    :catch_11
    move-exception v0

    #@12
    const-string v0, "GamesClientImpl"

    #@14
    const-string v1, "service died"

    #@16
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    goto :goto_10
.end method

.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .registers 12

    #@0
    :try_start_0
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v2, p0, v0, v1, v3}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V

    #@11
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    #@17
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Ny:Landroid/os/Binder;

    #@19
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getVariant()I

    #@1c
    move-result v4

    #@1d
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitedPlayerIds()[Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getAutoMatchCriteria()Landroid/os/Bundle;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->isSocketEnabled()Z

    #@28
    move-result v7

    #@29
    iget-wide v8, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@2b
    invoke-interface/range {v1 .. v9}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;I[Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f

    #@2e
    :goto_2e
    return-void

    #@2f
    :catch_2f
    move-exception v0

    #@30
    const-string v0, "GamesClientImpl"

    #@32
    const-string v1, "service died"

    #@34
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    goto :goto_2e
.end method

.method public a(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Ljava/lang/String;)V
    .registers 5

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V

    #@e
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hv()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    #@11
    :goto_11
    return-void

    #@12
    :catch_12
    move-exception v0

    #@13
    const-string v0, "GamesClientImpl"

    #@15
    const-string v1, "service died"

    #@17
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    goto :goto_11
.end method

.method public a(Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V
    .registers 6

    #@0
    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$MatchUpdateReceivedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/turnbased/OnTurnBasedMatchUpdateReceivedListener;)V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@d
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    #@10
    :goto_10
    return-void

    #@11
    :catch_11
    move-exception v0

    #@12
    const-string v0, "GamesClientImpl"

    #@14
    const-string v1, "service died"

    #@16
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    goto :goto_10
.end method

.method public a(Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
    .registers 6

    #@0
    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestUpdateBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@d
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    #@10
    :goto_10
    return-void

    #@11
    :catch_11
    move-exception v0

    #@12
    const-string v0, "GamesClientImpl"

    #@14
    const-string v1, "service died"

    #@16
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    goto :goto_10
.end method

.method public a(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
    .registers 6

    #@0
    :try_start_0
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;

    #@2
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestReceivedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@d
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;J)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    #@10
    :goto_10
    return-void

    #@11
    :catch_11
    move-exception v0

    #@12
    const-string v0, "GamesClientImpl"

    #@14
    const-string v1, "service died"

    #@16
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    goto :goto_10
.end method

.method public a(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .registers 4

    #@0
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->getContents()Lcom/google/android/gms/drive/Contents;

    #@3
    move-result-object v1

    #@4
    const-string v0, "Must provide a previously opened Snapshot"

    #@6
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->iM()V

    #@c
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@12
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/drive/Contents;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    #@15
    :goto_15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v0, "GamesClientImpl"

    #@19
    const-string v1, "service died"

    #@1b
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    goto :goto_15
.end method

.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@b
    move-result-object v0

    #@c
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@e
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@11
    move-result-object v8

    #@12
    new-instance v9, Landroid/os/Bundle;

    #@14
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    #@17
    const-string v0, "com.google.android.gms.games.key.isHeadless"

    #@19
    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->NA:Z

    #@1b
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1e
    const-string v0, "com.google.android.gms.games.key.showConnectingPopup"

    #@20
    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nw:Z

    #@22
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@25
    const-string v0, "com.google.android.gms.games.key.connectingPopupGravity"

    #@27
    iget v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nx:I

    #@29
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2c
    const-string v0, "com.google.android.gms.games.key.retryingSignIn"

    #@2e
    iget-boolean v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->NC:Z

    #@30
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@33
    const-string v0, "com.google.android.gms.games.key.sdkVariant"

    #@35
    iget v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->NB:I

    #@37
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@3a
    const-string v0, "com.google.android.gms.games.key.forceResolveAccountKey"

    #@3c
    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->ND:Ljava/lang/String;

    #@3e
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    const v2, 0x4da6e8

    #@44
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    #@47
    move-result-object v0

    #@48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    iget-object v4, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->yQ:Ljava/lang/String;

    #@4e
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->fs()[Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    iget-object v6, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nq:Ljava/lang/String;

    #@54
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@56
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/PopupManager;->hN()Landroid/os/IBinder;

    #@59
    move-result-object v7

    #@5a
    move-object v0, p1

    #@5b
    move-object v1, p2

    #@5c
    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    #@5f
    return-void
.end method

.method public aR(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->aR(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public aS(Ljava/lang/String;)V
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->ba(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    :goto_9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    const-string v0, "GamesClientImpl"

    #@d
    const-string v1, "service died"

    #@f
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    goto :goto_9
.end method

.method public aU(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->aU(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method protected ah(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/games/internal/IGamesService$Stub;->aj(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public b(IIZ)Landroid/content/Intent;
    .registers 6

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->b(IIZ)Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Np:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SignOutCompleteBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_1a

    #@2
    const/4 v0, 0x0

    #@3
    move-object v1, v0

    #@4
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@a
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@c
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->hN()Landroid/os/IBinder;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@12
    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/PopupManager;->hM()Landroid/os/Bundle;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@19
    :goto_19
    return-void

    #@1a
    :cond_1a
    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    #@1c
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_21

    #@1f
    move-object v1, v0

    #@20
    goto :goto_4

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v0, "GamesClientImpl"

    #@24
    const-string v1, "service died"

    #@26
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    goto :goto_19
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_1b

    #@2
    const/4 v1, 0x0

    #@3
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@9
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@b
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->hN()Landroid/os/IBinder;

    #@e
    move-result-object v4

    #@f
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@11
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->hM()Landroid/os/Bundle;

    #@14
    move-result-object v5

    #@15
    move-object v2, p2

    #@16
    move v3, p3

    #@17
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    #@1d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_20} :catch_21

    #@20
    goto :goto_3

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v0, "GamesClientImpl"

    #@24
    const-string v1, "service died"

    #@26
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    goto :goto_1a
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IIIZ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    move v6, p6

    #@10
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IIIZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v0, "GamesClientImpl"

    #@16
    const-string v1, "service died"

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    goto :goto_12
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Np:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;

    #@d
    invoke-direct {v1, p0, p1, p3}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestMilestoneClaimBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V

    #@10
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardScoresLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    move v6, p6

    #@10
    move v7, p7

    #@11
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    #@14
    :goto_14
    return-void

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v0, "GamesClientImpl"

    #@18
    const-string v1, "service died"

    #@1a
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    goto :goto_14
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotOpenedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Z[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p3, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public b(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;)V
    .registers 10

    #@0
    :try_start_0
    new-instance v2, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getRoomStatusUpdateListener()Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getMessageReceivedListener()Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    #@d
    move-result-object v3

    #@e
    invoke-direct {v2, p0, v0, v1, v3}, Lcom/google/android/gms/games/internal/GamesClientImpl$RoomBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)V

    #@11
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Lcom/google/android/gms/games/internal/IGamesService;

    #@17
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Ny:Landroid/os/Binder;

    #@19
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->getInvitationId()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;->isSocketEnabled()Z

    #@20
    move-result v5

    #@21
    iget-wide v6, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@23
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Landroid/os/IBinder;Ljava/lang/String;ZJ)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    #@26
    :goto_26
    return-void

    #@27
    :catch_27
    move-exception v0

    #@28
    const-string v0, "GamesClientImpl"

    #@2a
    const-string v1, "service died"

    #@2c
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@2f
    goto :goto_26
.end method

.method protected varargs b([Ljava/lang/String;)V
    .registers 9

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    move v0, v1

    #@3
    move v2, v1

    #@4
    move v3, v1

    #@5
    :goto_5
    array-length v5, p1

    #@6
    if-ge v3, v5, :cond_20

    #@8
    aget-object v5, p1, v3

    #@a
    const-string v6, "https://www.googleapis.com/auth/games"

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_16

    #@12
    move v0, v4

    #@13
    :cond_13
    :goto_13
    add-int/lit8 v3, v3, 0x1

    #@15
    goto :goto_5

    #@16
    :cond_16
    const-string v6, "https://www.googleapis.com/auth/games.firstparty"

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_13

    #@1e
    move v2, v4

    #@1f
    goto :goto_13

    #@20
    :cond_20
    if-eqz v2, :cond_38

    #@22
    if-nez v0, :cond_36

    #@24
    move v0, v4

    #@25
    :goto_25
    const-string v2, "Cannot have both %s and %s!"

    #@27
    const/4 v3, 0x2

    #@28
    new-array v3, v3, [Ljava/lang/Object;

    #@2a
    const-string v5, "https://www.googleapis.com/auth/games"

    #@2c
    aput-object v5, v3, v1

    #@2e
    const-string v1, "https://www.googleapis.com/auth/games.firstparty"

    #@30
    aput-object v1, v3, v4

    #@32
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@35
    :goto_35
    return-void

    #@36
    :cond_36
    move v0, v1

    #@37
    goto :goto_25

    #@38
    :cond_38
    const-string v2, "Games APIs requires %s to function."

    #@3a
    new-array v3, v4, [Ljava/lang/Object;

    #@3c
    const-string v4, "https://www.googleapis.com/auth/games"

    #@3e
    aput-object v4, v3, v1

    #@40
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@43
    goto :goto_35
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.games.service.START"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    #@2
    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;I)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_1a

    #@2
    const/4 v0, 0x0

    #@3
    move-object v1, v0

    #@4
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@a
    iget-object v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@c
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager;->hN()Landroid/os/IBinder;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@12
    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/PopupManager;->hM()Landroid/os/Bundle;

    #@15
    move-result-object v3

    #@16
    invoke-interface {v0, v1, p2, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@19
    :goto_19
    return-void

    #@1a
    :cond_1a
    new-instance v0, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;

    #@1c
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementUpdatedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1f} :catch_21

    #@1f
    move-object v1, v0

    #@20
    goto :goto_4

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v0, "GamesClientImpl"

    #@24
    const-string v1, "service died"

    #@26
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    goto :goto_19
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpStreamResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v0, "GamesClientImpl"

    #@16
    const-string v1, "service died"

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    goto :goto_12
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$LeaderboardsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$AchievementsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestsUpdatedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;[Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public cg(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/PopupManager;->setGravity(I)V

    #@5
    return-void
.end method

.method public ch(I)V
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/IGamesService;->ch(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    :goto_9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    const-string v0, "GamesClientImpl"

    #@d
    const-string v1, "service died"

    #@f
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    goto :goto_9
.end method

.method public connect()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->gY()V

    #@3
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->connect()V

    #@6
    return-void
.end method

.method public d([BLjava/lang/String;)I
    .registers 5

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/games/internal/IGamesService;->b([BLjava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    #@a
    move-result v0

    #@b
    :goto_b
    return v0

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
    const/4 v0, -0x1

    #@15
    goto :goto_b
.end method

.method public d(Lcom/google/android/gms/common/api/a$d;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public d(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->l(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public d(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpStreamResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpStreamLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public d(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v0, "GamesClientImpl"

    #@16
    const-string v1, "service died"

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    goto :goto_12
.end method

.method public d(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public d(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Notifications$GameMuteStatusChangeResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusChangedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public d(Lcom/google/android/gms/common/api/a$d;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Np:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$EventsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@10
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public disconnect()V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nv:Z

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1c

    #@9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@f
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hw()V

    #@12
    iget-object v1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Np:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    #@14
    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    #@17
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@19
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->q(J)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_23

    #@1c
    :cond_1c
    :goto_1c
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hv()V

    #@1f
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->disconnect()V

    #@22
    return-void

    #@23
    :catch_23
    move-exception v0

    #@24
    const-string v0, "GamesClientImpl"

    #@26
    const-string v1, "Failed to notify client disconnect."

    #@28
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    goto :goto_1c
.end method

.method public e(Lcom/google/android/gms/common/api/a$d;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;IZZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public e(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$InitiateMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchInitiatedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->m(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public e(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    const/4 v2, 0x0

    #@c
    invoke-interface {v0, v1, p2, p3, v2}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    #@f
    :goto_f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v0, "GamesClientImpl"

    #@13
    const-string v1, "service died"

    #@15
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    goto :goto_f
.end method

.method public e(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->c(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v0, "GamesClientImpl"

    #@16
    const-string v1, "service died"

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    goto :goto_12
.end method

.method public e(Lcom/google/android/gms/common/api/a$d;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotsLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public ef()Landroid/os/Bundle;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->ef()Landroid/os/Bundle;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_15

    #@c
    const-class v1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@e
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    #@15
    :cond_15
    :goto_15
    return-object v0

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v0, "GamesClientImpl"

    #@19
    const-string v1, "service died"

    #@1b
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    const/4 v0, 0x0

    #@1f
    goto :goto_15
.end method

.method public f(Landroid/view/View;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/PopupManager;->g(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public f(Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GamesLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->d(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public f(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LeaveMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLeftBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->o(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public f(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestSummariesResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$RequestSummariesLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/IGamesService;->a(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public f(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move v5, p5

    #@f
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;IZZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v0, "GamesClientImpl"

    #@16
    const-string v1, "service died"

    #@18
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    goto :goto_12
.end method

.method public f(Lcom/google/android/gms/common/api/a$d;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;",
            ">;Z)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public g(Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadOwnerCoverPhotoUrisResult;",
            ">;)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$OwnerCoverPhotoUrisLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$OwnerCoverPhotoUrisLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->j(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public g(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$CancelMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchCanceledBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->n(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public g(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;IZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayersLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    const/4 v3, 0x0

    #@c
    move-object v2, p2

    #@d
    move v4, p3

    #@e
    move v5, p4

    #@f
    move v6, p5

    #@10
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/games/internal/IGamesService;->b(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;Ljava/lang/String;IZZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public gZ()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->gZ()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public h(Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/internal/game/Acls$LoadAclResult;",
            ">;)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/IGamesService;->h(Lcom/google/android/gms/games/internal/IGamesCallbacks;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public h(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer$LoadMatchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$TurnBasedMatchLoadedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->p(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public ha()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->ha()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public hb()Lcom/google/android/gms/games/Player;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->cn()V

    #@3
    monitor-enter p0

    #@4
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Ns:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3f

    #@6
    if-nez v0, :cond_2d

    #@8
    :try_start_8
    new-instance v1, Lcom/google/android/gms/games/PlayerBuffer;

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@10
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hy()Lcom/google/android/gms/common/data/DataHolder;

    #@13
    move-result-object v0

    #@14
    invoke-direct {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_36
    .catchall {:try_start_8 .. :try_end_17} :catchall_3f

    #@17
    :try_start_17
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->getCount()I

    #@1a
    move-result v0

    #@1b
    if-lez v0, :cond_2a

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Lcom/google/android/gms/games/Player;

    #@21
    move-result-object v0

    #@22
    invoke-interface {v0}, Lcom/google/android/gms/games/Player;->freeze()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    #@28
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Ns:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_31

    #@2a
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->close()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_36
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3f

    #@2d
    :cond_2d
    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_3f

    #@2e
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Ns:Lcom/google/android/gms/games/PlayerEntity;

    #@30
    return-object v0

    #@31
    :catchall_31
    move-exception v0

    #@32
    :try_start_32
    invoke-virtual {v1}, Lcom/google/android/gms/games/PlayerBuffer;->close()V

    #@35
    throw v0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_36} :catch_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_3f

    #@36
    :catch_36
    move-exception v0

    #@37
    :try_start_37
    const-string v0, "GamesClientImpl"

    #@39
    const-string v1, "service died"

    #@3b
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    goto :goto_2d

    #@3f
    :catchall_3f
    move-exception v0

    #@40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    #@41
    throw v0
.end method

.method public hc()Lcom/google/android/gms/games/Game;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->cn()V

    #@3
    monitor-enter p0

    #@4
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nt:Lcom/google/android/gms/games/GameEntity;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3f

    #@6
    if-nez v0, :cond_2d

    #@8
    :try_start_8
    new-instance v1, Lcom/google/android/gms/games/GameBuffer;

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@10
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hA()Lcom/google/android/gms/common/data/DataHolder;

    #@13
    move-result-object v0

    #@14
    invoke-direct {v1, v0}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_36
    .catchall {:try_start_8 .. :try_end_17} :catchall_3f

    #@17
    :try_start_17
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->getCount()I

    #@1a
    move-result v0

    #@1b
    if-lez v0, :cond_2a

    #@1d
    const/4 v0, 0x0

    #@1e
    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/GameBuffer;->get(I)Lcom/google/android/gms/games/Game;

    #@21
    move-result-object v0

    #@22
    invoke-interface {v0}, Lcom/google/android/gms/games/Game;->freeze()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    #@28
    iput-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nt:Lcom/google/android/gms/games/GameEntity;
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_31

    #@2a
    :cond_2a
    :try_start_2a
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->close()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_36
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3f

    #@2d
    :cond_2d
    :goto_2d
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_3f

    #@2e
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nt:Lcom/google/android/gms/games/GameEntity;

    #@30
    return-object v0

    #@31
    :catchall_31
    move-exception v0

    #@32
    :try_start_32
    invoke-virtual {v1}, Lcom/google/android/gms/games/GameBuffer;->close()V

    #@35
    throw v0
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_36} :catch_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_3f

    #@36
    :catch_36
    move-exception v0

    #@37
    :try_start_37
    const-string v0, "GamesClientImpl"

    #@39
    const-string v1, "service died"

    #@3b
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    goto :goto_2d

    #@3f
    :catchall_3f
    move-exception v0

    #@40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    #@41
    throw v0
.end method

.method public hd()Landroid/content/Intent;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hd()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public he()Landroid/content/Intent;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->he()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public hf()Landroid/content/Intent;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hf()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public hg()Landroid/content/Intent;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hg()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public hh()V
    .registers 5

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@8
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->r(J)V
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

.method public hi()V
    .registers 5

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@8
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->s(J)V
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

.method public hj()V
    .registers 5

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@8
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->u(J)V
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

.method public hk()V
    .registers 5

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nz:J

    #@8
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/games/internal/IGamesService;->t(J)V
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

.method public hl()Landroid/content/Intent;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hl()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public hm()Landroid/content/Intent;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hm()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public hn()I
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hn()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/16 v0, 0x1110

    #@15
    goto :goto_a
.end method

.method public ho()Ljava/lang/String;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->ho()Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public hp()I
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hp()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, -0x1

    #@14
    goto :goto_a
.end method

.method public hq()Landroid/content/Intent;
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hq()Landroid/content/Intent;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, 0x0

    #@14
    goto :goto_a
.end method

.method public hr()I
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hr()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, -0x1

    #@14
    goto :goto_a
.end method

.method public hs()I
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hs()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, -0x1

    #@14
    goto :goto_a
.end method

.method public ht()I
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->ht()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, -0x1

    #@14
    goto :goto_a
.end method

.method public hu()I
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hu()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "GamesClientImpl"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    const/4 v0, -0x1

    #@14
    goto :goto_a
.end method

.method public hw()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@c
    invoke-interface {v0}, Lcom/google/android/gms/games/internal/IGamesService;->hw()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    #@f
    :cond_f
    :goto_f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v0, "GamesClientImpl"

    #@13
    const-string v1, "service died"

    #@15
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    goto :goto_f
.end method

.method public i(Lcom/google/android/gms/common/api/a$d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Notifications$ContactSettingLoadResult;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ContactSettingsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    const/4 v2, 0x0

    #@c
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Z)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    #@f
    :goto_f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v0, "GamesClientImpl"

    #@13
    const-string v1, "service died"

    #@15
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    goto :goto_f
.end method

.method public i(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Np:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->flush()V

    #@5
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@b
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;

    #@d
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$QuestAcceptedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@10
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->u(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v0, "GamesClientImpl"

    #@17
    const-string v1, "service died"

    #@19
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    goto :goto_13
.end method

.method public j(Lcom/google/android/gms/common/api/a$d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Notifications$InboxCountResult;",
            ">;)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InboxCountsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    const/4 v2, 0x0

    #@c
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesService;->t(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    #@f
    :goto_f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v0, "GamesClientImpl"

    #@13
    const-string v1, "service died"

    #@15
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    goto :goto_f
.end method

.method public j(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$SnapshotDeletedBinderCallbacks;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->r(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public k(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadExtendedGamesResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$ExtendedGamesLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->e(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;
    .registers 5

    #@0
    if-eqz p2, :cond_8

    #@2
    invoke-static {p2}, Lcom/google/android/gms/games/multiplayer/ParticipantUtils;->bn(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_10

    #@8
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v1, "Bad participant ID"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nr:Ljava/util/Map;

    #@12
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    #@18
    if-eqz v0, :cond_20

    #@1a
    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;->isClosed()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_24

    #@20
    :cond_20
    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->aT(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RealTimeSocket;

    #@23
    move-result-object v0

    #@24
    :cond_24
    return-object v0
.end method

.method public l(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameInstancesLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->f(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public l(Ljava/lang/String;I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Np:Lcom/google/android/gms/games/internal/events/EventIncrementManager;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/events/EventIncrementManager;->l(Ljava/lang/String;I)V

    #@5
    return-void
.end method

.method public m(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGameSearchSuggestionsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameSearchSuggestionsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->q(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public m(Ljava/lang/String;I)V
    .registers 5

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->m(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    :goto_9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    const-string v0, "GamesClientImpl"

    #@d
    const-string v1, "service died"

    #@f
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    goto :goto_9
.end method

.method public n(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Players$LoadXpForGameCategoriesResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$PlayerXpForGameCategoriesLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->s(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public n(Ljava/lang/String;I)V
    .registers 5

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->n(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    #@9
    :goto_9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    const-string v0, "GamesClientImpl"

    #@d
    const-string v1, "service died"

    #@f
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    goto :goto_9
.end method

.method public o(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$InvitationsLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->k(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nv:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nu:Lcom/google/android/gms/games/internal/PopupManager;

    #@6
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/PopupManager;->hL()V

    #@9
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nv:Z

    #@c
    :cond_c
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/GamesClientImpl;->Nv:Z

    #@3
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    #@0
    return-void
.end method

.method public p(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclUpdatedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$NotifyAclUpdatedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->j(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method public q(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/games/Notifications$GameMuteStatusLoadResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/IGamesService;

    #@6
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadedBinderCallback;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/IGamesService;->i(Lcom/google/android/gms/games/internal/IGamesCallbacks;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "GamesClientImpl"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    goto :goto_e
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ah(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesService;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
