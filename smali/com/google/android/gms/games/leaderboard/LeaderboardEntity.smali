.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboard;


# instance fields
.field private final Ln:Ljava/lang/String;

.field private final MC:Ljava/lang/String;

.field private final Mr:Landroid/net/Uri;

.field private final Sp:Ljava/lang/String;

.field private final Sq:I

.field private final Sr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final Ss:Lcom/google/android/gms/games/Game;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sp:Ljava/lang/String;

    #@9
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Ln:Ljava/lang/String;

    #@f
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Mr:Landroid/net/Uri;

    #@15
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUrl()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->MC:Ljava/lang/String;

    #@1b
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sq:I

    #@21
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getGame()Lcom/google/android/gms/games/Game;

    #@24
    move-result-object v1

    #@25
    if-nez v1, :cond_52

    #@27
    const/4 v0, 0x0

    #@28
    :goto_28
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Ss:Lcom/google/android/gms/games/Game;

    #@2a
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getVariants()Ljava/util/ArrayList;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v3

    #@32
    new-instance v0, Ljava/util/ArrayList;

    #@34
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@37
    iput-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sr:Ljava/util/ArrayList;

    #@39
    const/4 v0, 0x0

    #@3a
    move v1, v0

    #@3b
    :goto_3b
    if-ge v1, v3, :cond_58

    #@3d
    iget-object v4, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sr:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;

    #@45
    invoke-interface {v0}, Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;->freeze()Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Lcom/google/android/gms/games/leaderboard/LeaderboardVariantEntity;

    #@4b
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4e
    add-int/lit8 v0, v1, 0x1

    #@50
    move v1, v0

    #@51
    goto :goto_3b

    #@52
    :cond_52
    new-instance v0, Lcom/google/android/gms/games/GameEntity;

    #@54
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V

    #@57
    goto :goto_28

    #@58
    :cond_58
    return-void
.end method

.method static a(Lcom/google/android/gms/games/leaderboard/Leaderboard;)I
    .registers 4

    #@0
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    aput-object v2, v0, v1

    #@a
    const/4 v1, 0x1

    #@b
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;

    #@15
    move-result-object v2

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x3

    #@19
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I

    #@1c
    move-result v2

    #@1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v2

    #@21
    aput-object v2, v0, v1

    #@23
    const/4 v1, 0x4

    #@24
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getVariants()Ljava/util/ArrayList;

    #@27
    move-result-object v2

    #@28
    aput-object v2, v0, v1

    #@2a
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@2d
    move-result v0

    #@2e
    return v0
.end method

.method static a(Lcom/google/android/gms/games/leaderboard/Leaderboard;Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    instance-of v2, p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    #@4
    if-nez v2, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    if-eq p0, p1, :cond_59

    #@9
    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    #@b
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_6

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_6

    #@27
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;

    #@2a
    move-result-object v2

    #@2b
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;

    #@2e
    move-result-object v3

    #@2f
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_6

    #@35
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I

    #@38
    move-result v2

    #@39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v2

    #@3d
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I

    #@40
    move-result v3

    #@41
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@44
    move-result-object v3

    #@45
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    if-eqz v2, :cond_6

    #@4b
    invoke-interface {p1}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getVariants()Ljava/util/ArrayList;

    #@4e
    move-result-object v2

    #@4f
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getVariants()Ljava/util/ArrayList;

    #@52
    move-result-object v3

    #@53
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@56
    move-result v2

    #@57
    if-eqz v2, :cond_6

    #@59
    :cond_59
    move v0, v1

    #@5a
    goto :goto_6
.end method

.method static b(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "LeaderboardId"

    #@6
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getLeaderboardId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "DisplayName"

    #@10
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getDisplayName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "IconImageUri"

    #@1a
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUri()Landroid/net/Uri;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@21
    move-result-object v0

    #@22
    const-string v1, "IconImageUrl"

    #@24
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getIconImageUrl()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@2b
    move-result-object v0

    #@2c
    const-string v1, "ScoreOrder"

    #@2e
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getScoreOrder()I

    #@31
    move-result v2

    #@32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "Variants"

    #@3c
    invoke-interface {p0}, Lcom/google/android/gms/games/leaderboard/Leaderboard;->getVariants()Ljava/util/ArrayList;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->a(Lcom/google/android/gms/games/leaderboard/Leaderboard;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->iz()Lcom/google/android/gms/games/leaderboard/Leaderboard;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Ln:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDisplayName(Landroid/database/CharArrayBuffer;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Ln:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ik;->b(Ljava/lang/String;Landroid/database/CharArrayBuffer;)V

    #@5
    return-void
.end method

.method public getGame()Lcom/google/android/gms/games/Game;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Ss:Lcom/google/android/gms/games/Game;

    #@2
    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Mr:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->MC:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLeaderboardId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getScoreOrder()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sq:I

    #@2
    return v0
.end method

.method public getVariants()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardVariant;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->Sr:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->a(Lcom/google/android/gms/games/leaderboard/Leaderboard;)I

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

.method public iz()Lcom/google/android/gms/games/leaderboard/Leaderboard;
    .registers 1

    #@0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;->b(Lcom/google/android/gms/games/leaderboard/Leaderboard;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
