.class public final Lcom/google/android/gms/games/PlayerEntity;
.super Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;

# interfaces
.implements Lcom/google/android/gms/games/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/PlayerEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final HY:Ljava/lang/String;

.field private final Ln:Ljava/lang/String;

.field private final MC:Ljava/lang/String;

.field private final MD:Ljava/lang/String;

.field private final MS:Ljava/lang/String;

.field private final MT:J

.field private final MU:I

.field private final MV:J

.field private final MW:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

.field private final MX:Lcom/google/android/gms/games/PlayerLevelInfo;

.field private final MY:Z

.field private final Mr:Landroid/net/Uri;

.field private final Ms:Landroid/net/Uri;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/PlayerEntity$PlayerEntityCreatorCompat;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/PlayerEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;Lcom/google/android/gms/games/PlayerLevelInfo;Z)V
    .registers 18

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/PlayerEntity;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/PlayerEntity;->MS:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/games/PlayerEntity;->Ln:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/games/PlayerEntity;->Mr:Landroid/net/Uri;

    #@b
    iput-object p11, p0, Lcom/google/android/gms/games/PlayerEntity;->MC:Ljava/lang/String;

    #@d
    iput-object p5, p0, Lcom/google/android/gms/games/PlayerEntity;->Ms:Landroid/net/Uri;

    #@f
    iput-object p12, p0, Lcom/google/android/gms/games/PlayerEntity;->MD:Ljava/lang/String;

    #@11
    iput-wide p6, p0, Lcom/google/android/gms/games/PlayerEntity;->MT:J

    #@13
    iput p8, p0, Lcom/google/android/gms/games/PlayerEntity;->MU:I

    #@15
    iput-wide p9, p0, Lcom/google/android/gms/games/PlayerEntity;->MV:J

    #@17
    iput-object p13, p0, Lcom/google/android/gms/games/PlayerEntity;->HY:Ljava/lang/String;

    #@19
    move/from16 v0, p16

    #@1b
    iput-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MY:Z

    #@1d
    iput-object p14, p0, Lcom/google/android/gms/games/PlayerEntity;->MW:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@1f
    move-object/from16 v0, p15

    #@21
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MX:Lcom/google/android/gms/games/PlayerLevelInfo;

    #@23
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/Player;)V
    .registers 6

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;-><init>()V

    #@3
    const/16 v0, 0xa

    #@5
    iput v0, p0, Lcom/google/android/gms/games/PlayerEntity;->xM:I

    #@7
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MS:Ljava/lang/String;

    #@d
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Ln:Ljava/lang/String;

    #@13
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Mr:Landroid/net/Uri;

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MC:Ljava/lang/String;

    #@1f
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Ms:Landroid/net/Uri;

    #@25
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MD:Ljava/lang/String;

    #@2b
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    #@2e
    move-result-wide v0

    #@2f
    iput-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MT:J

    #@31
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->gS()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MU:I

    #@37
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLastPlayedWithTimestamp()J

    #@3a
    move-result-wide v0

    #@3b
    iput-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MV:J

    #@3d
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->HY:Ljava/lang/String;

    #@43
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->gT()Z

    #@46
    move-result v0

    #@47
    iput-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MY:Z

    #@49
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->gU()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;

    #@4c
    move-result-object v1

    #@4d
    if-nez v1, :cond_6f

    #@4f
    const/4 v0, 0x0

    #@50
    :goto_50
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MW:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@52
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    #@55
    move-result-object v0

    #@56
    iput-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MX:Lcom/google/android/gms/games/PlayerLevelInfo;

    #@58
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MS:Ljava/lang/String;

    #@5a
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->c(Ljava/lang/Object;)V

    #@5d
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Ln:Ljava/lang/String;

    #@5f
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->c(Ljava/lang/Object;)V

    #@62
    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MT:J

    #@64
    const-wide/16 v2, 0x0

    #@66
    cmp-long v0, v0, v2

    #@68
    if-lez v0, :cond_75

    #@6a
    const/4 v0, 0x1

    #@6b
    :goto_6b
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@6e
    return-void

    #@6f
    :cond_6f
    new-instance v0, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@71
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;-><init>(Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;)V

    #@74
    goto :goto_50

    #@75
    :cond_75
    const/4 v0, 0x0

    #@76
    goto :goto_6b
.end method

.method static a(Lcom/google/android/gms/games/Player;)I
    .registers 5

    #@0
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    aput-object v2, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    #@15
    move-result-object v2

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x3

    #@19
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    #@1c
    move-result-object v2

    #@1d
    aput-object v2, v0, v1

    #@1f
    const/4 v1, 0x4

    #@20
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    #@23
    move-result-wide v2

    #@24
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@27
    move-result-object v2

    #@28
    aput-object v2, v0, v1

    #@2a
    const/4 v1, 0x5

    #@2b
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    aput-object v2, v0, v1

    #@31
    const/4 v1, 0x6

    #@32
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    #@35
    move-result-object v2

    #@36
    aput-object v2, v0, v1

    #@38
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@3b
    move-result v0

    #@3c
    return v0
.end method

.method static a(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/Player;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_75

    #@9
    check-cast p1, Lcom/google/android/gms/games/Player;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_6

    #@35
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    #@38
    move-result-object v2

    #@39
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    #@3c
    move-result-object v3

    #@3d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_6

    #@43
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    #@46
    move-result-wide v2

    #@47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4a
    move-result-object v2

    #@4b
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    #@4e
    move-result-wide v4

    #@4f
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@52
    move-result-object v3

    #@53
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_6

    #@59
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_6

    #@67
    invoke-interface {p1}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    #@6a
    move-result-object v2

    #@6b
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    #@6e
    move-result-object v3

    #@6f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@72
    move-result v2

    #@73
    if-eqz v2, :cond_6

    #@75
    :cond_75
    move v0, v1

    #@76
    goto :goto_6
.end method

.method static synthetic aQ(Ljava/lang/String;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->aA(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static b(Lcom/google/android/gms/games/Player;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "PlayerId"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getPlayerId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "DisplayName"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getDisplayName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "IconImageUri"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUri()Landroid/net/Uri;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@21
    move-result-object v0

    #@22
    const-string v1, "IconImageUrl"

    #@24
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getIconImageUrl()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2b
    move-result-object v0

    #@2c
    const-string v1, "HiResImageUri"

    #@2e
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUri()Landroid/net/Uri;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@35
    move-result-object v0

    #@36
    const-string v1, "HiResImageUrl"

    #@38
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getHiResImageUrl()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3f
    move-result-object v0

    #@40
    const-string v1, "RetrievedTimestamp"

    #@42
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getRetrievedTimestamp()J

    #@45
    move-result-wide v2

    #@46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@4d
    move-result-object v0

    #@4e
    const-string v1, "Title"

    #@50
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getTitle()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@57
    move-result-object v0

    #@58
    const-string v1, "LevelInfo"

    #@5a
    invoke-interface {p0}, Lcom/google/android/gms/games/Player;->getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    return-object v0
.end method

.method static synthetic b(Ljava/lang/Integer;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->c(Ljava/lang/Integer;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic gR()Ljava/lang/Integer;
    .registers 1

    #@0
    invoke-static {}, Lcom/google/android/gms/games/PlayerEntity;->fq()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/Player;
    .registers 1

    #@0
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->freeze()Lcom/google/android/gms/games/Player;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public gS()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MU:I

    #@2
    return v0
.end method

.method public gT()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MY:Z

    #@2
    return v0
.end method

.method public gU()Lcom/google/android/gms/games/internal/player/MostRecentGameInfo;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MW:Lcom/google/android/gms/games/internal/player/MostRecentGameInfoEntity;

    #@2
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Ln:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Ln:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getHiResImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Ms:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getHiResImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MD:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Mr:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MC:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLastPlayedWithTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MV:J

    #@2
    return-wide v0
.end method

.method public getLevelInfo()Lcom/google/android/gms/games/PlayerLevelInfo;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MX:Lcom/google/android/gms/games/PlayerLevelInfo;

    #@2
    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MS:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRetrievedTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MT:J

    #@2
    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->HY:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTitle(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->HY:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/PlayerEntity;->xM:I

    #@2
    return v0
.end method

.method public hasHiResImage()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getHiResImageUri()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public hasIconImage()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->getIconImageUri()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->a(Lcom/google/android/gms/games/Player;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isDataValid()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/PlayerEntity;->b(Lcom/google/android/gms/games/Player;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/games/PlayerEntity;->fr()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_b

    #@7
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/PlayerEntityCreator;->a(Lcom/google/android/gms/games/PlayerEntity;Landroid/os/Parcel;I)V

    #@a
    :goto_a
    return-void

    #@b
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MS:Ljava/lang/String;

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Ln:Ljava/lang/String;

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Mr:Landroid/net/Uri;

    #@17
    if-nez v0, :cond_2a

    #@19
    move-object v0, v1

    #@1a
    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Ms:Landroid/net/Uri;

    #@1f
    if-nez v0, :cond_31

    #@21
    :goto_21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@24
    iget-wide v0, p0, Lcom/google/android/gms/games/PlayerEntity;->MT:J

    #@26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@29
    goto :goto_a

    #@2a
    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Mr:Landroid/net/Uri;

    #@2c
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    goto :goto_1a

    #@31
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/games/PlayerEntity;->Ms:Landroid/net/Uri;

    #@33
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    goto :goto_21
.end method
