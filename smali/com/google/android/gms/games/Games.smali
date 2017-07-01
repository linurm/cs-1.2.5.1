.class public final Lcom/google/android/gms/games/Games;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;,
        Lcom/google/android/gms/games/Games$GamesOptions;,
        Lcom/google/android/gms/games/Games$GamesOptions$Builder;,
        Lcom/google/android/gms/games/Games$SignOutImpl;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final Achievements:Lcom/google/android/gms/games/achievement/Achievements;

.field public static final EXTRA_PLAYER_IDS:Ljava/lang/String; = "players"

.field public static final Events:Lcom/google/android/gms/games/event/Events;

.field public static final GamesMetadata:Lcom/google/android/gms/games/GamesMetadata;

.field public static final Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

.field public static final Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

.field public static final MI:Lcom/google/android/gms/common/api/Scope;

.field public static final MJ:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final MK:Lcom/google/android/gms/games/multiplayer/Multiplayer;

.field public static final ML:Lcom/google/android/gms/games/internal/game/Acls;

.field public static final Notifications:Lcom/google/android/gms/games/Notifications;

.field public static final Players:Lcom/google/android/gms/games/Players;

.field public static final Quests:Lcom/google/android/gms/games/quest/Quests;

.field public static final RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

.field public static final Requests:Lcom/google/android/gms/games/request/Requests;

.field public static final SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

.field public static final Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

.field public static final TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

.field static final yH:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final yI:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/games/internal/GamesClientImpl;",
            "Lcom/google/android/gms/games/Games$GamesOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    #@4
    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    #@7
    sput-object v0, Lcom/google/android/gms/games/Games;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@9
    new-instance v0, Lcom/google/android/gms/games/Games$1;

    #@b
    invoke-direct {v0}, Lcom/google/android/gms/games/Games$1;-><init>()V

    #@e
    sput-object v0, Lcom/google/android/gms/games/Games;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@10
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    #@12
    const-string v1, "https://www.googleapis.com/auth/games"

    #@14
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    #@17
    sput-object v0, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    #@19
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    #@1b
    sget-object v1, Lcom/google/android/gms/games/Games;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@1d
    sget-object v2, Lcom/google/android/gms/games/Games;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@1f
    new-array v3, v6, [Lcom/google/android/gms/common/api/Scope;

    #@21
    sget-object v4, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    #@23
    aput-object v4, v3, v5

    #@25
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    #@28
    sput-object v0, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    #@2a
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    #@2c
    const-string v1, "https://www.googleapis.com/auth/games.firstparty"

    #@2e
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    #@31
    sput-object v0, Lcom/google/android/gms/games/Games;->MI:Lcom/google/android/gms/common/api/Scope;

    #@33
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    #@35
    sget-object v1, Lcom/google/android/gms/games/Games;->yI:Lcom/google/android/gms/common/api/Api$b;

    #@37
    sget-object v2, Lcom/google/android/gms/games/Games;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@39
    new-array v3, v6, [Lcom/google/android/gms/common/api/Scope;

    #@3b
    sget-object v4, Lcom/google/android/gms/games/Games;->MI:Lcom/google/android/gms/common/api/Scope;

    #@3d
    aput-object v4, v3, v5

    #@3f
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    #@42
    sput-object v0, Lcom/google/android/gms/games/Games;->MJ:Lcom/google/android/gms/common/api/Api;

    #@44
    new-instance v0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;

    #@46
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;-><init>()V

    #@49
    sput-object v0, Lcom/google/android/gms/games/Games;->GamesMetadata:Lcom/google/android/gms/games/GamesMetadata;

    #@4b
    new-instance v0, Lcom/google/android/gms/games/internal/api/AchievementsImpl;

    #@4d
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/AchievementsImpl;-><init>()V

    #@50
    sput-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    #@52
    new-instance v0, Lcom/google/android/gms/games/internal/api/EventsImpl;

    #@54
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/EventsImpl;-><init>()V

    #@57
    sput-object v0, Lcom/google/android/gms/games/Games;->Events:Lcom/google/android/gms/games/event/Events;

    #@59
    new-instance v0, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;

    #@5b
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/LeaderboardsImpl;-><init>()V

    #@5e
    sput-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    #@60
    new-instance v0, Lcom/google/android/gms/games/internal/api/InvitationsImpl;

    #@62
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/InvitationsImpl;-><init>()V

    #@65
    sput-object v0, Lcom/google/android/gms/games/Games;->Invitations:Lcom/google/android/gms/games/multiplayer/Invitations;

    #@67
    new-instance v0, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;

    #@69
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/TurnBasedMultiplayerImpl;-><init>()V

    #@6c
    sput-object v0, Lcom/google/android/gms/games/Games;->TurnBasedMultiplayer:Lcom/google/android/gms/games/multiplayer/turnbased/TurnBasedMultiplayer;

    #@6e
    new-instance v0, Lcom/google/android/gms/games/internal/api/RealTimeMultiplayerImpl;

    #@70
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/RealTimeMultiplayerImpl;-><init>()V

    #@73
    sput-object v0, Lcom/google/android/gms/games/Games;->RealTimeMultiplayer:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMultiplayer;

    #@75
    new-instance v0, Lcom/google/android/gms/games/internal/api/MultiplayerImpl;

    #@77
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/MultiplayerImpl;-><init>()V

    #@7a
    sput-object v0, Lcom/google/android/gms/games/Games;->MK:Lcom/google/android/gms/games/multiplayer/Multiplayer;

    #@7c
    new-instance v0, Lcom/google/android/gms/games/internal/api/PlayersImpl;

    #@7e
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/PlayersImpl;-><init>()V

    #@81
    sput-object v0, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    #@83
    new-instance v0, Lcom/google/android/gms/games/internal/api/NotificationsImpl;

    #@85
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/NotificationsImpl;-><init>()V

    #@88
    sput-object v0, Lcom/google/android/gms/games/Games;->Notifications:Lcom/google/android/gms/games/Notifications;

    #@8a
    new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl;

    #@8c
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl;-><init>()V

    #@8f
    sput-object v0, Lcom/google/android/gms/games/Games;->Quests:Lcom/google/android/gms/games/quest/Quests;

    #@91
    new-instance v0, Lcom/google/android/gms/games/internal/api/RequestsImpl;

    #@93
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl;-><init>()V

    #@96
    sput-object v0, Lcom/google/android/gms/games/Games;->Requests:Lcom/google/android/gms/games/request/Requests;

    #@98
    new-instance v0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    #@9a
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl;-><init>()V

    #@9d
    sput-object v0, Lcom/google/android/gms/games/Games;->Snapshots:Lcom/google/android/gms/games/snapshot/Snapshots;

    #@9f
    new-instance v0, Lcom/google/android/gms/games/internal/api/AclsImpl;

    #@a1
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/api/AclsImpl;-><init>()V

    #@a4
    sput-object v0, Lcom/google/android/gms/games/Games;->ML:Lcom/google/android/gms/games/internal/game/Acls;

    #@a6
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;
    .registers 3

    #@0
    if-eqz p0, :cond_16

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    const-string v1, "GoogleApiClient parameter is required."

    #@5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@8
    invoke-interface {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    #@b
    move-result v0

    #@c
    const-string v1, "GoogleApiClient must be connected."

    #@e
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@11
    invoke-static {p0}, Lcom/google/android/gms/games/Games;->d(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_3
.end method

.method public static d(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/games/Games;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@8
    if-eqz v0, :cond_11

    #@a
    const/4 v1, 0x1

    #@b
    :goto_b
    const-string v2, "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature."

    #@d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@10
    return-object v0

    #@11
    :cond_11
    const/4 v1, 0x0

    #@12
    goto :goto_b
.end method

.method public static getAppId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->ho()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getCurrentAccountName(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->gZ()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getSdkVariant(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hn()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static getSettingsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hm()Landroid/content/Intent;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static setGravityForPopups(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
    .registers 3

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->cg(I)V

    #@7
    return-void
.end method

.method public static setViewForPopups(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/view/View;)V
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    invoke-static {p0}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->f(Landroid/view/View;)V

    #@a
    return-void
.end method

.method public static signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/games/Games$2;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/Games$2;-><init>()V

    #@5
    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
