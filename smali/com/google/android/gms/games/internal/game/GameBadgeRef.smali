.class public final Lcom/google/android/gms/games/internal/game/GameBadgeRef;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/games/internal/game/GameBadge;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
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
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a(Lcom/google/android/gms/games/internal/game/GameBadge;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->ic()Lcom/google/android/gms/games/internal/game/GameBadge;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "badge_description"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getIconImageUri()Landroid/net/Uri;
    .registers 2

    #@0
    const-string v0, "badge_icon_image_uri"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->aw(Ljava/lang/String;)Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "badge_title"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    const-string v0, "badge_type"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->getInteger(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a(Lcom/google/android/gms/games/internal/game/GameBadge;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public ic()Lcom/google/android/gms/games/internal/game/GameBadge;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;-><init>(Lcom/google/android/gms/games/internal/game/GameBadge;)V

    #@5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->b(Lcom/google/android/gms/games/internal/game/GameBadge;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/game/GameBadgeRef;->ic()Lcom/google/android/gms/games/internal/game/GameBadge;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;

    #@6
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->writeToParcel(Landroid/os/Parcel;I)V

    #@9
    return-void
.end method
