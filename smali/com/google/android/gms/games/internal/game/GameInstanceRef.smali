.class public final Lcom/google/android/gms/games/internal/game/GameInstanceRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/GameInstance;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "external_game_id"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "instance_display_name"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "package_name"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public id()Z
    .registers 2

    #@0
    const-string v0, "real_time_support"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public ie()Z
    .registers 2

    #@0
    const-string v0, "turn_based_support"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public if()I
    .registers 2

    #@0
    const-string v0, "platform_type"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public ig()Z
    .registers 2

    #@0
    const-string v0, "piracy_check"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public ih()Z
    .registers 2

    #@0
    const-string v0, "installed"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "ApplicationId"

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getApplicationId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "DisplayName"

    #@10
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getDisplayName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@17
    move-result-object v0

    #@18
    const-string v1, "SupportsRealTime"

    #@1a
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->id()Z

    #@1d
    move-result v2

    #@1e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@25
    move-result-object v0

    #@26
    const-string v1, "SupportsTurnBased"

    #@28
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->ie()Z

    #@2b
    move-result v2

    #@2c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@33
    move-result-object v0

    #@34
    const-string v1, "PlatformType"

    #@36
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->if()I

    #@39
    move-result v2

    #@3a
    invoke-static {v2}, Lcom/google/android/gms/games/internal/constants/PlatformType;->cm(I)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@41
    move-result-object v0

    #@42
    const-string v1, "PackageName"

    #@44
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->getPackageName()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@4b
    move-result-object v0

    #@4c
    const-string v1, "PiracyCheckEnabled"

    #@4e
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->ig()Z

    #@51
    move-result v2

    #@52
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@59
    move-result-object v0

    #@5a
    const-string v1, "Installed"

    #@5c
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameInstanceRef;->ih()Z

    #@5f
    move-result v2

    #@60
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@67
    move-result-object v0

    #@68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    return-object v0
.end method
