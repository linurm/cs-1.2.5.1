.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;


# instance fields
.field private final SH:I

.field private final SI:I

.field private final SJ:Z

.field private final SK:J

.field private final SL:Ljava/lang/String;

.field private final SM:J

.field private final SN:Ljava/lang/String;

.field private final SO:Ljava/lang/String;

.field private final SP:J

.field private final SQ:Ljava/lang/String;

.field private final SR:Ljava/lang/String;

.field private final SS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SH:I

    #@9
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SI:I

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    #@12
    move-result v0

    #@13
    iput-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SJ:Z

    #@15
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    #@18
    move-result-wide v0

    #@19
    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SK:J

    #@1b
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SL:Ljava/lang/String;

    #@21
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    #@24
    move-result-wide v0

    #@25
    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SM:J

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SN:Ljava/lang/String;

    #@2d
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerScoreTag()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SO:Ljava/lang/String;

    #@33
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    #@36
    move-result-wide v0

    #@37
    iput-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SP:J

    #@39
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iD()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SQ:Ljava/lang/String;

    #@3f
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iE()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SR:Ljava/lang/String;

    #@45
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iF()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SS:Ljava/lang/String;

    #@4b
    return-void
.end method

.method static a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I
    .registers 5

    #@0
    const/16 v0, 0xb

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    #@8
    move-result v2

    #@9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v2

    #@d
    aput-object v2, v0, v1

    #@f
    const/4 v1, 0x1

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    #@13
    move-result v2

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v2

    #@18
    aput-object v2, v0, v1

    #@1a
    const/4 v1, 0x2

    #@1b
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    #@1e
    move-result v2

    #@1f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@22
    move-result-object v2

    #@23
    aput-object v2, v0, v1

    #@25
    const/4 v1, 0x3

    #@26
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    #@29
    move-result-wide v2

    #@2a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d
    move-result-object v2

    #@2e
    aput-object v2, v0, v1

    #@30
    const/4 v1, 0x4

    #@31
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    aput-object v2, v0, v1

    #@37
    const/4 v1, 0x5

    #@38
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    #@3b
    move-result-wide v2

    #@3c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3f
    move-result-object v2

    #@40
    aput-object v2, v0, v1

    #@42
    const/4 v1, 0x6

    #@43
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    aput-object v2, v0, v1

    #@49
    const/4 v1, 0x7

    #@4a
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    #@4d
    move-result-wide v2

    #@4e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@51
    move-result-object v2

    #@52
    aput-object v2, v0, v1

    #@54
    const/16 v1, 0x8

    #@56
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iD()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    aput-object v2, v0, v1

    #@5c
    const/16 v1, 0x9

    #@5e
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iF()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    aput-object v2, v0, v1

    #@64
    const/16 v1, 0xa

    #@66
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iE()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    aput-object v2, v0, v1

    #@6c
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@6f
    move-result v0

    #@70
    return v0
.end method

.method static a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_d5

    #@9
    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    #@e
    move-result v2

    #@f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v2

    #@13
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    #@16
    move-result v3

    #@17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_6

    #@21
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    #@24
    move-result v2

    #@25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v2

    #@29
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    #@2c
    move-result v3

    #@2d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@34
    move-result v2

    #@35
    if-eqz v2, :cond_6

    #@37
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    #@3a
    move-result v2

    #@3b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3e
    move-result-object v2

    #@3f
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    #@42
    move-result v3

    #@43
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@46
    move-result-object v3

    #@47
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4a
    move-result v2

    #@4b
    if-eqz v2, :cond_6

    #@4d
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    #@50
    move-result-wide v2

    #@51
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@54
    move-result-object v2

    #@55
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    #@58
    move-result-wide v4

    #@59
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5c
    move-result-object v3

    #@5d
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@60
    move-result v2

    #@61
    if-eqz v2, :cond_6

    #@63
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6e
    move-result v2

    #@6f
    if-eqz v2, :cond_6

    #@71
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    #@74
    move-result-wide v2

    #@75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@78
    move-result-object v2

    #@79
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    #@7c
    move-result-wide v4

    #@7d
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@80
    move-result-object v3

    #@81
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@84
    move-result v2

    #@85
    if-eqz v2, :cond_6

    #@87
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    #@8e
    move-result-object v3

    #@8f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@92
    move-result v2

    #@93
    if-eqz v2, :cond_6

    #@95
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    #@98
    move-result-wide v2

    #@99
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9c
    move-result-object v2

    #@9d
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    #@a0
    move-result-wide v4

    #@a1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a4
    move-result-object v3

    #@a5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a8
    move-result v2

    #@a9
    if-eqz v2, :cond_6

    #@ab
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iD()Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iD()Ljava/lang/String;

    #@b2
    move-result-object v3

    #@b3
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b6
    move-result v2

    #@b7
    if-eqz v2, :cond_6

    #@b9
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iF()Ljava/lang/String;

    #@bc
    move-result-object v2

    #@bd
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iF()Ljava/lang/String;

    #@c0
    move-result-object v3

    #@c1
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c4
    move-result v2

    #@c5
    if-eqz v2, :cond_6

    #@c7
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iE()Ljava/lang/String;

    #@ca
    move-result-object v2

    #@cb
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iE()Ljava/lang/String;

    #@ce
    move-result-object v3

    #@cf
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d2
    move-result v2

    #@d3
    if-eqz v2, :cond_6

    #@d5
    :cond_d5
    move v0, v1

    #@d6
    goto/16 :goto_6
.end method

.method static b(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "TimeSpan"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getTimeSpan()I

    #@9
    move-result v2

    #@a
    invoke-static {v2}, Lcom/google/android/gms/games/internal/constants/TimeSpan;->cm(I)Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@11
    move-result-object v0

    #@12
    const-string v1, "Collection"

    #@14
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getCollection()I

    #@17
    move-result v2

    #@18
    invoke-static {v2}, Lcom/google/android/gms/games/internal/constants/LeaderboardCollection;->cm(I)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_99

    #@26
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getRawPlayerScore()J

    #@29
    move-result-wide v2

    #@2a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d
    move-result-object v0

    #@2e
    :goto_2e
    const-string v2, "RawPlayerScore"

    #@30
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@33
    move-result-object v1

    #@34
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_9c

    #@3a
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerScore()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    :goto_3e
    const-string v2, "DisplayPlayerScore"

    #@40
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@43
    move-result-object v1

    #@44
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_9f

    #@4a
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getPlayerRank()J

    #@4d
    move-result-wide v2

    #@4e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@51
    move-result-object v0

    #@52
    :goto_52
    const-string v2, "PlayerRank"

    #@54
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@57
    move-result-object v1

    #@58
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->hasPlayerInfo()Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_a2

    #@5e
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getDisplayPlayerRank()Ljava/lang/String;

    #@61
    move-result-object v0

    #@62
    :goto_62
    const-string v2, "DisplayPlayerRank"

    #@64
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@67
    move-result-object v0

    #@68
    const-string v1, "NumScores"

    #@6a
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->getNumScores()J

    #@6d
    move-result-wide v2

    #@6e
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@75
    move-result-object v0

    #@76
    const-string v1, "TopPageNextToken"

    #@78
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iD()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@7f
    move-result-object v0

    #@80
    const-string v1, "WindowPageNextToken"

    #@82
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iF()Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@89
    move-result-object v0

    #@8a
    const-string v1, "WindowPagePrevToken"

    #@8c
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->iE()Ljava/lang/String;

    #@8f
    move-result-object v2

    #@90
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@93
    move-result-object v0

    #@94
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@97
    move-result-object v0

    #@98
    return-object v0

    #@99
    :cond_99
    const-string v0, "none"

    #@9b
    goto :goto_2e

    #@9c
    :cond_9c
    const-string v0, "none"

    #@9e
    goto :goto_3e

    #@9f
    :cond_9f
    const-string v0, "none"

    #@a1
    goto :goto_52

    #@a2
    :cond_a2
    const-string v0, "none"

    #@a4
    goto :goto_62
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->iG()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCollection()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SI:I

    #@2
    return v0
.end method

.method public getDisplayPlayerRank()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDisplayPlayerScore()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNumScores()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SP:J

    #@2
    return-wide v0
.end method

.method public getPlayerRank()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SM:J

    #@2
    return-wide v0
.end method

.method public getPlayerScoreTag()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SO:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRawPlayerScore()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SK:J

    #@2
    return-wide v0
.end method

.method public getTimeSpan()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SH:I

    #@2
    return v0
.end method

.method public hasPlayerInfo()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SJ:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->a(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public iD()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public iE()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SR:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public iF()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->SS:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public iG()Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;
    .registers 1

    #@0
    return-object p0
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
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;->b(Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
