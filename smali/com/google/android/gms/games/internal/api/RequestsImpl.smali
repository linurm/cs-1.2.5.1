.class public final Lcom/google/android/gms/games/internal/api/RequestsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/request/Requests;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestSummariesImpl;,
        Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;,
        Lcom/google/android/gms/games/internal/api/RequestsImpl$SendRequestImpl;,
        Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public acceptRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl;->acceptRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public acceptRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p2, :cond_d

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    new-instance v1, Lcom/google/android/gms/games/internal/api/RequestsImpl$1;

    #@5
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;[Ljava/lang/String;)V

    #@8
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@10
    move-result v0

    #@11
    new-array v0, v0, [Ljava/lang/String;

    #@13
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Ljava/lang/String;

    #@19
    goto :goto_3
.end method

.method public dismissRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl;->dismissRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public dismissRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/request/Requests$UpdateRequestsResult;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p2, :cond_d

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    new-instance v1, Lcom/google/android/gms/games/internal/api/RequestsImpl$2;

    #@5
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl$2;-><init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;[Ljava/lang/String;)V

    #@8
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    :cond_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@10
    move-result v0

    #@11
    new-array v0, v0, [Ljava/lang/String;

    #@13
    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Ljava/lang/String;

    #@19
    goto :goto_3
.end method

.method public getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_a

    #@2
    const-string v0, "requests"

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_10

    #@a
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    :goto_f
    return-object v0

    #@10
    :cond_10
    const-string v0, "requests"

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Ljava/util/ArrayList;

    #@18
    new-instance v2, Ljava/util/ArrayList;

    #@1a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@20
    move-result v4

    #@21
    const/4 v1, 0x0

    #@22
    move v3, v1

    #@23
    :goto_23
    if-ge v3, v4, :cond_32

    #@25
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/google/android/gms/games/request/GameRequest;

    #@2b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    add-int/lit8 v1, v3, 0x1

    #@30
    move v3, v1

    #@31
    goto :goto_23

    #@32
    :cond_32
    move-object v0, v2

    #@33
    goto :goto_f
.end method

.method public getGameRequestsFromInboxResponse(Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/request/GameRequest;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_8

    #@2
    new-instance v0, Ljava/util/ArrayList;

    #@4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;

    #@f
    move-result-object v0

    #@10
    goto :goto_7
.end method

.method public getInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hq()Landroid/content/Intent;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getMaxLifetimeDays(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hs()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getMaxPayloadSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hr()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getSendIntent(Lcom/google/android/gms/common/api/GoogleApiClient;I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
    .registers 13

    #@0
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    move v1, p2

    #@5
    move-object v2, p3

    #@6
    move v3, p4

    #@7
    move-object v4, p5

    #@8
    move-object v5, p6

    #@9
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public loadRequests(Lcom/google/android/gms/common/api/GoogleApiClient;III)Lcom/google/android/gms/common/api/PendingResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "III)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/request/Requests$LoadRequestsResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;

    #@2
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;-><init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;III)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public registerRequestListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V

    #@7
    return-void
.end method

.method public unregisterRequestListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hk()V

    #@7
    return-void
.end method
