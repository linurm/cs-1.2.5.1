.class public final Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;
    }
.end annotation


# static fields
.field private static final Sn:[Ljava/lang/String;


# instance fields
.field private CT:I

.field private MS:Ljava/lang/String;

.field private ST:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;",
            ">;"
        }
    .end annotation
.end field

.field private Sp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    const/4 v1, 0x0

    #@5
    const-string v2, "leaderboardId"

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    const-string v2, "playerId"

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    const-string v2, "timeSpan"

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    const-string v2, "hasResult"

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    const-string v2, "rawScore"

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    const-string v2, "formattedScore"

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    const-string v2, "newBest"

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    const-string v2, "scoreTag"

    #@2a
    aput-object v2, v0, v1

    #@2c
    sput-object v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->Sn:[Ljava/lang/String;

    #@2e
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->CT:I

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->ST:Ljava/util/HashMap;

    #@11
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    #@14
    move-result v7

    #@15
    const/4 v0, 0x3

    #@16
    if-ne v7, v0, :cond_67

    #@18
    const/4 v0, 0x1

    #@19
    :goto_19
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->C(Z)V

    #@1c
    move v0, v1

    #@1d
    :goto_1d
    if-ge v0, v7, :cond_69

    #@1f
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/data/DataHolder;->ae(I)I

    #@22
    move-result v8

    #@23
    if-nez v0, :cond_35

    #@25
    const-string v1, "leaderboardId"

    #@27
    invoke-virtual {p1, v1, v0, v8}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->Sp:Ljava/lang/String;

    #@2d
    const-string v1, "playerId"

    #@2f
    invoke-virtual {p1, v1, v0, v8}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->MS:Ljava/lang/String;

    #@35
    :cond_35
    const-string v1, "hasResult"

    #@37
    invoke-virtual {p1, v1, v0, v8}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    #@3a
    move-result v1

    #@3b
    if-eqz v1, :cond_63

    #@3d
    new-instance v1, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    #@3f
    const-string v2, "rawScore"

    #@41
    invoke-virtual {p1, v2, v0, v8}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    #@44
    move-result-wide v2

    #@45
    const-string v4, "formattedScore"

    #@47
    invoke-virtual {p1, v4, v0, v8}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    const-string v5, "scoreTag"

    #@4d
    invoke-virtual {p1, v5, v0, v8}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    const-string v6, "newBest"

    #@53
    invoke-virtual {p1, v6, v0, v8}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    #@56
    move-result v6

    #@57
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    #@5a
    const-string v2, "timeSpan"

    #@5c
    invoke-virtual {p1, v2, v0, v8}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I

    #@5f
    move-result v2

    #@60
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->a(Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;I)V

    #@63
    :cond_63
    add-int/lit8 v1, v0, 0x1

    #@65
    move v0, v1

    #@66
    goto :goto_1d

    #@67
    :cond_67
    move v0, v1

    #@68
    goto :goto_19

    #@69
    :cond_69
    return-void
.end method

.method private a(Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;I)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->ST:Ljava/util/HashMap;

    #@2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    return-void
.end method


# virtual methods
.method public getLeaderboardId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->Sp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->MS:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScoreResult(I)Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->ST:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "PlayerId"

    #@6
    iget-object v2, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->MS:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@b
    move-result-object v0

    #@c
    const-string v1, "StatusCode"

    #@e
    iget v2, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->CT:I

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v2

    #@18
    const/4 v0, 0x0

    #@19
    move v1, v0

    #@1a
    :goto_1a
    const/4 v0, 0x3

    #@1b
    if-ge v1, v0, :cond_44

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;->ST:Ljava/util/HashMap;

    #@1f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;

    #@29
    const-string v3, "TimesSpan"

    #@2b
    invoke-static {v1}, Lcom/google/android/gms/games/internal/constants/TimeSpan;->cm(I)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@32
    if-nez v0, :cond_3f

    #@34
    const-string v0, "null"

    #@36
    :goto_36
    const-string v3, "Result"

    #@38
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3b
    add-int/lit8 v0, v1, 0x1

    #@3d
    move v1, v0

    #@3e
    goto :goto_1a

    #@3f
    :cond_3f
    invoke-virtual {v0}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData$Result;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    goto :goto_36

    #@44
    :cond_44
    invoke-virtual {v2}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    return-object v0
.end method
