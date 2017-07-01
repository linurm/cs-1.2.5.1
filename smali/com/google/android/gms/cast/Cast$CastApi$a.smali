.class public final Lcom/google/android/gms/cast/Cast$CastApi$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/Cast$CastApi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast$CastApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
.method public getApplicationMetadata(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/gh;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gh;->getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getApplicationStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/gh;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gh;->getApplicationStatus()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getVolume(Lcom/google/android/gms/common/api/GoogleApiClient;)D
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/gh;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gh;->eh()D

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public isMute(Lcom/google/android/gms/common/api/GoogleApiClient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/gh;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gh;->isMute()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public joinApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$a$6;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/Cast$CastApi$a$6;-><init>(Lcom/google/android/gms/cast/Cast$CastApi$a;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public joinApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$a$5;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/cast/Cast$CastApi$a$5;-><init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public joinApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$a$4;

    #@2
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/cast/Cast$CastApi$a$4;-><init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$a$2;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/cast/Cast$CastApi$a$2;-><init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$a$3;

    #@2
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/cast/Cast$CastApi$a$3;-><init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions$Builder;-><init>()V

    #@5
    invoke-virtual {v0, p3}, Lcom/google/android/gms/cast/LaunchOptions$Builder;->setRelaunchIfRunning(Z)Lcom/google/android/gms/cast/LaunchOptions$Builder;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/cast/LaunchOptions$Builder;->build()Lcom/google/android/gms/cast/LaunchOptions;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/cast/Cast$CastApi$a;->launchApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)Lcom/google/android/gms/common/api/PendingResult;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public leaveApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
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
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$a$7;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/Cast$CastApi$a$7;-><init>(Lcom/google/android/gms/cast/Cast$CastApi$a;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/gh;

    #@8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/gh;->aj(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    return-void

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string v1, "service error"

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public requestStatus(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/gh;

    #@8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gh;->eg()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    return-void

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string v1, "service error"

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$a$1;

    #@2
    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/cast/Cast$CastApi$a$1;-><init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/gh;

    #@8
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/gh;->a(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    return-void

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string v1, "service error"

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public setMute(Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/gh;

    #@8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/gh;->y(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    return-void

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string v1, "service error"

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public setVolume(Lcom/google/android/gms/common/api/GoogleApiClient;D)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->yH:Lcom/google/android/gms/common/api/Api$c;

    #@2
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/gh;

    #@8
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/gh;->a(D)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    return-void

    #@c
    :catch_c
    move-exception v0

    #@d
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string v1, "service error"

    #@11
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0
.end method

.method public stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 3
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
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$a$8;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/Cast$CastApi$a$8;-><init>(Lcom/google/android/gms/cast/Cast$CastApi$a;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/cast/Cast$CastApi$a$9;

    #@2
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/cast/Cast$CastApi$a$9;-><init>(Lcom/google/android/gms/cast/Cast$CastApi$a;Ljava/lang/String;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
