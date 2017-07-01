.class final Lcom/google/android/gms/games/internal/game/GameBadgeEntity$GameBadgeEntityCreatorCompat;
.super Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GameBadgeEntityCreatorCompat"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bh(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
    .registers 8

    #@0
    invoke-static {}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->gR()Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b(Ljava/lang/Integer;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_16

    #@a
    const-class v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-static {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->aQ(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1b

    #@16
    :cond_16
    invoke-super {p0, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntityCreator;->bh(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    #@19
    move-result-object v0

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    if-nez v0, :cond_35

    #@2d
    const/4 v5, 0x0

    #@2e
    :goto_2e
    new-instance v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    #@30
    const/4 v1, 0x1

    #@31
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    #@34
    goto :goto_1a

    #@35
    :cond_35
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@38
    move-result-object v5

    #@39
    goto :goto_2e
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity$GameBadgeEntityCreatorCompat;->bh(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
